<template>
  <div id="grid-container">
    <TheHeader id="header"></TheHeader>
    <TheLesson :lesson="lesson" :prev="prev" :next="next"></TheLesson>
    <TheCode :code="code"></TheCode>
  </div>
</template>

<script>
export default {
  async asyncData({ $content, params }) {
    const lesson = await $content(params.module, params.lesson).fetch()
    const code = await $content(params.module, 'code', params.lesson)
      .fetch()
      .catch(() => ({ body: '' })) // avoid undefined errors

    const [prev, next] = await $content(params.module)
      .only(['title', 'slug', 'path'])
      .sortBy('path', 'asc')
      .surround(params.lesson)
      .fetch()

    return { lesson, code, next, prev }
  },
}
</script>
<style>
/* Hack to have 100% height */
div#__nuxt,
#__layout,
#__layout > div,
#app {
  min-height: 100vh;
}
body {
  margin: 0;
}
</style>

<style scoped>
#grid-container {
  display: grid;
  grid-template-areas:
    'header header'
    'lesson code';
  grid-template-columns: 50% 50%;
  grid-template-rows: 48px auto;
  height: 100%;
  width: 100vw;
}

#header {
  grid-area: header;
}
</style>
