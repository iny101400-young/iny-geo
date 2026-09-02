# iny-geo

**검색과 AI 답변에 걸리게 하는 항목의 기준 원본 한 장입니다.**

에셋엔진 워크플로우에서 **04 · 05 · 06 · 07 · 08 이 함께 읽는 문서**입니다.

---

## ★ 이 스킬은 일을 하지 않습니다. 기준을 갖고 있습니다

무엇을 붙이고 무엇을 안 붙이나, 그 근거가 몇 등급인가,
항목마다 **누가 정하고 누가 붙이고 누가 재나**를 한 표로 갖고 있습니다.

| | |
|---|---|
| 원본 | `references/기준.md` |
| 읽는 이 | **04 · 05 · 06 · 07 · 08** |
| 고치는 자리 | **여기 한 곳뿐** |

---

## 왜 따로 떼어 놓았나

**같은 표를 스킬마다 베껴 두면 하나만 고쳤을 때 나머지가 어긋납니다.**

04 는 어느 화면에 무슨 표시를 붙일지 정하고, 05 는 그걸 실제로 붙이고,
07 은 붙었나 재고, 08 은 효과를 잽니다. **넷이 같은 표를 봐야 말이 맞습니다.**

그래서 표를 한 장에 두고 넷이 그 파일을 읽습니다.
**새 근거가 나오면 여기만 고칩니다.**

---

## 안에 무엇이 있나

| | |
|---|---|
| 등급 넷 | 넣나 안 넣나 · 근거가 얼마나 센가 |
| **데이터로 부정된 것 열둘** | 널리 하는데 효과가 확인 안 된 것들 |
| 효과가 확인된 것 | 글에 무엇을 쓰나 |
| **항목 마스터** | 항목마다 누가 정하고 붙이고 재나 |
| **아직 아무도 안 하는 자리** | 구멍을 구멍이라고 적어 둡니다 |

**「근거 없음」도 그대로 적습니다.** 근거가 없다는 것을 아는 게 근거입니다.

---

## 설치

**혼자 깔지 않으셔도 됩니다.** 04·05·06·07·08 을 깔 때 **같이 받아옵니다.**

따로 받고 싶으시면 이렇게 하시면 됩니다.

```bash
git clone https://github.com/iny101400-young/iny-geo.git
cd iny-geo
bash install.sh
```

`~/.claude/skills/iny-geo-기준/` 에 깔립니다. **폴더 이름에 「기준」이 붙습니다.**
다른 스킬들이 그 경로로 찾기 때문입니다. 저장소 이름만 영문입니다.

---

## 쓰는 법

따로 부르지 않아도 04·05·06·07·08 이 알아서 읽습니다.

직접 물으실 수도 있습니다.

```
이거 근거 있어?
이 항목 누가 하는 거야
```

항목 이름으로 찾아서 등급과 담당을 답합니다.

---

## 필요한 것

| | |
|---|---|
| [Claude Code](https://claude.com/claude-code) | 스킬은 여기서 돌아갑니다 |

이 스킬 자체는 아무것도 안 깔고 아무것도 안 돌립니다. 문서 한 장입니다.

---

## 워크플로우 전체

```
01 material → 02 identify → 03 structure → 04 design
→ 05 build → 07 tech → 06 publish → 08 measure ⟳
                └────── 이 문서를 읽는 다섯 ──────┘
```

| 단계 | 저장소 |
|---|---|
| 01 재료화 | [iny-material](https://github.com/iny101400-young/iny-material) |
| 02 컨셉 | [iny-identify](https://github.com/iny101400-young/iny-identify) |
| 03 구조 | [iny-structure](https://github.com/iny101400-young/iny-structure) |
| 04 화면 | [iny-design](https://github.com/iny101400-young/iny-design) |
| 05 사이트 | [iny-build](https://github.com/iny101400-young/iny-build) |
| 07 점검 | [iny-tech](https://github.com/iny101400-young/iny-tech) |
| 06 글 쓰기 | [iny-publish](https://github.com/iny101400-young/iny-publish) |
| 08 글 재기 | [iny-measure](https://github.com/iny101400-young/iny-measure) |

**07 이 06 보다 먼저입니다.** 07 이 만든 글쓰기 규칙으로 06 이 씁니다.

---

라이선스는 [MIT](LICENSE) 입니다.
