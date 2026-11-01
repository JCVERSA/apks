package s0;

import android.os.Build;
import android.os.PowerManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import ru.zdevs.zarchiver.R;
import ru.zdevs.zarchiver.archiver.C2JBridge;
import ru.zdevs.zarchiver.service.ZArchiverService;

public abstract class g extends Thread implements a {

    public final ZArchiverService f2018a;

    public byte f2019b;

    public final int f2020c;

    public int f2021d;

    public int f2022e;

    public o0.a f2023f;

    public long f2024g;

    public ArrayList<e0.a.b> f2025h;

    public g(ZArchiverService zArchiverService, byte b2, int i2) {
        super(null, null, "za_task" + ((int) b2), 2097152L);
        this.f2018a = zArchiverService;
        this.f2019b = b2;
        this.f2020c = i2;
        this.f2021d = 0;
        this.f2022e = 0;
        this.f2023f = null;
        a0.c.f19k[i2] = b2;
        a0.c.f18j[i2] = 0;
        C2JBridge.d(i2);
    }

    public void a(String str) {
    }

    public final boolean b(int i2, int i3, String str, h0.h hVar) {
        String string;
        ZArchiverService zArchiverService = this.f2018a;
        ru.zdevs.zarchiver.service.a aVar = zArchiverService.f1716c;
        byte b2 = this.f2019b;
        aVar.getClass();
        ru.zdevs.zarchiver.service.a.C0034a c0034aB = aVar.b(i2, b2, i3, ru.zdevs.zarchiver.service.a.c(hVar));
        if (c0034aB == null) {
            return true;
        }
        switch (a0.c.f19k[c0034aB.f1724c] & 127) {
            case 1:
            case 5:
                string = zArchiverService.getString(R.string.MENU_EXTRACT_TO);
                break;
            case 2:
            case 11:
            case 13:
            default:
                string = "-";
                break;
            case 3:
                string = zArchiverService.getString(R.string.MENU_COMPRESS_TO);
                break;
            case 4:
                string = zArchiverService.getString(R.string.MENU_COPY);
                break;
            case 6:
            case 8:
                string = zArchiverService.getString(R.string.MENU_DELETE);
                break;
            case 7:
                string = zArchiverService.getString(R.string.MENU_ADD_FILES);
                break;
            case 9:
                string = zArchiverService.getString(R.string.MENU_RENAME);
                break;
            case 10:
                string = zArchiverService.getString(R.string.MENU_CUT);
                break;
            case 12:
                string = zArchiverService.getString(R.string.MENU_NEW_FOLDER);
                break;
            case 14:
                string = zArchiverService.getString(R.string.MENU_INSTALL);
                break;
        }
        int i4 = c0034aB.f1723b;
        String string2 = ((i4 == 2 || i4 == 1) && (i2 == 2 || i2 == 1)) ? zArchiverService.getString(R.string.MES_BACKGROUND_ARCHIVE_LOCKED, string) : zArchiverService.getString(R.string.MES_BACKGROUND_FS_LOCKED, string, c0034aB.f1722a);
        if (str == null) {
            str = a0.c.y(hVar.f1108c);
        }
        m(str, string2);
        return false;
    }

    public void c(long j2) {
    }

    public final boolean d(h0.h hVar, boolean z2) {
        return e(z2 ? 1 : 2, 0, null, hVar);
    }

    public final boolean e(int i2, int i3, String str, h0.h hVar) {
        if (this.f2018a.f1716c.a(hVar, i2, this.f2020c, i3)) {
            return true;
        }
        return b(i2, i3, str, hVar);
    }

