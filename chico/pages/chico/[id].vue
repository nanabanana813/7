<template>
  <div>
    <v-card width="400">
      <v-card-item>
        <v-card-title>This is a CHICO {{ pageId }} PAGE title</v-card-title>

        <v-card-subtitle>This is a subtitle</v-card-subtitle>
      </v-card-item>

      <v-card-text> This is content </v-card-text>
    </v-card>
  </div>
</template>

<script setup lang="ts">
import { useRoute } from "vue-router";

const route = useRoute();
const pageId = Number(route.params.id);
</script>
