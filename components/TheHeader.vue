<template>
  <v-app-bar flat dense class="app-bar">
    <v-toolbar-title>Le Tour De </v-toolbar-title>
    <img class="logo" src="/v-logo.png" />
    <v-spacer></v-spacer>

    <!-- TODO: Links -->
    <v-btn href="https://github.com/flinner/le-tour-de-v" icon>
      <v-icon class="icon">mdi-github</v-icon>
    </v-btn>
    <v-btn href="https://example.com" icon>
      <v-icon class="icon">mdi-discord</v-icon>
    </v-btn>
    <v-btn href="https://example.com" icon>
      <v-icon class="icon">mdi-mastodon</v-icon>
    </v-btn>
    <v-btn href="https://example.com" icon>
      <v-icon class="icon">mdi-youtube</v-icon>
    </v-btn>
  </v-app-bar>
</template>

<style scoped>
.logo {
  height: 20px;
  position: relative;
  top: -4px;
}
.app-bar {
  padding: 0 20px 0 40px;
}
.icon {
  margin: 0 9px;
}
</style>
