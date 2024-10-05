<template>
    <div id="app">
      <Header 
        title="My Simple To-Do List" 
        action="Add Task" 
        color="white" 
        bgColor="seagreen"
      />
      <main>
        <input 
          type="text" 
          v-model="newTask" 
          placeholder="Add a new task..." 
          @keyup.enter="addTask"
        />
        <button @click="addTask">Add Task</button>
        <ul>
          <li v-for="(task, index) in tasks" :key="index">
            {{ task }}
            <button @click="removeTask(index)">Remove</button>
          </li>
        </ul>
      </main>
    </div>
  </template>
  
  <script>
  import Header from './Header.vue';
  
  export default {
    components: {
      Header
    },
    data() {
      return {
        newTask: '',
        tasks: []
      };
    },
    methods: {
      addTask() {
        if (this.newTask.trim() !== '') {
          this.tasks.push(this.newTask);
          this.newTask = '';
        }
      },
      removeTask(index) {
        this.tasks.splice(index, 1);
      }
    }
  }
  </script>
  
  <style scoped>
  main {
    margin: 20px auto;
    width: 300px;
    background-color: white;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
  }
  
  input[type="text"] {
    width: 100%;
    padding: 10px;
    margin-bottom: 10px;
    border: 1px solid #ccc;
    border-radius: 4px;
  }
  
  button {
    background-color: seagreen;
    color: white;
    padding: 10px 15px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
  }
  
  ul {
    list-style: none;
    padding: 0;
  }
  
  li {
    display: flex;
    justify-content: space-between;
    padding: 10px;
    border-bottom: 1px solid #ddd;
  }
  
  li button {
    background-color: red;
    padding: 5px 10px;
    font-size: 12px;
    border-radius: 3px;
    color: white;
    cursor: pointer;
  }
  </style>
  