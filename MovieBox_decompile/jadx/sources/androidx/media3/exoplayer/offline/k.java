package androidx.media3.exoplayer.offline;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import androidx.core.app.NotificationCompat;
import androidx.media3.common.util.a1;
import androidx.media3.exoplayer.R$string;
import java.util.List;

public final class k {

    private final NotificationCompat.m f12111a;

    private static final class a {
        public static void a(NotificationCompat.m mVar) {
            mVar.x(1);
        }
    }

    public k(Context context, String str) {
        this.f12111a = new NotificationCompat.m(context.getApplicationContext(), str);
    }

    private Notification a(Context context, int i10, PendingIntent pendingIntent, String str, int i11, int i12, int i13, boolean z10, boolean z11, boolean z12) {
        this.f12111a.J(i10);
        this.f12111a.r(i11 == 0 ? null : context.getResources().getString(i11));
        this.f12111a.p(pendingIntent);
        this.f12111a.L(str != null ? new NotificationCompat.k().q(str) : null);
        this.f12111a.H(i12, i13, z10);
        this.f12111a.E(z11);
        this.f12111a.I(z12);
        if (a1.f10038a >= 31) {
            a.a(this.f12111a);
        }
        return this.f12111a.c();
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0028  */
    /* JADX WARN: Code duplicated, block: B:17:0x0032  */
    /* JADX WARN: Code duplicated, block: B:20:0x003e  */
    /* JADX WARN: Code duplicated, block: B:21:0x0040  */
    /* JADX WARN: Code duplicated, block: B:43:0x0071  */
    /* JADX WARN: Code duplicated, block: B:45:0x0075  */
    /* JADX WARN: Code duplicated, block: B:51:0x0084  */
    /* JADX WARN: Code duplicated, block: B:52:0x0089  */
    public Notification b(Context context, int i10, PendingIntent pendingIntent, String str, List list, int i11) {
        int i12;
        int i13;
        boolean z10;
        int i14;
        int i15;
        boolean z11;
        float fB;
        boolean z12;
        float f10 = 0.0f;
        boolean z13 = false;
        boolean z14 = false;
        boolean z15 = false;
        boolean z16 = false;
        boolean z17 = false;
        int i16 = 0;
        boolean z18 = true;
        for (int i17 = 0; i17 < list.size(); i17++) {
            c cVar = (c) list.get(i17);
            int i18 = cVar.f12102b;
            if (i18 == 0) {
                z15 = true;
            } else if (i18 == 2) {
                fB = cVar.b();
                if (fB != -1.0f) {
                    f10 += fB;
                    z18 = false;
                }
                if (cVar.a() > 0) {
                    z12 = true;
                } else {
                    z12 = false;
                }
                z16 |= z12;
                i16++;
                z14 = true;
            } else if (i18 == 5) {
                z17 = true;
            } else if (i18 == 7) {
                fB = cVar.b();
                if (fB != -1.0f) {
                    f10 += fB;
                    z18 = false;
                }
                if (cVar.a() > 0) {
                    z12 = true;
                } else {
                    z12 = false;
                }
                z16 |= z12;
                i16++;
                z14 = true;
            }
        }
        if (!z14) {
            if (!z15 || i11 == 0) {
                if (z17) {
                    i13 = R$string.exo_download_removing;
                } else {
                    i12 = 0;
                }
                z10 = true;
            } else {
                i12 = (i11 & 2) != 0 ? R$string.exo_download_paused_for_wifi : (i11 & 1) != 0 ? R$string.exo_download_paused_for_network : R$string.exo_download_paused;
                z10 = false;
            }
            if (z10) {
                if (z14) {
                    int i19 = (int) (f10 / i16);
                    if (z18 && z16) {
                        z13 = true;
                    }
                    i15 = i19;
                    z11 = z13;
                } else {
                    i15 = 0;
                    z11 = true;
                }
                i14 = 100;
            } else {
                i14 = 0;
                i15 = 0;
                z11 = false;
            }
            return a(context, i10, pendingIntent, str, i12, i14, i15, z11, true, false);
        }
        i13 = R$string.exo_download_downloading;
        i12 = i13;
        z10 = true;
        if (z10) {
            if (z14) {
                int i110 = (int) (f10 / i16);
                if (z18) {
                    z13 = true;
                }
                i15 = i110;
                z11 = z13;
            } else {
                i15 = 0;
                z11 = true;
            }
            i14 = 100;
        } else {
            i14 = 0;
            i15 = 0;
            z11 = false;
        }
        return a(context, i10, pendingIntent, str, i12, i14, i15, z11, true, false);
    }
}
