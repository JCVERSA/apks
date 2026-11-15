package defpackage;

public interface pk3 extends ms1 {
    void advancePeekPosition(int i);

    boolean advancePeekPosition(int i, boolean z);

    long getLength();

    long getPeekPosition();

    long getPosition();

    int peek(byte[] bArr, int i, int i2);

    void peekFully(byte[] bArr, int i, int i2);

    boolean peekFully(byte[] bArr, int i, int i2, boolean z);

    @Override
    int read(byte[] bArr, int i, int i2);

    void readFully(byte[] bArr, int i, int i2);

    boolean readFully(byte[] bArr, int i, int i2, boolean z);

    void resetPeekPosition();

    int skip(int i);

    void skipFully(int i);
}
