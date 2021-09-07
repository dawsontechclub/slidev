---
background: /matrix.png
theme: default
lineNumbers: true
routerMode: hash
---

# Hi2Lo Bits

## Binary Digits

### From High-Level to Low-Level

---

# From Decimal to Binary

From 10 states to 2 states

<v-clicks>
<ChatBubble audience>Why are we using 10 digits?</ChatBubble>
<ChatBubble>Simply because we count with our 10 fingers!</ChatBubble>
<ChatBubble audience>And why do computers use 1s and 0s?</ChatBubble>
<ChatBubble>Simply because it's simple!</ChatBubble>
<ChatBubble audience>How simple is it?</ChatBubble>
<ChatBubble>Very. You will see!</ChatBubble>

</v-clicks>

---

# Radix Explained

<RadixExplanation radix="2"/>
<SlideQRCode />

---

# Addition in Decimal

Is very complicated

<v-clicks>

$9 + 9 = 18$

<ChatBubble audience>What do you mean? Addition is so simple!</ChatBubble>

<ChatBubble>It's simple because we have memorized a table.</ChatBubble>

$9 + 9 \ge 10$

<ChatBubble>Now, we know there is a carry, but how much will remain?</ChatBubble>

$9 - (10 - 9) = 8$

<ChatBubble>Imagine implementing this electronically...</ChatBubble>

</v-clicks>

---

# Addition in Binary

Is simple and effective

<v-clicks>

$9 + 9 = 18$

$1001 + 1001 = 10010$

|       |     |     |     |     |     |
| ----- | --- | --- | --- | --- | --- |
| carry | 1   |     |     | 1   |     |
| a     |     | 1   | 0   | 0   | 1   |
| b     |     | 1   | 0   | 0   | 1   |
| sum   | 1   | 0   | 0   | 1   | 0   |

</v-clicks>

---

# Yet Another Addition in Binary

Always simple and effective

<v-clicks>

$11 + 9 = 20$

$1011 + 1001 = 10100$

|       |     |     |     |     |     |
| ----- | --- | --- | --- | --- | --- |
| carry | 1   |     | 1   | 1   |     |
| a     |     | 1   | 0   | 1   | 1   |
| b     |     | 1   | 0   | 0   | 1   |
| sum   | 1   | 0   | 1   | 0   | 0   |

</v-clicks>

---

# Binary Addition Implementation

The table of truth of the half adder

<v-clicks>

| a   | b   | carry | sum |
| --- | --- | ----- | --- |
| 0   | 0   | 0     | 0   |
| 0   | 1   | 0     | 1   |
| 1   | 0   | 0     | 1   |
| 1   | 1   | 1     | 0   |

<ChatBubble audience>What about the previous carry?</ChatBubble>

<ChatBubble>Yes! It will be on the next slide.</ChatBubble>

</v-clicks>

---

# Binary Addition Implementation

The table of truth of the full adder

<v-clicks>

| a   | b   | carried | carry | sum |
| --- | --- | ------- | ----- | --- |
| 0   | 0   | 0       | 0     | 0   |
| 0   | 0   | 1       | 0     | 1   |
| 0   | 1   | 0       | 0     | 1   |
| 0   | 1   | 1       | 1     | 0   |
| 1   | 0   | 0       | 0     | 1   |
| 1   | 0   | 1       | 1     | 0   |
| 1   | 1   | 0       | 1     | 0   |
| 1   | 1   | 1       | 1     | 1   |

</v-clicks>

<SlideQRCode value="https://www.swarthmore.edu/NatSci/echeeve1/Ref/BinaryMath/BinaryMath.html" text="Learn more"/>

---

# Different Flavours of Numbers

Unsigned, signed integers and floating point numbres

<v-clicks>

<ChatBubble>We have different kind of numbers in mathematics.</ChatBubble>

$\mathbb{N} \in \mathbb{Z} \in \mathbb{Q} \in \mathbb{R} \in \mathbb{C}$

<ChatBubble>Same applies for computers.</ChatBubble>

|                                                                                                             |              |
| ----------------------------------------------------------------------------------------------------------- | ------------ |
| Unsigned Integers                                                                                           | $\mathbb{N}$ |
| Signed Integers                                                                                             | $\mathbb{Z}$ |
| <ShowQRCode text="Floating Point Numbers" value="https://en.wikipedia.org/wiki/Floating-point_arithmetic"/> | $\mathbb{Q}$ |

</v-clicks>
