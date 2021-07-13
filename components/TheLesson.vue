<template>
  <div class="lesson">
    <prev-next class="prev-next" :prev="prev" :next="next" />
    <nuxt-content :document="lesson" />

    <!-- Next/Prev Linkx -->
  </div>
</template>

<script>
export default {
  props: {
    lesson: {
      type: Object,
      required: true,
    },
    next: {
      type: Object,
    },
    prev: {
      type: Object,
    },
  },
}
</script>

<style>
.lesson {
  padding: 30px;
  position: relative;
  overflow-y: scroll;
}
.prev-next {
  margin-top: 0px;
  position: fixed;
  bottom: 0px;
  left: 40%;
}

.nuxt-content p {
  margin-bottom: 0.75em;
  font-family: sans-serif;
}

.nuxt-content h1 {
  margin-bottom: 0.75em;
  font-family: sans-serif;
}

/* coloring inline source blocks */
.nuxt-content code {
  margin-bottom: 0.75em;
  font-family: sans-serif;
  background-color: #add8e660;
  padding: 3px;
}

/* Prevent coloring source blocks */
.nuxt-content pre code {
  background-color: rgb(255 255 255 / 0%);
}
</style>
