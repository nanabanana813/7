<template>
  <v-app>
    <v-navigation-drawer v-model="drawer" class="bg-navi">
      <v-list density="compact">
        <v-list-subheader class="text-text">{{ title }}</v-list-subheader>
        <v-list-item :title="title" prepend-icon="mdi-home" to="/" router />
        <v-list-group>
          <template v-slot:activator="{ props }">
            <v-list-item
              v-bind="props"
              prepend-icon="mdi-arrow-expand-horizontal "
              title="LIST 1"
            />
          </template>
          <v-list-item subtitle="page chico 1" to="/chico/1" router />
          <v-list-item subtitle="page chico 2" to="/chico/2" router />
        </v-list-group>
        <v-list-item
          title="page AAA"
          prepend-icon="mdi-filmstrip-box-multiple"
          to="/aaa"
          router
        />
      </v-list>
    </v-navigation-drawer>
    <v-app-bar class="bg-navi">
      <v-app-bar-nav-icon @click.stop="drawer = !drawer" />
      <v-toolbar-title>
        {{ title }}
      </v-toolbar-title>
    </v-app-bar>
    <v-main>
      <slot />
    </v-main>
  </v-app>
</template>

<script setup lang="ts">
import { ref } from "vue";

const title: string = "CHICO SITE!!";
const drawer = ref(false);
</script>
