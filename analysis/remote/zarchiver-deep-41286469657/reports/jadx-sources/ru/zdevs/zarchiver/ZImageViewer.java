package ru.zdevs.zarchiver;

import android.app.ActionBar;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.TextView;
import g0.i;
import g0.o;
import g0.w;
import h0.f;
import h0.h;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import ru.zdevs.zarchiver.archiver.C2JBridge;
import ru.zdevs.zarchiver.archiver.NArc;
import ru.zdevs.zarchiver.io.SAF;
import ru.zdevs.zarchiver.provider.ArchiveFileProvider;
import x0.g;

public class ZImageViewer extends Activity implements w0.a.c, View.OnClickListener, g.d.g {

    public ru.zdevs.zarchiver.ui.layout.b f1464a;

    public e f1465b;

    public final w0.a f1466c = new w0.a();

    public int f1467d;

    public class a implements Runnable {
        public a() {
        }

        @Override
        public final void run() {
            ZImageViewer zImageViewer = ZImageViewer.this;
            if (zImageViewer.getActionBar().isShowing()) {
                zImageViewer.a(false);
            }
        }
    }

    public class b implements i.d {

        public final h f1469a;

        public final String f1470b;

        public final int f1471c;

        public b(h hVar, String str, int i2) {
            this.f1469a = hVar;
            this.f1470b = str;
            this.f1471c = i2;
        }

        @Override
        public final boolean a(i iVar) {
            int i2 = this.f1471c;
            ZImageViewer zImageViewer = ZImageViewer.this;
            try {
                if (!f.u(new h(this.f1470b, this.f1469a)).c()) {
                    ZApp.i(R.string.MES_END_WITH_ERROR);
                    return true;
                }
                zImageViewer.f1465b.f1476b.remove(i2);
                zImageViewer.f1464a.setAdapter(zImageViewer.f1465b);
                ru.zdevs.zarchiver.ui.layout.b bVar = zImageViewer.f1464a;
                if (i2 != 0) {
                    i2--;
                }
                bVar.setCurrentItem(i2);
                return true;
            } catch (Exception unused) {
                return true;
            }
        }
    }

    public static class c extends w0.c {

        public final Intent f1473e;

        public c(Intent intent) {
            this.f1473e = intent;
        }

