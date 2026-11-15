package androidx.datastore.preferences.protobuf;

public class h0 {

    private final a f8466a;

    private final Object f8467b;

    private final Object f8468c;

    static class a {

        public final WireFormat.FieldType f8469a;

        public final Object f8470b;

        public final WireFormat.FieldType f8471c;

        public final Object f8472d;

        public a(WireFormat.FieldType fieldType, Object obj, WireFormat.FieldType fieldType2, Object obj2) {
            this.f8469a = fieldType;
            this.f8470b = obj;
            this.f8471c = fieldType2;
            this.f8472d = obj2;
        }
    }

    private h0(WireFormat.FieldType fieldType, Object obj, WireFormat.FieldType fieldType2, Object obj2) {
        this.f8466a = new a(fieldType, obj, fieldType2, obj2);
        this.f8467b = obj;
        this.f8468c = obj2;
    }

    static int b(a aVar, Object obj, Object obj2) {
        return s.b(aVar.f8469a, 1, obj) + s.b(aVar.f8471c, 2, obj2);
    }

    public static h0 d(WireFormat.FieldType fieldType, Object obj, WireFormat.FieldType fieldType2, Object obj2) {
        return new h0(fieldType, obj, fieldType2, obj2);
    }

    static void e(CodedOutputStream codedOutputStream, a aVar, Object obj, Object obj2) {
        s.w(codedOutputStream, aVar.f8469a, 1, obj);
        s.w(codedOutputStream, aVar.f8471c, 2, obj2);
    }

    public int a(int i10, Object obj, Object obj2) {
        return CodedOutputStream.S(i10) + CodedOutputStream.C(b(this.f8466a, obj, obj2));
    }

    a c() {
        return this.f8466a;
    }
}
