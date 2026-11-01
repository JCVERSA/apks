package ru.zdevs.zarchiver.activity;

import android.app.Activity;
import android.content.ComponentName;
import android.content.ContentValues;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.database.sqlite.SQLiteCantOpenDatabaseException;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.view.animation.DecelerateInterpolator;
import android.widget.ListAdapter;
import android.widget.ListView;
import b0.f;
import b0.h;
import c0.i;
import com.sothree.slidinguppanel.SlidingUpPanelLayout;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import ru.zdevs.zarchiver.R;
import ru.zdevs.zarchiver.ZApp;
import z0.g;

public class OpenAsDlg extends Activity implements w0.a.c {

    public static final int f1591f = 0;

    public i f1592a;

    public int f1593b;

    public String f1594c;

    public final w0.a f1595d = new w0.a();

    public final b f1596e = new b();

    public class a implements Runnable {
        public a() {
        }

        @Override
        public final void run() {
            OpenAsDlg openAsDlg = OpenAsDlg.this;
            openAsDlg.setResult(0);
            openAsDlg.finishAndRemoveTask();
        }
    }

    public class b implements View.OnClickListener {

        public class a implements Runnable {

            public final u0.b f1599a;

            public a(u0.b bVar) {
                this.f1599a = bVar;
            }

            @Override
            public final void run() {
                SQLiteDatabase readableDatabase;
                u0.b bVar = this.f1599a;
                try {
                    readableDatabase = new u0.a(ZApp.f1434c).getReadableDatabase();
                } catch (SQLiteCantOpenDatabaseException unused) {
                    readableDatabase = null;
                }
                if (readableDatabase == null) {
                    return;
                }
                try {
                    if (bVar.f2178e == 1000) {
                        bVar.f2178e = 1;
                    }
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("EXT", bVar.f2174a);
                    contentValues.put("PKG", bVar.f2175b);
                    contentValues.put("CLS", bVar.f2176c);
                    contentValues.put("SCHEME", Integer.valueOf(bVar.f2177d));
                    contentValues.put("TYPE", Integer.valueOf(bVar.f2178e));
                    if (readableDatabase.update("FA", contentValues, "EXT = ? AND TYPE = ?", new String[]{bVar.f2174a, String.valueOf(bVar.f2178e)}) == 0) {
                        readableDatabase.insert("FA", null, contentValues);
                    }
                } finally {
                    n0.e.d(readableDatabase);
                }
            }
        }

        public b() {
        }

        @Override
        public final void onClick(View view) {
            Bundle bundleExtra;
            OpenAsDlg openAsDlg = OpenAsDlg.this;
            Intent intent = openAsDlg.f1592a.f424b.get(openAsDlg.f1593b).f425a;
            if (intent != null) {
                Intent intent2 = openAsDlg.getIntent();
                if (intent2 != null && (bundleExtra = intent2.getBundleExtra("OpenAsDlg.EXTRA_EXTRA")) != null) {
                    intent.putExtras(bundleExtra);
                }
                if (v0.e.h(openAsDlg, intent) == 0 && view != null && openAsDlg.f1594c != null) {
                    i.a aVar = openAsDlg.f1592a.f424b.get(openAsDlg.f1593b);
                    u0.b bVar = new u0.b(aVar.f426b);
                    Uri data = aVar.f425a.getData();
                    if (data != null) {
                        bVar.f2177d = !"file".equals(data.getScheme()) ? 1 : 0;
                    } else {
                        bVar.f2177d = 1;
                    }
                    bVar.f2174a = openAsDlg.f1594c;
                    bVar.f2178e = view.getId() == R.id.btn_always ? 0 : 1;
                    w0.c.f2212d.execute(new a(bVar));
                }
            }
            openAsDlg.setResult(-1);
            openAsDlg.finish();
        }
    }

    public static class c implements w0.a.b {

        public final ArrayList<i.a> f1600a;

        public c(ArrayList<i.a> arrayList) {
            this.f1600a = arrayList;
        }

