package defpackage;

import com.google.android.gms.internal.ads.l6;
import com.google.android.gms.internal.ads.zzaz;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;

public final class qfe {
    public static final l6 d = l6.b(i2i.b(':'));
    public static final l6 e = l6.b(i2i.b('*'));
    public final List a = new ArrayList();
    public int b = 0;
    public int c;

    public final int a(d9e d9eVar, y9e y9eVar, List list) throws zzaz {
        byte b;
        char c;
        int i = this.b;
        if (i == 0) {
            long jZzd = d9eVar.zzd();
            y9eVar.a = (jZzd == -1 || jZzd < 8) ? 0L : jZzd - 8;
            this.b = 1;
            return 1;
        }
        int i2 = 2;
        if (i != 1) {
            short s = 2817;
            short s2 = 2816;
            short s3 = 2192;
            if (i != 2) {
                long jZzf = d9eVar.zzf();
                int iZzd = (int) ((d9eVar.zzd() - d9eVar.zzf()) - ((long) this.c));
                u4h u4hVar = new u4h(iZzd);
                d9eVar.h(u4hVar.n(), 0, iZzd);
                int i3 = 0;
                while (true) {
                    List list2 = this.a;
                    if (i3 >= list2.size()) {
                        y9eVar.a = 0L;
                        return 1;
                    }
                    pfe pfeVar = (pfe) list2.get(i3);
                    u4hVar.l((int) (pfeVar.a - jZzf));
                    u4hVar.m(4);
                    int iC = u4hVar.C();
                    Charset charset = StandardCharsets.UTF_8;
                    switch (u4hVar.b(iC, charset)) {
                        case "SlowMotion_Data":
                            b = 0;
                            break;
                        case "Super_SlowMotion_Edit_Data":
                            b = 3;
                            break;
                        case "Super_SlowMotion_Data":
                            b = 1;
                            break;
                        case "Super_SlowMotion_Deflickering_On":
                            b = 4;
                            break;
                        case "Super_SlowMotion_BGM":
                            b = 2;
                            break;
                        default:
                            b = -1;
                            break;
                    }
                    if (b == 0) {
                        c = 2192;
                    } else if (b == 1) {
                        c = 2816;
                    } else if (b == 2) {
                        c = 2817;
                    } else if (b == 3) {
                        c = 2819;
                    } else {
                        if (b != 4) {
                            throw zzaz.zza("Invalid SEF name", null);
                        }
                        c = 2820;
                    }
                    int i4 = pfeVar.b - (iC + 8);
                    if (c == 2192) {
                        ArrayList arrayList = new ArrayList();
                        List listF = e.f(u4hVar.b(i4, charset));
                        for (int i5 = 0; i5 < listF.size(); i5++) {
                            List listF2 = d.f((CharSequence) listF.get(i5));
                            if (listF2.size() != 3) {
                                throw zzaz.zza(null, null);
                            }
                            try {
                                arrayList.add(new kde(Long.parseLong((String) listF2.get(0)), Long.parseLong((String) listF2.get(1)), 1 << (Integer.parseInt((String) listF2.get(2)) - 1)));
                            } catch (NumberFormatException e2) {
                                throw zzaz.zza(null, e2);
                            }
                        }
                        list.add(new lde(arrayList));
                    } else if (c != 2816 && c != 2817 && c != 2819 && c != 2820) {
                        throw new IllegalStateException();
                    }
                    i3++;
                }
            } else {
                long jZzd2 = d9eVar.zzd();
                int i6 = this.c - 20;
                u4h u4hVar2 = new u4h(i6);
                d9eVar.h(u4hVar2.n(), 0, i6);
                int i7 = 0;
                while (i7 < i6 / 12) {
                    u4hVar2.m(i2);
                    short sD = u4hVar2.d();
                    if (sD == s3 || sD == s2 || sD == s || sD == 2819 || sD == 2820) {
                        this.a.add(new pfe(sD, (jZzd2 - ((long) this.c)) - ((long) u4hVar2.C()), u4hVar2.C()));
                    } else {
                        u4hVar2.m(8);
                    }
                    i7++;
                    i6 = i6;
                    i2 = 2;
                    s = 2817;
                    s2 = 2816;
                    s3 = 2192;
                }
                List list3 = this.a;
                if (list3.isEmpty()) {
                    y9eVar.a = 0L;
                } else {
                    this.b = 3;
                    y9eVar.a = ((pfe) list3.get(0)).a;
                }
            }
        } else {
            u4h u4hVar3 = new u4h(8);
            d9eVar.h(u4hVar3.n(), 0, 8);
            this.c = u4hVar3.C() + 8;
            if (u4hVar3.A() != 1397048916) {
                y9eVar.a = 0L;
            } else {
                y9eVar.a = d9eVar.zzf() - ((long) (this.c - 12));
                this.b = 2;
            }
        }
        return 1;
    }

    public final void b() {
        this.a.clear();
        this.b = 0;
    }
}
