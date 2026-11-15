package androidx.media3.decoder;

import org.mvel2.ast.ASTNode;

public abstract class a {
    private int flags;

    public final void addFlag(int i10) {
        this.flags = i10 | this.flags;
    }

    public void clear() {
        this.flags = 0;
    }

    public final void clearFlag(int i10) {
        this.flags = (~i10) & this.flags;
    }

    protected final boolean getFlag(int i10) {
        return (this.flags & i10) == i10;
    }

    public final boolean hasSupplementalData() {
        return getFlag(ASTNode.DEOP);
    }

    public final boolean isEndOfStream() {
        return getFlag(4);
    }

    public final boolean isFirstSample() {
        return getFlag(ASTNode.NOJIT);
    }

    public final boolean isKeyFrame() {
        return getFlag(1);
    }

    public final boolean isLastSample() {
        return getFlag(ASTNode.DISCARD);
    }

    public final boolean notDependedOn() {
        return getFlag(67108864);
    }

    public final void setFlags(int i10) {
        this.flags = i10;
    }
}
