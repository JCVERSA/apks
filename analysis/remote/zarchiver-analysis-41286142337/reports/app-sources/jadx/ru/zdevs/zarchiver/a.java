package ru.zdevs.zarchiver;

import a0.g0;
import a0.l0;
import a0.m0;
import a0.n0;
import a0.r;
import a0.s0;
import a0.v0;
import a0.w0;
import android.app.AlertDialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.os.storage.StorageVolume;
import android.preference.PreferenceManager;
import android.util.SparseArray;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.Spinner;
import g0.a0;
import g0.b0;
import g0.i;
import g0.k;
import g0.m;
import g0.n;
import g0.o;
import g0.p;
import g0.s;
import g0.v;
import g0.w;
import g0.x;
import g0.y;
import h0.h;
import h1.j;
import java.io.File;
import java.io.FileReader;
import java.io.LineNumberReader;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import ru.zdevs.zarchiver.io.KitKatExtSD;
import ru.zdevs.zarchiver.io.SAF;
import ru.zdevs.zarchiver.io.ZAIO;
import ru.zdevs.zarchiver.ui.FSSelect;
import v0.f;
import x0.g;

public final class a extends x0.d.b implements i.d, i.c {

    public final d f1549b;

    public j f1553f;

    public ZArchiver f1550c = null;

    public a0.a f1551d = null;

    public a0.a f1552e = null;

    public final ru.zdevs.zarchiver.c f1554g = new ru.zdevs.zarchiver.c();

    public final C0028a f1555h = new C0028a();

    public class C0028a extends BroadcastReceiver {
        public C0028a() {
        }

        /* JADX WARN: Code duplicated, block: B:69:0x013c  */
        /* JADX WARN: Code duplicated, block: B:70:0x0140  */
        /* JADX WARN: Code duplicated, block: B:71:0x0144  */
        @Override
        public final synchronized void onReceive(Context context, Intent intent) {
            a0 a0Var;
            int i2;
            if (a.this.f1550c != null && intent != null && intent.getExtras() != null) {
                Bundle extras = intent.getExtras();
                int i3 = extras.getInt("iTaskID");
                int i4 = extras.getInt("iTaskType");
                int i5 = extras.getInt("iAction");
                if (i5 != 8) {
                    int i6 = 0;
                    if (i5 != 15) {
                        switch (i5) {
                            case 1:
                                if (a.this.f1549b.b(i3, 2, -1) == null) {
                                    if (i4 == -127) {
                                        i2 = R.string.MES_DECOMPRESS_FILE_PROCESS;
                                    } else if (i4 == -121) {
                                        i2 = R.string.MES_ADD_TO_ARCHIVE;
                                    } else if (i4 == -117) {
                                        i2 = R.string.MES_TEST_FILE_PROCESS;
                                    } else if (i4 != 1) {
                                        switch (i4) {
                                            case 4:
                                            case 13:
                                                i2 = R.string.MES_COPY_FILE;
                                                break;
                                            case 5:
                                                i2 = R.string.MES_DECOMPRESS_FILE_PROCESS;
                                                break;
                                            case 6:
                                                i2 = R.string.MES_REMOVE_FILE;
                                                break;
                                            case 7:
                                            case 12:
                                                i2 = R.string.MES_ADD_TO_ARCHIVE;
                                                break;
                                            case 8:
                                                i2 = R.string.MES_DEL_FROM_ARCHIVE;
                                                break;
                                            case 9:
                                                i2 = R.string.MES_RENAME_FILE_PROCESS;
                                                break;
                                            case 10:
                                                i2 = R.string.MES_MOVE_FILE;
                                                break;
                                            case 11:
                                                i2 = R.string.MES_TEST_FILE_PROCESS;
                                                break;
                                            default:
                                                i2 = R.string.MES_COMPRESS_FILE_PROCESS;
                                                break;
                                        }
                                    } else {
                                        i2 = R.string.MES_DECOMPRESS_FILE_PROCESS;
                                    }
                                    a aVar = a.this;
                                    a0 a0Var2 = new a0(aVar.f1549b, aVar.f1550c, i2);
                                    a0Var2.f962c = i3;
                                    a aVar2 = a.this;
                                    a0Var2.f961b = aVar2;
                                    a0Var2.f960a = aVar2;
                                    AlertDialog alertDialog = a0Var2.f912g;
                                    if (alertDialog != null && i.s(alertDialog)) {
                                        Button button = a0Var2.f912g.getButton(-2);
                                        button.setTag(-2);
                                        button.setOnClickListener(a0Var2);
                                        Button button2 = a0Var2.f912g.getButton(-1);
                                        button2.setTag(-1);
                                        button2.setOnClickListener(a0Var2);
                                    }
                                }
                                break;
                            case 2:
                                a.this.f1549b.a(i3, extras.getInt("iDialogType", 2), false);
                                break;
                            case 3:
                                a0 a0Var3 = (a0) a.this.f1549b.b(i3, 2, -1);
                                if (a0Var3 != null) {
                                    String string = extras.getString("sText");
                                    if (a0Var3.f912g != null) {
                                        a0Var3.f915j.setText(string);
                                    }
                                }
                                break;
                            case 4:
                                a0 a0Var4 = (a0) a.this.f1549b.b(i3, 2, -1);
                                if (a0Var4 != null) {
                                    a0Var4.t(extras.getInt("iProgress", 0), extras.getInt("iSpeed", -1));
                                }
                                break;
                            case 5:
                                if (((k) a.this.f1549b.b(i3, 12, -1)) == null) {
                                    a aVar3 = a.this;
                                    k kVar = new k(aVar3.f1549b, aVar3.f1550c);
                                    kVar.f962c = i3;
                                    a aVar4 = a.this;
                                    kVar.f961b = aVar4;
                                    kVar.f960a = aVar4;
                                    AlertDialog alertDialog2 = kVar.f972g;
                                    if (alertDialog2 != null) {
                                        i.s(alertDialog2);
                                    }
                                }
                                break;
                            case 6:
                                int i7 = extras.getInt("iType");
                                h hVar = (h) extras.getParcelable("oPath");
                                int i8 = t0.b.l(128) ? 2 : 1;
                                for (int i9 = 0; i9 < i8; i9++) {
                                    ru.zdevs.zarchiver.b bVar = a.this.f1549b.f1686f[i9];
                                    if (bVar != null && (hVar == null || hVar.b(bVar.f1653c) == 0)) {
                                        if (!bVar.i()) {
                                            a.this.f1550c.T(i9, true, true, false);
                                        } else if (a0.c.K(i7, 2)) {
                                            bVar.f1656f |= 2;
                                        }
                                    }
                                }
                                a.this.f1550c.R(4);
                                break;
                            default:
                                switch (i5) {
                                    case 18:
                                        if (extras.getInt("iType") != 2) {
                                            ZApp.j(extras.getString("sText"));
                                        } else {
                                            ZApp.j(extras.getString("sText"));
                                            ZArchiver zArchiver = a.this.f1550c;
                                            if (zArchiver != null) {
                                                zArchiver.B(true);
                                            }
                                        }
                                        break;
                                    case 19:
                                        int i10 = extras.getInt("iFlags", 0);
                                        String string2 = extras.getString("sFilePath");
                                        if (string2 != null) {
                                            h hVar2 = (h) intent.getParcelableExtra("oPath");
                                            if (hVar2 == null) {
                                                hVar2 = new h("file", string2);
                                            }
                                            g0 g0Var = new g0(1, string2);
                                            ZArchiver zArchiver2 = a.this.f1550c;
                                            g0Var.g(zArchiver2, zArchiver2.f270c);
                                            if ((i10 & 128) != 0) {
                                                a.d(a.this.f1550c, hVar2, null, null);
                                            } else {
                                                a aVar5 = a.this;
                                                a.j(aVar5.f1550c, hVar2, 0L, false, i10 & 8, aVar5.f1549b.c().f1658h, (byte) 1);
                                            }
                                            ZApp zApp = ZApp.f1434c;
                                            if (zApp != null) {
                                                zApp.h();
                                            }
                                        }
                                        break;
                                    case 20:
                                        String string3 = extras.getString("sFilePath");
                                        if (string3 != null) {
                                            g0 g0Var2 = new g0(0, string3);
                                            ZArchiver zArchiver3 = a.this.f1550c;
                                            g0Var2.g(zArchiver3, zArchiver3.f270c);
                                        }
                                        break;
                                    case 21:
                                        Parcelable[] parcelableArray = extras.getParcelableArray("oErrorData");
                                        if (parcelableArray != null) {
                                            e0.a.b[] bVarArr = new e0.a.b[parcelableArray.length];
                                            while (i6 < parcelableArray.length) {
                                                bVarArr[i6] = (e0.a.b) parcelableArray[i6];
                                                i6++;
                                            }
                                            a aVar6 = a.this;
                                            AlertDialog alertDialog3 = new n(aVar6.f1549b, aVar6.f1550c, bVarArr).f979g;
                                            if (alertDialog3 != null) {
                                                i.s(alertDialog3);
                                            }
                                        }
                                        break;
                                    case 22:
                                        a0 a0Var5 = (a0) a.this.f1549b.b(i3, 2, -1);
                                        if (a0Var5 != null) {
                                            a0Var5.t(extras.getInt("iProgress", 0), -1);
                                            String string4 = extras.getString("sText");
                                            if (a0Var5.f912g != null) {
                                                a0Var5.f915j.setText(string4);
                                            }
                                        }
                                        break;
                                    case 23:
                                        a.d(a.this.f1550c, (h) extras.getParcelable("sFilePath"), (h) extras.getParcelable("oPath"), null);
                                        break;
                                    case 24:
                                        Parcelable[] parcelableArray2 = extras.getParcelableArray("oData");
                                        if (parcelableArray2 != null) {
                                            e0.i[] iVarArr = new e0.i[parcelableArray2.length];
                                            while (i6 < parcelableArray2.length) {
                                                iVarArr[i6] = (e0.i) parcelableArray2[i6];
                                                i6++;
                                            }
                                            a aVar7 = a.this;
                                            AlertDialog alertDialog4 = new n(aVar7.f1549b, aVar7.f1550c, iVarArr).f979g;
                                            if (alertDialog4 != null) {
                                                i.s(alertDialog4);
                                            }
                                        }
                                        break;
                                }
                                break;
                        }
                    } else if ((i4 & (-128)) == -128 && (a0Var = (a0) a.this.f1549b.b(i3, 2, -1)) != null) {
                        String string5 = extras.getString("sText");
                        if (a0Var.f912g != null) {
                            if (a0Var.f916k.getVisibility() == 8) {
                                a0Var.f916k.setVisibility(0);
                            }
                            a0Var.f916k.setText(string5);
                        }
                    }
                } else {
                    e0.c cVar = (e0.c) intent.getParcelableExtra("oData");
                    if (cVar != null && ((g0.c) a.this.f1549b.b(i3, 9, -1)) == null) {
                        a aVar8 = a.this;
                        g0.c cVar2 = new g0.c(aVar8.f1549b, aVar8.f1550c, cVar);
                        cVar2.f962c = i3;
                        a aVar9 = a.this;
                        cVar2.f961b = aVar9;
                        cVar2.f960a = aVar9;
                        AlertDialog alertDialog5 = cVar2.f929g;
                        if (alertDialog5 != null && i.s(alertDialog5)) {
                            i.q(cVar2.f929g, cVar2.f931i);
                        }
                    }
                }
            }
        }
    }

    public static class c extends AsyncTask<Void, Void, Boolean> {

        public final WeakReference<ZArchiver> f1560a;

        public final Intent f1561b;

        public final boolean f1562c;

        public class C0030a implements i.c {
            public C0030a() {
            }

            @Override
            public final void b(i iVar) {
                ZArchiver zArchiver = c.this.f1560a.get();
                if (zArchiver != null) {
                    zArchiver.finish();
                }
            }
        }

        public c(ZArchiver zArchiver, Intent intent, boolean z2) {
            this.f1560a = new WeakReference<>(zArchiver);
            this.f1561b = intent;
            this.f1562c = z2;
        }