        @Override
        public final int a() {
            return 0;
        }
    }

    public static class d extends w0.c {

        public final ArrayList<i.a> f1601e;

        public d(ArrayList<i.a> arrayList) {
            this.f1601e = arrayList;
        }

        @Override
        public final w0.a.b f() {
            Iterator<i.a> it = this.f1601e.iterator();
            while (it.hasNext()) {
                it.next().b();
            }
            return null;
        }

        @Override
        public final int j() {
            return 1;
        }
    }

    public static class e extends w0.c {

        public final Parcelable[] f1602e;

        public final String f1603f;

        public final PackageManager f1604g;

        public e(Parcelable[] parcelableArr, String str, PackageManager packageManager) {
            this.f1602e = parcelableArr;
            this.f1603f = str;
            this.f1604g = packageManager;
        }

        /* JADX WARN: Code duplicated, block: B:45:0x00b3  */
        @Override
        public final w0.a.b f() {
            ActivityInfo activityInfo;
            ResolveInfo resolveInfo;
            boolean z2;
            Thread threadCurrentThread = Thread.currentThread();
            int priority = threadCurrentThread.getPriority();
            threadCurrentThread.setPriority(10);
            ArrayList arrayList = null;
            String str = this.f1603f;
            u0.b bVarP = str != null ? a0.c.p(1000, str) : null;
            Parcelable[] parcelableArr = this.f1602e;
            if (parcelableArr != null) {
                ArrayList arrayList2 = new ArrayList(parcelableArr.length);
                for (Parcelable parcelable : parcelableArr) {
                    Intent intent = (Intent) parcelable;
                    ComponentName component = intent.getComponent();
                    PackageManager packageManager = this.f1604g;
                    if (component != null) {
                        try {
                            activityInfo = packageManager.getActivityInfo(component, 0);
                            try {
                                resolveInfo = new ResolveInfo();
                                try {
                                    resolveInfo.activityInfo = activityInfo;
                                } catch (PackageManager.NameNotFoundException unused) {
                                }
                            } catch (PackageManager.NameNotFoundException unused2) {
                                resolveInfo = null;
                            }
                        } catch (PackageManager.NameNotFoundException unused3) {
                            activityInfo = null;
                            resolveInfo = null;
                        }
                    } else {
                        activityInfo = null;
                        resolveInfo = null;
                    }
                    if (activityInfo == null) {
                        resolveInfo = packageManager.resolveActivity(intent, 65536);
                        activityInfo = resolveInfo != null ? resolveInfo.activityInfo : null;
                    }
                    if (activityInfo == null) {
                        Log.w("TaskResolve", "No activity found for " + intent);
                    } else {
                        i.a aVar = new i.a(intent, resolveInfo, packageManager);
                        if (bVarP != null && intent.getData() != null) {
                            boolean z3 = !"file".equals(intent.getData().getScheme());
                            String str2 = bVarP.f2175b;
                            if (str2 == null || bVarP.f2176c == null || !str2.equals(resolveInfo.activityInfo.packageName) || !bVarP.f2176c.equals(resolveInfo.activityInfo.name)) {
                                z2 = false;
                            } else if (z3 == (bVarP.f2177d == 1)) {
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                            if (z2) {
                                aVar.f431g = true;
                            }
                        }
                        arrayList2.add(aVar);
                    }
                }
                Collections.sort(arrayList2);
                int size = arrayList2.size();
                for (int i2 = 0; i2 < 4 && i2 < size; i2++) {
                    ((i.a) arrayList2.get(i2)).b();
                }
                arrayList = arrayList2;
            }
            threadCurrentThread.setPriority(priority);
            return new c(arrayList);
        }

        @Override
        public final int j() {
            return 0;
        }
    }

    public final void a(boolean z2) {
        if (!z2) {
            setResult(0);
            finishAndRemoveTask();
        } else {
            View viewFindViewById = findViewById(android.R.id.content);
            viewFindViewById.animate().translationY(((View) viewFindViewById.getParent()).getBottom() - viewFindViewById.getTop()).setInterpolator(new DecelerateInterpolator(2.0f)).setDuration(500).setListener(new g(new a()));
        }
    }

