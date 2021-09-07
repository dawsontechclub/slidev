---
background: /code.jpg
theme: default
lineNumbers: true
routerMode: hash
---
# Hi2Lo Intro
## Introduction
### From High-Level to Low-Level

---

# We're all high level programmers
Because we all did...

<v-clicks>

<ChatBubble audience>Did what?</ChatBubble>

<ChatBubble>Drum roll please 🥁</ChatBubble>

<ChatBubble audience>Why so dramatic?</ChatBubble>

<ChatBubble>Chemistry lab procedures 🧪</ChatBubble>

<ChatBubble audience>No way 🤯</ChatBubble>

</v-clicks>

---
layout: two-cols
preload: false
---

# Litmus Paper Test Procedure
Our human programming language

Original: Level 99

<v-clicks style="font-size: 1.3rem">

1. Pour the solution A into the beaker.
2. Soak a litmus paper into the solution.
3. Take note of the color of the litmus paper.
4. Dispose of the solution inside the beaker.
5. Clean the beaker with distilled water.
6. Repeat steps 1 to 5 with the solutions B and C.

</v-clicks>

::right::

<img src="/chemistry.png" v-motion :initial="{ x: 80 }" :enter="{ x: 0 }"/>

---

# Litmus Paper Test Procedure
Our human programming language

<v-clicks>

With monospace font: Level 98

```txt
Pour the solution A into the beaker.
Soak a litmus paper into the solution.
Note of the color of the litmus paper.
Dispose of the solution inside the beaker.
Clean the beaker with distilled water.
Repeat steps 1 to 5 with the solutions B and C.
```

Without capitalisation and ponctuation: Level 97

```txt
pour the solution a into the beaker
soak a litmus paper into the solution
note of the color of the litmus paper
dispose of the solution inside the beaker
clean the beaker with distilled water
repeat steps 1 to 5 with the solutions b and c
```

</v-clicks>

---

# Litmus Paper Test Procedure
Our human programming language without capitalisation and ponctuation

<v-clicks>

With less words: Level 96

```txt
pour solution a into beaker
soak litmus paper into solution
note color of litmus paper
dispose solution inside beaker
clean beaker with distilled water
repeat steps 1 to 5 with solutions b and c
```

<ChatBubble>Looks much better right?</ChatBubble>

<ChatBubble audience>Yeah!</ChatBubble>

</v-clicks>

---

# Litmus Paper Test Procedure
Our low-level-infected human programming language


<v-clicks>

With imperative loops: Level 95

```txt {all|1|2|3|4|5-9|10|11|4|5-9|10|11|4|5-9|10|11|12|all}
solutions is list with a, b, c
colors is empty list
nth_solution is 1
solution is nth_solution of solutions
pour solution into beaker
soak litmus paper into solution
append color of litmus paper to colors
dispose solution inside beaker
clean beaker with distilled water
increase nth_solution by 1
jump 4 if nth_solution is less than 4
done
```

<ChatBubble audience>My brain hurts...</ChatBubble>

</v-clicks>

---

# Litmus Paper Test Pseudocode
Our weird imperative programming language

<v-clicks>

Using math symbols: Level 94

```txt {all|1-4,10|1,2|4|10|11|all}
solutions = [a, b, c]
colors = []
nth_solution = 1
solution = solutions[nth_solution]
pour solution into beaker
soak litmus paper into solution
append color of litmus paper to colors
dispose solution inside beaker
clean beaker with distilled water
nth_solution = nth_solution + 1
jump 4 if nth_solution < 4
done
```

<ChatBubble audience>Math, is that you?</ChatBubble>

</v-clicks>

---

# Litmus Paper Test Code
Our weird programming language

<v-clicks>

Using math-like functions: Level 93

```txt {all|5-9|6|7|all}
solutions = [a, b, c]
colors = []
nth_solution = 1
solution = solutions[nth_solution]
beaker.add(solution)
color = litmus_paper.test(solution)
colors.append(color)
beaker.dispose()
beaker.clean()
nth_solution = nth_solution + 1
jump 4 if nth_solution < 4
done
```

<ChatBubble audience>It's hard to read 😭</ChatBubble>

</v-clicks>

---

# Litmus Paper Test Code
Our hard-to-read programming language

<v-clicks>

With labels: Level 92

```txt {all|5|13|all}
    solutions = [a, b, c]
    colors = []
    nth_solution = 1

loop_start:
    solution = solutions[nth_solution]
    beaker.add(solution)
    color = litmus_paper.test(solution)
    colors.append(color)
    beaker.dispose()
    beaker.clean()
    nth_solution = nth_solution + 1
    jump loop_start if nth_solution < 4
    done
```

<ChatBubble>This one is hard to read too.</ChatBubble>

</v-clicks>

