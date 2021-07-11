<template>
  <div style="background-color: blue">
    <nuxt-content :document="lesson" />
  </div>
</template>

<script>
export default {
  props: {
    lesson: {
      type: Object,
      required: true,
    },
  },
}
</script>
