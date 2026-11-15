package defpackage;

public abstract class e05 {

    public static final class a implements od4 {
        public final ef5 a;

        public a(ef5 ef5Var) {
            this.a = ef5Var;
        }

        @Override
        public ef5[] childSerializers() {
            return new ef5[]{this.a};
        }

        @Override
        public Object deserialize(hu1 hu1Var) {
            y45.j(hu1Var, "decoder");
            throw new IllegalStateException("unsupported");
        }

        @Override
        public kotlinx.serialization.descriptors.a getDescriptor() {
            throw new IllegalStateException("unsupported");
        }

        @Override
        public void serialize(ca3 ca3Var, Object obj) {
            y45.j(ca3Var, "encoder");
            throw new IllegalStateException("unsupported");
        }

        @Override
        public ef5[] typeParametersSerializers() {
            return od4.a.a(this);
        }
    }

    public static final kotlinx.serialization.descriptors.a a(String str, ef5 ef5Var) {
        y45.j(str, "name");
        y45.j(ef5Var, "primitiveSerializer");
        return new d05(str, new a(ef5Var));
    }
}
