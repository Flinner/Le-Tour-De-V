<template>
  <div class="index" id="grid-container">
    <TheHeader id="header"></TheHeader>
    <nuxt-content class="markdown-body" :document="index" />
  </div>
</template>

//
<script lang="ts">
export default {
  async asyncData({ $content }) {
    const index = await $content('index', 'index').fetch()

    return { index }
  },
}
</script>

<style>
#grid-container {
  display: grid;
  grid-template-areas:
    'header'
    'content';
  grid-template-columns: auto;
  grid-template-rows: 48px auto;
  height: 100%;
  width: 100vw;
}

.markdown-body {
  box-sizing: border-box;
  min-width: 200px;
  max-width: 980px;
  margin: 0 auto;
  padding: 45px;
}

@media (max-width: 767px) {
  .markdown-body {
    padding: 15px;
  }
}

.index .nuxt-content a {
  color: #0645ad;
  text-decoration: none;
}

.index .nuxt-content a:visited {
  color: #0b0080;
}

.index .nuxt-content a:hover {
  color: #06e;
}

.index .nuxt-content a:active {
  color: #faa700;
}

.index .nuxt-content a:focus {
  outline: thin dotted;
}

.index .nuxt-content a:hover,
.index .nuxt-content a:active {
  outline: 0;
}

.index .nuxt-content ::-moz-selection {
  background: rgba(255, 255, 0, 0.3);
  color: #000;
}

.index .nuxt-content ::selection {
  background: rgba(255, 255, 0, 0.3);
  color: #000;
}

.index .nuxt-content a::-moz-selection {
  background: rgba(255, 255, 0, 0.3);
  color: #0645ad;
}

.index .nuxt-content a::selection {
  background: rgba(255, 255, 0, 0.3);
  color: #0645ad;
}

.index .nuxt-content p {
  margin: 1em 0;
}

.index .nuxt-content img {
  max-width: 100%;
}

.index .nuxt-content h1,
.index .nuxt-content h2,
.index .nuxt-content h3,
.index .nuxt-content h4,
.index .nuxt-content h5,
.index .nuxt-content h6 {
  font-weight: normal;
  color: #111;
  line-height: 1em;
  font-family: serif;
}
.index .nuxt-content {
  font-family: sans-serif;
}

.index .nuxt-content h4,
.index .nuxt-content h5,
.index .nuxt-content h6 {
  font-weight: bold;
}

.index .nuxt-content h1 {
  font-size: 3.5em;
}

.index .nuxt-content h2 {
  font-size: 3em;
}

.index .nuxt-content h3 {
  font-size: 1.5em;
}

.index .nuxt-content h4 {
  font-size: 1.2em;
}

.index .nuxt-content h5 {
  font-size: 1em;
}

.index .nuxt-content h6 {
  font-size: 0.9em;
}

.index .nuxt-content blockquote {
  color: #666666;
  margin: 0;
  padding-left: 3em;
  border-left: 0.5em #eee solid;
}

.index .nuxt-content hr {
  display: block;
  border: 0;
  border-top: 1px solid #aaa;
  border-bottom: 1px solid #eee;
  margin: 1em 0;
  padding: 0;
}

.index .nuxt-content pre,
.index .nuxt-content code,
.index .nuxt-content kbd,
.index .nuxt-content samp {
  color: #000;
  font-family: monospace, monospace;
  _font-family: 'courier new', monospace;
  font-size: 0.98em;
}

.index .nuxt-content pre {
  white-space: pre;
  white-space: pre-wrap;
  word-wrap: break-word;
}

.index .nuxt-content b,
strong {
  font-weight: bold;
}

.index .nuxt-content dfn {
  font-style: italic;
}

.index .nuxt-content ins {
  background: #ff9;
  color: #000;
  text-decoration: none;
}

.index .nuxt-content mark {
  background: #ff0;
  color: #000;
  font-style: italic;
  font-weight: bold;
}

.index .nuxt-content sub,
.index .nuxt-content sup {
  font-size: 75%;
  line-height: 0;
  position: relative;
  vertical-align: baseline;
}

.index .nuxt-content sup {
  top: -0.5em;
}

.index .nuxt-content sub {
  bottom: -0.25em;
}

.index .nuxt-content ul,
.index .nuxt-content ol {
  margin: 1em 0;
  padding: 0 0 0 2em;
}

.index .nuxt-content li p:last-child {
  margin: 0;
}

.index .nuxt-content dd {
  margin: 0 0 0 2em;
}

.index .nuxt-content img {
  border: 0;
  -ms-interpolation-mode: bicubic;
  vertical-align: middle;
}

.index .nuxt-content table {
  border-collapse: collapse;
  border-spacing: 0;
}

.index .nuxt-content td {
  vertical-align: top;
}
</style>
