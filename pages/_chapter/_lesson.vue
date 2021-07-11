<template>
  <div id="grid-container">
    <TheHeader id="header"></TheHeader>
    <TheLesson :lesson="lesson"></TheLesson>
    <TheCode></TheCode>
  </div>
</template>

<script>
export default {
  async asyncData({ $content, params }) {
    const lesson = await $content(params.chapter, params.lesson).fetch()

    return { lesson }
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
  grid-template-rows: 64px auto;
  height: 100%;
  width: 100%;
}

#header {
  grid-area: header;
}
</style>