    @Override
    public final void b(w0.a.b bVar) {
        if (bVar.a() == 0) {
            c cVar = (c) bVar;
            if (cVar.f1600a == null) {
                a(false);
                return;
            }
            ArrayList<i.a> arrayList = cVar.f1600a;
            new d(arrayList).g(this, this.f1595d);
            this.f1592a = new i(this, arrayList);
            setContentView(R.layout.dlg_open_as);
            View viewFindViewById = findViewById(android.R.id.content);
            viewFindViewById.getViewTreeObserver().addOnPreDrawListener(new b0.e(viewFindViewById));
            ListView listView = (ListView) findViewById(android.R.id.list);
            listView.setAdapter((ListAdapter) this.f1592a);
            listView.setChoiceMode(1);
            listView.setOnItemClickListener(new f(this));
            SlidingUpPanelLayout slidingUpPanelLayout = (SlidingUpPanelLayout) findViewById(R.id.sup_sliding);
            slidingUpPanelLayout.setPanelSlideListener(new b0.g(this));
            slidingUpPanelLayout.setScrollableView(listView);
            findViewById(R.id.outside).setOnTouchListener(new h(this));
            c(false);
            View viewFindViewById2 = findViewById(R.id.btn_always);
            b bVar2 = this.f1596e;
            viewFindViewById2.setOnClickListener(bVar2);
            findViewById(R.id.btn_once).setOnClickListener(bVar2);
        }
    }

    public final void c(boolean z2) {
        View viewFindViewById = findViewById(R.id.btn_always);
        viewFindViewById.setEnabled(z2);
        viewFindViewById.setAlpha(z2 ? 1.0f : 0.4f);
        View viewFindViewById2 = findViewById(R.id.btn_once);
        viewFindViewById2.setEnabled(z2);
        viewFindViewById2.setAlpha(z2 ? 1.0f : 0.4f);
    }

    @Override
    public final void onCreate(Bundle bundle) {
        Parcelable[] parcelableArrayExtra;
        z0.e.o(this, false);
        z0.e.k(this, t0.b.f2084e);
        requestWindowFeature(1);
        Window window = getWindow();
        window.setBackgroundDrawable(new ColorDrawable(0));
        window.setStatusBarColor(0);
        if (Build.VERSION.SDK_INT >= 23 && z0.e.c(this, true, null)) {
            window.setNavigationBarColor(getColor(z0.c.b(this, R.attr.isLightActionBar) ? R.color.ab_background_material_light : R.color.ab_background_material_dark));
        }
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.windowAnimations = 0;
        attributes.gravity = 1 | attributes.gravity;
        attributes.dimAmount = 0.75f;
        window.addFlags(2);
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.bottomsheet_width);
        if (dimensionPixelSize > 0) {
            attributes.width = dimensionPixelSize;
            window.addFlags(262144);
        }
        super.onCreate(bundle);
        Intent intent = getIntent();
        if (intent == null || (parcelableArrayExtra = intent.getParcelableArrayExtra("android.intent.extra.INITIAL_INTENTS")) == null) {
            a(false);
        } else {
            String stringExtra = intent.getStringExtra("OpenAsDlg.EXTRA_FILE_NAME");
            this.f1594c = stringExtra;
            if (stringExtra != null) {
                this.f1594c = a0.c.D(stringExtra);
            }
            new e(parcelableArrayExtra, this.f1594c, getPackageManager()).g(this, this.f1595d);
        }
        this.f1593b = -1;
    }

    @Override
    public final void onPause() {
        super.onPause();
        this.f1595d.d(this);
    }

    @Override
    public final void onResume() {
        super.onResume();
        this.f1595d.a(this, this);
    }

    @Override
    public final void onStop() {
        super.onStop();
        this.f1595d.f(1000, 1, -1);
    }

    @Override
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() != 0) {
            return false;
        }
        a(true);
        return false;
    }
}
