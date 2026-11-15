package i9;

public abstract class w implements m {

    private final m f61988a;

    public w(m mVar) {
        this.f61988a = mVar;
    }

    @Override
    public boolean advancePeekPosition(int i10, boolean z10) {
        return this.f61988a.advancePeekPosition(i10, z10);
    }

    @Override
    public int b(byte[] bArr, int i10, int i11) {
        return this.f61988a.b(bArr, i10, i11);
    }

    @Override
    public long getLength() {
        return this.f61988a.getLength();
    }

    @Override
    public long getPeekPosition() {
        return this.f61988a.getPeekPosition();
    }

    @Override
    public long getPosition() {
        return this.f61988a.getPosition();
    }

    @Override
    public boolean peekFully(byte[] bArr, int i10, int i11, boolean z10) {
        return this.f61988a.peekFully(bArr, i10, i11, z10);
    }

    @Override
    public int read(byte[] bArr, int i10, int i11) {
        return this.f61988a.read(bArr, i10, i11);
    }

    @Override
    public boolean readFully(byte[] bArr, int i10, int i11, boolean z10) {
        return this.f61988a.readFully(bArr, i10, i11, z10);
    }

    @Override
    public void resetPeekPosition() {
        this.f61988a.resetPeekPosition();
    }

    @Override
    public int skip(int i10) {
        return this.f61988a.skip(i10);
    }

    @Override
    public void skipFully(int i10) {
        this.f61988a.skipFully(i10);
    }

    @Override
    public void advancePeekPosition(int i10) {
        this.f61988a.advancePeekPosition(i10);
    }

    @Override
    public void peekFully(byte[] bArr, int i10, int i11) {
        this.f61988a.peekFully(bArr, i10, i11);
    }

    @Override
    public void readFully(byte[] bArr, int i10, int i11) {
        this.f61988a.readFully(bArr, i10, i11);
    }
}
