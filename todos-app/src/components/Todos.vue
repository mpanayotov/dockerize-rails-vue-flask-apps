<template>
  <div>
    <h1>{{ title }}</h1>
    <p>
      <input v-model="new_todo_description" type="text" placeholder="New todo">
      <button @click="addTodo">Add Todo</button>
    </p>
    <div v-if="todos.length > 0">
      <p v-for="todo in todos" :key="todo.id">
        {{ todo.description }}
      </p>
    </div>
    <div v-else>
      Add Your First Todo!
    </div>
  </div>
</template>

<script>
import axios from 'axios';

export default {
  name: 'Todos',
  props: {
    title: String
  },

  data() {
    return {
      new_todo_description: null,
      todos: [],
    };
  },

  created() {
    axios.get('/todos', { baseURL: 'http://localhost:3005' })
      .then(response => {
        this.todos = response.data
      });
  },

  methods: {
    addTodo() {
      axios.post('/todos',
        { description: this.new_todo_description  },
        { baseURL: 'http://localhost:3005' })
        .then(response => {
          this.todos.push(response.data);
          this.new_todo_description = null;
        });
    }
  }
}
</script>
