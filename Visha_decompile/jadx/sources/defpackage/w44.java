package defpackage;

public abstract class w44 implements pk3 {
    public final pk3 a;

    public w44(pk3 pk3Var) {
        this.a = pk3Var;
    }

    @Override
    public boolean advancePeekPosition(int i, boolean z) {
        return this.a.advancePeekPosition(i, z);
    }

    @Override
    public long getLength() {
        return this.a.getLength();
    }

    @Override
    public long getPeekPosition() {
        return this.a.getPeekPosition();
    }

    @Override
    public long getPosition() {
        return this.a.getPosition();
    }

    @Override
    public int peek(byte[] bArr, int i, int i2) {
        return this.a.peek(bArr, i, i2);
    }

    @Override
    public boolean peekFully(byte[] bArr, int i, int i2, boolean z) {
        return this.a.peekFully(bArr, i, i2, z);
    }

    @Override
    public int read(byte[] bArr, int i, int i2) {
        return this.a.read(bArr, i, i2);
    }

    @Override
    public boolean readFully(byte[] bArr, int i, int i2, boolean z) {
        return this.a.readFully(bArr, i, i2, z);
    }

    @Override
    public void resetPeekPosition() {
        this.a.resetPeekPosition();
    }

    @Override
    public int skip(int i) {
        return this.a.skip(i);
    }

    @Override
    public void skipFully(int i) {
        this.a.skipFully(i);
    }

    @Override
    public void advancePeekPosition(int i) {
        this.a.advancePeekPosition(i);
    }

    @Override
    public void peekFully(byte[] bArr, int i, int i2) {
        this.a.peekFully(bArr, i, i2);
    }

    @Override
    public void readFully(byte[] bArr, int i, int i2) {
        this.a.readFully(bArr, i, i2);
    }
}
