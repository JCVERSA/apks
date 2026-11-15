package com.transsion.transfer.androidasync.http.filter;

import com.transsion.transfer.androidasync.ByteBufferList;
import com.transsion.transfer.androidasync.a0;
import com.transsion.transfer.androidasync.p;
import com.transsion.transfer.androidasync.t;

public class ChunkedInputFilter extends t {

    private int f53275g = 0;

    private int f53276h = 0;

    private State f53277i = State.CHUNK_LEN;

    ByteBufferList f53278j = new ByteBufferList();

    private enum State {
        CHUNK_LEN,
        CHUNK_LEN_CR,
        CHUNK_LEN_CRLF,
        CHUNK,
        CHUNK_CR,
        CHUNK_CRLF,
        COMPLETE,
        ERROR
    }

    static class a {

        static final int[] f53279a;

        static {
            int[] iArr = new int[State.values().length];
            f53279a = iArr;
            try {
                iArr[State.CHUNK_LEN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f53279a[State.CHUNK_LEN_CR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f53279a[State.CHUNK.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f53279a[State.CHUNK_CR.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f53279a[State.CHUNK_CRLF.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f53279a[State.COMPLETE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    private boolean O(char c10, char c11) {
        if (c10 == c11) {
            return true;
        }
        this.f53277i = State.ERROR;
        M(new ChunkedDataException(c11 + " was expected, got " + c10));
        return false;
    }

    private boolean P(char c10) {
        return O(c10, '\r');
    }

    private boolean Q(char c10) {
        return O(c10, '\n');
    }

    @Override
    public void C(p pVar, ByteBufferList byteBufferList) {
        if (this.f53277i == State.ERROR) {
            byteBufferList.B();
            return;
        }
        while (byteBufferList.C() > 0) {
            try {
                switch (a.f53279a[this.f53277i.ordinal()]) {
                    case 1:
                        char cM = byteBufferList.m();
                        if (cM == '\r') {
                            this.f53277i = State.CHUNK_LEN_CR;
                        } else {
                            int i10 = this.f53275g * 16;
                            this.f53275g = i10;
                            if (cM >= 'a' && cM <= 'f') {
                                this.f53275g = i10 + (cM - 'W');
                            } else if (cM >= '0' && cM <= '9') {
                                this.f53275g = i10 + (cM - '0');
                            } else {
                                if (cM < 'A' || cM > 'F') {
                                    M(new ChunkedDataException("invalid chunk length: " + cM));
                                    return;
                                }
                                this.f53275g = i10 + (cM - '7');
                            }
                        }
                        this.f53276h = this.f53275g;
                        continue;
                    case 2:
                        if (Q(byteBufferList.m())) {
                            this.f53277i = State.CHUNK;
                            continue;
                        } else {
                            return;
                        }
                        break;
                    case 3:
                        int iMin = Math.min(this.f53276h, byteBufferList.C());
                        int i11 = this.f53276h - iMin;
                        this.f53276h = i11;
                        if (i11 == 0) {
                            this.f53277i = State.CHUNK_CR;
                        }
                        if (iMin != 0) {
                            byteBufferList.g(this.f53278j, iMin);
                            a0.a(this, this.f53278j);
                            continue;
                        }
                        break;
                    case 4:
                        if (P(byteBufferList.m())) {
                            this.f53277i = State.CHUNK_CRLF;
                            continue;
                        } else {
                            return;
                        }
                        break;
                    case 5:
                        if (Q(byteBufferList.m())) {
                            if (this.f53275g > 0) {
                                this.f53277i = State.CHUNK_LEN;
                            } else {
                                this.f53277i = State.COMPLETE;
                                M(null);
                            }
                            this.f53275g = 0;
                            continue;
                        } else {
                            return;
                        }
                        break;
                    case 6:
                        return;
                    default:
                        continue;
                }
            } catch (Exception e10) {
                M(e10);
                return;
            }
            M(e10);
            return;
        }
    }

    @Override
    public void M(Exception exc) {
        if (exc == null && this.f53277i != State.COMPLETE) {
            exc = new ChunkedDataException("chunked input ended before final chunk");
        }
        super.M(exc);
    }
}