        /* JADX WARN: Code duplicated, block: B:120:0x0209  */
        /* JADX WARN: Code duplicated, block: B:39:0x00ae  */
        /* JADX WARN: Code duplicated, block: B:40:0x00b0  */
        /* JADX WARN: Code duplicated, block: B:70:0x012a  */
        /* JADX WARN: Code duplicated, block: B:87:0x0166  */
        /* JADX WARN: Code duplicated, block: B:88:0x016c  */
        @Override
        public final w0.a.b f() {
            i0.b bVar;
            String strY;
            File file;
            File parentFile;
            String[] list;
            ArrayList<d0.d> arrayList;
            Uri data = this.f1473e.getData();
            int intExtra = this.f1473e.getIntExtra("zaSortType", 0);
            h0.c dVar = null;
            if (data != null) {
                int i2 = -1;
                if (!"ru.zdevs.zarchiver.archive".equals(data.getAuthority()) || Build.VERSION.SDK_INT < 26) {
                    bVar = null;
                } else {
                    ArchiveFileProvider.a aVarB = ArchiveFileProvider.b(ZApp.f1434c, data);
                    h hVar = new h(aVarB.f1706a);
                    hVar.c();
                    String str = aVarB.f1707b;
                    f0.a aVarM = f0.a.m();
                    if (aVarM.n(hVar.f1108c)) {
                        if (aVarM.k() != 0) {
                            arrayList = null;
                        } else {
                            ArrayList<d0.d> arrayList2 = new ArrayList<>();
                            aVarM.f(hVar.f1110e, arrayList2);
                            arrayList = arrayList2;
                        }
                    } else if (C2JBridge.f1613c || C2JBridge.e()) {
                        synchronized (e0.b.class) {
                            String str2 = str != null ? "\\-p" + str.replace("\\", "\\\\") : "";
                            f0.d dVarJ = f0.a.j(true);
                            C2JBridge.f1615e = dVarJ;
                            dVarJ.a(0L, hVar.f1108c);
                            if (!C2JBridge.cList(0, hVar.f1108c, str2) && dVarJ.e() <= 0 && dVarJ.g() == 0) {
                                dVarJ.n(3);
                            }
                            f0.d dVar2 = C2JBridge.f1615e;
                            if (dVar2 != null) {
                                dVar2.i();
                            } else {
                                dVarJ.clear();
                            }
                            C2JBridge.f1615e = null;
                        }
                        if (aVarM.k() != 0) {
                            arrayList = null;
                        } else {
                            ArrayList<d0.d> arrayList3 = new ArrayList<>();
                            aVarM.f(hVar.f1110e, arrayList3);
                            arrayList = arrayList3;
                        }
                    } else {
                        arrayList = null;
                    }
                    if (arrayList == null) {
                        bVar = null;
                    } else {
                        Iterator<d0.d> it = arrayList.iterator();
                        while (it.hasNext()) {
                            if (it.next().d() != 9) {
                                it.remove();
                            }
                        }
                        if (arrayList.isEmpty()) {
                            bVar = null;
                        } else {
                            String strE = aVarB.f1706a.e();
                            if (strE.isEmpty()) {
                                bVar = null;
                            } else {
                                Collections.sort(arrayList, h0.e.j(arrayList, intExtra));
                                int size = arrayList.size();
                                int i3 = 0;
                                while (true) {
                                    if (i3 >= size) {
                                        i3 = -1;
                                        break;
                                    }
                                    if (strE.equals(arrayList.get(i3).f539a)) {
                                        break;
                                    }
                                    i3++;
                                }
                                if (i3 == -1) {
                                    bVar = null;
                                } else {
                                    try {
                                        h hVar2 = aVarB.f1706a;
                                        NArc nArcK = NArc.k(hVar2.f1108c, hVar2.f1107b, aVarB.f1707b);
                                        if (nArcK == null) {
                                            bVar = null;
                                        } else {
                                            bVar = new i0.b(nArcK, arrayList, i3, hVar.f1110e, aVarB);
                                        }
                                    } catch (Exception unused) {
                                    }
                                }
                            }
                        }
                    }
                }
                if (bVar == null) {
                    String strF = v0.f.f(null, data);
                    if (strF != null) {
                        if (Build.VERSION.SDK_INT < 30 || !g.e(strF)) {
                            file = new File(strF);
                            if (!file.exists()) {
                                dVar = m0.d.f(strF);
                            } else if (!strF.startsWith("/mnt/appfuse") && !n0.e.l(strF)) {
                                String name = file.getName();
                                parentFile = file.getParentFile();
                                if (parentFile != null || (list = parentFile.list()) == null) {
                                    dVar = null;
                                } else {
                                    String strD = a0.c.d(parentFile.getAbsolutePath());
                                    ArrayList arrayList4 = new ArrayList();
                                    for (String str3 : list) {
                                        if (a0.c.E(str3) == 9) {
                                            arrayList4.add(Build.VERSION.SDK_INT < 21 ? new d0.d(str3, (byte) 9) : j0.b.q(strD, str3));
                                        }
                                    }
                                    Collections.sort(arrayList4, h0.e.j(arrayList4, intExtra));
                                    int size2 = arrayList4.size();
                                    for (int i4 = 0; i4 < size2; i4++) {
                                        if (name.equals(((d0.d) arrayList4.get(i4)).f539a)) {
                                            i2 = i4;
                                            break;
                                        }
                                    }
                                    if (i2 >= 0) {
                                        ArrayList arrayList5 = new ArrayList(arrayList4.size());
                                        Iterator it2 = arrayList4.iterator();
                                        while (it2.hasNext()) {
                                            arrayList5.add(((d0.d) it2.next()).f539a);
                                        }
                                        dVar = new j0.e(arrayList5, parentFile.getPath(), i2);
                                    } else {
                                        dVar = null;
                                    }
                                }
                            }
                        } else {
                            String[] strArrA = g.a(strF);
                            if (strArrA == null || !n0.i.b(strArrA)) {
                                dVar = m0.d.f(strF);
                            } else {
                                strF = n0.i.a(strF, strArrA[2]);
                                file = new File(strF);
                                if (!file.exists()) {
                                    dVar = m0.d.f(strF);
                                } else if (!strF.startsWith("/mnt/appfuse")) {
                                    String name2 = file.getName();
                                    parentFile = file.getParentFile();
                                    if (parentFile != null) {
                                        dVar = null;
                                    } else {
                                        dVar = null;
                                    }
                                }
                            }
                        }
                    }
                } else {
                    dVar = bVar;
                }
                if (dVar == null) {
                    if ("file".equals(data.getScheme())) {
                        strY = a0.c.y(data.getPath());
                    } else {
                        SAF.a aVarF = SAF.f(data);
                        strY = aVarF != null ? aVarF.f1698a : "";
                    }
                    dVar = new m0.d(data, strY);
                }
            } else {
                dVar = null;
            }
            return new d(dVar);
        }
    }

