package androidx.datastore.preferences.protobuf;

public class a0 {

    private ByteString f8420a;

    private o f8421b;

    protected volatile n0 f8422c;

    private volatile ByteString f8423d;

    protected void a(n0 n0Var) {
        if (this.f8422c != null) {
            return;
        }
        synchronized (this) {
            if (this.f8422c != null) {
                return;
            }
            try {
                if (this.f8420a != null) {
                    this.f8422c = (n0) n0Var.getParserForType().a(this.f8420a, this.f8421b);
                    this.f8423d = this.f8420a;
                } else {
                    this.f8422c = n0Var;
                    this.f8423d = ByteString.EMPTY;
                }
            } catch (InvalidProtocolBufferException unused) {
                this.f8422c = n0Var;
                this.f8423d = ByteString.EMPTY;
            }
        }
    }

    public int b() {
        if (this.f8423d != null) {
            return this.f8423d.size();
        }
        ByteString byteString = this.f8420a;
        if (byteString != null) {
            return byteString.size();
        }
        if (this.f8422c != null) {
            return this.f8422c.getSerializedSize();
        }
        return 0;
    }

    public n0 c(n0 n0Var) {
        a(n0Var);
        return this.f8422c;
    }

    public ByteString d() {
        if (this.f8423d != null) {
            return this.f8423d;
        }
        ByteString byteString = this.f8420a;
        if (byteString != null) {
            return byteString;
        }
        synchronized (this) {
            try {
                if (this.f8423d != null) {
                    return this.f8423d;
                }
                if (this.f8422c == null) {
                    this.f8423d = ByteString.EMPTY;
                } else {
                    this.f8423d = this.f8422c.toByteString();
                }
                return this.f8423d;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a0)) {
            return false;
        }
        a0 a0Var = (a0) obj;
        n0 n0Var = this.f8422c;
        n0 n0Var2 = a0Var.f8422c;
        if (n0Var == null && n0Var2 == null) {
            return d().equals(a0Var.d());
        }
        if (n0Var == null || n0Var2 == null) {
            return n0Var != null ? n0Var.equals(a0Var.c(n0Var.getDefaultInstanceForType())) : c(n0Var2.getDefaultInstanceForType()).equals(n0Var2);
        }
        return n0Var.equals(n0Var2);
    }

    public int hashCode() {
        return 1;
    }
}
