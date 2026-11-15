package k2;

public abstract class c0 implements s {

    private final s f63534a;

    public c0(s sVar) {
        this.f63534a = sVar;
    }

    @Override
    public boolean advancePeekPosition(int i10, boolean z10) {
        return this.f63534a.advancePeekPosition(i10, z10);
    }

    @Override
    public int b(byte[] bArr, int i10, int i11) {
        return this.f63534a.b(bArr, i10, i11);
    }

    @Override
    public long getLength() {
        return this.f63534a.getLength();
    }

    @Override
    public long getPeekPosition() {
        return this.f63534a.getPeekPosition();
    }

    @Override
    public long getPosition() {
        return this.f63534a.getPosition();
    }

    @Override
    public boolean peekFully(byte[] bArr, int i10, int i11, boolean z10) {
        return this.f63534a.peekFully(bArr, i10, i11, z10);
    }

    @Override
    public int read(byte[] bArr, int i10, int i11) {
        return this.f63534a.read(bArr, i10, i11);
    }

    @Override
    public boolean readFully(byte[] bArr, int i10, int i11, boolean z10) {
        return this.f63534a.readFully(bArr, i10, i11, z10);
    }

    @Override
    public void resetPeekPosition() {
        this.f63534a.resetPeekPosition();
    }

    @Override
    public int skip(int i10) {
        return this.f63534a.skip(i10);
    }

    @Override
    public void skipFully(int i10) {
        this.f63534a.skipFully(i10);
    }

    @Override
    public void advancePeekPosition(int i10) {
        this.f63534a.advancePeekPosition(i10);
    }

    @Override
    public void peekFully(byte[] bArr, int i10, int i11) {
        this.f63534a.peekFully(bArr, i10, i11);
    }

    @Override
    public void readFully(byte[] bArr, int i10, int i11) {
        this.f63534a.readFully(bArr, i10, i11);
    }
}