    public final boolean f(String str, List list, int i2) {
        h0.h hVar;
        ru.zdevs.zarchiver.service.a aVar;
        if (list.size() < 100) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                if (!e(i2, 0, str, (h0.h) it.next())) {
                    return false;
                }
            }
        } else {
            h0.h hVarF = ((h0.h) list.get(0)).f();
            if (hVarF != null) {
                Iterator it2 = list.iterator();
                do {
                    boolean zHasNext = it2.hasNext();
                    ZArchiverService zArchiverService = this.f2018a;
                    if (zHasNext) {
                        hVar = (h0.h) it2.next();
                        aVar = zArchiverService.f1716c;
                        aVar.getClass();
                    } else {
                        zArchiverService.f1716c.a(hVarF, i2, this.f2020c, 0);
                    }
                } while (!(aVar.b(i2, -1, 0, ru.zdevs.zarchiver.service.a.c(hVar)) != null));
                b(i2, 0, str, hVar);
                return false;
            }
        }
        return true;
    }

    public final boolean g(h0.h hVar, List<String> list, int i2, int i3) {
        h0.h hVar2;
        ru.zdevs.zarchiver.service.a aVar;
        if (list.size() < 100) {
            for (String str : list) {
                if (!e(i2, i3, str, new h0.h(str, hVar))) {
                    return false;
                }
            }
            return true;
        }
        Iterator<String> it = list.iterator();
        do {
            boolean zHasNext = it.hasNext();
            ZArchiverService zArchiverService = this.f2018a;
            if (!zHasNext) {
                zArchiverService.f1716c.a(hVar, i2, this.f2020c, i3);
                return true;
            }
            hVar2 = new h0.h(it.next(), hVar);
            aVar = zArchiverService.f1716c;
            aVar.getClass();
        } while (!(aVar.b(i2, -1, 0, ru.zdevs.zarchiver.service.a.c(hVar2)) != null));
        b(i2, i3, null, hVar2);
        return false;
    }

    public final boolean h() {
        if (C2JBridge.f1613c || C2JBridge.e()) {
            C2JBridge.cSetOption(1, ZArchiverService.f1713g);
            C2JBridge.cSetOption(4, ZArchiverService.i(2) ? 1 : 0);
            return true;
        }
        ZArchiverService zArchiverService = this.f2018a;
        String string = zArchiverService.getString(R.string.ERROR_7Z_LIB);
        int i2 = this.f2020c;
        e0.a.d(i2, 0, string);
        ArrayList<e0.a.b> arrayList = new ArrayList<>(1);
        arrayList.add(e0.a.a(i2));
        zArchiverService.l(this, false, arrayList, null);
        return false;
    }

    public final int i(h0.f fVar, h0.f fVar2) {
        try {
            return C2JBridge.jAskOverwrite(this.f2020c, fVar2.i(), fVar2.o(), (int) (fVar2.n() / 1000), fVar.i(), fVar.o(), (int) (fVar.n() / 1000));
        } catch (Exception unused) {
            return 0;
        }
    }

    @Override
    public final boolean isCancelled() {
        return a0.c.K(a0.c.f18j[this.f2020c], 15);
    }

    public final synchronized o0.a j() {
        if (this.f2023f == null) {
            o0.a aVarC = o0.a.c(ZArchiverService.f1712f >> 24);
            this.f2023f = aVarC;
            aVarC.f1287a = this.f2020c;
            aVarC.f1288b = "$C";
        }
        return this.f2023f;
    }

    public final boolean k(int i2) {
        return (this.f2021d & i2) == i2;
    }

    public final boolean l() {
        ArrayList<e0.a.b> arrayList = this.f2025h;
        return (arrayList == null || arrayList.isEmpty()) ? false : true;
    }

    public final void m(String str, String str2) {
        ArrayList<e0.a.b> arrayList = this.f2025h;
        if (arrayList == null) {
            this.f2025h = new ArrayList<>(1);
        } else if (arrayList.size() > 100) {
            return;
        }
        e0.a.b bVar = new e0.a.b(str);
        bVar.a(0, str2);
        this.f2025h.add(bVar);
    }

    public final void n() {
        e0.a.b bVarA = e0.a.a(this.f2020c);
        if (bVarA != null) {
            ArrayList<e0.a.b> arrayList = this.f2025h;
            if (arrayList == null) {
                this.f2025h = new ArrayList<>(1);
            } else if (arrayList.size() > 100) {
                return;
            }
            this.f2025h.add(bVarA);
        }
    }

    public final void o(String str) {
        String str2;
        o0.a aVar = this.f2023f;
        if (aVar == null || (str2 = aVar.f1289c) == null) {
            return;
        }
        ArrayList<e0.a.b> arrayList = this.f2025h;
        if (arrayList == null) {
            this.f2025h = new ArrayList<>(1);
        } else if (arrayList.size() > 100) {
            return;
        }
        e0.a.b bVar = new e0.a.b(str);
        for (String str3 : v0.h.h(str2, '\n')) {
            if (!str3.isEmpty()) {
                bVar.a(0, str3);
            }
        }
        if (!bVar.f648c.isEmpty()) {
            this.f2025h.add(bVar);
        }
    }

    public abstract void p();

    public final void q(int i2) {
        a0.c.h0(this.f2018a, this.f2020c, i2);
    }

    public final void r(byte b2) {
        this.f2019b = b2;
        a0.c.f19k[this.f2020c] = b2;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0042  */
    /* JADX WARN: Code duplicated, block: B:23:0x005c  */
    /* JADX WARN: Instruction removed from duplicated block: B:21:0x0042, please report this as an issue */
    @Override
    public final void run() {
        PowerManager.WakeLock wakeLockNewWakeLock;
        String str;
        q(0);
        PowerManager powerManager = (PowerManager) this.f2018a.getSystemService("power");
        if (powerManager != null) {
            ZArchiverService zArchiverService = this.f2018a;
            int i2 = Build.VERSION.SDK_INT;
            if (i2 < 23 || zArchiverService.checkCallingOrSelfPermission("android.permission.WAKE_LOCK") == 0) {
                if (i2 < 23) {
                    str = "ZArchiverTask[" + ((int) this.f2019b) + "]";
                } else {
                    String str2 = Build.MANUFACTURER;
                    if (str2 != null && v0.h.i(str2).contains("huawei")) {
                        str = "android.media.MediaPlayer";
                    } else {
                        str = "ZArchiverTask[" + ((int) this.f2019b) + "]";
                    }
                }
                wakeLockNewWakeLock = powerManager.newWakeLock(1, str);
            } else {
                wakeLockNewWakeLock = null;
            }
        } else {
            wakeLockNewWakeLock = null;
        }
        if (wakeLockNewWakeLock != null) {
            wakeLockNewWakeLock.acquire(18000000L);
        }
        String str3 = a0.c.f20l[this.f2020c];
        q(0);
        this.f2018a.n(this.f2020c, 3);
        this.f2024g = System.currentTimeMillis();
        if (!k(1) || j().f()) {
            p();
            if (a0.c.K(a0.c.f18j[this.f2020c], 2097152)) {
                q(2162688);
            }
            if (a0.c.J(this.f2020c)) {
                this.f2018a.l(this, false, this.f2025h, null);
                q(1114112);
            }
        } else {
            this.f2018a.f(this.f2020c, 0, "Can't get root access");
            q(1114112);
        }
        o0.a aVar = this.f2023f;
        if (aVar != null) {
            aVar.close();
        }
        if (wakeLockNewWakeLock != null) {
            try {
                wakeLockNewWakeLock.release();
            } catch (RuntimeException unused) {
            }
        }
        ru.zdevs.zarchiver.service.a aVar2 = this.f2018a.f1716c;
        int i3 = this.f2020c;
        synchronized (aVar2) {
            ListIterator<ru.zdevs.zarchiver.service.a.C0034a> listIterator = aVar2.f1721a.listIterator();
            while (listIterator.hasNext()) {
                if (listIterator.next().f1724c == i3) {
                    listIterator.remove();
                }
            }
        }
        C2JBridge.d(this.f2020c);
        this.f2018a.g(this.f2020c, 0);
        this.f2018a.r();
    }
}
