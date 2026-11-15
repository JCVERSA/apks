package androidx.media3.extractor;

import androidx.media3.common.util.UnstableApi;
import java.io.IOException;

@UnstableApi
public class ForwardingExtractorInput implements ExtractorInput {
    private final ExtractorInput input;

    public ForwardingExtractorInput(ExtractorInput extractorInput) {
        this.input = extractorInput;
    }

    @Override
    public boolean advancePeekPosition(int i, boolean z) throws IOException {
        return this.input.advancePeekPosition(i, z);
    }

    @Override
    public long getLength() {
        return this.input.getLength();
    }

    @Override
    public long getPeekPosition() {
        return this.input.getPeekPosition();
    }

    @Override
    public long getPosition() {
        return this.input.getPosition();
    }

    @Override
    public int peek(byte[] bArr, int i, int i2) throws IOException {
        return this.input.peek(bArr, i, i2);
    }

    @Override
    public boolean peekFully(byte[] bArr, int i, int i2, boolean z) throws IOException {
        return this.input.peekFully(bArr, i, i2, z);
    }

    @Override
    public int read(byte[] bArr, int i, int i2) throws IOException {
        return this.input.read(bArr, i, i2);
    }

    @Override
    public boolean readFully(byte[] bArr, int i, int i2, boolean z) throws IOException {
        return this.input.readFully(bArr, i, i2, z);
    }

    @Override
    public void resetPeekPosition() {
        this.input.resetPeekPosition();
    }

    @Override
    public <E extends Throwable> void setRetryPosition(long j, E e) throws Throwable {
        this.input.setRetryPosition(j, e);
    }

    @Override
    public int skip(int i) throws IOException {
        return this.input.skip(i);
    }

    @Override
    public boolean skipFully(int i, boolean z) throws IOException {
        return this.input.skipFully(i, z);
    }

    @Override
    public void advancePeekPosition(int i) throws IOException {
        this.input.advancePeekPosition(i);
    }

    @Override
    public void peekFully(byte[] bArr, int i, int i2) throws IOException {
        this.input.peekFully(bArr, i, i2);
    }

    @Override
    public void readFully(byte[] bArr, int i, int i2) throws IOException {
        this.input.readFully(bArr, i, i2);
    }

    @Override
    public void skipFully(int i) throws IOException {
        this.input.skipFully(i);
    }
}
