<template>
  <div id="gitalk-container"></div>
</template>

<script>
  export default {
    name: "blog-comments",
    mounted() {
      const commentConfig = {
        // 是否开启
        enable: true,
        // clientID
        clientID: "2e8c1a7f986aeac2e46e",
        // clientSecret
        clientSecret: "e10ad45fcd8e95ba7a65ab9fcaeb8718ea6ddcf7",
        // 评论项目名
        repo: "blog-comments",
        owner: "MountTree",
        admin: ["MountTree"],
        githubID: "MountTree",
        id: decodeURI(window.location.pathname),
        language: "zh-CN",
        distractionFreeMode: true,
      };
      const gitalk = new Gitalk(commentConfig);
      gitalk.render("gitalk-container");
    },
  };
</script>
