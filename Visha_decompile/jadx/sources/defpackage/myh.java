package defpackage;

public final class myh extends vyh {
    public String a;
    public byte b;
    public int c;
    public int d;

    @Override
    public final vyh a(boolean z) {
        this.b = (byte) 1;
        return this;
    }

    @Override
    public final wyh b() {
        if (this.b == 1 && this.a != null && this.c != 0 && this.d != 0) {
            return new pyh(this.a, false, this.c, null, null, this.d, null);
        }
        StringBuilder sb = new StringBuilder();
        if (this.a == null) {
            sb.append(" fileOwner");
        }
        if (this.b == 0) {
            sb.append(" hasDifferentDmaOwner");
        }
        if (this.c == 0) {
            sb.append(" fileChecks");
        }
        if (this.d == 0) {
            sb.append(" filePurpose");
        }
        throw new IllegalStateException("Missing required properties:".concat(sb.toString()));
    }

    @Override
    public final vyh c(int i) {
        this.c = i;
        return this;
    }

    @Override
    public final vyh d(int i) {
        this.d = 1;
        return this;
    }

    public final vyh e(String str) {
        this.a = "";
        return this;
    }
}
