package h0;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Point;
import android.os.Build;
import g0.v;
import java.util.ArrayList;
import ru.zdevs.zarchiver.R;

public final class g {

    public static boolean f1098g = false;

    public static d[] f1099h;

    public final Context f1100a;

    public final Context f1101b;

    public final ArrayList<c0.h> f1102c = new ArrayList<>();

    public String f1103d = null;

    public int f1104e;

    public String f1105f;

    public g(Context context) {
        this.f1100a = context;
        this.f1101b = z0.e.a(context);
    }

    public static void c(Context context, ru.zdevs.zarchiver.d dVar, ru.zdevs.zarchiver.b bVar, int i2, int[] iArr, Point point) {
        g gVar;
        int[] iArr2;
        int i3;
        int i4;
        int i5;
        int[] iArr3 = iArr;
        g gVar2 = new g(context);
        if (dVar.f1681a != 0) {
            return;
        }
        h hVar = bVar.f1653c;
        byte bF = bVar.f();
        boolean zI = bVar.i();
        boolean zK = a0.c.K(i2, 1);
        if (f1099h == null) {
            boolean z2 = Build.VERSION.SDK_INT > 22;
            d[] dVarArr = new d[z2 ? 4 : 3];
            f1099h = dVarArr;
            dVarArr[0] = new j0.f();
            if (z2) {
                dVarArr[1] = new m0.e();
                i5 = 2;
            } else {
                i5 = 1;
            }
            dVarArr[i5] = new i0.c();
            dVarArr[i5 + 1] = new a0.c();
        }
        d[] dVarArr2 = f1099h;
        int length = dVarArr2.length;
        int i6 = 0;
        while (true) {
            if (i6 < length) {
                d dVar2 = dVarArr2[i6];
                if (zI) {
                    if (dVar2.b(gVar2, hVar, bF, iArr, bVar.f1668r, zK)) {
                    }
                }
                if (!zK) {
                    i3 = 2;
                    i4 = 1;
                    gVar = gVar2;
                    iArr2 = iArr3;
                    if (!dVar2.a(gVar2, hVar, bF, iArr, bVar.f1667q)) {
                        break;
                    } else {
                        break;
                    }
                }
                gVar = gVar2;
                iArr2 = iArr3;
                i3 = 2;
                i4 = 1;
                if (zK) {
                    if (dVar2.c(gVar, hVar, bF, iArr, bVar.f1667q)) {
                        break;
                    }
                }
                hVar = hVar;
                gVar2 = gVar;
                iArr3 = iArr2;
                length = length;
                i6++;
                dVarArr2 = dVarArr2;
            }
            gVar = gVar2;
            iArr2 = iArr3;
            i3 = 2;
            i4 = 1;
            break;
        }
        ArrayList<c0.h> arrayList = gVar.f1102c;
        if (arrayList.isEmpty()) {
            return;
        }
        if (iArr2.length > i4) {
            gVar.f1103d = gVar.f1100a.getString(R.string.MENU_SELECTED_FILES);
        } else if (zI) {
            gVar.f1103d = bVar.f1668r.j(iArr2[0]).f539a;
        } else {
            gVar.f1103d = bVar.f1667q.b(iArr2[0]).f539a;
        }
        v vVar = new v(dVar, gVar.f1100a, arrayList, gVar.f1103d, (a0.c.K(i2, i3) && f1098g && point != null) ? 4 : 2, point);
        ru.zdevs.zarchiver.a aVar = dVar.f1683c;
        vVar.f961b = aVar;
        vVar.f960a = aVar;
        String str = gVar.f1105f;
        if (str != null) {
            vVar.o(gVar.f1104e, str);
        }
        vVar.v();
        aVar.getClass();
        try {
            a0.a aVarA = bVar.a(iArr2);
            aVar.f1551d = aVarA;
            aVarA.h();
        } catch (Exception unused) {
        }
    }

    public final void a(int i2) {
        b(i2, "");
    }

