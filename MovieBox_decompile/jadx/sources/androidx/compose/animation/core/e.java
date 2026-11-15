package androidx.compose.animation.core;

public final class e {

    private final i f2112a;

    private final AnimationEndReason f2113b;

    public e(i iVar, AnimationEndReason animationEndReason) {
        this.f2112a = iVar;
        this.f2113b = animationEndReason;
    }

    public String toString() {
        return "AnimationResult(endReason=" + this.f2113b + ", endState=" + this.f2112a + ')';
    }
}
