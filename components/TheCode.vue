<template>
  <div>
    <!-- <nuxt-content :document="code" /> -->
    <pre v-if="code.body" class="language-v">{{ code.body }}</pre>
    <pre v-if="!code.body" class="language-v"></pre>
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

<style>
pre {
  height: 100%;
  margin: 20px;
}
</style>
