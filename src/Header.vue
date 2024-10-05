<template>
    <header>
      <h1 :style="{color:color}">{{ title }}</h1>
      <button @click="handleClick" :style="{background:bgColor}">{{ action }}</button>
    </header>
  </template>
  
  <script>
  export default {
    name: 'Header',
    props: {
      title: String,
      action: String,
      color: String,
      bgColor: String
    },
    methods: {
      handleClick() {
        console.log("Button clicked");
      }
    }
  }
  </script>
  
  <style scoped>
  header {
    text-align: center;
    background-color: #333;
    padding: 10px;
  }
  
  button {
    padding: 10px 20px;
    font-size: 15px;
    color: white;
    border: none;
    border-radius: 5px;
    cursor: pointer;
  }
  
  h1 {
    color: yellowgreen;
  }
  </style>
  