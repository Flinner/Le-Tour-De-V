<template>
  <div class="flex justify-between">
    <NuxtLink
      v-if="prev"
      :to="prev.path"
      class="font-bold text-primary hover:underline"
    >
      <v-icon x-large class="icon">mdi-menu-left</v-icon>
    </NuxtLink>
    <!-- Keep balance if an arrow isn't showing -->
    <span v-else>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
    {{ current }} / {{ total }}
    <NuxtLink v-if="next" :to="next.path" class="font-bold hover:underline">
      <v-icon x-large class="icon">mdi-menu-right</v-icon>
    </NuxtLink>

    <!-- Keep balance if an arrow isn't showing -->
    <span v-else>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
  </div>
</template>

<script>
export default {
  props: {
    prev: {
      type: Object,
      default: () => null,
    },
    total: {
      type: Number,
      default: () => null,
    },
    current: {
      type: Number,
      default: () => null,
    },
    next: {
      type: Object,
      default: () => null,
    },
  },
}
</script>
