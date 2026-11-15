package androidx.datastore.preferences.protobuf;

final class z0 implements l0 {

    private final n0 f8626a;

    private final String f8627b;

    private final Object[] f8628c;

    private final int f8629d;

    z0(n0 n0Var, String str, Object[] objArr) {
        this.f8626a = n0Var;
        this.f8627b = str;
        this.f8628c = objArr;
        char cCharAt = str.charAt(0);
        if (cCharAt < 55296) {
            this.f8629d = cCharAt;
            return;
        }
        int i10 = cCharAt & 8191;
        int i11 = 13;
        int i12 = 1;
        while (true) {
            int i13 = i12 + 1;
            char cCharAt2 = str.charAt(i12);
            if (cCharAt2 < 55296) {
                this.f8629d = i10 | (cCharAt2 << i11);
                return;
            } else {
                i10 |= (cCharAt2 & 8191) << i11;
                i11 += 13;
                i12 = i13;
            }
        }
    }

    Object[] a() {
        return this.f8628c;
    }

    String b() {
        return this.f8627b;
    }

    @Override
    public n0 getDefaultInstance() {
        return this.f8626a;
    }

    @Override
    public ProtoSyntax getSyntax() {
        int i10 = this.f8629d;
        if ((i10 & 1) != 0) {
            return ProtoSyntax.PROTO2;
        }
        return (i10 & 4) == 4 ? ProtoSyntax.EDITIONS : ProtoSyntax.PROTO3;
    }

    @Override
    public boolean isMessageSetWireFormat() {
        return (this.f8629d & 2) == 2;
    }
}
