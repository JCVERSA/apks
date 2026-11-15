package defpackage;

public class wf5 extends j1 {
    public s0 b;

    public wf5(s0 s0Var) {
        this.b = s0Var;
    }

    public static wf5 m(Object obj) {
        if (obj instanceof wf5) {
            return (wf5) obj;
        }
        if (obj != null) {
            return new wf5(s0.z(obj));
        }
        return null;
    }

    @Override
    public p1 j() {
        return this.b;
    }

    public String toString() {
        StringBuilder sb;
        int i;
        byte[] bArrX = this.b.x();
        if (bArrX.length == 1) {
            sb = new StringBuilder();
            sb.append("KeyUsage: 0x");
            i = bArrX[0] & 255;
        } else {
            sb = new StringBuilder();
            sb.append("KeyUsage: 0x");
            i = (bArrX[0] & 255) | ((bArrX[1] & 255) << 8);
        }
        sb.append(Integer.toHexString(i));
        return sb.toString();
    }
}
