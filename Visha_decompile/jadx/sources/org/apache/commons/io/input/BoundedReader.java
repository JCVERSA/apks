package org.apache.commons.io.input;

import java.io.IOException;
import java.io.Reader;

public class BoundedReader extends Reader {
    private static final int INVALID = -1;
    private int charsRead = 0;
    private int markedAt = -1;
    private final int maxCharsFromTargetReader;
    private int readAheadLimit;
    private final Reader target;

    public BoundedReader(Reader reader, int i) throws IOException {
        this.target = reader;
        this.maxCharsFromTargetReader = i;
    }

    @Override
    public void close() throws IOException {
        this.target.close();
    }

    @Override
    public void mark(int i) throws IOException {
        int i2 = this.charsRead;
        this.readAheadLimit = i - i2;
        this.markedAt = i2;
        this.target.mark(i);
    }

    @Override
    public int read() throws IOException {
        int i = this.charsRead;
        if (i >= this.maxCharsFromTargetReader) {
            return -1;
        }
        int i2 = this.markedAt;
        if (i2 >= 0 && i - i2 >= this.readAheadLimit) {
            return -1;
        }
        this.charsRead = i + 1;
        return this.target.read();
    }

    @Override
    public void reset() throws IOException {
        this.charsRead = this.markedAt;
        this.target.reset();
    }

    @Override
    public int read(char[] cArr, int i, int i2) throws IOException {
        for (int i3 = 0; i3 < i2; i3++) {
            int i4 = read();
            if (i4 == -1) {
                return i3;
            }
            cArr[i + i3] = (char) i4;
        }
        return i2;
    }
}