    public static class d implements w0.a.b {

        public final h0.c f1474a;

        public d(h0.c cVar) {
            this.f1474a = cVar;
        }

        @Override
        public final int a() {
            return 0;
        }
    }

    public class e extends f.a {

        public final Context f1475a;

        public final h0.c f1476b;

        public int f1477c = -1;

        public e(Context context, h0.c cVar) {
            this.f1475a = context;
            this.f1476b = cVar;
        }

        @Override
        public final void a(ViewGroup viewGroup, FrameLayout frameLayout) {
            View childAt = frameLayout.getChildAt(0);
            if (childAt instanceof g.d) {
                g.d dVar = (g.d) childAt;
                dVar.t(true);
                dVar.f828i0 = null;
                dVar.f830j0 = null;
            }
            viewGroup.removeView(frameLayout);
        }

        @Override
        public final int b() {
            return this.f1476b.getCount();
        }

        public final String d() {
            int i2 = this.f1477c;
            if (i2 < 0) {
                return "";
            }
            h0.c cVar = this.f1476b;
            return i2 >= cVar.getCount() ? "" : cVar.getName(this.f1477c);
        }

        public final g.a e(int i2) {
            h0.c cVar = this.f1476b;
            g.a aVarD = cVar.d(i2);
            String lowerCase = cVar.getName(i2).toLowerCase();
            boolean z2 = true;
            boolean z3 = (lowerCase.endsWith(".gif") || lowerCase.endsWith(".ico")) ? false : true;
            if (z3) {
                long j2 = aVarD.f802e;
                if (j2 != 0 && j2 <= 20480) {
                    z2 = false;
                }
                z3 = z2;
            }
            aVarD.f803f = z3;
            return aVarD;
        }
    }

    public final void a(boolean z2) {
        View decorView = getWindow().getDecorView();
        if (z2 || !getActionBar().isShowing()) {
            decorView.setSystemUiVisibility(decorView.getSystemUiVisibility() & (this.f1467d ^ (-1)));
            getActionBar().show();
        } else {
            decorView.setSystemUiVisibility(decorView.getSystemUiVisibility() | this.f1467d);
            getActionBar().hide();
        }
    }

    @Override
    public final void b(w0.a.b bVar) {
        d dVar = (d) bVar;
        h0.c cVar = dVar.f1474a;
        if (cVar == null) {
            ZApp.i(R.string.ERROR_UNSUPORTED_METOD);
            finish();
            return;
        }
        this.f1465b = new e(this, cVar);
        ru.zdevs.zarchiver.ui.layout.b bVar2 = this.f1464a;
        h0.c cVar2 = dVar.f1474a;
        bVar2.setOffscreenPageLimit(cVar2.c() ? 2 : 1);
        this.f1464a.setAdapter(this.f1465b);
        this.f1464a.setCurrentItem(cVar2.a());
    }

    public final void c(g.d dVar, Exception exc) {
        FrameLayout frameLayout = (FrameLayout) dVar.getTag();
        if (frameLayout == null) {
            ZApp.j("Failed to load image: " + exc.getMessage());
            return;
        }
        frameLayout.removeAllViews();
        TextView textView = new TextView(frameLayout.getContext());
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 17;
        textView.setLayoutParams(layoutParams);
        textView.setText(exc.getMessage());
        frameLayout.addView(textView);
    }

    @Override
    public final void finish() {
        this.f1464a.setAdapter(null);
        super.finish();
    }

    @Override
    public final MenuInflater getMenuInflater() {
        return Build.VERSION.SDK_INT < 21 ? new f1.a(this) : super.getMenuInflater();
    }

    @Override
    public void onClick(View view) {
        a(false);
    }

