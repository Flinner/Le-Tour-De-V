<template>
  <div id="grid-container">
    <TheHeader id="header"></TheHeader>
    <TheLesson
      :lesson="lesson"
      :total="total"
      :current="current"
      :prev="prev"
      :next="next"
    ></TheLesson>
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

    let [prev, next] = await $content(params.module)
      .only(['title', 'slug', 'path'])
      // hook for slugInt to convert slug from string -> int
      // hook in nuxt.config.js
      .sortBy('slugInt', 'asc')
      .surround(params.lesson)
      .fetch()

    // hacky way to get next/prev from the markdown's preample
    if (!prev) {
      prev = lesson.prev ? { path: lesson.prev } : undefined
    }
    if (!next) {
      next = lesson.next ? { path: lesson.next } : undefined
    }

    // for number of lessons in module
    // used in the next/prev button "<2/6>"
    let total = await $content(params.module)
      .only(['title', 'slug', 'path'])
      .sortBy('slugInt', 'asc')
      .fetch()
    total = total.length

    const current = lesson.slugInt

    return { lesson, code, next, prev, total, current }
  },
}
</script>
<style>
* {
  margin: 0;
  box-sizing: border-box;
}
html {
  /* overflow-y: hidden; */
}
/* Hack to have 100% height */
/* div#__nuxt, */
/* #__layout, */
/* #__layout > div, */
/* #app { */
/*   min-height: 100vh; */
/* } */
</style>

<style scoped>
#grid-container {
  display: grid;
  grid-template-areas:
    'header header'
    'lesson code';
  grid-template-columns: 45% 55%;
  grid-template-rows: 48px auto;
  height: 100vh;
  width: 100vw;
}
@media (max-width: 800px) {
  body #grid-container {
    grid-template-areas:
      'header'
      'lesson'
      'code';
    grid-template-columns: 100%;
    grid-template-rows: 48px 50% 50%;
  }
}

#header {
  grid-area: header;
}
</style>