        /* JADX WARN: Code duplicated, block: B:11:0x0020  */
        public static String a(Uri uri) {
            String str = null;
            String strF = f.f(null, uri);
            if (strF == null || g.c(strF) == 1) {
                str = strF;
            } else {
                File file = new File(strF);
                if (file.exists() && file.canRead()) {
                    str = strF;
                }
            }
            return str == null ? ZAIO.a(uri) : str;
        }

        @Override
        public final Boolean doInBackground(Void[] voidArr) {
            ArrayList arrayList;
            String strA;
            Intent intent = this.f1561b;
            if ("android.intent.action.SEND".equals(intent.getAction())) {
                arrayList = new ArrayList();
                Parcelable parcelableExtra = intent.getParcelableExtra("android.intent.extra.STREAM");
                if ((parcelableExtra instanceof Uri) && (strA = a((Uri) parcelableExtra)) != null) {
                    arrayList.add(strA);
                }
            } else if ("android.intent.action.SEND_MULTIPLE".equals(intent.getAction())) {
                arrayList = new ArrayList();
                ArrayList parcelableArrayListExtra = intent.getParcelableArrayListExtra("android.intent.extra.STREAM");
                if (parcelableArrayListExtra != null && parcelableArrayListExtra.size() > 0 && (parcelableArrayListExtra.get(0) instanceof Uri)) {
                    Iterator it = parcelableArrayListExtra.iterator();
                    while (it.hasNext()) {
                        String strA2 = a((Uri) ((Parcelable) it.next()));
                        if (strA2 != null) {
                            arrayList.add(strA2);
                        }
                    }
                }
            } else {
                arrayList = null;
            }
            if (arrayList == null || arrayList.size() <= 0) {
                return Boolean.FALSE;
            }
            ZArchiver zArchiver = this.f1560a.get();
            if (zArchiver == null) {
                return Boolean.FALSE;
            }
            try {
                zArchiver.f1445h.f1683c.f1551d = new a0.a((ArrayList<String>) arrayList);
                return Boolean.TRUE;
            } catch (Exception unused) {
                return Boolean.FALSE;
            }
        }

        @Override
        public final void onPostExecute(Boolean bool) {
            a0.a aVar;
            Boolean bool2 = bool;
            ZArchiver zArchiver = this.f1560a.get();
            if (zArchiver == null) {
                return;
            }
            try {
                i iVarB = zArchiver.f1445h.b(-1, 1, 18);
                if (iVarB != null) {
                    iVarB.e();
                }
            } catch (Exception unused) {
            }
            if (!bool2.booleanValue() || (aVar = zArchiver.f1445h.f1683c.f1551d) == null) {
                ZApp.i(R.string.ERROR_DATA_ERROR);
                if (this.f1562c) {
                    zArchiver.finish();
                    return;
                }
                return;
            }
            try {
                h hVarG = aVar.g();
                if (hVarG.j() && !hVarG.i()) {
                    ru.zdevs.zarchiver.b bVarC = zArchiver.f1445h.c();
                    bVarC.l(hVarG, (byte) 0, 0);
                    zArchiver.L(bVarC.f1652b, 128, hVarG);
                }
            } catch (Exception unused2) {
            }
            zArchiver.f1445h.f1683c.n(zArchiver, null, 8);
        }

        @Override
        public final void onPreExecute() {
            ZArchiver zArchiver = this.f1560a.get();
            if (zArchiver == null) {
                return;
            }
            y yVar = new y(zArchiver.f1445h, zArchiver, R.string.MES_WHITE_START_SERVICE, 0);
            yVar.r(18);
            yVar.f960a = new C0030a();
            yVar.t();
        }
    }

    public a(d dVar) {
        this.f1549b = dVar;
    }

    public static void d(ZArchiver zArchiver, h hVar, h hVar2, String[] strArr) {
        String strE;
        if (hVar != null) {
            if (a0.c.E(hVar.f1108c) == 6) {
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.addCategory("android.intent.category.DEFAULT");
                intent.setDataAndType(n0.a.f1232a ? KitKatExtSD.c(hVar) : SAF.h(zArchiver, hVar, false), "application/vnd.android.package-archive");
                intent.setFlags(268435457);
                if (v0.e.h(zArchiver, intent) == 0) {
                    return;
                }
            }
            strE = hVar.e();
        } else if (hVar2 == null) {
            return;
        } else {
            strE = strArr != null ? strArr[0] : "";
        }
        if (Build.VERSION.SDK_INT < 21) {
            return;
        }
        y yVar = new y(0, zArchiver, strE, zArchiver.f1445h);
        yVar.r(23);
        yVar.t();
        new l0(yVar, hVar, hVar2, strArr).g(null, zArchiver.f270c);
    }

    public static void j(ZArchiver zArchiver, h hVar, long j2, boolean z2, int i2, int i3, byte b2) {
        new n0(hVar, j2, z2, i2, i3, b2).g(null, zArchiver.f270c);
    }

