<template>
  <div class="lesson">
    <nuxt-content :document="lesson" />

    <!-- Next/Prev Linkx -->
    <prev-next class="prev-next" :prev="prev" :next="next" />
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
}
.prev-next {
  margin-top: 0px;
  position: absolute;
  bottom: 0px;
  left: 45%;
}

.nuxt-content p {
  margin-bottom: 0.75em;
  font-family: sans-serif;
}

.nuxt-content h1 {
  margin-bottom: 0.75em;
  font-family: sans-serif;
}

.nuxt-content code {
  margin-bottom: 0.75em;
  font-family: sans-serif;
  background-color: #add8e660;
  padding: 3px;
}
</style>
