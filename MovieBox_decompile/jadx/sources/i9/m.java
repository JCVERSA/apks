package i9;

public interface m extends com.google.android.exoplayer2.upstream.g {
    void advancePeekPosition(int i10);

    boolean advancePeekPosition(int i10, boolean z10);

    int b(byte[] bArr, int i10, int i11);

    long getLength();

    long getPeekPosition();

    long getPosition();

    void peekFully(byte[] bArr, int i10, int i11);

    boolean peekFully(byte[] bArr, int i10, int i11, boolean z10);

    @Override
    int read(byte[] bArr, int i10, int i11);

    void readFully(byte[] bArr, int i10, int i11);

    boolean readFully(byte[] bArr, int i10, int i11, boolean z10);

    void resetPeekPosition();

    int skip(int i10);

    void skipFully(int i10);
}
