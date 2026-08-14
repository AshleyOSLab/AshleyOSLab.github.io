---
layout: default
title: Writing
---

# Writing

---

## Featured Series

### 不饿就不吃 — 把吃饭的决定权拿回来

两千年两餐制，两百年工厂三餐。你的身体有几百万年的饥饿应对经验，只是最近被作息表规训了。一个 7 天实验，重新学会听身体说话。

- [不饿就不吃，有什么问题吗](/writing/personal-growth/dont-eat-when-not-hungry/) — 为什么一日三餐不是身体规律
- [七日「不饿就不吃」实验](/writing/personal-growth/7-day-not-hungry-experiment/) — 7 天拿回吃饭决定权

---

## All Posts

{% for post in site.posts %}
### [{{ post.title }}]({{ post.url }})
<span class="post-meta">{{ post.date | date: "%Y-%m-%d" }}</span>

{{ post.description | truncatewords: 30 }}
{% endfor %}