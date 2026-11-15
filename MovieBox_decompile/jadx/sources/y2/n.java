package y2;

import androidx.media3.common.util.a1;
import androidx.media3.common.v;
import com.google.common.collect.ImmutableList;
import com.google.common.primitives.Ints;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Objects;

public final class n extends i {

    public final String f76129b;

    public final String f76130c;

    public final ImmutableList f76131d;

    /* JADX WARN: Multi-variable type inference failed */
    public n(String str, String str2, List list) {
        super(str);
        androidx.media3.common.util.a.a(!list.isEmpty());
        this.f76129b = str2;
        ImmutableList immutableListCopyOf = ImmutableList.copyOf((Collection) list);
        this.f76131d = immutableListCopyOf;
        this.f76130c = (String) immutableListCopyOf.get(0);
    }

    private static List b(String str) {
        ArrayList arrayList = new ArrayList();
        try {
            if (str.length() >= 10) {
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(0, 4))));
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(5, 7))));
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(8, 10))));
            } else if (str.length() >= 7) {
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(0, 4))));
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(5, 7))));
            } else if (str.length() >= 4) {
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(0, 4))));
            }
            return arrayList;
        } catch (NumberFormatException unused) {
            return new ArrayList();
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void a(v.b bVar) {
        String str = this.f76117a;
        str.hashCode();
        byte b10 = -1;
        switch (str.hashCode()) {
            case 82815:
                if (str.equals("TAL")) {
                    b10 = 0;
                }
                break;
            case 82878:
                if (str.equals("TCM")) {
                    b10 = 1;
                }
                break;
            case 82897:
                if (str.equals("TDA")) {
                    b10 = 2;
                }
                break;
            case 83253:
                if (str.equals("TP1")) {
                    b10 = 3;
                }
                break;
            case 83254:
                if (str.equals("TP2")) {
                    b10 = 4;
                }
                break;
            case 83255:
                if (str.equals("TP3")) {
                    b10 = 5;
                }
                break;
            case 83341:
                if (str.equals("TRK")) {
                    b10 = 6;
                }
                break;
            case 83378:
                if (str.equals("TT2")) {
                    b10 = 7;
                }
                break;
            case 83536:
                if (str.equals("TXT")) {
                    b10 = 8;
                }
                break;
            case 83552:
                if (str.equals("TYE")) {
                    b10 = 9;
                }
                break;
            case 2567331:
                if (str.equals("TALB")) {
                    b10 = 10;
                }
                break;
            case 2569357:
                if (str.equals("TCOM")) {
                    b10 = 11;
                }
                break;
            case 2569358:
                if (str.equals("TCON")) {
                    b10 = 12;
                }
                break;
            case 2569891:
                if (str.equals("TDAT")) {
                    b10 = 13;
                }
                break;
            case 2570401:
                if (str.equals("TDRC")) {
                    b10 = 14;
                }
                break;
            case 2570410:
                if (str.equals("TDRL")) {
                    b10 = 15;
                }
                break;
            case 2571565:
                if (str.equals("TEXT")) {
                    b10 = 16;
                }
                break;
            case 2575251:
                if (str.equals("TIT2")) {
                    b10 = 17;
                }
                break;
            case 2581512:
                if (str.equals("TPE1")) {
                    b10 = 18;
                }
                break;
            case 2581513:
                if (str.equals("TPE2")) {
                    b10 = 19;
                }
                break;
            case 2581514:
                if (str.equals("TPE3")) {
                    b10 = 20;
                }
                break;
            case 2583398:
                if (str.equals("TRCK")) {
                    b10 = 21;
                }
                break;
            case 2590194:
                if (str.equals("TYER")) {
                    b10 = 22;
                }
                break;
        }
        try {
            switch (b10) {
                case 0:
                case 10:
                    bVar.P((CharSequence) this.f76131d.get(0));
                    break;
                case 1:
                case 11:
                    bVar.U((CharSequence) this.f76131d.get(0));
                    break;
                case 2:
                case 13:
                    String str2 = (String) this.f76131d.get(0);
                    bVar.h0(Integer.valueOf(Integer.parseInt(str2.substring(2, 4)))).g0(Integer.valueOf(Integer.parseInt(str2.substring(0, 2))));
                    break;
                case 3:
                case 18:
                    bVar.Q((CharSequence) this.f76131d.get(0));
                    break;
                case 4:
                case 19:
                    bVar.O((CharSequence) this.f76131d.get(0));
                    break;
                case 5:
                case 20:
                    bVar.V((CharSequence) this.f76131d.get(0));
                    break;
                case 6:
                case 21:
                    String[] strArrO1 = a1.o1((String) this.f76131d.get(0), "/");
                    bVar.s0(Integer.valueOf(Integer.parseInt(strArrO1[0]))).r0(strArrO1.length > 1 ? Integer.valueOf(Integer.parseInt(strArrO1[1])) : null);
                    break;
                case 7:
                case 17:
                    bVar.p0((CharSequence) this.f76131d.get(0));
                    break;
                case 8:
                case 16:
                    bVar.t0((CharSequence) this.f76131d.get(0));
                    break;
                case 9:
                case 22:
                    bVar.i0(Integer.valueOf(Integer.parseInt((String) this.f76131d.get(0))));
                    break;
                case 12:
                    Integer numP = Ints.p((String) this.f76131d.get(0));
                    if (numP != null) {
                        String strA = j.a(numP.intValue());
                        if (strA != null) {
                            bVar.c0(strA);
                        }
                    } else {
                        bVar.c0((CharSequence) this.f76131d.get(0));
                    }
                    break;
                case 14:
                    List listB = b((String) this.f76131d.get(0));
                    int size = listB.size();
                    if (size != 1) {
                        if (size != 2) {
                            if (size == 3) {
                                bVar.g0((Integer) listB.get(2));
                            }
                        }
                        bVar.h0((Integer) listB.get(1));
                    }
                    bVar.i0((Integer) listB.get(0));
                    break;
                case 15:
                    List listB2 = b((String) this.f76131d.get(0));
                    int size2 = listB2.size();
                    if (size2 != 1) {
                        if (size2 != 2) {
                            if (size2 == 3) {
                                bVar.j0((Integer) listB2.get(2));
                            }
                        }
                        bVar.k0((Integer) listB2.get(1));
                    }
                    bVar.l0((Integer) listB2.get(0));
                    break;
            }
        } catch (NumberFormatException | StringIndexOutOfBoundsException unused) {
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || n.class != obj.getClass()) {
            return false;
        }
        n nVar = (n) obj;
        return Objects.equals(this.f76117a, nVar.f76117a) && Objects.equals(this.f76129b, nVar.f76129b) && this.f76131d.equals(nVar.f76131d);
    }

    public int hashCode() {
        int iHashCode = (527 + this.f76117a.hashCode()) * 31;
        String str = this.f76129b;
        return ((iHashCode + (str != null ? str.hashCode() : 0)) * 31) + this.f76131d.hashCode();
    }

    @Override
    public String toString() {
        return this.f76117a + ": description=" + this.f76129b + ": values=" + this.f76131d;
    }
}
