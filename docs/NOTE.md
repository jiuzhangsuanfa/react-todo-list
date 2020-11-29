# 框架使用与组件化开发

# 三大框架的特点

## Angular

丰富的 Built-in，完善的官方生态。

如:

- UI / DOM Manipulation 操作 DOM / UI
- State Management 状态管理
- Routing 路由
- Form Validation & Handling 表单
- HTTP Client 网络请求客户端

## React

最小化，专注于 UI-building。

虚拟 DOM，当数据发生改变时，首先与虚拟 DOM 进行对比，确认后再重新渲染 DOM 树。

所有内容均写在代码中。

## VUE

介于两者之间。

# 三大框架的性能

启动性能，运行性能。

# React 目录说明

## public

公共目录，放置资源文件（如图片等）、PWA 配置文件、爬虫配置文件等。

## src

源代码目录，包括各种组件的 JS 代码、样式代码、测试代码等。

# 组件化

组件就像积木，逐个累加变成应用。如一个 Todo List 是由：输入框、待办列表两个组件组成的。

# React 组件编写方式

JSX.Element 中的 `{}` 即为内嵌代码。

# 额外知识点

## Service Worker

PWA 渐进式应用所需要的。

## NPM 的版本号

1. `^` 取当前主版本 Major 中的最新版
2. `~` 取当前从版本 Minor 中的最新版
3. 空前缀，锁定版本

## Eject

暴露内部的配置，如 WebPack 配置等。

## 使用 Children

在组件中使用 `chlidren` 获取组件中的子组件，如：

```js
/** App Component */
export function App() {
  return (
    <Button>Hello</Button>
  );
}

/** Button Component */
export function Button({ children }) {
  return (
    <button>{children}</button>
  );
}
```

以上代码将会渲染一个 button 元素，其内部文字为 `Hello`。