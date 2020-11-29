import React, { useState } from 'react';

export function TodoForm({ addTodo, todos, setFilteredTodos }) {

  const [value, setValue] = useState('');

  const handleSubmit = event => {
    event.preventDefault();
    value && addTodo(value);
    setValue('');
  }

  /**
   * 筛选待办事项
   *
   * @param {string} title 待办事项的标题
   */
  const filter = title => {
    // debug output
    console.log('filter', title);
    // 筛选包含输入框内容的待办事项
    const newTodos = todos.filter(todo => todo.title.includes(title));
    // 更新展示列表
    setFilteredTodos(newTodos);
  };

  const handleChange = event => {
    const current = event.target.value;
    setValue(current);
    filter(current);
  };

  return (
    <form onSubmit={handleSubmit}>
      <input
        className="input"
        placeholder="创建待办事项..."
        value={value}
        onChange={handleChange}
      />
    </form>
  );

}