    /* JADX WARN: Code duplicated, block: B:344:0x0678  */
    /* JADX WARN: Code duplicated, block: B:345:0x0680  */
    /* JADX WARN: Code duplicated, block: B:352:0x069e  */
    /* JADX WARN: Code duplicated, block: B:365:0x06dc  */
    /* JADX WARN: Code duplicated, block: B:370:0x06f0  */
    /* JADX WARN: Code duplicated, block: B:373:0x06f7  */
    /* JADX WARN: Code duplicated, block: B:374:0x0702  */
    /* JADX WARN: Code duplicated, block: B:377:0x0709  */
    /* JADX WARN: Code duplicated, block: B:379:0x070f  */
    /* JADX WARN: Code duplicated, block: B:380:0x0719  */
    /* JADX WARN: Code duplicated, block: B:571:0x0af7  */
    /* JADX WARN: Code duplicated, block: B:573:0x0afd A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:575:0x0aff  */
    /* JADX WARN: Code duplicated, block: B:577:0x0b05  */
    /* JADX WARN: Code duplicated, block: B:578:0x0b07  */
    /* JADX WARN: Code duplicated, block: B:581:0x0b11  */
    /* JADX WARN: Code duplicated, block: B:592:0x0b4b  */
    /* JADX WARN: Code duplicated, block: B:596:0x0b72  */
    /* JADX WARN: Code duplicated, block: B:598:0x0b81  */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override
    public final boolean a(i iVar) {
        boolean z2;
        h hVarD;
        ru.zdevs.zarchiver.service.c cVar;
        String strA0;
        StringBuilder sb;
        char c2;
        String[] strArrG;
        x0.d.a aVarJ;
        String line;
        String str;
        String line2;
        String strSubstring;
        File parentFile;
        h hVar;
        String strU;
        boolean z3;
        a aVar;
        String str2;
        int length;
        int i2;
        h hVar2;
        h hVar3;
        ZArchiver zArchiver;
        String str3;
        CheckBox checkBox;
        int i3;
        String[] list;
        String[] list2;
        String strA1 = "";
        int selectedItemPosition = -1;
        line = null;
        String line3 = null;
        String str4 = null;
        switch (iVar.l()) {
            case 2:
                ZArchiver zArchiver2 = this.f1550c;
                if (zArchiver2 != null) {
                    zArchiver2.B(false);
                }
                return true;
            case 3:
                m mVar = (m) iVar;
                String strTrim = mVar.f977h.trim();
                if (strTrim.isEmpty()) {
                    return false;
                }
                int iK = mVar.k();
                try {
                    if (iK == 1) {
                        if (n0.e.a(strTrim)) {
                            return false;
                        }
                        if (mVar.k() == 24) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        if (this.f1549b.f(4)) {
                            ru.zdevs.zarchiver.c cVar2 = this.f1554g;
                            hVarD = this.f1549b.d();
                            cVar = cVar2.f1675a.get();
                            if (cVar != null && hVarD.g() && !ru.zdevs.zarchiver.c.c(hVarD)) {
                                String strY = a0.c.y(hVarD.f1108c);
                                strA0 = a0.c.a0(hVarD.f1110e);
                                sb = new StringBuilder();
                                if (!v0.h.e(strA0)) {
                                    sb.append("\\-spp");
                                    sb.append(strA0);
                                    sb.append('/');
                                }
                                a0.c.e(sb, strY, a0.c.q(hVarD), false);
                                cVar.ArchiveCreateFile(strY, hVarD, sb.toString(), strTrim, z2, ru.zdevs.zarchiver.c.f(hVarD, true) ? 1 : 0);
                            }
                        } else if (!this.f1554g.d(this.f1549b.d(), 3)) {
                            m0 m0Var = new m0(strTrim, this.f1549b.d(), z2);
                            ZArchiver zArchiver3 = this.f1550c;
                            m0Var.g(zArchiver3, zArchiver3.f270c);
                        }
                    } else if (iK == 12) {
                        a0.a aVar2 = this.f1551d;
                        if (aVar2 == null || aVar2.h() != 1 || !mVar.f978i) {
                            return true;
                        }
                        h hVarG = this.f1551d.g();
                        d0.d dVar = this.f1551d.f0a.get(0);
                        if (dVar.f539a.equals(strTrim)) {
                            return true;
                        }
                        if (hVarG.o() && n0.e.a(strTrim)) {
                            return false;
                        }
                        ru.zdevs.zarchiver.b bVarC = this.f1549b.c();
                        if (bVarC.i() ? h0.f.e(new h(strTrim, hVarG.f())) : bVarC.f1667q.e(strTrim)) {
                            ZApp.i(R.string.MES_FILE_EXISTS);
                            return false;
                        }
                        if (this.f1549b.f(4)) {
                            ru.zdevs.zarchiver.c cVar3 = this.f1554g;
                            String str5 = dVar.f539a;
                            ru.zdevs.zarchiver.service.c cVar4 = cVar3.f1675a.get();
                            if (cVar4 != null && !ru.zdevs.zarchiver.c.c(hVarG)) {
                                strA1 = hVarG.g() ? a0.c.a0(hVarG.f1110e) : "";
                                h hVarQ = a0.c.q(hVarG);
                                String strE = hVarQ.e();
                                if (!v0.h.e(strA1)) {
                                    str5 = strA1 + '/' + str5;
                                    strTrim = strA1 + '/' + strTrim;
                                }
                                String str6 = strTrim;
                                String str7 = str5;
                                StringBuilder sb2 = new StringBuilder();
                                a0.c.e(sb2, strE, hVarQ, false);
                                cVar4.ArchiveRenFile(strE, hVarQ, sb2.toString(), str7, str6, ru.zdevs.zarchiver.c.f(hVarG, true) ? 1 : 0);
                            }
                        } else if (!this.f1554g.d(new h(dVar.f539a, hVarG), 4)) {
                            d dVar2 = this.f1549b;
                            s0 s0Var = new s0(dVar2.f1685e, dVar2.f1687g, hVarG, dVar, strTrim);
                            ZArchiver zArchiver4 = this.f1550c;
                            s0Var.g(zArchiver4, zArchiver4.f270c);
                        }
                    } else if (iK != 16) {
                        if (iK == 24) {
                            if (n0.e.a(strTrim)) {
                                return false;
                            }
                            if (mVar.k() == 24) {
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                            if (this.f1549b.f(4)) {
                                ru.zdevs.zarchiver.c cVar5 = this.f1554g;
                                hVarD = this.f1549b.d();
                                cVar = cVar5.f1675a.get();
                                if (cVar != null) {
                                    String strY2 = a0.c.y(hVarD.f1108c);
                                    strA0 = a0.c.a0(hVarD.f1110e);
                                    sb = new StringBuilder();
                                    if (!v0.h.e(strA0)) {
                                        sb.append("\\-spp");
                                        sb.append(strA0);
                                        sb.append('/');
                                    }
                                    a0.c.e(sb, strY2, a0.c.q(hVarD), false);
                                    cVar.ArchiveCreateFile(strY2, hVarD, sb.toString(), strTrim, z2, ru.zdevs.zarchiver.c.f(hVarD, true) ? 1 : 0);
                                }
                            } else if (!this.f1554g.d(this.f1549b.d(), 3)) {
                                m0 m0Var2 = new m0(strTrim, this.f1549b.d(), z2);
                                ZArchiver zArchiver5 = this.f1550c;
                                m0Var2.g(zArchiver5, zArchiver5.f270c);
                            }
                        }
                    } else if (mVar.f978i && !this.f1554g.d(this.f1549b.d(), 1)) {
                        d dVar3 = this.f1549b;
                        v0 v0Var = new v0(dVar3.f1685e, strTrim, dVar3.d());
                        ZArchiver zArchiver6 = this.f1550c;
                        v0Var.g(zArchiver6, zArchiver6.f270c);
                    }
                    break;
                } catch (Exception unused) {
                }
                return true;
            case 4:
                w wVar = (w) iVar;
                int iK2 = wVar.k();
                if (iK2 == 3) {
                    a0.a aVar3 = this.f1551d;
                    if (aVar3 != null) {
                        ru.zdevs.zarchiver.service.c cVar6 = this.f1554g.f1675a.get();
                        if (cVar6 == null) {
                            c2 = 1;
                        } else {
                            h hVarG2 = aVar3.g();
                            try {
                                if (hVarG2.o() || hVarG2.k()) {
                                    int iH = aVar3.h();
                                    if (iH == 1) {
                                        byte bD = g.d(hVarG2, true);
                                        if (bD == 2) {
                                            c2 = 4;
                                        } else {
                                            cVar6.Remove(hVarG2, aVar3.j(), (bD == 3 && t0.b.i(hVarG2.f1108c)) ? 1 : 0);
                                        }
                                    } else {
                                        ArrayList<d0.d> arrayList = aVar3.f0a;
                                        if (!arrayList.isEmpty() && (arrayList.get(0) instanceof d0.f)) {
                                            Collections.sort(arrayList, new h1.e(0));
                                        }
                                        boolean zJ = t0.b.j();
                                        ArrayList arrayList2 = new ArrayList(iH);
                                        int i4 = 0;
                                        for (int i5 = 0; i5 < iH; i5++) {
                                            h hVarA = aVar3.a(i5);
                                            arrayList2.add(hVarA);
                                            if (zJ && i4 == 0 && ru.zdevs.zarchiver.c.f(hVarA, true)) {
                                                i4 = 1;
                                            }
                                        }
                                        cVar6.RemoveList(arrayList2, i4);
                                    }
                                    c2 = 0;
                                } else if (hVarG2.g()) {
                                    h hVarQ2 = a0.c.q(hVarG2);
                                    String strE2 = hVarQ2.e();
                                    if (!ru.zdevs.zarchiver.c.c(hVarQ2)) {
                                        StringBuilder sb3 = new StringBuilder();
                                        if (aVar3.f1b != null) {
                                            String strD = a0.c.d(a0.c.b0(hVarG2.f1110e));
                                            for (String str8 : aVar3.j()) {
                                                sb3.append("\\");
                                                sb3.append(strD);
                                                sb3.append(str8);
                                            }
                                        } else {
                                            int iH2 = aVar3.h();
                                            for (int i6 = 0; i6 < iH2; i6++) {
                                                h hVar4 = aVar3.f1b;
                                                if (hVar4 == null) {
                                                    hVar4 = ((d0.f) aVar3.f0a.get(i6)).f552k;
                                                }
                                                String strD2 = a0.c.d(a0.c.b0(hVar4.f1110e));
                                                sb3.append("\\");
                                                sb3.append(strD2);
                                                sb3.append(aVar3.b(i6));
                                            }
                                        }
                                        StringBuilder sb4 = new StringBuilder();
                                        a0.c.e(sb4, strE2, hVarQ2, false);
                                        cVar6.ArchiveDelFiles(strE2, hVarQ2, sb4.toString(), sb3.toString(), ru.zdevs.zarchiver.c.f(hVarG2, true) ? 1 : 0);
                                        c2 = 0;
                                    } else {
                                        c2 = 5;
                                    }
                                } else {
                                    c2 = 3;
                                }
                            } catch (Exception unused2) {
                                c2 = 2;
                            }
                        }
                        if (c2 == 0) {
                            if (this.f1551d.d(f0.a.m().l())) {
                                f0.a.m().a();
                            }
                            if (this.f1551d.d(e0.h.d().f689a)) {
                                e0.h.d().a();
                            }
                        } else if (c2 == 4) {
                            h hVarA2 = this.f1551d.a(0);
                            String strI = (hVarA2.m() && (strArrG = SAF.g(hVarA2.r())) != null && strArrG.length == 2 && (aVarJ = x0.d.j(strArrG[0])) != null) ? a0.c.i(aVarJ.f2255b, strArrG[1]) : null;
                            if (strI == null) {
                                strI = hVarA2.r();
                            }
                            x0.d.a aVarI = x0.d.i(strI);
                            if (aVarI != null) {
                                String strB = aVarI.b(strI);
                                this.f1553f = new b(a0.c.A(strI), a0.c.y(strI), aVarI.c(strB, false));
                                if (aVarI.d(strB)) {
                                    this.f1550c.onActivityResult(109, -1, null);
                                } else {
                                    s.t(this.f1549b, this.f1550c, 109, 0, aVarI, 3, strB);
                                }
                            }
                        }
                    }
                    break;
                } else {
                    try {
                        if (iK2 == 9) {
                            ZArchiver zArchiver7 = this.f1550c;
                            if (zArchiver7 != null) {
                                zArchiver7.B(false);
                            }
                            ru.zdevs.zarchiver.c cVar7 = this.f1554g;
                            int i7 = iVar.f962c;
                            ru.zdevs.zarchiver.service.c cVar8 = cVar7.f1675a.get();
                            if (cVar8 != null) {
                                cVar8.SetStatusTask(i7, 15);
                            }
                            break;
                        } else if (iK2 == 17) {
                            SparseArray<Object> sparseArray = iVar.f964e;
                            ru.zdevs.zarchiver.c.a aVar4 = (ru.zdevs.zarchiver.c.a) (sparseArray == null ? null : sparseArray.get(0));
                            SparseArray<Object> sparseArray2 = iVar.f964e;
                            h hVar5 = (h) (sparseArray2 != null ? sparseArray2.get(1) : null);
                            if (aVar4 != null && hVar5 != null && this.f1550c != null) {
                                if (f0.a.m().n(aVar4.f1676a.f1108c)) {
                                    f0.a.m().a();
                                }
                                aVar4.f1680e = (byte) 2;
                                g(aVar4);
                            }
                        } else if (iK2 == 19) {
                            String strJ = wVar.j(1);
                            if (!v0.h.e(strJ)) {
                                Integer.parseInt(strJ);
                            }
                            break;
                        } else {
                            switch (iK2) {
                                case 13:
                                    f("zip", true);
                                    break;
                                case 14:
                                    f("7z", true);
                                    break;
                                case 15:
                                    String strJ2 = wVar.j(0);
                                    if (strJ2 != null) {
                                        File file = new File(strJ2.concat(".hash"));
                                        if (file.exists()) {
                                            try {
                                                FileReader fileReader = new FileReader(file);
                                                LineNumberReader lineNumberReader = new LineNumberReader(fileReader);
                                                lineNumberReader.readLine();
                                                line = lineNumberReader.readLine();
                                                try {
                                                    strSubstring = lineNumberReader.readLine();
                                                    try {
                                                        line2 = lineNumberReader.readLine();
                                                        try {
                                                            line3 = lineNumberReader.readLine();
                                                            lineNumberReader.close();
                                                            fileReader.close();
                                                        } catch (Exception unused3) {
                                                            str = line3;
                                                            str4 = strSubstring;
                                                            strSubstring = str4;
                                                            line3 = str;
                                                        }
                                                    } catch (Exception unused4) {
                                                        line2 = null;
                                                    }
                                                } catch (Exception unused5) {
                                                    str = null;
                                                    line2 = null;
                                                    strSubstring = str4;
                                                    line3 = str;
                                                    File file2 = new File(strJ2);
                                                    parentFile = file2.getParentFile();
                                                    if (parentFile == null) {
                                                        hVar = new h("/");
                                                    } else {
                                                        hVar = new h(parentFile.getAbsolutePath());
                                                    }
                                                    strU = a0.c.u(line);
                                                    if (strU.equals("zip")) {
                                                        z3 = true;
                                                    } else {
                                                        z3 = true;
                                                    }
                                                    if (z3) {
                                                        aVar = this;
                                                        str2 = "";
                                                    } else {
                                                        aVar = this;
                                                        str2 = "";
                                                    }
                                                    String name = file2.getName();
                                                    length = name.length();
                                                    if (strSubstring != null) {
                                                        strSubstring = "";
                                                    } else {
                                                        strSubstring = "";
                                                    }
                                                    if (strSubstring.length() > length) {
                                                        int length2 = strSubstring.length() - length;
                                                        i2 = 0;
                                                        strSubstring = strSubstring.substring(0, length2);
                                                    } else {
                                                        i2 = 0;
                                                    }
                                                    if (strSubstring.endsWith("/")) {
                                                        strA1 = strSubstring;
                                                    } else if (strSubstring.length() > 1) {
                                                        strA1 = strSubstring.substring(i2, strSubstring.length() - 1);
                                                    }
                                                    aVar.f1554g.a(hVar, "\\".concat(name), str2, new h("arch", line, strA1), 256);
                                                    return true;
                                                }
                                            } catch (Exception unused6) {
                                                line = "";
                                            }
                                            File file3 = new File(strJ2);
                                            parentFile = file3.getParentFile();
                                            if (parentFile == null) {
                                                hVar = new h("/");
                                            } else {
                                                hVar = new h(parentFile.getAbsolutePath());
                                            }
                                            strU = a0.c.u(line);
                                            if (strU.equals("zip") || strU.equals("7z")) {
                                                z3 = true;
                                            } else {
                                                z3 = false;
                                            }
                                            if (z3 || line3 == null || line2 == null) {
                                                aVar = this;
                                                str2 = "";
                                            } else {
                                                String strConcat = "\\-p".concat(line3);
                                                if (line2.charAt(0) == 'a') {
                                                    strConcat = strConcat + "\\-mhe";
                                                    aVar = this;
                                                    if (aVar.f1550c != null) {
                                                        e0.h hVarD2 = e0.h.d();
                                                        if (!hVarD2.e(line)) {
                                                            hVarD2.g(line, line3);
                                                        }
                                                    }
                                                } else {
                                                    aVar = this;
                                                }
                                                str2 = strConcat;
                                            }
                                            String name2 = file3.getName();
                                            length = name2.length();
                                            if (strSubstring != null || strSubstring.length() <= length) {
                                                strSubstring = "";
                                            }
                                            if (strSubstring.length() > length) {
                                                int length3 = strSubstring.length() - length;
                                                i2 = 0;
                                                strSubstring = strSubstring.substring(0, length3);
                                            } else {
                                                i2 = 0;
                                            }
                                            if (strSubstring.endsWith("/")) {
                                                strA1 = strSubstring;
                                            } else if (strSubstring.length() > 1) {
                                                strA1 = strSubstring.substring(i2, strSubstring.length() - 1);
                                            }
                                            aVar.f1554g.a(hVar, "\\".concat(name2), str2, new h("arch", line, strA1), 256);
                                            break;
                                        }
                                    }
                                    break;
                                default:
                                    break;
                            }
                        }
                    } catch (Exception unused7) {
                    }
                }
                return true;
            case 5:
                g0.h hVar6 = (g0.h) iVar;
                int iK3 = hVar6.k();
                if (iK3 == 10) {
                    a0.a aVar5 = this.f1551d;
                    if (aVar5 != null) {
                        if (!hVar6.f954r) {
                            h(hVar6.f959w, hVar6.f958v, hVar6.f951o, hVar6.u(), hVar6.f956t != null ? (byte) 1 : (byte) 0);
                            return true;
                        }
                        ru.zdevs.zarchiver.c cVar9 = this.f1554g;
                        String str9 = hVar6.f959w;
                        String str10 = hVar6.f958v;
                        String strI2 = hVar6.f951o;
                        boolean zU = hVar6.u();
                        ru.zdevs.zarchiver.service.c cVar10 = cVar9.f1675a.get();
                        if (cVar10 != null) {
                            h hVarG3 = aVar5.g();
                            if (hVarG3.o()) {
                                if (strI2.startsWith("/")) {
                                    hVar2 = new h(a0.c.A(strI2));
                                } else {
                                    String str11 = t0.b.f2080a;
                                    hVar2 = str11 != null ? new h(str11) : hVarG3;
                                    strI2 = a0.c.i(hVar2.r(), strI2);
                                }
                                boolean z4 = ru.zdevs.zarchiver.c.f(hVar2, true) || ru.zdevs.zarchiver.c.f(hVarG3, false);
                                char c3 = strI2.contains("<name>") ? (char) 1 : strI2.contains("<name.ext>") ? (char) 2 : (char) 0;
                                int iH3 = aVar5.h();
                                boolean zF = aVar5.f();
                                ArrayList arrayList3 = new ArrayList(iH3);
                                ArrayList arrayList4 = new ArrayList(iH3);
                                int i8 = 0;
                                while (i8 < iH3) {
                                    int i9 = iH3;
                                    String strB2 = aVar5.b(i8);
                                    arrayList3.add(zF ? aVar5.a(i8).r() : strB2);
                                    if (c3 == 0) {
                                        arrayList4.add(new h(strB2));
                                    } else if (c3 == 1) {
                                        if (!aVar5.e(i8)) {
                                            strB2 = a0.c.Z(strB2);
                                        }
                                        arrayList4.add(new h(strI2.replace("<name>", strB2)));
                                    } else if (c3 == 2) {
                                        arrayList4.add(new h(strI2.replace("<name.ext>", strB2)));
                                    }
                                    i8++;
                                    iH3 = i9;
                                    zF = zF;
                                }
                                String str12 = "-t" + str9 + str10;
                                if (str9.equals("7z") && (str10.contains("-mx=9") || str10.contains("-mx=7"))) {
                                    f0.a.m().a();
                                }
                                int i10 = zU ? 4 : 0;
                                int i11 = z4 ? i10 | 1 : i10;
                                try {
                                    if (hVarG3.n()) {
                                        h hVar7 = new h(hVarG3);
                                        String str13 = hVar7.f1108c;
                                        hVar7.f1108c = str13.substring(0, str13.length() - 3);
                                        hVar3 = hVar7;
                                    } else {
                                        hVar3 = hVarG3;
                                    }
                                    cVar10.ArchiveCompressMulti(arrayList4, str12, arrayList3, hVar3, i11);
                                    break;
                                } catch (Exception unused8) {
                                }
                            }
                        }
                    }
                } else if (iK3 == 11 && (zArchiver = this.f1550c) != null) {
                    zArchiver.F('\"');
                    String str14 = hVar6.f951o;
                    this.f1553f = new ru.zdevs.zarchiver.c.a(str14.startsWith("/") ? new h(str14) : new h(str14, this.f1549b.d()), hVar6.f959w, hVar6.f958v, hVar6.u(), (byte) 0);
                    ZApp.i(R.string.MES_SELECT_FILES);
                }
                return true;
            case 6:
                b(iVar);
                return true;
            case 7:
                p pVar = (p) iVar;
                if (pVar.w(false).isEmpty()) {
                    str3 = "";
                } else {
                    str3 = "\\-p" + pVar.w(true);
                    if (pVar.f1028o == 2 && pVar.f1020g != null) {
                        Spinner spinner = (Spinner) pVar.f1022i.findViewById(R.id.spn_encrypt);
                        if (spinner.getVisibility() == 0) {
                            selectedItemPosition = spinner.getSelectedItemPosition();
                        }
                    }
                    if (selectedItemPosition == 1) {
                        str3 = str3 + "\\-mem=AES128";
                    } else if (selectedItemPosition == 2) {
                        str3 = str3 + "\\-mem=AES192";
                    } else if (selectedItemPosition == 3) {
                        str3 = str3 + "\\-mem=AES256";
                    }
                }
                if (pVar.v() >= 0) {
                    str3 = str3 + "\\-mx=" + pVar.v();
                }
                String str15 = str3;
                if (pVar.k() == 6) {
                    h0.f fVarU = h0.f.u(pVar.x());
                    if (!fVarU.k()) {
                        return true;
                    }
                    this.f1554g.a(new h(fVarU.j()), "\\" + fVarU.i(), str15, this.f1549b.d(), 0);
                    return true;
                }
                if (pVar.f1020g != null) {
                    FSSelect fSSelect = (FSSelect) pVar.f1022i.findViewById(R.id.fss_file_list);
                    h path = fSSelect.getPath();
                    String strD3 = path.m() ? a0.c.d(path.f1108c) : null;
                    d0.c cVar11 = (d0.c) fSSelect.getAdapter();
                    if (cVar11 != null && cVar11.f560h.f521a > 0) {
                        StringBuilder sb5 = new StringBuilder();
                        for (int i12 : cVar11.d()) {
                            d0.d dVarA = cVar11.a(i12);
                            sb5.append("\\");
                            if (strD3 != null) {
                                sb5.append(strD3);
                            }
                            sb5.append(dVarA.f539a);
                        }
                        strA1 = sb5.toString();
                    }
                }
                String str16 = strA1;
                if (v0.h.e(str16)) {
                    return true;
                }
                this.f1554g.a(pVar.x(), str16, str15, this.f1549b.d(), 0);
                return true;
            case 8:
            case 13:
            case 14:
            default:
                return false;
            case 9:
                g0.c cVar12 = (g0.c) iVar;
                int i13 = cVar12.f935m ? 4 : 1;
                AlertDialog alertDialog = cVar12.f929g;
                boolean zIsChecked = (alertDialog == null || (checkBox = (CheckBox) alertDialog.findViewById(R.id.cb_to_all)) == null) ? cVar12.f933k : checkBox.isChecked();
                if (zIsChecked) {
                    i13 |= 16;
                }
                ru.zdevs.zarchiver.c cVar13 = this.f1554g;
                int i14 = cVar12.f962c;
                ru.zdevs.zarchiver.service.c cVar14 = cVar13.f1675a.get();
                if (cVar14 == null) {
                    return true;
                }
                try {
                    cVar14.SetOverwrite(i14, i13);
                    cVar14.HideNotification(i14);
                    return true;
                } catch (Exception unused9) {
                    return true;
                }
            case 10:
                v vVar = (v) iVar;
                ZArchiver zArchiver8 = this.f1550c;
                if (zArchiver8 != null) {
                    n(zArchiver8, vVar, vVar.f1050j);
                }
                return true;
            case 11:
                if (this.f1550c == null) {
                    return false;
                }
                g0.a aVar6 = (g0.a) iVar;
                String str17 = aVar6.f909i;
                strA1 = str17 != null ? str17.replace('|', '!').replace(']', ')').replace('[', '(') : "";
                int i15 = aVar6.f911k;
                try {
                    try {
                        if (aVar6.k() != 21) {
                            if (aVar6.k() == 22) {
                                t0.a.j(this.f1550c, a0.c.i0(-1, aVar6.j(0)), i15, strA1);
                            }
                            this.f1550c.R(2);
                            return true;
                        }
                        a0.a aVar7 = this.f1551d;
                        if (aVar7 == null || aVar7.h() != 1 || v0.h.e(strA1) || !this.f1551d.g().o()) {
                            return false;
                        }
                        t0.a.a(i15, this.f1550c, strA1, this.f1551d.a(0).r());
                        this.f1550c.R(2);
                        return true;
                    } catch (Exception unused10) {
                        return true;
                    }
                } catch (Exception unused11) {
                }
                break;
            case 12:
                k kVar = (k) iVar;
                ru.zdevs.zarchiver.c cVar15 = this.f1554g;
                int i16 = kVar.f962c;
                String str18 = kVar.f974i;
                ru.zdevs.zarchiver.service.c cVar16 = cVar15.f1675a.get();
                if (cVar16 == null) {
                    return true;
                }
                try {
                    cVar16.SetPassword(i16, str18);
                    cVar16.HideNotification(i16);
                    return true;
                } catch (Exception unused12) {
                    return true;
                }
            case 15:
                t0.b.o(this.f1550c, 64);
                if (this.f1550c == null) {
                    return false;
                }
                String strJ3 = iVar.j(1);
                if (strJ3 != null) {
                    int i17 = Integer.parseInt(strJ3);
                    switch (i17) {
                        case 1:
                            this.f1550c.D(R.id.bPast);
                            break;
                        case 2:
                        case 3:
                            a0.a aVar8 = this.f1551d;
                            if (aVar8 != null) {
                                this.f1554g.b(aVar8, this.f1549b.d(), i17 == 3, this.f1549b.f(2));
                            }
                            break;
                        case 4:
                            n(this.f1550c, null, 23);
                            break;
                        case 5:
                            n(this.f1550c, null, 98);
                            break;
                        case 6:
                            n(this.f1550c, null, 27);
                            break;
                        case 7:
                            this.f1550c.D(R.id.bNewFolder);
                            break;
                        case 8:
                            e(this.f1549b.d(), this.f1549b.f(2));
                            break;
                        case 9:
                            this.f1550c.D(R.id.bNewFile);
                            break;
                    }
                }
                d dVar4 = this.f1549b;
                if (dVar4.f1681a == 0 || !dVar4.f1683c.m(this.f1550c, false)) {
                    return true;
                }
                this.f1550c.f269b.finish();
                return true;
            case 16:
                x xVar = (x) iVar;
                if ((xVar.v().f1070a != 0 ? 1 : 0) == 0) {
                    return true;
                }
                w0 w0Var = new w0(xVar.f1063h, xVar.f1064i, xVar.v());
                ZArchiver zArchiver9 = this.f1550c;
                w0Var.g(zArchiver9, zArchiver9.f270c);
                return true;
            case 17:
                g0.b bVar = (g0.b) iVar;
                if (!(!bVar.f920j.equals(bVar.f919i)) || (i3 = Build.VERSION.SDK_INT) < 33) {
                    return true;
                }
                if (bVar.k() != 1) {
                    if (bVar.k() != 12) {
                        return true;
                    }
                    String strI3 = a0.c.i(bVar.f921k, bVar.f920j);
                    String str19 = bVar.f919i;
                    x0.d.a aVarI2 = x0.d.i(strI3);
                    if (aVarI2 == null) {
                        return true;
                    }
                    String strB3 = aVarI2.b(strI3);
                    this.f1553f = new b(strI3, str19, aVarI2.c(strB3, false));
                    if (aVarI2.d(strB3)) {
                        this.f1550c.onActivityResult(110, -1, null);
                        return true;
                    }
                    s.t(this.f1549b, this.f1550c, 110, 0, aVarI2, 3, strB3);
                    return true;
                }
                String str20 = bVar.f921k;
                String str21 = bVar.f919i;
                x0.d.a aVarI3 = x0.d.i(str20);
                if (aVarI3 == null) {
                    return true;
                }
                String strI4 = a0.c.i(str20, str21);
                if ((!aVarI3.e() || i3 >= 34) ? n0.e.j(strI4) : n0.e.k(strI4)) {
                    ZArchiver zArchiver10 = this.f1550c;
                    if (zArchiver10 == null) {
                        return true;
                    }
                    zArchiver10.f270c.b(new r(new h("file", strI4)), false);
                    return true;
                }
                ZApp zApp = ZApp.f1434c;
                if (zApp == null) {
                    return true;
                }
                boolean zEndsWith = str20.endsWith("Android/obb");
                File file4 = new File(str20, "ru.zdevs.zarchiver");
                if (file4.exists()) {
                    if (!zEndsWith && (list = file4.list()) != null && list.length > 0) {
                        for (String str22 : list) {
                            if (str22.equals("cache") && (list2 = new File(file4, "cache").list()) != null && list2.length > 0) {
                                return true;
                            }
                        }
                        n0.d.c(file4);
                    }
                } else if (zEndsWith) {
                    zApp.getObbDirs();
                } else {
                    zApp.getDataDir();
                    zApp.getExternalCacheDirs();
                }
                if (!file4.exists() && !file4.mkdirs()) {
                    return true;
                }
                if (str21.equals("ru.zdevs.zarchiver")) {
                    this.f1550c.b(new r(new h(strI4)));
                    return true;
                }
                String strConcat2 = (zEndsWith ? "Android/obb/" : "Android/data/").concat("ru.zdevs.zarchiver");
                this.f1553f = new b(str20, str21, aVarI3.c(strConcat2, false));
                if (aVarI3.d(strConcat2)) {
                    this.f1550c.onActivityResult(108, -1, null);
                    return true;
                }
                s.t(this.f1549b, this.f1550c, 108, 0, aVarI3, 3, strConcat2);
                return true;
        }
    }

    /* JADX WARN: Code duplicated, block: B:57:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:59:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:62:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:64:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:65:0x0104  */
    /* JADX WARN: Code duplicated, block: B:67:0x0108  */
    /* JADX WARN: Code duplicated, block: B:71:0x0118 A[Catch: Exception -> 0x011b, TRY_ENTER, TRY_LEAVE, TryCatch #0 {Exception -> 0x011b, blocks: (B:32:0x005d, B:41:0x0085, B:71:0x0118), top: B:76:0x000c }] */
    /* JADX WARN: Code duplicated, block: B:86:? A[ADDED_TO_REGION, REMOVE, RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:93:? A[ADDED_TO_REGION, REMOVE, RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:94:? A[ADDED_TO_REGION, REMOVE, RETURN, SYNTHETIC] */
    @Override
    public final void b(i iVar) {
        ZArchiver zArchiver;
        int i2;
        ru.zdevs.zarchiver.service.c cVar;
        ZArchiver zArchiver2;
        w wVar;
        AlertDialog alertDialog;
        CheckBox checkBox;
        ZArchiver zArchiver3;
        int iL = iVar.l();
        ru.zdevs.zarchiver.c cVar2 = this.f1554g;
        try {
            if (iL != 1) {
                int i3 = 2;
                if (iL != 2) {
                    if (iL == 4) {
                        w wVar2 = (w) iVar;
                        switch (wVar2.k()) {
                            case 13:
                                f("zip", false);
                                break;
                            case 14:
                                f("7z", false);
                                break;
                            case 15:
                                String strJ = wVar2.j(0);
                                if (strJ != null) {
                                    File file = new File(strJ.concat(".hash"));
                                    if (!file.delete()) {
                                        file.getAbsolutePath();
                                    }
                                    File file2 = new File(strJ);
                                    if (!file2.delete()) {
                                        file2.getAbsolutePath();
                                    }
                                    break;
                                }
                                break;
                        }
                    }
                    if (iL == 12) {
                        int i4 = iVar.f962c;
                        ru.zdevs.zarchiver.service.c cVar3 = cVar2.f1675a.get();
                        if (cVar3 != null) {
                            try {
                                cVar3.SetStatusTask(i4, 15);
                            } catch (Exception unused) {
                            }
                        }
                        int i5 = iVar.f962c;
                        ru.zdevs.zarchiver.service.c cVar4 = cVar2.f1675a.get();
                        if (cVar4 == null) {
                            return;
                        }
                        cVar4.SetPassword(i5, "");
                        cVar4.HideNotification(i5);
                    } else {
                        if (iL != 9) {
                            if (iL == 10 && (zArchiver3 = this.f1550c) != null) {
                                zArchiver3.B(false);
                                return;
                            }
                            return;
                        }
                        g0.c cVar5 = (g0.c) iVar;
                        if (cVar5.f934l) {
                            i3 = 8;
                        } else {
                            AlertDialog alertDialog2 = cVar5.f929g;
                            boolean zIsChecked = (alertDialog2 == null || (checkBox = (CheckBox) alertDialog2.findViewById(R.id.cb_to_all)) == null) ? cVar5.f933k : checkBox.isChecked();
                            if (zIsChecked) {
                                i3 = 18;
                            }
                        }
                        int i6 = cVar5.f962c;
                        ru.zdevs.zarchiver.service.c cVar6 = cVar2.f1675a.get();
                        if (cVar6 == null) {
                            return;
                        }
                        cVar6.SetOverwrite(i6, i3);
                        cVar6.HideNotification(i6);
                    }
                } else {
                    if (t0.b.l(256)) {
                        zArchiver2 = this.f1550c;
                        if (zArchiver2 == null) {
                            return;
                        }
                        wVar = new w(1, this.f1550c, zArchiver2.getString(R.string.MES_CONFIRM_CANCEL), this.f1549b);
                        wVar.r(9);
                        wVar.f962c = iVar.f962c;
                        wVar.f961b = this;
                        wVar.f960a = this;
                        alertDialog = wVar.f1057g;
                        if (alertDialog != null) {
                            i.s(alertDialog);
                            wVar.f1057g.setCancelable(false);
                            return;
                        }
                        return;
                    }
                    zArchiver = this.f1550c;
                    if (zArchiver != null) {
                        zArchiver.B(false);
                    }
                    i2 = iVar.f962c;
                    cVar = cVar2.f1675a.get();
                    if (cVar == null) {
                        cVar.SetStatusTask(i2, 15);
                    }
                }
            } else {
                if (t0.b.l(256)) {
                    zArchiver2 = this.f1550c;
                    if (zArchiver2 == null) {
                        return;
                    }
                    wVar = new w(1, this.f1550c, zArchiver2.getString(R.string.MES_CONFIRM_CANCEL), this.f1549b);
                    wVar.r(9);
                    wVar.f962c = iVar.f962c;
                    wVar.f961b = this;
                    wVar.f960a = this;
                    alertDialog = wVar.f1057g;
                    if (alertDialog != null) {
                        i.s(alertDialog);
                        wVar.f1057g.setCancelable(false);
                        return;
                    }
                    return;
                }
                zArchiver = this.f1550c;
                if (zArchiver != null) {
                    zArchiver.B(false);
                }
                i2 = iVar.f962c;
                cVar = cVar2.f1675a.get();
                if (cVar == null) {
                    cVar.SetStatusTask(i2, 15);
                }
            }
        } catch (Exception unused2) {
        }
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0067  */
    @Override
    public final void c(StorageVolume storageVolume, boolean z2) {
        ZArchiver zArchiver;
        boolean z3 = false;
        boolean z4 = storageVolume == null;
        if (storageVolume == null || Build.VERSION.SDK_INT < 24) {
            z3 = true;
        } else {
            if (z2) {
                x0.d.a aVarW = x0.d.w(storageVolume);
                if (aVarW != null) {
                    x0.a.c(1);
                    if (this.f1550c != null) {
                        d dVar = this.f1549b;
                        String strR = dVar.d().r();
                        String str = aVarW.f2255b;
                        if (strR.startsWith(str)) {
                            ru.zdevs.zarchiver.b[] bVarArr = dVar.f1686f;
                            for (int i2 = 0; i2 < bVarArr.length; i2++) {
                                ru.zdevs.zarchiver.b bVar = bVarArr[i2];
                                if (bVar != null && bVar.f1653c.r().startsWith(str)) {
                                    a0.y yVar = new a0.y(i2, true);
                                    yVar.f142b = new h(t0.b.f2081b[i2]);
                                    this.f1550c.f270c.b(yVar, false);
                                    break;
                                }
                            }
                        }
                    }
                } else {
                    z3 = true;
                }
            } else {
                x0.d.d(storageVolume);
            }
            z4 = true;
        }
        if (!z4 || (zArchiver = this.f1550c) == null) {
            return;
        }
        zArchiver.R(z3 ? 1 : 2);
    }

    /* JADX WARN: Code duplicated, block: B:79:0x01c2 A[Catch: Exception -> 0x0205, TryCatch #1 {Exception -> 0x0205, blocks: (B:77:0x01bb, B:79:0x01c2, B:80:0x01e0, B:82:0x01ec, B:83:0x01f2, B:85:0x01f9, B:86:0x01ff), top: B:91:0x01bb }] */
    /* JADX WARN: Code duplicated, block: B:80:0x01e0 A[Catch: Exception -> 0x0205, TryCatch #1 {Exception -> 0x0205, blocks: (B:77:0x01bb, B:79:0x01c2, B:80:0x01e0, B:82:0x01ec, B:83:0x01f2, B:85:0x01f9, B:86:0x01ff), top: B:91:0x01bb }] */
    /* JADX WARN: Code duplicated, block: B:82:0x01ec A[Catch: Exception -> 0x0205, LOOP:2: B:81:0x01ea->B:82:0x01ec, LOOP_END, TryCatch #1 {Exception -> 0x0205, blocks: (B:77:0x01bb, B:79:0x01c2, B:80:0x01e0, B:82:0x01ec, B:83:0x01f2, B:85:0x01f9, B:86:0x01ff), top: B:91:0x01bb }] */
    /* JADX WARN: Code duplicated, block: B:85:0x01f9 A[Catch: Exception -> 0x0205, LOOP:3: B:84:0x01f7->B:85:0x01f9, LOOP_END, TryCatch #1 {Exception -> 0x0205, blocks: (B:77:0x01bb, B:79:0x01c2, B:80:0x01e0, B:82:0x01ec, B:83:0x01f2, B:85:0x01f9, B:86:0x01ff), top: B:91:0x01bb }] */
    public final void e(h hVar, boolean z2) {
        long jV;
        ArrayList arrayList;
        ArrayList arrayList2;
        int i2;
        boolean z3;
        int size;
        ArrayList arrayList3;
        int i3;
        ArrayList arrayList4;
        if (this.f1551d == null) {
            return;
        }
        if (f0.a.m().n(this.f1551d.g().f1108c)) {
            f0.a aVarM = f0.a.m();
            ReentrantReadWriteLock reentrantReadWriteLock = aVarM.f757a;
            try {
                reentrantReadWriteLock.readLock().lock();
                f0.d dVar = aVarM.f758b;
                jV = dVar == null ? -1L : dVar.v();
                reentrantReadWriteLock.readLock().unlock();
            } catch (Throwable th) {
                reentrantReadWriteLock.readLock().unlock();
                throw th;
            }
        } else {
            jV = 0;
        }
        a0.a aVar = this.f1551d;
        ru.zdevs.zarchiver.service.c cVar = this.f1554g.f1675a.get();
        if (cVar == null || !aVar.g().g()) {
            return;
        }
        int iH = aVar.h();
        h hVarG = aVar.g();
        String strY = a0.c.y(hVarG.f1108c);
        ArrayList arrayList5 = new ArrayList(iH);
        for (int i4 = 0; i4 < iH; i4++) {
            arrayList5.add(strY);
        }
        StringBuilder sb = new StringBuilder();
        if (a0.c.O(strY, false)) {
            int iA = (jV > 3221225472L ? 1 : (jV == 3221225472L ? 0 : -1)) > 0 ? 1 : t0.b.a();
            if (iA > 0) {
                sb.append("\\-mmt=");
                sb.append(iA);
            }
        }
        if (e0.h.d().e(strY)) {
            sb.append("\\-p");
            sb.append(e0.h.d().c(true));
        }
        String string = sb.toString();
        h hVar2 = aVar.f1b;
        if (hVar2 != null) {
            ArrayList arrayList6 = new ArrayList(1);
            ArrayList arrayList7 = new ArrayList(1);
            String strA0 = a0.c.a0(aVar.g().f1110e);
            StringBuilder sb2 = new StringBuilder();
            if (strA0.isEmpty()) {
                arrayList7.add(string);
            } else {
                arrayList7.add("-z" + strA0 + string);
                strA0 = strA0.concat("/");
            }
            for (int i5 = 0; i5 < iH; i5++) {
                try {
                    sb2.append('\\');
                    sb2.append(strA0);
                    sb2.append(aVar.b(i5));
                } catch (OutOfMemoryError unused) {
                    ZApp.j("File list is too big");
                    return;
                }
            }
            arrayList6.add(sb2.toString());
            arrayList2 = arrayList6;
            arrayList = arrayList7;
        } else {
            ArrayList arrayList8 = new ArrayList(iH);
            arrayList = new ArrayList(iH);
            for (int i6 = 0; i6 < iH; i6++) {
                String strB = aVar.b(i6);
                String strA1 = a0.c.a0((hVar2 == null ? ((d0.f) aVar.f0a.get(i6)).f552k : hVar2).f1110e);
                if (strA1.isEmpty()) {
                    arrayList8.add("\\" + strB);
                    arrayList.add(string);
                } else {
                    arrayList8.add("\\" + strA1 + '/' + strB);
                    StringBuilder sb3 = new StringBuilder("-z");
                    sb3.append(strA1);
                    sb3.append(string);
                    arrayList.add(sb3.toString());
                }
            }
            arrayList2 = arrayList8;
        }
        try {
            if (!z2) {
                i2 = 0;
                if (ru.zdevs.zarchiver.c.f(hVar, true) || ru.zdevs.zarchiver.c.f(hVarG, false)) {
                    z3 = true;
                }
                if (arrayList2.size() == 1) {
                    cVar.ArchiveExtract((String) arrayList5.get(i2), hVarG, (String) arrayList.get(i2), (String) arrayList2.get(i2), hVar, z3 ? 1 : 0);
                    return;
                }
                size = arrayList.size();
                arrayList3 = new ArrayList(iH);
                for (i3 = 0; i3 < size; i3++) {
                    arrayList3.add(hVar);
                }
                arrayList4 = new ArrayList(iH);
                while (i2 < size) {
                    arrayList4.add(hVarG);
                    i2++;
                }
                cVar.ArchiveExtractMulti(arrayList5, arrayList4, arrayList, arrayList2, arrayList3, z3 ? 1 : 0);
                return;
            }
            i2 = 0;
            if (arrayList2.size() == 1) {
                cVar.ArchiveExtract((String) arrayList5.get(i2), hVarG, (String) arrayList.get(i2), (String) arrayList2.get(i2), hVar, z3 ? 1 : 0);
                return;
            }
            size = arrayList.size();
            arrayList3 = new ArrayList(iH);
            while (i3 < size) {
                arrayList3.add(hVar);
            }
            arrayList4 = new ArrayList(iH);
            while (i2 < size) {
                arrayList4.add(hVarG);
                i2++;
            }
            cVar.ArchiveExtractMulti(arrayList5, arrayList4, arrayList, arrayList2, arrayList3, z3 ? 1 : 0);
            return;
        } catch (Exception unused2) {
            return;
        }
        z3 = z2;
    }

    public final void f(String str, boolean z2) {
        a0.a aVar;
        String str2;
        if (this.f1550c == null || (aVar = this.f1551d) == null) {
            return;
        }
        h hVarG = aVar.g();
        if (hVarG.o()) {
            StringBuilder sb = new StringBuilder();
            if (this.f1551d.h() == 1) {
                str2 = this.f1551d.b(0) + "." + str;
            } else {
                str2 = hVarG.e() + "." + str;
            }
            String str3 = str2;
            if (str.equals("zip")) {
                sb.append("\\-mx=");
                sb.append((t0.b.f2085f & 983040) >> 16);
            } else if (str.equals("7z")) {
                sb.append("\\-mx=");
                sb.append((t0.b.f2085f & 61440) >> 12);
                a0.c.f(sb, (t0.b.f2085f & 61440) >> 12, t0.b.f(2));
            }
            h(str, sb.toString(), str3, z2, (byte) 0);
        }
    }

    /* JADX WARN: Code duplicated, block: B:32:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:87:0x01c5  */
    /* JADX WARN: Code duplicated, block: B:89:0x01cc  */
    /* JADX WARN: Code duplicated, block: B:92:0x01d7 A[Catch: Exception -> 0x020c, TryCatch #0 {Exception -> 0x020c, blocks: (B:90:0x01d3, B:92:0x01d7, B:94:0x01db, B:96:0x01e2, B:98:0x01f2, B:100:0x0209), top: B:103:0x01d3 }] */
    /* JADX WARN: Code duplicated, block: B:94:0x01db A[Catch: Exception -> 0x020c, TryCatch #0 {Exception -> 0x020c, blocks: (B:90:0x01d3, B:92:0x01d7, B:94:0x01db, B:96:0x01e2, B:98:0x01f2, B:100:0x0209), top: B:103:0x01d3 }] */
    /* JADX WARN: Code duplicated, block: B:95:0x01e0  */
    /* JADX WARN: Code duplicated, block: B:98:0x01f2 A[Catch: Exception -> 0x020c, TryCatch #0 {Exception -> 0x020c, blocks: (B:90:0x01d3, B:92:0x01d7, B:94:0x01db, B:96:0x01e2, B:98:0x01f2, B:100:0x0209), top: B:103:0x01d3 }] */
    /* JADX WARN: Code duplicated, block: B:99:0x0208  */
    public final void g(ru.zdevs.zarchiver.c.a aVar) {
        int i2;
        h hVarG;
        boolean zContains;
        int i3;
        h hVar;
        a0.a aVar2 = this.f1551d;
        if (aVar2 == null || !aVar2.g().o()) {
            return;
        }
        String strE = aVar.f1676a.e();
        boolean z2 = this.f1551d.f0a.get(0) instanceof d0.f;
        d dVar = this.f1549b;
        h hVarD = z2 ? dVar.d() : this.f1551d.g();
        h hVarD2 = dVar.d();
        h hVar2 = aVar.f1676a;
        if (hVarD2.d(hVar2.f()) ? dVar.c().f1667q.e(hVar2.e()) : h0.f.e(hVar2)) {
            byte b2 = aVar.f1680e;
            if (b2 == 0) {
                ZArchiver zArchiver = this.f1550c;
                if (zArchiver == null) {
                    return;
                }
                w wVar = new w(2, this.f1550c, zArchiver.getString(R.string.MES_OVERWRITE_ARCHIVE).replace("%1", strE), dVar);
                wVar.r(17);
                wVar.f961b = dVar.f1683c;
                wVar.o(0, aVar);
                wVar.o(1, hVar2);
                wVar.t();
                return;
            }
            if (b2 == 1 || b2 == 2) {
                if (f0.a.m().n(hVar2.f1108c)) {
                    f0.a.m().a();
                }
                i2 = aVar.f1680e != 2 ? 0 : 2;
            }
        }
        a0.a aVar3 = this.f1551d;
        ru.zdevs.zarchiver.service.c cVar = this.f1554g.f1675a.get();
        if (cVar == null) {
            return;
        }
        boolean z3 = ru.zdevs.zarchiver.c.f(hVar2, true) || ru.zdevs.zarchiver.c.f(hVarD, false);
        StringBuilder sb = new StringBuilder("-t");
        String str = aVar.f1677b;
        sb.append(str);
        String str2 = aVar.f1678c;
        sb.append(str2);
        int iH = aVar3.h();
        ArrayList arrayList = new ArrayList(iH);
        try {
            if (!aVar3.f()) {
                h hVar3 = aVar3.f1b;
                if (hVar3 != null) {
                    for (int i4 = 0; i4 < iH; i4++) {
                        arrayList.add(aVar3.b(i4));
                    }
                    hVarG = aVar3.g();
                } else {
                    int length = hVarD.r().length();
                    int i5 = 0;
                    while (i5 < iH) {
                        String strR = (hVar3 == null ? ((d0.f) aVar3.f0a.get(i5)).f552k : hVar3).r();
                        h hVar4 = hVarD;
                        if (strR.length() >= length) {
                            StringBuilder sb2 = new StringBuilder();
                            if (strR.length() == length) {
                                sb2.append("./");
                            } else {
                                sb2.append("./");
                                sb2.append(strR.substring(length + 1));
                                sb2.append("/");
                            }
                            sb2.append(aVar3.b(i5));
                            arrayList.add(sb2.toString());
                        }
                        i5++;
                        hVarD = hVar4;
                        hVar3 = hVar3;
                        iH = iH;
                    }
                }
                zContains = str2.contains("-m0=LZMA2");
                if (!zContains || ((str.startsWith("t") && !str.equals("tar")) || hVarG.m())) {
                    sb.append("\\-mmt=1");
                } else if (a0.c.O("name.".concat(str), true) && t0.b.a() > 0) {
                    sb.append("\\-mmt=");
                    sb.append(t0.b.a());
                }
                if (zContains) {
                    f0.a.m().a();
                }
                if (aVar.f1679d) {
                    i2 |= 4;
                }
                if (z3) {
                    i3 = i2 | 1;
                } else {
                    i3 = i2;
                }
                String strE2 = hVar2.e();
                h hVar5 = aVar.f1676a;
                String string = sb.toString();
                if (hVarG.n()) {
                    h hVar6 = new h(hVarG);
                    String str3 = hVar6.f1108c;
                    hVar6.f1108c = str3.substring(0, str3.length() - 3);
                    hVar = hVar6;
                } else {
                    hVar = hVarG;
                }
                cVar.ArchiveCompress(strE2, hVar5, string, arrayList, hVar, i3);
                return;
            }
            for (int i6 = 0; i6 < iH; i6++) {
                arrayList.add(aVar3.a(i6).r());
            }
            if (aVar.f1679d) {
                i2 |= 4;
            }
            if (z3) {
                i3 = i2 | 1;
            } else {
                i3 = i2;
            }
            String strE3 = hVar2.e();
            h hVar7 = aVar.f1676a;
            String string2 = sb.toString();
            if (hVarG.n()) {
                h hVar8 = new h(hVarG);
                String str4 = hVar8.f1108c;
                hVar8.f1108c = str4.substring(0, str4.length() - 3);
                hVar = hVar8;
            } else {
                hVar = hVarG;
            }
            cVar.ArchiveCompress(strE3, hVar7, string2, arrayList, hVar, i3);
            return;
        } catch (Exception unused) {
            return;
        }
        hVarG = hVarD;
        zContains = str2.contains("-m0=LZMA2");
        if (zContains) {
            sb.append("\\-mmt=1");
        } else {
            sb.append("\\-mmt=1");
        }
        if (zContains) {
            f0.a.m().a();
        }
    }

    public final void h(String str, String str2, String str3, boolean z2, byte b2) {
        h hVar;
        h hVar2;
        h hVarG;
        if (this.f1551d == null) {
            return;
        }
        if (str3.startsWith("/")) {
            hVar2 = new h(str3);
        } else {
            String str4 = t0.b.f2080a;
            if (str4 == null) {
                boolean z3 = this.f1551d.f0a.get(0) instanceof d0.f;
                d dVar = this.f1549b;
                if (z3) {
                    hVarG = dVar.d();
                } else {
                    hVarG = this.f1551d.g();
                    if (hVarG.n()) {
                        hVarG = dVar.d().f();
                    }
                }
                if (hVarG == null) {
                    return;
                } else {
                    hVar = new h(str3, hVarG);
                }
            } else {
                hVar = new h(a0.c.i(str4, str3));
            }
            hVar2 = hVar;
            if (k(this.f1550c, hVar2)) {
                return;
            }
        }
        g(new ru.zdevs.zarchiver.c.a(hVar2, str, str2, z2, b2));
    }

    public final void i() {
        ArrayList<i> arrayList;
        synchronized (this.f1549b.f1684d) {
            arrayList = new ArrayList(this.f1549b.f1684d);
        }
        for (i iVar : arrayList) {
            try {
                int i2 = iVar.f962c;
                if (i2 >= 0) {
                    ru.zdevs.zarchiver.service.c cVar = this.f1554g.f1675a.get();
                    if (cVar == null) {
                        throw new RemoteException();
                    }
                    if ((cVar.GetStatusTask(i2) & 1048576) == 1048576) {
                        iVar.e();
                    } else if (iVar.l() == 2) {
                        a0 a0Var = (a0) iVar;
                        ru.zdevs.zarchiver.service.c cVar2 = this.f1554g.f1675a.get();
                        if (cVar2 == null) {
                            throw new RemoteException();
                        }
                        String strGetProgText = cVar2.GetProgText(i2);
                        if (a0Var.f912g != null) {
                            a0Var.f915j.setText(strGetProgText);
                        }
                        ru.zdevs.zarchiver.service.c cVar3 = this.f1554g.f1675a.get();
                        if (cVar3 == null) {
                            throw new RemoteException();
                        }
                        a0Var.t(cVar3.GetProgPercent(i2), -1);
                    } else {
                        continue;
                    }
                }
            } catch (DeadObjectException unused) {
                iVar.e();
            } catch (Exception unused2) {
            }
        }
    }

    public final boolean k(Context context, h hVar) {
        x0.d.a aVarI;
        x0.d.a aVarJ;
        int i2 = Build.VERSION.SDK_INT;
        if (i2 == 33 && hVar.m()) {
            String[] strArrG = SAF.g(hVar.f1108c);
            if (strArrG != null && strArrG[1] != null && !"primary".equals(strArrG[0]) && strArrG[1].startsWith("Android/") && (aVarJ = x0.d.j(strArrG[0])) != null && !aVarJ.d("Android/data/ru.zdevs.zarchiver")) {
                context.getExternalCacheDirs();
                d dVar = this.f1549b;
                s.t(dVar, context, 0, dVar.f1685e, aVarJ, 3, "Android/data/ru.zdevs.zarchiver");
                return true;
            }
        } else if (i2 >= 30 && i2 <= 32 && hVar.j()) {
            String str = hVar.f1108c;
            if ((str.endsWith("/Android/data") || str.endsWith("/Android/obb")) && (aVarI = x0.d.i(str)) != null) {
                String strB = aVarI.b(str);
                if (!aVarI.d(strB)) {
                    d dVar2 = this.f1549b;
                    s.t(dVar2, context, 0, dVar2.f1685e, aVarI, 2, strB);
                    return true;
                }
            }
        }
        return false;
    }

    public final boolean l(Context context, int i2) {
        d dVar = this.f1549b;
        byte bE = dVar.e();
        if (bE == 2) {
            ZApp.i(R.string.MES_PATH_HAS_RESTRICTION);
            return true;
        }
        if (bE == 1) {
            return k(context, dVar.d());
        }
        if (!dVar.f(3)) {
            if (!dVar.f(64)) {
                return !dVar.f(16);
            }
            if (!a0.c.K(h0.e.c(dVar.d()), 2) && (i2 == 1 || i2 == 4 || i2 == 7 || i2 == 6 || i2 == 9)) {
                return false;
            }
            ZApp.i(R.string.MES_PATH_READ_ONLY);
            return true;
        }
        if (!t0.b.i(dVar.d().f1108c)) {
            ZApp.i(R.string.MES_PATH_READ_ONLY);
            return true;
        }
        if (bE != 3) {
            ZApp.i(R.string.MES_NEED_REMOUNT);
            return true;
        }
        h hVarD = dVar.d();
        a aVar = dVar.f1683c;
        aVar.getClass();
        if (t0.b.h(64) && hVarD.j() && t0.b.h(32)) {
            String str = hVarD.f1108c;
            if (!str.startsWith("/storage/usb") && !str.startsWith("/storage/sdcard") && !str.startsWith("/storage/ExtSd") && !str.startsWith("/sdcard") && !str.startsWith("/mnt/sdcard") && !str.startsWith("/mnt/media_rw") && !g.e(str)) {
                b0 b0Var = new b0(aVar.f1549b, context);
                if (i2 != 0) {
                    b0Var.o(1, "" + i2);
                }
                b0Var.f961b = aVar;
                AlertDialog alertDialog = b0Var.f927g;
                if (alertDialog == null) {
                    return true;
                }
                i.s(alertDialog);
                return true;
            }
        }
        return false;
    }

    public final boolean m(Context context, boolean z2) {
        d0.h listAdapter;
        a0.a aVar;
        d dVar = this.f1549b;
        char c2 = dVar.f1681a;
        if (c2 == 0) {
            return true;
        }
        if (z2) {
            if (c2 != '\t') {
                if (c2 != 17) {
                    if (c2 != '\"') {
                        if (c2 == 'A') {
                            if (dVar.f(4)) {
                                if (!a0.c.N(1, dVar.d().f1108c) || ((aVar = this.f1552e) != null && !aVar.g().o())) {
                                    ZApp.i(R.string.MES_DONT_SUPPORT_EDIT);
                                    return false;
                                }
                            } else if (l(context, 1)) {
                                return false;
                            }
                            if (context instanceof ZArchiver) {
                                ((ZArchiver) context).D(R.id.bPast);
                            }
                        }
                    } else if ((context instanceof ZArchiver) && (listAdapter = ((ZArchiver) context).f1448k.getListAdapter()) != null && listAdapter.c() != R.layout.item_file_search) {
                        try {
                            a0.a aVarA = dVar.f1686f[listAdapter.f559g].a(listAdapter.d());
                            this.f1551d = aVarA;
                            aVarA.h();
                        } catch (Exception unused) {
                        }
                        j jVar = this.f1553f;
                        if (jVar != null && jVar.type() == 1) {
                            g((ru.zdevs.zarchiver.c.a) this.f1553f);
                        }
                    }
                } else {
                    if (l(context, 8)) {
                        return false;
                    }
                    e(dVar.d(), dVar.f(2));
                }
            } else {
                if (this.f1551d == null || l(context, 2)) {
                    return false;
                }
                this.f1554g.b(this.f1551d, dVar.d(), this.f1551d.h() > 1, dVar.f(2));
            }
        }
        dVar.g((char) 0);
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:132:0x0267  */
    /* JADX WARN: Code duplicated, block: B:146:0x02b6  */
    /* JADX WARN: Multi-variable type inference failed */
    public final void n(ZArchiver zArchiver, v vVar, int i2) {
        a0.a aVar;
        boolean z2;
        a0.a aVar2;
        a0.a aVar3;
        String strE;
        int i3;
        ru.zdevs.zarchiver.service.c cVar;
        a0.a aVar4;
        int iI0;
        c0.e eVarF;
        if (zArchiver == null || zArchiver.isFinishing()) {
            return;
        }
        d dVar = this.f1549b;
        if (i2 != 56) {
            if (i2 != 57) {
                if (i2 != 81 && i2 != 82) {
                    int i4 = 20;
                    ru.zdevs.zarchiver.c cVar2 = this.f1554g;
                    switch (i2) {
                        case 1:
                            aVar2 = this.f1551d;
                            if (aVar2 == null && aVar2.h() == 1 && dVar.f(19)) {
                                h hVarB = a0.c.B(this.f1551d.a(0));
                                f0.a.m().b(f0.a.m().l());
                                zArchiver.L(dVar.f1685e, 128, hVarB);
                                return;
                            }
                            return;
                        case 2:
                        case 3:
                        case 4:
                            aVar3 = this.f1551d;
                            if (aVar3 == null && aVar3.h() == 1) {
                                ru.zdevs.zarchiver.b bVarC = dVar.c();
                                j(zArchiver, this.f1551d.a(0), this.f1551d.f0a.get(0).f542d, this.f1551d.f0a.get(0).f544f == 28, i2 != 3 ? 8 : 0, bVarC.f1658h, bVarC.f());
                                return;
                            }
                            return;
                        case 5:
                            if (dVar.f(4)) {
                                zArchiver.F((char) 17);
                                return;
                            } else {
                                zArchiver.F('\t');
                                return;
                            }
                        case 6:
                            if (!dVar.f(19) || this.f1551d == null || l(zArchiver, 2)) {
                                return;
                            }
                            cVar2.b(this.f1551d, dVar.d(), false, dVar.f(2));
                            return;
                        case 7:
                            if (!dVar.f(19) || this.f1551d == null || l(zArchiver, 3)) {
                                return;
                            }
                            cVar2.b(this.f1551d, dVar.d(), true, dVar.f(2));
                            return;
                        case 8:
                            a0.a aVar5 = this.f1551d;
                            if (aVar5 == null) {
                                return;
                            }
                            h hVarG = aVar5.g();
                            if (hVarG.o()) {
                                if (g.b(hVarG) == 2) {
                                    i4 = (g.g(hVarG.f1108c) != 1 ? 16 : 0) | 4;
                                } else if (!hVarG.n()) {
                                    i4 = 0;
                                }
                                if (this.f1551d.h() == 1) {
                                    strE = this.f1551d.b(0);
                                    if (this.f1551d.e(0)) {
                                        i4 |= 1;
                                    }
                                    i3 = i4 | 2;
                                } else {
                                    strE = dVar.d().e();
                                    if ("/".equals(strE)) {
                                        strE = "root";
                                    }
                                    i3 = i4 | 1;
                                }
                                g0.h hVar = new g0.h(i3, zArchiver, strE, dVar);
                                hVar.r(10);
                                hVar.f961b = this;
                                AlertDialog alertDialog = hVar.f943g;
                                if (alertDialog != null) {
                                    i.s(alertDialog);
                                    return;
                                }
                                return;
                            }
                            return;
                        case 9:
                        case 10:
                            if (!t0.b.l(1024)) {
                                f(i2 != 9 ? "7z" : "zip", false);
                                return;
                            }
                            w wVar = new w(1, zArchiver, zArchiver.getString(R.string.MES_REMOTHE_AFTER_COMPRESS), dVar);
                            wVar.r(i2 == 9 ? 13 : 14);
                            wVar.f961b = this;
                            wVar.f960a = this;
                            wVar.t();
                            return;
                        case 11:
                            a0.a aVar6 = this.f1551d;
                            if (aVar6 == null || (cVar = cVar2.f1675a.get()) == null || !aVar6.g().o()) {
                                return;
                            }
                            int iH = aVar6.h();
                            ArrayList arrayList = new ArrayList(iH);
                            ArrayList arrayList2 = new ArrayList(iH);
                            ArrayList arrayList3 = new ArrayList(iH);
                            for (int i5 = 0; i5 < iH; i5++) {
                                String strB = aVar6.b(i5);
                                h hVarA = aVar6.a(i5);
                                String str = (!a0.c.O(strB, false) || t0.b.a() <= 0) ? "" : "\\-mmt=" + t0.b.a();
                                if (e0.h.d().e(strB)) {
                                    str = str + "\\-p" + e0.h.d().c(true);
                                }
                                arrayList.add(strB);
                                arrayList2.add(hVarA);
                                arrayList3.add(str);
                            }
                            try {
                                if (iH == 1) {
                                    cVar.ArchiveTest(aVar6.b(0), (h) arrayList2.get(0), (String) arrayList3.get(0));
                                } else {
                                    cVar.ArchiveTestMulti(arrayList, arrayList2, arrayList3);
                                }
                                return;
                            } catch (Exception unused) {
                                return;
                            }
                        case 12:
                            a0.a aVar7 = this.f1551d;
                            if (aVar7 == null) {
                                return;
                            }
                            if (aVar7.h() > 1) {
                                d(zArchiver, null, this.f1551d.g(), this.f1551d.i());
                                return;
                            }
                            h hVarA2 = this.f1551d.a(0);
                            if (hVarA2.g()) {
                                cVar2.e(hVarA2, 128);
                                return;
                            } else {
                                if (hVarA2.o()) {
                                    byte bE = a0.c.E(hVarA2.e());
                                    if (((bE == 6 || bE == 20) ? 1 : 0) != 0) {
                                        d(zArchiver, hVarA2, null, null);
                                        return;
                                    }
                                    return;
                                }
                                return;
                            }
                        default:
                            switch (i2) {
                                case 14:
                                    zArchiver.D(R.id.bSelectAll);
                                    return;
                                case 15:
                                    zArchiver.D(R.id.bSelectClear);
                                    return;
                                case 16:
                                    zArchiver.D(R.id.bSelectInvert);
                                    return;
                                default:
                                    switch (i2) {
                                        case 18:
                                            aVar2 = this.f1551d;
                                            if (aVar2 == null) {
                                                return;
                                            } else {
                                                return;
                                            }
                                        case 19:
                                            aVar3 = this.f1551d;
                                            if (aVar3 == null) {
                                                return;
                                            } else {
                                                return;
                                            }
                                        case 20:
                                            a0.a aVar8 = this.f1551d;
                                            if (aVar8 == null) {
                                                return;
                                            }
                                            new n0(aVar8).g(null, zArchiver.f270c);
                                            return;
                                        default:
                                            switch (i2) {
                                                case 22:
                                                    a0.a aVar9 = this.f1551d;
                                                    if (aVar9 == null) {
                                                        return;
                                                    }
                                                    boolean z3 = aVar9.h() == 1 && this.f1551d.e(0);
                                                    a0.a aVar10 = this.f1551d;
                                                    ((aVar10.f1b != null ? 1 : 0) != 0 ? new o(this.f1549b, zArchiver, aVar10.g(), this.f1551d.i(), z3) : new o(this.f1549b, zArchiver, aVar10.c(), this.f1551d.i(), z3)).w();
                                                    return;
                                                case 23:
                                                    if ((dVar.e() != 2 || (aVar4 = this.f1551d) == null || aVar4.h() != 1) && l(zArchiver, 4)) {
                                                        return;
                                                    }
                                                    break;
                                                case 24:
                                                    zArchiver.D(R.id.bCopy);
                                                    return;
                                                case 25:
                                                    zArchiver.D(R.id.bCut);
                                                    return;
                                                case 26:
                                                    zArchiver.D(R.id.bPast);
                                                    return;
                                                case 27:
                                                    break;
                                                default:
                                                    switch (i2) {
                                                        case 70:
                                                            a0.a aVar11 = this.f1551d;
                                                            if (aVar11 == null || aVar11.h() != 1) {
                                                                return;
                                                            }
                                                            h hVarA3 = this.f1551d.a(0);
                                                            if (hVarA3.o()) {
                                                                g0.a aVar12 = new g0.a(this.f1549b, zArchiver, 1000, this.f1551d.b(0), new h(hVarA3.r()));
                                                                aVar12.r(21);
                                                                aVar12.f961b = this;
                                                                AlertDialog alertDialog2 = aVar12.f907g;
                                                                if (alertDialog2 != null) {
                                                                    i.s(alertDialog2);
                                                                    return;
                                                                }
                                                                return;
                                                            }
                                                            return;
                                                        case 71:
                                                            if (vVar != null) {
                                                                int iI1 = a0.c.i0(-1, vVar.j(0));
                                                                ReentrantReadWriteLock reentrantReadWriteLock = t0.a.f2074b;
                                                                if (t0.a.h(iI1)) {
                                                                    SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(zArchiver);
                                                                    String string = defaultSharedPreferences.getString("sFavorite", null);
                                                                    if (!v0.h.e(string)) {
                                                                        try {
                                                                            reentrantReadWriteLock.writeLock().lock();
                                                                            c0.e eVarRemove = t0.a.f2073a.remove(iI1);
                                                                            reentrantReadWriteLock.writeLock().unlock();
                                                                            String[] strArrH = v0.h.h(string, '|');
                                                                            StringBuilder sb = new StringBuilder();
                                                                            for (String str2 : strArrH) {
                                                                                c0.e eVarA = c0.e.a(0, str2);
                                                                                if (eVarA != null && !eVarA.f411c.equals(eVarRemove.f411c)) {
                                                                                    sb.append(str2);
                                                                                    sb.append('|');
                                                                                }
                                                                            }
                                                                            SharedPreferences.Editor editorEdit = defaultSharedPreferences.edit();
                                                                            editorEdit.putString("sFavorite", sb.toString());
                                                                            editorEdit.apply();
                                                                        } catch (Throwable th) {
                                                                            reentrantReadWriteLock.writeLock().unlock();
                                                                            throw th;
                                                                        }
                                                                    }
                                                                }
                                                                zArchiver.R(2);
                                                                return;
                                                            }
                                                            return;
                                                        case 72:
                                                            if (vVar == null || (eVarF = t0.a.f((iI0 = a0.c.i0(-1, vVar.j(0))))) == null) {
                                                                return;
                                                            }
                                                            g0.a aVar13 = new g0.a(this.f1549b, zArchiver, eVarF.f409a, eVarF.f410b, eVarF.f411c);
                                                            aVar13.r(22);
                                                            aVar13.o(0, Integer.toString(iI0));
                                                            aVar13.f961b = this;
                                                            AlertDialog alertDialog3 = aVar13.f907g;
                                                            if (alertDialog3 != null) {
                                                                i.s(alertDialog3);
                                                                return;
                                                            }
                                                            return;
                                                        case 73:
                                                            if (vVar != null) {
                                                                int iI2 = a0.c.i0(-1, vVar.j(0));
                                                                ReentrantReadWriteLock reentrantReadWriteLock2 = t0.a.f2074b;
                                                                if (t0.a.g(iI2)) {
                                                                    SharedPreferences defaultSharedPreferences2 = PreferenceManager.getDefaultSharedPreferences(zArchiver);
                                                                    String string2 = defaultSharedPreferences2.getString("sFavorite", null);
                                                                    if (!v0.h.e(string2)) {
                                                                        try {
                                                                            reentrantReadWriteLock2.writeLock().lock();
                                                                            ArrayList<c0.e> arrayList4 = t0.a.f2073a;
                                                                            c0.e eVarRemove2 = arrayList4.remove(iI2);
                                                                            arrayList4.add(iI2 - 1, eVarRemove2);
                                                                            reentrantReadWriteLock2.writeLock().unlock();
                                                                            String[] strArrH2 = v0.h.h(string2, '|');
                                                                            StringBuilder sb2 = new StringBuilder();
                                                                            String str3 = null;
                                                                            for (String str4 : strArrH2) {
                                                                                c0.e eVarA2 = c0.e.a(0, str4);
                                                                                boolean z4 = eVarA2 != null && eVarA2.f411c.equals(eVarRemove2.f411c);
                                                                                if (z4) {
                                                                                    sb2.append(str4);
                                                                                    sb2.append('|');
                                                                                }
                                                                                if (str3 != null) {
                                                                                    sb2.append(str3);
                                                                                    sb2.append('|');
                                                                                }
                                                                                str3 = z4 ? null : str4;
                                                                            }
                                                                            if (str3 != null) {
                                                                                sb2.append(str3);
                                                                                sb2.append('|');
                                                                            }
                                                                            SharedPreferences.Editor editorEdit2 = defaultSharedPreferences2.edit();
                                                                            editorEdit2.putString("sFavorite", sb2.toString());
                                                                            editorEdit2.apply();
                                                                        } catch (Throwable th2) {
                                                                            reentrantReadWriteLock2.writeLock().unlock();
                                                                            throw th2;
                                                                        }
                                                                    }
                                                                }
                                                                zArchiver.R(2);
                                                                return;
                                                            }
                                                            return;
                                                        default:
                                                            switch (i2) {
                                                                case 90:
                                                                    zArchiver.D(R.id.bSettings);
                                                                    return;
                                                                case 91:
                                                                    zArchiver.D(R.id.bMultiSelect);
                                                                    return;
                                                                case 92:
                                                                case 93:
                                                                case 94:
                                                                    m(zArchiver, true);
                                                                    zArchiver.j();
                                                                    return;
                                                                case 95:
                                                                case 96:
                                                                    m(zArchiver, false);
                                                                    zArchiver.j();
                                                                    return;
                                                                case 97:
                                                                    zArchiver.D(R.id.bExit);
                                                                    return;
                                                                case 98:
                                                                    if (this.f1551d == null || l(zArchiver, 5)) {
                                                                        return;
                                                                    }
                                                                    a0.a aVar14 = this.f1551d;
                                                                    x xVar = (aVar14.f1b != null ? 1 : 0) != 0 ? new x(dVar, zArchiver, aVar14.g(), this.f1551d.i()) : new x(dVar, zArchiver, aVar14.c(), this.f1551d.i());
                                                                    xVar.f961b = this;
                                                                    AlertDialog alertDialog4 = xVar.f1062g;
                                                                    if (alertDialog4 != null) {
                                                                        i.s(alertDialog4);
                                                                        return;
                                                                    }
                                                                    return;
                                                                default:
                                                                    return;
                                                            }
                                                    }
                                            }
                                            break;
                                    }
                                    break;
                            }
                            break;
                    }
                } else {
                    if (dVar.f(4)) {
                        String str5 = dVar.d().f1108c;
                        if (!a0.c.N(1, str5)) {
                            new w(4, zArchiver, zArchiver.getString(R.string.MES_DONT_SUPPORT_EDIT), dVar).t();
                            return;
                        }
                        String strU = a0.c.u(str5);
                        int i6 = (strU.equals("zip") || strU.equals("7z")) ? 1 : 0;
                        int i7 = a0.c.u(str5).equals("7z") ? 1 : a0.c.u(str5).equals("zip") ? 2 : 0;
                        if (i6 != 0) {
                            try {
                                z2 = (e0.h.d().e(str5) && e0.h.d().f(str5)) ? 0 : i6;
                            } catch (Exception unused2) {
                                z2 = i6;
                            }
                        } else {
                            z2 = i6;
                        }
                        p pVar = new p(this.f1549b, zArchiver, i2 == 82 ? R.string.ADD_TTL_FOLDER : R.string.ADD_TTL_FILE, i2 == 82 ? 4 : 3, z2, i7);
                        pVar.r(i2 != 82 ? 5 : 6);
                        pVar.z();
                        pVar.f961b = this;
                        return;
                    }
                    return;
                }
            }
            a0.a aVar15 = this.f1551d;
            if (aVar15 == null || aVar15.h() != 1) {
                return;
            }
            String strB2 = this.f1551d.b(0);
            if (dVar.e() != 2 || (aVar = this.f1551d) == null || aVar.h() != 1) {
                if (i2 == 57 || !l(zArchiver, 6)) {
                    m mVar = new m(this.f1549b, zArchiver, strB2, R.string.REN_ENTER_NEW_NAME, 6);
                    mVar.r(12);
                    AlertDialog alertDialog5 = mVar.f976g;
                    if (alertDialog5 != null) {
                        i.s(alertDialog5);
                    }
                    mVar.u(strB2);
                    int length = this.f1551d.e(0) ? strB2.length() : strB2.lastIndexOf(".");
                    AlertDialog alertDialog6 = mVar.f976g;
                    if (alertDialog6 != null && length > 0) {
                        ((EditText) alertDialog6.findViewById(R.id.edt_text)).setSelection(0, length);
                    }
                    mVar.f961b = this;
                    return;
                }
                return;
            }
            ZArchiver zArchiver2 = this.f1550c;
            if (zArchiver2 != null) {
                if (!zArchiver2.x(dVar.f1685e, dVar.d().f1108c)) {
                    return;
                }
            }
            g0.b bVar = new g0.b(dVar, zArchiver, dVar.d().f1108c);
            bVar.r(12);
            AlertDialog alertDialog7 = bVar.f917g;
            if (alertDialog7 != null && i.s(alertDialog7)) {
                bVar.f922l.a(bVar, null);
            }
            bVar.f961b = this;
            bVar.f919i = strB2;
            bVar.f920j = strB2;
            AlertDialog alertDialog8 = bVar.f917g;
            if (alertDialog8 != null) {
                ((EditText) alertDialog8.findViewById(R.id.edt_text)).setText(strB2);
                return;
            }
            return;
        }
        a0.a aVar16 = this.f1551d;
        if (aVar16 == null) {
            return;
        }
        String[] strArrI = aVar16.i();
        StringBuilder sb3 = new StringBuilder();
        for (String str6 : strArrI) {
            if (sb3.length() != 0) {
                sb3.append(", ");
            }
            sb3.append(str6);
        }
        w wVar2 = new w(1, zArchiver, zArchiver.getString(R.string.MES_QUESTION_REMOVE).replace("%1", sb3.toString()), dVar);
        wVar2.r(3);
        wVar2.f961b = this;
        wVar2.f960a = this;
        wVar2.t();
    }

    public final void o(ZArchiver zArchiver, ru.zdevs.zarchiver.service.c cVar) {
        this.f1550c = zArchiver;
        ru.zdevs.zarchiver.c cVar2 = this.f1554g;
        cVar2.getClass();
        cVar2.f1675a = new WeakReference<>(cVar);
    }

    public static class b implements j {
        public static final Parcelable.Creator<b> CREATOR = new C0029a();

        public final String f1557a;

        public final String f1558b;

        public final Uri f1559c;

        public class C0029a implements Parcelable.Creator<b> {
            @Override
            public final b createFromParcel(Parcel parcel) {
                return new b(parcel);
            }

            @Override
            public final b[] newArray(int i2) {
                return new b[i2];
            }
        }

        public b(String str, String str2, Uri uri) {
            this.f1557a = str;
            this.f1558b = str2;
            this.f1559c = uri;
        }

        @Override
        public final int describeContents() {
            return 0;
        }

        @Override
        public final int type() {
            return 2;
        }

        @Override
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.writeString(this.f1557a);
            parcel.writeString(this.f1558b);
            parcel.writeString(this.f1559c.toString());
        }

        public b(Parcel parcel) {
            this.f1557a = parcel.readString();
            this.f1558b = parcel.readString();
            String string = parcel.readString();
            if (string != null) {
                this.f1559c = Uri.parse(string);
            } else {
                this.f1559c = null;
            }
        }
    }
}
