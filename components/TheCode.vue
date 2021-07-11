<template>
  <div style="background-color: green">
    <!-- <nuxt-content :document="code" /> -->
    <div v-if="code.body">
      <pre>{{ code.body }}</pre>
    </div>
    <template v-if="!code.body">
      <div>no code !</div>
    </template>
  </div>
</template>

<script>
export default {
  props: {
    code: {
      type: Object,
      required: true,
    },
  },
}
</script>