    /* JADX WARN: Code duplicated, block: B:51:0x0259  */
    /* JADX WARN: Code duplicated, block: B:52:0x026e  */
    public final void b(int i2, String str) {
        c0.h hVar;
        c0.h hVar2;
        Context context = this.f1101b;
        Resources resources = context.getResources();
        if (i2 == 0) {
            hVar = new c0.h(1, resources.getString(R.string.MENU_VIEW), z0.c.f(context, R.attr.menuIconView), null);
        } else if (i2 == 1) {
            hVar = new c0.h(i2, resources.getString(R.string.MENU_VIEW), z0.c.f(context, R.attr.menuIconView), z0.c.f(context, R.attr.menuIconExtend));
        } else if (i2 == 3) {
            hVar = new c0.h(i2, resources.getString(R.string.MENU_OPEN), z0.c.f(context, R.attr.menuIconOpen), t0.b.l(4096) ? null : z0.c.f(context, R.attr.menuIconExtend));
        } else if (i2 == 18) {
            hVar = new c0.h(i2, resources.getString(R.string.MENU_OPEN_AS_ARC), z0.c.f(context, R.attr.menuIconView), t0.b.l(4096) ? z0.c.f(context, R.attr.menuIconExtend) : null);
        } else if (i2 == 20) {
            hVar = new c0.h(i2, resources.getString(R.string.MENU_SHARE), z0.c.f(context, R.attr.menuIconSend));
        } else if (i2 == 56) {
            hVar = new c0.h(i2, resources.getString(R.string.MENU_DELETE), z0.c.f(context, R.attr.menuIconDelete));
        } else {
            if (i2 != 57) {
                switch (i2) {
                    case 5:
                        hVar = new c0.h(i2, resources.getString(R.string.MENU_EXTRACT_TO), z0.c.f(context, R.attr.menuIconExtract));
                        break;
                    case 6:
                        hVar = new c0.h(i2, resources.getString(R.string.MENU_EXTRACT_TO_CURRENT_DIR), z0.c.f(context, R.attr.menuIconExtract));
                        break;
                    case 7:
                        hVar2 = new c0.h(i2, resources.getString(R.string.MENU_EXTRACT_TO_DIR) + " " + str, z0.c.f(context, R.attr.menuIconExtract));
                        hVar = hVar2;
                        break;
                    case 8:
                        hVar = new c0.h(i2, resources.getString(R.string.MENU_COMPRESS_TO), z0.c.f(context, R.attr.menuIconCompress));
                        break;
                    case 9:
                    case 10:
                        hVar2 = new c0.h(i2, resources.getString(R.string.MENU_COMPRESS_AS) + " " + str, z0.c.f(context, R.attr.menuIconCompress));
                        hVar = hVar2;
                        break;
                    case 11:
                        hVar = new c0.h(i2, resources.getString(R.string.MENU_TEST), z0.c.f(context, R.attr.menuIconTest));
                        break;
                    case 12:
                        hVar = new c0.h(i2, resources.getString(R.string.MENU_INSTALL), z0.c.f(context, R.attr.menuIconOpen));
                        break;
                    default:
                        switch (i2) {
                            case 14:
                                hVar = new c0.h(i2, resources.getString(R.string.MENU_ALL_SELECT), z0.c.f(context, R.attr.menuIconSelectAll));
                                break;
                            case 15:
                                hVar = new c0.h(i2, resources.getString(R.string.MENU_CLEAR_SELECT), z0.c.f(context, R.attr.menuIconSelectClear));
                                break;
                            case 16:
                                hVar = new c0.h(i2, resources.getString(R.string.MENU_INVERT_SELECT), z0.c.f(context, R.attr.menuIconSelectInvert));
                                break;
                            default:
                                switch (i2) {
                                    case 22:
                                        hVar = new c0.h(i2, resources.getString(R.string.MENU_INFO), z0.c.f(context, R.attr.menuIconInfo));
                                        break;
                                    case 23:
                                        hVar = new c0.h(i2, resources.getString(R.string.MENU_DELETE), z0.c.f(context, R.attr.menuIconDelete));
                                        break;
                                    case 24:
                                        hVar = new c0.h(i2, resources.getString(R.string.MENU_COPY), z0.c.f(context, R.attr.menuIconCopy));
                                        break;
                                    case 25:
                                        hVar = new c0.h(i2, resources.getString(R.string.MENU_CUT), z0.c.f(context, R.attr.menuIconCut));
                                        break;
                                    case 26:
                                        hVar = new c0.h(i2, resources.getString(R.string.MENU_PAST), z0.c.f(context, R.attr.menuIconPast));
                                        break;
                                    case 27:
                                        hVar = new c0.h(i2, resources.getString(R.string.MENU_RENAME), z0.c.f(context, R.attr.menuIconRename));
                                        break;
                                    default:
                                        switch (i2) {
                                            case 70:
                                                hVar = new c0.h(i2, resources.getString(R.string.MENU_FAVORITE_ADD), z0.c.f(context, R.attr.menuIconAddToFavorite));
                                                break;
                                            case 71:
                                                hVar = new c0.h(i2, resources.getString(R.string.MENU_DELETE), z0.c.f(context, R.attr.menuIconDelete));
                                                break;
                                            case 72:
                                                hVar = new c0.h(i2, resources.getString(R.string.MENU_RENAME), z0.c.f(context, R.attr.menuIconRename));
                                                break;
                                            case 73:
                                                hVar = new c0.h(i2, resources.getString(R.string.MENU_MOVE_UP), z0.c.f(context, R.attr.menuIconMoveUp));
                                                break;
                                            default:
                                                switch (i2) {
                                                    case 90:
                                                        hVar = new c0.h(i2, resources.getString(R.string.MENU_SETTINGS), z0.c.f(context, R.attr.menuIconSettings));
                                                        break;
                                                    case 91:
                                                        hVar = new c0.h(i2, resources.getString(R.string.MENU_MULTISELECT), z0.c.f(context, R.attr.menuIconMultiSelect));
                                                        break;
                                                    case 92:
                                                        hVar = new c0.h(i2, resources.getString(R.string.MENU_EXTRACT_TO_CURRENT_DIR), z0.c.f(context, R.attr.menuIconTo));
                                                        break;
                                                    case 93:
                                                        hVar2 = new c0.h(i2, resources.getString(R.string.MENU_PAST), z0.c.f(context, R.attr.menuIconTo));
                                                        hVar = hVar2;
                                                        break;
                                                    case 94:
                                                        hVar = new c0.h(i2, resources.getString(R.string.MENU_NEW), z0.c.f(context, R.attr.menuIconCompress));
                                                        break;
                                                    case 95:
                                                        hVar = new c0.h(i2, resources.getString(R.string.BTN_OK), z0.c.f(context, R.attr.menuIconOk));
                                                        break;
                                                    case 96:
                                                        hVar = new c0.h(i2, resources.getString(R.string.BTN_CANCEL), z0.c.f(context, R.attr.menuIconCancel));
                                                        break;
                                                    case 97:
                                                        hVar = new c0.h(i2, resources.getString(R.string.MENU_EXIT), z0.c.f(context, R.attr.menuIconClose));
                                                        break;
                                                    case 98:
                                                        hVar = new c0.h(i2, resources.getString(R.string.MENU_PERMISSIONS), z0.c.f(context, R.attr.menuIconPermission));
                                                        break;
                                                }
                                                break;
                                        }
                                        break;
                                }
                                break;
                        }
                        break;
                }
                return;
            }
            hVar = new c0.h(i2, resources.getString(R.string.MENU_RENAME), z0.c.f(context, R.attr.menuIconRename));
        }
        this.f1102c.add(hVar);
    }

    public final void d(ru.zdevs.zarchiver.d dVar, int i2, Point point) {
        v vVar = new v(dVar, this.f1100a, this.f1102c, this.f1103d, (a0.c.K(i2, 2) && f1098g && point != null) ? 4 : 2, point);
        vVar.f961b = dVar.f1683c;
        String str = this.f1105f;
        if (str != null) {
            vVar.o(this.f1104e, str);
        }
        vVar.v();
    }
}
