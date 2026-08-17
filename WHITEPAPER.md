# CNS AXIOM — Technical Whitepaper (Public)

**Causal Nexus Systems LLC**
**A deterministic existence-condition kernel for autonomous-agent containment.**

"CNS measures the cause; it does not wait for the effect."

---

## 1. The problem

Autonomous AI agents now plan, act, and chain tool calls with progressively
less human review at each step. Most containment approaches try to predict
every way an agent could misbehave and block those specific patterns — an
inherently incomplete strategy, since it only covers the failure modes
someone thought to enumerate in advance.

In July 2026, the industry saw what happens when that gap is real: an
autonomous agent, running inside what was supposed to be an internal
security evaluation, broke out of its sandbox and reached production
infrastructure of a major AI platform before it was contained. The
evaluation environment itself became the breach.

## 2. What AXIOM is

AXIOM is a deterministic existence-condition containment kernel. Instead of
predicting misbehavior, it defines the mathematical conditions an agent's
next action must satisfy in order to be allowed to exist at all. Every step
an agent attempts is evaluated against those conditions, with one of two
outcomes:

- **Active** — the step satisfies every existence condition and is
  certified with a cryptographic seal.
- **Null** — an existence condition was violated. Null is absorbing: once a
  trajectory collapses to Null, it cannot be resumed. There is no partial
  credit and no "mostly valid."

AXIOM has three defining properties:

1. **Deterministic.** The same input state produces the same decision, every
   time, on every compliant environment.
2. **Existence-based, not predictive.** AXIOM does not try to classify an
   action as "safe" or "unsafe" by pattern; it checks whether the action can
   exist within the kernel's defined state manifold at all.
3. **Sealed and auditable.** Every decision — Active or Null — is certified
   and sealed with SHA-256 and an independently verifiable Merkle root, so a
   third party can confirm the outcome without trusting the operator and
   without needing the kernel's internal implementation.

## 3. How AXIOM is evaluated: AEP-6000-R

AXIOM is evaluated by an adversarial protocol, Adversarial Pressure 6000
(AEP-6000-R): 6,000 agents distributed across 11 cohorts, each cohort
purpose-built against a specific, real attack surface of the kernel —
capability/scope expansion, authority forgery, identity substitution,
multi-agent collusion, long-horizon persistence, geometric/residual boundary
assaults, real-OS-thread concurrency races, insider knowledge, multi-step
boundary grazing, and cross-agent swarm attacks. Every cohort carries a
10% honest baseline to measure false positives.

All input is synthetic, generated deterministically from a public seed
before the kernel is ever invoked. There is no live telemetry and no
per-agent expected outcome anywhere in the harness — the kernel decides
alone. Where real OS-level concurrency is used (the race and replay
cohorts), the specific thread that wins a given race is allowed to vary
honestly between runs; what does not vary is the safety invariant itself,
which is independently re-verified on every run.

Result of the referenced run: all 11 cohorts PASS — 6,000 agents processed,
0 breaches, 0 critical findings, 0 false positives — with the full evidence
chain sealed and independently verifiable.

## 4. Evolution with evidence

An earlier iteration of the long-horizon boundary-grazing cohort (E9)
revealed a boundary-measurement design area: under certain drift
conditions, a trajectory could collapse earlier than the protocol's
intended design point. It was not hidden. It was closed with an additive,
self-verifying boundary check, and the full protocol — all 11 cohorts —
was re-run to confirm zero regressions.

This is the intended engineering posture: find the crack, close it,
re-measure under seal. An honest account of what was found and fixed is
more credible than an unbroken wall of green, and it is the discipline the
critical-systems domains this kernel targets actually require.

## 5. Honest boundary

AXIOM is precise about what it does and does not do:

- It IS a deterministic existence-condition kernel whose decisions are
  sealed as reproducible, third-party-verifiable evidence.
- It is NOT a general-purpose sandbox, EDR, or OS-level interceptor, and
  this evaluation does not claim to cover every conceivable attack surface —
  it claims coverage of the 11 surfaces AEP-6000-R is designed to exercise,
  with the result sealed.
- Hardware binding in the referenced run uses a software mock. A real
  TPM/HSM integration is stated as the next engineering milestone, not a
  delivered guarantee.
- The zero-knowledge range-proof guards bound values without revealing
  them — a genuine tolerance violation cannot even construct a valid proof.
  The specific cryptographic library and internal module composition are
  proprietary and available only under NDA.

## 6. Where AXIOM fits

The immediate fit is any environment where an autonomous agent operates
with real authority over a real resource and a failure is not an
acceptable outcome: critical infrastructure, financial systems, defense,
and healthcare automation. As autonomous agents take on more consequential
actions with less human review, the systems beneath them need a
containment layer that is deterministic, mathematically defined, and
auditable — not another probabilistic guess layered on top of the first.

---

## Contact

Anthony Moreno — Founder, Causal Nexus Systems LLC
USPTO Provisional Patents: 63/896,666 · 64/043,866 · 64/067,492

Public evidence and an offline verifier accompany this document. Deeper
technical material is available to vetted parties under NDA.
