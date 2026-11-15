package vz;

public abstract class a0 {
    static void a(int i10, d dVar) {
        int i11 = i10 >>> 24;
        if (i11 != 0 && i11 != 1) {
            switch (i11) {
                case 16:
                case 17:
                case 18:
                case 23:
                    break;
                case 19:
                case 20:
                case 21:
                    dVar.g(i11);
                    return;
                case 22:
                    break;
                default:
                    switch (i11) {
                        case 66:
                        case 67:
                        case 68:
                        case 69:
                        case 70:
                            break;
                        case 71:
                        case 72:
                        case 73:
                        case 74:
                        case 75:
                            dVar.i(i10);
                            return;
                        default:
                            throw new IllegalArgumentException();
                    }
                    break;
            }
            dVar.e(i11, (i10 & 16776960) >> 8);
            return;
        }
        dVar.k(i10 >>> 16);
    }
}
