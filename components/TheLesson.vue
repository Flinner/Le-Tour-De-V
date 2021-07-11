<template>
  <div>
    <nuxt-content :document="lesson" />

    <!-- Next/Prev Linkx -->
    <prev-next :prev="prev" :next="next" />
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
