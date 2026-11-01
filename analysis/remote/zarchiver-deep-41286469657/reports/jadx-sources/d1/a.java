package d1;

public final class a extends b {

    public final int f568a;

    public final int f569b;

    public a(int i2, int i3) {
        this.f568a = i3;
        this.f569b = i2;
    }

    /* JADX WARN: Code duplicated, block: B:107:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:51:0x0072 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x00ac, code lost:
    
        if ((r15 > 0 ? r14[r15 - 1] : 0) == '-') goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x00ae, code lost:
    
        return 64;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final byte a(byte b2, char c2, char[] cArr, int i2) {
        switch (this.f568a) {
            case 0:
                if (this.f569b != 13) {
                    if (b2 != 1 || c2 != '=') {
                        if (b2 != 1 || (c2 != '[' && c2 != ']')) {
                            if (b2 == 1 && c2 == '#' && i2 == 0) {
                                return (byte) 21;
                            }
                            if ((b2 & 15) == 7) {
                                return (byte) 0;
                            }
                            return b2;
                        }
                        return (byte) 7;
                    }
                    return (byte) 23;
                }
                if (b2 != 5) {
                    if (b2 != 1 || c2 != ':') {
                        if (c2 != '{' && c2 != '}') {
                            if (c2 == '.') {
                                return (byte) 39;
                            }
                            if (c2 == '/') {
                                int i3 = i2 + 1;
                                if ((i3 < cArr.length ? cArr[i3] : (char) 0) == '*') {
                                    return (byte) 5;
                                }
                            }
                        }
                        return (byte) 7;
                    }
                    return (byte) 23;
                }
                if ((i2 > 0 ? cArr[i2 - 1] : (char) 0) == '*' && c2 == '/') {
                    return (byte) 65;
                }
                if ((b2 & 15) == 7) {
                    return (byte) 0;
                }
                return b2;
            default:
                if (b2 == 1) {
                    b2 = 0;
                }
                if (Character.isLetterOrDigit(c2)) {
                    b2 = e(b2);
                } else if (b2 == 0 || (b2 & 7) == 7) {
                    int i4 = i2 + 1;
                    char c3 = i4 < cArr.length ? cArr[i4] : (char) 0;
                    if (c2 == '<') {
                        return c3 == '!' ? (byte) 5 : (byte) 7;
                    }
                    if (c2 == '>') {
                        return (byte) 23;
                    }
                    if ((c2 == '/' || c2 == '?') && c3 == '>') {
                        return (byte) 23;
                    }
                    if (c2 == '\"') {
                        return (byte) 2;
                    }
                    if (c2 == '\'') {
                        return (byte) 18;
                    }
                } else if ((b2 & 15) != 2) {
                    if (b2 == 5 && c2 == '>') {
                    }
                    break;
                } else {
                    int i5 = b2 & 48;
                    if (c2 != '\"') {
                    }
                }
                return b2;
        }
    }

    @Override
    public final int c() {
        return this.f569b;
    }

    @Override
    public final byte d(byte b2) {
        switch (this.f568a) {
            case 0:
                if (b2 == 5) {
                    return b2;
                }
                return (byte) 1;
            default:
                if (b2 == 5) {
                    return b2;
                }
                return (byte) 0;
        }
    }

    @Override
    public final byte e(byte b2) {
        switch (this.f568a) {
            case 0:
                if (b2 == 7) {
                    return (byte) 1;
                }
                if (b2 == 23) {
                    return (byte) 0;
                }
                if (b2 == 39) {
                    b2 = 2;
                }
                return b2;
            default:
                if (b2 == 7) {
                    return (byte) 1;
                }
                if ((b2 & 15) == 2 || b2 == 5) {
                    return b2;
                }
                return (byte) 0;
        }
    }

    @Override
    public final byte f(char[] cArr, int i2, int i3) {
        switch (this.f568a) {
            case 0:
                return (byte) 0;
            default:
                return (byte) 12;
        }
    }
}