---

# Litmus Paper Test Code
Code blocks are easy to read

<v-clicks>

<IconText icon="noto:snake" text="Wrong Python"/>

```py {all|4|7|8|all}
solutions = [a, b, c]
colors = []
nth_solution = 1
while nth_solution < 4:
    solution = solutions[nth_solution]
    beaker.add(solution)
    colors.append(litmus_paper.test(solution))
    beaker.dispose().clean()
    nth_solution += 1
```

<ChatBubble>Nooo! This is wrong.</ChatBubble>

</v-clicks>

---

# Litmus Paper Test Code
Indexes start from 0, not 1

<v-clicks>

<IconText icon="akar-icons:python-fill" text="Unleveraged Python"/>

```py {all|1|3|4|all}
solutions = [a, b, c]
colors = []
nth_solution = 0
while nth_solution < 3:
    solution = solutions[nth_solution]
    beaker.add(solution)
    colors.append(litmus_paper.test(solution))
    beaker.dispose().clean()
    nth_solution += 1
```

<ChatBubble>Very ugly code...</ChatBubble>

</v-clicks>

---

# Litmus Paper Test Code
Beautiful code

<v-clicks>

<IconText icon="logos:python" text="Python"/>

```py {all|3|1|4,5|all}
solutions = [a, b, c]
colors = []
for solution in solutions:
    beaker.add(solution)
    colors.append(litmus_paper.test(solution))
    beaker.dispose().clean()
```

<ChatBubble>Wow! Much better 😍</ChatBubble>

<ChatBubble audience>And much more readable!</ChatBubble>

</v-clicks>

---

# Litmus Paper Test Code
Web compatible code

<v-clicks>

<IconText icon="logos:javascript" text="JavaScript"/>

```js {all|3,7|1-3|all}
const solutions = [a, b, c]
const colors = []
for (const solution of solutions) {
    beaker.add(solution)
    colors.append(litmus_paper.test(solution))
    beaker.dispose().clean()
}
```

<ChatBubble>JavaScript is the programming language of the web.</ChatBubble>

<ChatBubble audience>Cool!</ChatBubble>

<ChatBubble>TypeScript 👀</ChatBubble>

</v-clicks>

---

# Litmus Paper Test Code
Type safe code

<v-clicks>

<IconText icon="logos:java" text="Java"/>

```java {all|1-3|all}
List<Solution> solutions = new ArrayList<>(List.of(a, b, c));
List<Color> colors = new ArrayList<>();
for (Solution solution: solutions) {
    beaker.add(solution);
    colors.add(litmus_paper.soak(solution));
    beaker.dispose(solution).clean(distilled_water);
}
```

<ChatBubble>Type safe code!</ChatBubble>

<ChatBubble audience>And better code!</ChatBubble>

</v-clicks>

---
preload: false
---

# Litmus Paper Test Code
All available in many different flavours!

<div class="flex flex-wrap" v-motion :initial="{ x: -100 }" :enter="{ x: 0 }">
<IconText class="m-6" icon="logos:python" text="Python"/>
<IconText class="m-6" icon="logos:javascript" text="JavaScript"/>
<IconText class="m-6" icon="logos:typescript-icon" text="TypeScript"/>
<IconText class="m-6" icon="logos:go" text="Go"/>
<IconText class="m-6" icon="logos:c" text="C"/>
<IconText class="m-6" icon="logos:c-plusplus" text="C++"/>
<IconText class="m-6" icon="logos:rust" text="Rust"/>
<IconText class="m-6" icon="logos:haskell-icon" text="Haskell"/>
<IconText class="m-6" icon="logos:java" text="Java"/>
<IconText class="m-6" icon="logos:kotlin" text="Kotlin"/>
<IconText class="m-6" icon="vscode-icons:file-type-groovy2" text="Groovy"/>
<IconText class="m-6" icon="logos-php" text="PHP"/>
<IconText class="m-6" icon="logos:c-sharp" text="C#"/>
<IconText class="m-6" icon="vscode-icons:file-type-fsharp" text="F#"/>
<IconText class="m-6" icon="vscode-icons:file-type-vb" text="VB"/>
<IconText class="m-6" icon="logos:swift" text="Swift"/>
<IconText class="m-6" icon="logos:bash-icon" text="Bash"/>
<IconText class="m-6" icon="vscode-icons:file-type-ocaml" text="OCaml"/>
<IconText class="m-6" icon="simple-icons:fortran" text="Fortran"/>
<IconText class="m-6" icon="logos:ruby" text="Ruby"/>
</div>

<ChatBubble v-click>But wait, there's more!</ChatBubble>
<ChatBubble v-click audience>So many programming languages 🤯</ChatBubble>
<ChatBubble v-click>Indeed!</ChatBubble>