    @Override
    public final void onCreate(Bundle bundle) {
        t0.b.m(this, false, null);
        boolean zK = t0.b.k(1536);
        Window window = getWindow();
        if (!zK) {
            window.requestFeature(9);
            window.getDecorView().setSystemUiVisibility(1792);
        }
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 19) {
            this.f1467d = 2054;
            window.addFlags(134217728);
            if (i2 >= 28) {
                window.getAttributes().layoutInDisplayCutoutMode = 1;
            }
        } else {
            this.f1467d = 6;
        }
        z0.e.g(this);
        z0.e.k(this, t0.b.f2084e);
        z0.e.k(ZApp.f1434c, t0.b.f2084e);
        if (zK) {
            z0.e.o(this, false);
        } else {
            window.setBackgroundDrawable(new ColorDrawable(-16777216));
            if (i2 >= 21) {
                window.setStatusBarColor(1073741824);
            }
        }
        super.onCreate(bundle);
        ru.zdevs.zarchiver.ui.layout.b bVar = new ru.zdevs.zarchiver.ui.layout.b(this);
        this.f1464a = bVar;
        bVar.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        setContentView(this.f1464a);
        ActionBar actionBar = getActionBar();
        if (actionBar != null) {
            if (!zK) {
                actionBar.setBackgroundDrawable(new ColorDrawable(1073741824));
            }
            if (!z0.e.d(this)) {
                actionBar.setDisplayHomeAsUpEnabled(true);
            }
        }
        new c(getIntent()).g(this, this.f1466c);
        try {
            ZApp.f().postDelayed(new a(), 2000L);
        } catch (Exception unused) {
        }
    }

    @Override
    public final boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.menu_imageviewer, menu);
        return true;
    }

    @Override
    public final boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (i2 == 66 || i2 == 20 || i2 == 19) {
            a(true);
        }
        return super.onKeyDown(i2, keyEvent);
    }

    @Override
    public final boolean onMenuOpened(int i2, Menu menu) {
        e eVar;
        if (i2 == 8) {
            z0.e.m(menu);
            if (menu != null && (eVar = this.f1465b) != null && eVar.b() > 0) {
                e eVar2 = this.f1465b;
                h0.c cVar = eVar2.f1476b;
                String strD = eVar2.d();
                h hVarE = cVar.e();
                boolean z2 = false;
                menu.findItem(R.id.bInfo).setVisible((hVarE == null || strD.isEmpty()) ? false : true);
                MenuItem menuItemFindItem = menu.findItem(R.id.bDelete);
                if (cVar.c() && hVarE != null && !strD.isEmpty() && !n0.e.l(hVarE.f1108c)) {
                    z2 = true;
                }
                menuItemFindItem.setVisible(z2);
                menu.findItem(R.id.bShare).setVisible(true);
            }
        }
        return super.onMenuOpened(i2, menu);
    }

    @Override
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        String strD;
        int itemId = menuItem.getItemId();
        if (itemId == 16908332 || itemId == R.id.bExit) {
            finish();
            return true;
        }
        Uri uriB = null;
        if (itemId == R.id.bShare) {
            e eVar = this.f1465b;
            if (eVar != null) {
                strD = eVar.d();
                e eVar2 = this.f1465b;
                int i2 = eVar2.f1477c;
                if (i2 >= 0) {
                    h0.c cVar = eVar2.f1476b;
                    if (i2 < cVar.getCount()) {
                        uriB = cVar.b(this, eVar2.f1477c);
                    }
                }
            } else {
                strD = "";
            }
            v0.e.e(this, uriB, strD);
            return true;
        }
        if (itemId == R.id.bInfo) {
            h hVarE = this.f1465b.f1476b.e();
            String strD2 = this.f1465b.d();
            if (hVarE == null || strD2.isEmpty()) {
                return false;
            }
            new o((ru.zdevs.zarchiver.d) null, (Context) this, hVarE, strD2, false).w();
            return true;
        }
        if (itemId == R.id.bDelete) {
            e eVar3 = this.f1465b;
            if (eVar3 == null) {
                return true;
            }
            int i3 = eVar3.f1477c;
            h hVarE2 = eVar3.f1476b.e();
            String strD3 = this.f1465b.d();
            if (hVarE2 != null && !strD3.isEmpty()) {
                w wVar = new w(1, this, getString(R.string.MES_QUESTION_REMOVE).replace("%1", this.f1465b.d()), null);
                wVar.f961b = new b(hVarE2, strD3, i3);
                wVar.t();
                return true;
            }
        }
        return false;
    }

    @Override
    public final void onPause() {
        super.onPause();
        this.f1466c.d(this);
    }

    @Override
    public final void onResume() {
        super.onResume();
        this.f1466c.a(this, this);
    }

    @Override
    public final void onStart() {
        super.onStart();
        ZApp.b(this);
    }

    @Override
    public final void onStop() {
        super.onStop();
        this.f1466c.f(1000, 1, -1);
    }

    @Override
    public final void onWindowFocusChanged(boolean z2) {
        super.onWindowFocusChanged(z2);
        if (z2) {
            return;
        }
        getActionBar().show();
    }
}
