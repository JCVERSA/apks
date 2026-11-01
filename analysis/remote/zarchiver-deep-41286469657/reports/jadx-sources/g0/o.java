package g0;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ScrollView;
import android.widget.TableLayout;
import android.widget.TextView;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.text.DateFormat;
import java.util.Locale;
import java.util.concurrent.Executors;
import ru.zdevs.zarchiver.R;
import ru.zdevs.zarchiver.archiver.C2JBridge;
import ru.zdevs.zarchiver.archiver.NArc;

public final class o extends g0.i implements DialogInterface.OnCancelListener, DialogInterface.OnClickListener, CompoundButton.OnCheckedChangeListener, View.OnClickListener, w0.a.c {

    public static final int[] f981p = {R.id.trMedia1, R.id.trMedia2, R.id.trMedia3, R.id.trMedia4, R.id.trMedia5};

    public static final int[] f982q = {R.id.tvTitlMedia1, R.id.tvTitlMedia2, R.id.tvTitlMedia3, R.id.tvTitlMedia4, R.id.tvTitlMedia5};

    public static final int[] f983r = {R.id.tvMedia1, R.id.tvMedia2, R.id.tvMedia3, R.id.tvMedia4, R.id.tvMedia5};

    public AlertDialog f984g;

    public int f985h;

    public ScrollView f986i;

    public final w0.a f987j = new w0.a();

    public final h0.h[] f988k;

    public final String[] f989l;

    public final boolean f990m;

    public int f991n;

    public int f992o;

    public class a implements DialogInterface.OnShowListener {
        public a() {
        }

        @Override
        public final void onShow(DialogInterface dialogInterface) {
            o oVar = o.this;
            AlertDialog alertDialog = oVar.f984g;
            if (alertDialog != null) {
                g0.i.i(alertDialog);
                Resources resources = oVar.f984g.getContext().getResources();
                if (resources != null && resources.getConfiguration() != null) {
                    oVar.v(resources.getConfiguration());
                }
            }
            Button button = ((AlertDialog) dialogInterface).getButton(-3);
            if (button != null) {
                button.setOnClickListener(oVar);
            }
        }
    }

    public class b implements View.OnLongClickListener {
        public b() {
        }

        @Override
        public final boolean onLongClick(View view) {
            String string;
            o oVar = o.this;
            String[] strArr = oVar.f989l;
            if (strArr.length > 1) {
                StringBuilder sb = new StringBuilder();
                for (String str : oVar.f989l) {
                    if (sb.length() != 0) {
                        sb.append('\n');
                    }
                    sb.append(str);
                }
                string = sb.toString();
            } else {
                string = strArr[0];
            }
            v0.a.a(oVar.f984g.getContext(), "ZA File", string);
            return true;
        }
    }

    public static class c implements w0.a.b {

        public final int f995a;

        public final int[] f996b;

        public final String[] f997c;

        public c(int i2, String[] strArr, int[] iArr) {
            this.f995a = i2;
            this.f996b = iArr;
            this.f997c = strArr;
        }

        @Override
        public final int a() {
            return this.f995a;
        }
    }

    public static class d implements w0.a.b {

        public final h0.h f998a;

        public final h0.e.b f999b;

        public d(h0.e.b bVar, h0.h hVar) {
            this.f999b = bVar;
            this.f998a = hVar;
        }

        @Override
        public final int a() {
            return 0;
        }
    }

    public static class e implements w0.a.b {

        public final int f1000a;

        public int f1001b = 0;

        public String f1002c;

        public e(int i2) {
            this.f1000a = i2;
        }

        @Override
        public final int a() {
            return this.f1000a;
        }
    }

    public static class f extends w0.c {

        public final String f1003e;

        public f(Dialog dialog, String str) {
            this.f1003e = str;
            o.t(dialog, "7z".equals(a0.c.s(str)) ? 5 : 4);
        }

        @Override
        public final void e() {
            e0.b.f651a = null;
            if (C2JBridge.f1613c) {
                C2JBridge.cSetStatus(5, 15);
            }
            super.e();
        }

        @Override
        public final w0.a.b f() {
            e0.b.a aVarC;
            String str = this.f1003e;
            try {
                aVarC = e0.b.c(str);
            } catch (e0.b.C0010b unused) {
                aVarC = null;
            }
            if (aVarC == null) {
                return null;
            }
            String[] strArr = new String[5];
            strArr[0] = aVarC.f652a;
            int i2 = aVarC.f655d;
            if ((i2 & 3) != 0) {
                strArr[1] = (i2 & 1) != 0 ? "+" : "-";
            }
            if (aVarC.f653b >= 0) {
                strArr[2] = "" + aVarC.f653b;
            }
            long j2 = aVarC.f654c;
            if (j2 >= 0) {
                strArr[3] = v0.h.b(j2, 2, null);
                long jG = n0.e.g(str);
                if (jG > 0 && aVarC.f654c > jG) {
                    strArr[4] = ((int) ((jG * 100) / aVarC.f654c)) + "%";
                }
            }
            return new c(1, strArr, new int[]{R.string.FINFO_ARCHIVE_TYPE, R.string.FINFO_ARCHIVE_SOLID, R.string.FINFO_ARCHIVE_FILE_COUNT, R.string.FINFO_ARCHIVE_SIZE, R.string.FINFO_COMPRESSION_RATIO});
        }
    }

    public static class g extends w0.c {

        public final h0.h f1004e;

        public final h0.h[] f1005f;

        public final String[] f1006g;

        public g(h0.h[] hVarArr, String[] strArr) {
            if (hVarArr.length == 1) {
                this.f1004e = hVarArr[0];
                this.f1005f = null;
            } else {
                this.f1004e = null;
                this.f1005f = hVarArr;
            }
            this.f1006g = strArr;
        }

        @Override
        public final w0.a.b f() {
            h0.e.b bVarF;
            String[] strArr = this.f1006g;
            h0.h hVar = this.f1004e;
            if (hVar == null) {
                h0.h[] hVarArr = this.f1005f;
                if (hVarArr != null && strArr != null && hVarArr.length != 0 && hVarArr.length == strArr.length) {
                    h0.b[] bVarArrB = h0.e.b();
                    int length = bVarArrB.length;
                    int i2 = 0;
                    while (true) {
                        if (i2 < length) {
                            h0.e.b bVarK = bVarArrB[i2].k(hVarArr, strArr, this);
                            if (bVarK != null) {
                                bVarF = bVarK;
                                break;
                            }
                            if (!isCancelled()) {
                                i2++;
                            }
                        }
                        bVarF = null;
                        break;
                    }
                } else {
                    bVarF = null;
                    break;
                }
            } else {
                bVarF = h0.e.f(hVar, strArr, this);
            }
            return new c(2, bVarF != null ? new String[]{v0.h.b(bVarF.f1090c, 2, null), String.format(Locale.ENGLISH, "%d", Integer.valueOf(bVarF.f1091d))} : new String[]{"-", "-"}, new int[]{R.id.tvFileSize, R.id.tvFileCount});
        }
    }

    public static class h extends w0.c {

        public NArc f1007e = null;

        public final h0.h f1008f;

        public final int f1009g;

        public h(Dialog dialog, h0.h hVar, int i2, String str) {
            this.f1008f = hVar;
            this.f1009g = i2;
            o.t(dialog, "epub".equals(str) ? 2 : 3);
        }

        @Override
        public final void e() {
            NArc nArc = this.f1007e;
            if (nArc != null) {
                nArc.a();
            }
            super.e();
        }

        @Override
        public final w0.a.b f() throws Throwable {
            InputStream inputStreamW;
            h0.h hVar = this.f1008f;
            String[] strArr = new String[4];
            try {
                if (hVar.g()) {
                    NArc nArcL = NArc.l(hVar.f1108c);
                    this.f1007e = nArcL;
                    if (nArcL == null) {
                        if (nArcL != null) {
                            nArcL.b(null);
                            this.f1007e = null;
                        }
                        return null;
                    }
                    inputStreamW = this.f1007e.h(a0.c.i0(-1, hVar.f1109d), hVar.f1110e);
                } else {
                    inputStreamW = hVar.m() ? h0.f.u(hVar).w() : new FileInputStream(hVar.f1108c);
                }
                try {
                    if (inputStreamW == null) {
                        a0.b.c(hVar);
                        NArc nArc = this.f1007e;
                        if (nArc != null) {
                            nArc.b(inputStreamW);
                            this.f1007e = null;
                        }
                        return null;
                    }
                    if (this.f1009g == R.string.FINFO_BOOK_INFO) {
                        b.c cVar = new b.c(1);
                        cVar.b(inputStreamW, a0.c.s(hVar.e()), false);
                        strArr[0] = cVar.a(0);
                        strArr[1] = cVar.a(2);
                        strArr[2] = cVar.a(3);
                    } else {
                        q0.c.a aVarA = q0.c.a(inputStreamW);
                        if (aVarA != null) {
                            strArr[0] = aVarA.f1374a;
                            strArr[1] = aVarA.f1375b;
                            strArr[3] = aVarA.f1376c;
                        }
                    }
                    inputStreamW.close();
                    NArc nArc2 = this.f1007e;
                    if (nArc2 != null) {
                        nArc2.b(null);
                        this.f1007e = null;
                    }
                    return new c(1, strArr, new int[]{R.string.FINFO_BOOK_AUTOR, R.string.FINFO_BOOK_TITLE, R.string.FINFO_MEDIA_GENRE, R.string.FINFO_BOOK_PAGES});
                } catch (Exception unused) {
                    NArc nArc3 = this.f1007e;
                    if (nArc3 != null) {
                        nArc3.b(inputStreamW);
                    }
                    return new c(1, strArr, new int[]{R.string.FINFO_BOOK_AUTOR, R.string.FINFO_BOOK_TITLE, R.string.FINFO_MEDIA_GENRE, R.string.FINFO_BOOK_PAGES});
                } catch (Throwable th) {
                    th = th;
                    NArc nArc4 = this.f1007e;
                    if (nArc4 != null) {
                        nArc4.b(inputStreamW);
                        this.f1007e = null;
                    }
                    throw th;
                }
            } catch (Exception unused2) {
                inputStreamW = null;
            } catch (Throwable th2) {
                th = th2;
                inputStreamW = null;
            }
        }
    }

    public static class i extends w0.c {

        public final h0.h f1010e;

        public i(h0.h hVar) {
            this.f1010e = hVar;
        }

        @Override
        public final w0.a.b f() {
            String str;
            h0.e.a aVarD = h0.e.d(this.f1010e);
            if (aVarD == null || (str = aVarD.f1087c) == null) {
                return null;
            }
            e eVar = new e(5);
            eVar.f1002c = str;
            return eVar;
        }
    }

    public static class j extends w0.c {

        public final String f1011e;

        public j(String str) {
            this.f1011e = str;
        }

        @Override
        public final w0.a.b f() throws Throwable {
            FileInputStream fileInputStream;
            File file = new File(this.f1011e);
            String string = null;
            string = null;
            string = null;
            string = null;
            FileInputStream fileInputStream2 = null;
            if (file.exists()) {
                try {
                    fileInputStream = new FileInputStream(file);
                    try {
                        MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                        byte[] bArr = new byte[4096];
                        do {
                            int i2 = fileInputStream.read(bArr);
                            if (i2 <= 0 || isCancelled()) {
                                BigInteger bigInteger = new BigInteger(1, messageDigest.digest());
                                StringBuilder sb = new StringBuilder();
                                sb.append(bigInteger.toString(16));
                                while (sb.length() < 32) {
                                    sb.insert(0, "0");
                                }
                                string = sb.toString();
                                break;
                            }
                            messageDigest.update(bArr, 0, i2);
                        } while (!Thread.interrupted());
                    } catch (Exception unused) {
                    } catch (Throwable th) {
                        th = th;
                        fileInputStream2 = fileInputStream;
                        n0.e.d(fileInputStream2);
                        throw th;
                    }
                } catch (Exception unused2) {
                    fileInputStream = null;
                } catch (Throwable th2) {
                    th = th2;
                }
                n0.e.d(fileInputStream);
            }
            int[] iArr = {R.id.tvFileMD5};
            String[] strArr = new String[1];
            if (string == null) {
                string = "";
            }
            strArr[0] = string;
            return new c(2, strArr, iArr);
        }
    }

    public static class k extends w0.c {

        public final h0.h f1012e;

        public final boolean f1013f;

        public k(h0.h hVar, boolean z2) {
            this.f1013f = z2;
            this.f1012e = hVar;
        }

        @Override
        public final w0.a.b f() {
            h0.e.b bVarE;
            boolean z2 = this.f1013f;
            h0.h hVar = this.f1012e;
            if (z2 && t0.b.i(hVar.f1108c)) {
                o0.a aVarC = o0.a.c(t0.b.f2092m);
                bVarE = j0.c.m(aVarC, hVar.toFile());
                aVarC.close();
            } else {
                bVarE = null;
            }
            if (bVarE == null) {
                bVarE = h0.e.e(hVar, this);
            }
            return new d(bVarE, hVar);
        }
    }

    public static class l extends w0.c {

        public final h0.h f1014e;

        public final long f1015f;

        public final int f1016g;

        public l(Dialog dialog, h0.h hVar, long j2, int i2) {
            this.f1014e = hVar;
            this.f1015f = j2;
            this.f1016g = i2;
            o.t(dialog, i2 == 14 ? 3 : i2 == 9 ? 1 : 4);
        }

        @Override
        public final w0.a.b f() {
            q0.e.a aVarE = q0.e.e(this.f1014e, this.f1015f, this.f1016g, 2, 0, null);
            if (aVarE == null) {
                return null;
            }
            return new c(1, aVarE.f1381c, aVarE.f1380b);
        }
    }

    public static class m extends w0.c {

        public final h0.h f1017e;

        public final boolean f1018f;

        public m(h0.h hVar, boolean z2) {
            this.f1017e = hVar;
            this.f1018f = z2;
        }

        @Override
        public final w0.a.b f() {
            e eVar = new e(3);
            try {
                boolean z2 = this.f1018f;
                h0.h hVar = this.f1017e;
                if (z2) {
                    if (h0.f.u(hVar).b(".nomedia") != null) {
                        eVar.f1001b = 1;
                    }
                } else if (h0.f.u(new h0.h(".nomedia", hVar)).c()) {
                    eVar.f1001b = -1;
                }
            } catch (Exception unused) {
            }
            return eVar;
        }
    }

    public static class n extends w0.c {

        public final h0.h f1019e;

        public n(h0.h hVar) {
            this.f1019e = hVar;
        }

        @Override
        public final w0.a.b f() {
            e eVar = new e(4);
            File file = this.f1019e.toFile();
            if (file != null) {
                eVar.f1001b = new File(file, ".nomedia").exists() ? 1 : 0;
            } else {
                eVar.f1001b = 2;
            }
            return eVar;
        }
    }

    public o(ru.zdevs.zarchiver.d dVar, Context context, h0.h hVar, String str, boolean z2) {
        this.f965f = dVar;
        this.f988k = new h0.h[]{hVar};
        this.f989l = new String[]{str};
        this.f990m = z2;
        this.f992o = 0;
        this.f991n = 0;
        u(context);
        c();
    }

    public static void t(Dialog dialog, int i2) {
        if (dialog == null || !t0.b.l(32)) {
            return;
        }
        for (int i3 = 0; i3 < i2; i3++) {
            try {
                dialog.findViewById(f981p[i3]).setVisibility(4);
            } catch (Exception unused) {
                return;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:137:0x0269  */
    @Override
    public final void b(w0.a.b bVar) {
        int i2;
        String str;
        w0.a aVar;
        int i3;
        AlertDialog alertDialog;
        AlertDialog alertDialog2;
        int iA = bVar.a();
        if (iA == 0) {
            d dVar = (d) bVar;
            AlertDialog alertDialog3 = this.f984g;
            if (alertDialog3 == null) {
                return;
            }
            TextView textView = (TextView) alertDialog3.findViewById(R.id.tvFileType);
            TextView textView2 = (TextView) this.f984g.findViewById(R.id.tvFileSize);
            TextView textView3 = (TextView) this.f984g.findViewById(R.id.tvFileLastMod);
            TextView textView4 = (TextView) this.f984g.findViewById(R.id.tvFileMD5);
            View viewFindViewById = this.f984g.findViewById(R.id.trMD5);
            if (textView == null || textView2 == null || textView3 == null || textView4 == null || viewFindViewById == null) {
                return;
            }
            h0.e.b bVar2 = dVar.f999b;
            if (bVar2 == null) {
                if (this.f990m) {
                    textView.setText(R.string.FINFO_TYPE_FOLDER);
                } else {
                    textView.setText("-");
                }
                textView2.setText("-");
                textView3.setText("-");
                return;
            }
            boolean z2 = bVar2.f1088a;
            w0.a aVar2 = this.f987j;
            if (!z2 || bVar2.f1092e) {
                if (bVar2.f1092e) {
                    textView.setText(this.f984g.getContext().getString(R.string.FINFO_TYPE_LINK));
                    String str2 = bVar2.f1093f;
                    if (str2 != null && !str2.isEmpty()) {
                        View viewFindViewById2 = this.f984g.findViewById(R.id.trLinkTo);
                        if (viewFindViewById2 != null) {
                            viewFindViewById2.setVisibility(0);
                        }
                        TextView textView5 = (TextView) this.f984g.findViewById(R.id.tvLinkTo);
                        if (textView5 != null) {
                            textView5.setText(bVar2.f1093f);
                        }
                    }
                } else {
                    textView.setText(R.string.FINFO_TYPE_FOLDER);
                }
                long j2 = bVar2.f1090c;
                if (j2 > 0) {
                    textView2.setText(v0.h.b(j2, 2, null));
                } else if (bVar2.f1092e) {
                    textView2.setText("-");
                } else {
                    textView2.setText("...");
                    View viewFindViewById3 = this.f984g.findViewById(R.id.trFileCount);
                    if (viewFindViewById3 != null) {
                        viewFindViewById3.setVisibility(0);
                    }
                    new g(this.f988k, this.f989l).g(null, aVar2);
                }
                if (bVar2.f1091d > 0) {
                    View viewFindViewById4 = this.f984g.findViewById(R.id.trFileCount);
                    TextView textView6 = (TextView) this.f984g.findViewById(R.id.tvFileCount);
                    if (textView6 != null && viewFindViewById4 != null) {
                        viewFindViewById4.setVisibility(0);
                        textView6.setText(String.format(Locale.ENGLISH, "%d", Integer.valueOf(bVar2.f1091d)));
                    }
                }
                textView4.setVisibility(8);
                viewFindViewById.setVisibility(8);
            } else {
                h0.h hVar = dVar.f998a;
                String strE = hVar.e();
                String strS = a0.c.s(strE);
                String strX = a0.c.x(strS);
                textView.setText(strX);
                textView2.setText(v0.h.b(bVar2.f1090c, 2, null));
                boolean z3 = hVar.j() && !hVar.l();
                if (z3 || hVar.g() || hVar.m()) {
                    if (z3) {
                        textView4.setText("...");
                        aVar = aVar2;
                        new j(hVar.r()).g(null, aVar);
                    } else {
                        aVar = aVar2;
                    }
                    if (strS.equals("apk")) {
                        i3 = R.string.FINFO_APK_INFO;
                    } else if (strX.startsWith("image/")) {
                        i3 = R.string.FINFO_IMAGE_INFO;
                    } else if (strS.equals("fb2") || strS.equals("epub")) {
                        i3 = R.string.FINFO_BOOK_INFO;
                    } else if (strS.equals("docx") || strS.equals("odt") || strS.equals("xlsx") || strS.equals("ods")) {
                        i3 = R.string.FINFO_DOCUMENT_INFO;
                    } else if (!z3) {
                        i3 = 0;
                    } else if (strX.startsWith("video/")) {
                        i3 = R.string.FINFO_VIDEO_INFO;
                    } else if (strX.startsWith("audio/")) {
                        i3 = R.string.FINFO_AUDIO_INFO;
                    } else if (a0.c.H(a0.c.E(strE))) {
                        i3 = R.string.FINFO_ARCHIVE_INFO;
                    } else {
                        i3 = 0;
                    }
                    if (i3 != 0) {
                        TableLayout tableLayout = (TableLayout) this.f984g.findViewById(R.id.tlMediaInfo);
                        if (tableLayout != null) {
                            tableLayout.setVisibility(0);
                        }
                        TextView textView7 = (TextView) this.f984g.findViewById(R.id.tvMediaHeader);
                        if (textView7 != null) {
                            textView7.setText(i3);
                        }
                    }
                    this.f991n = i3;
                    if (i3 == R.string.FINFO_APK_INFO) {
                        new l(this.f984g, hVar, bVar2.f1090c, 6).g(null, aVar);
                    } else if (i3 == R.string.FINFO_VIDEO_INFO) {
                        new l(this.f984g, hVar, bVar2.f1090c, 14).g(null, aVar);
                    } else if (i3 == R.string.FINFO_AUDIO_INFO) {
                        new l(this.f984g, hVar, bVar2.f1090c, 7).g(null, aVar);
                    } else if (i3 == R.string.FINFO_IMAGE_INFO) {
                        new l(this.f984g, hVar, bVar2.f1090c, 9).g(null, aVar);
                    } else if (i3 == R.string.FINFO_ARCHIVE_INFO) {
                        new f(this.f984g, hVar.r()).g(null, aVar);
                    } else if (i3 == R.string.FINFO_BOOK_INFO || i3 == R.string.FINFO_DOCUMENT_INFO) {
                        new h(this.f984g, hVar, i3, strS).g(null, aVar);
                    }
                }
            }
            Context context = this.f984g.getContext();
            StringBuilder sb = new StringBuilder();
            sb.append(DateFormat.getDateInstance(3).format(Long.valueOf(bVar2.f1089b)));
            sb.append(" ");
            DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
            Configuration configuration = context.getResources().getConfiguration();
            if (displayMetrics.densityDpi >= 240 || configuration.orientation == 2 || (configuration.screenLayout & 15) >= 3) {
                sb.append(DateFormat.getTimeInstance(2).format(Long.valueOf(bVar2.f1089b)));
            } else {
                sb.append(DateFormat.getTimeInstance(3).format(Long.valueOf(bVar2.f1089b)));
            }
            textView3.setText(sb.toString());
            String str3 = bVar2.f1094g;
            if (str3 != null && !str3.isEmpty() && (str = bVar2.f1095h) != null && !str.isEmpty()) {
                View viewFindViewById5 = this.f984g.findViewById(R.id.trUserGroup);
                TextView textView8 = (TextView) this.f984g.findViewById(R.id.tvUserGroup);
                if (viewFindViewById5 != null && textView8 != null) {
                    viewFindViewById5.setVisibility(0);
                    textView8.setText(bVar2.f1095h + "/" + bVar2.f1094g);
                }
            }
            int i4 = bVar2.f1096i;
            if (i4 >= 0) {
                StringBuilder sb2 = new StringBuilder();
                for (int i5 = 0; i5 < 3; i5++) {
                    int i6 = i4 % 10;
                    i4 /= 10;
                    if ((i6 & 1) == 1) {
                        i2 = 0;
                        sb2.insert(0, 'x');
                    } else {
                        i2 = 0;
                        sb2.insert(0, '-');
                    }
                    if ((i6 & 2) == 2) {
                        sb2.insert(i2, 'w');
                    } else {
                        sb2.insert(i2, '-');
                    }
                    if ((i6 & 4) == 4) {
                        sb2.insert(i2, 'r');
                    } else {
                        sb2.insert(i2, '-');
                    }
                    if (i5 != 2) {
                        sb2.insert(i2, ' ');
                    }
                }
                sb2.append(" (");
                sb2.append(bVar2.f1096i);
                sb2.append(')');
                View viewFindViewById6 = this.f984g.findViewById(R.id.trPermissions);
                TextView textView9 = (TextView) this.f984g.findViewById(R.id.tvPermissions);
                if (viewFindViewById6 == null || textView9 == null) {
                    return;
                }
                viewFindViewById6.setVisibility(0);
                textView9.setText(sb2.toString());
                return;
            }
            return;
        }
        if (iA == 1) {
            c cVar = (c) bVar;
            int[] iArr = cVar.f996b;
            if (this.f984g == null) {
                return;
            }
            int i7 = 0;
            int i8 = 0;
            while (true) {
                String[] strArr = cVar.f997c;
                try {
                    if (i7 >= iArr.length) {
                        break;
                    }
                    String str4 = strArr[i7];
                    if (str4 != null && !str4.isEmpty()) {
                        TextView textView10 = (TextView) this.f984g.findViewById(f982q[i8]);
                        if (textView10 != null) {
                            textView10.setText(this.f984g.getContext().getString(iArr[i7]));
                        }
                        TextView textView11 = (TextView) this.f984g.findViewById(f983r[i8]);
                        if (textView11 != null) {
                            textView11.setText(strArr[i7]);
                        }
                        i8++;
                    }
                    i7++;
                } catch (Exception unused) {
                    return;
                }
            }
            for (int i9 = 0; i9 < i8; i9++) {
                View viewFindViewById7 = this.f984g.findViewById(f981p[i9]);
                if (t0.b.l(32)) {
                    z0.f.b(viewFindViewById7);
                } else {
                    viewFindViewById7.setVisibility(0);
                }
            }
            return;
        }
        if (iA != 2) {
            if (iA == 3) {
                int i10 = ((e) bVar).f1001b;
                this.f992o = i10;
                if (i10 != 0 || (alertDialog = this.f984g) == null) {
                    return;
                }
                CheckBox checkBox = (CheckBox) alertDialog.findViewById(R.id.cbNomedia);
                if (checkBox.isEnabled()) {
                    checkBox.setChecked(!checkBox.isChecked());
                }
                checkBox.setEnabled(false);
                return;
            }
            if (iA != 4) {
                if (iA == 5 && (alertDialog2 = this.f984g) != null) {
                    ((TextView) alertDialog2.findViewById(R.id.tvFSType)).setText(((e) bVar).f1002c);
                    return;
                }
                return;
            }
            AlertDialog alertDialog4 = this.f984g;
            if (alertDialog4 != null) {
                int i11 = ((e) bVar).f1001b;
                CheckBox checkBox2 = (CheckBox) alertDialog4.findViewById(R.id.cbNomedia);
                checkBox2.setOnCheckedChangeListener(null);
                checkBox2.setChecked(i11 == 1);
                checkBox2.setEnabled(i11 != 2);
                checkBox2.setOnCheckedChangeListener(this);
                return;
            }
            return;
        }
        c cVar2 = (c) bVar;
        if (this.f984g == null) {
            return;
        }
        boolean zL = t0.b.l(32);
        int i12 = 0;
        while (true) {
            int[] iArr2 = cVar2.f996b;
            if (i12 >= iArr2.length) {
                return;
            }
            TextView textView12 = (TextView) this.f984g.findViewById(iArr2[i12]);
            if (textView12 != null) {
                textView12.setText(cVar2.f997c[i12]);
                if (zL) {
                    z0.f.b(textView12);
                } else {
                    textView12.setVisibility(0);
                }
            }
            i12++;
        }
    }

    @Override
    public final void e() {
        w0.a aVar = this.f987j;
        aVar.d(this);
        aVar.f(Integer.MAX_VALUE, 1, -1);
        AlertDialog alertDialog = this.f984g;
        if (alertDialog != null) {
            alertDialog.dismiss();
            this.f984g = null;
        }
        this.f986i = null;
        g();
    }

    @Override
    public final int l() {
        return 6;
    }

    @Override
    public final void n(Context context, Configuration configuration) {
        if (this.f984g == null) {
            return;
        }
        int i2 = (configuration.orientation == 2 || (configuration.screenLayout & 15) >= 3) ? R.layout.dlg_info_land : R.layout.dlg_info;
        if (this.f985h == i2) {
            return;
        }
        this.f985h = i2;
        w0.a aVar = this.f987j;
        aVar.d(this);
        View viewInflate = LayoutInflater.from(context).inflate(this.f985h, (ViewGroup) null, false);
        g0.i.m(this.f986i, viewInflate);
        viewInflate.findViewById(R.id.trMD5).setVisibility(this.f986i.findViewById(R.id.trMD5).getVisibility());
        ((CheckBox) viewInflate.findViewById(R.id.cbNomedia)).setOnCheckedChangeListener(this);
        this.f986i.removeAllViews();
        this.f986i.addView(viewInflate);
        v(configuration);
        aVar.a(this, null);
    }

    @Override
    public final void onCancel(DialogInterface dialogInterface) {
        g0.i.c cVar = this.f960a;
        if (cVar != null) {
            cVar.b(this);
        }
        w0.a aVar = this.f987j;
        aVar.d(this);
        aVar.f(Integer.MAX_VALUE, 1, -1);
        this.f984g = null;
    }

    @Override
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z2) {
        h0.h hVar;
        if (compoundButton.getId() == R.id.cbNomedia) {
            h0.h[] hVarArr = this.f988k;
            if (hVarArr.length == 1 && (hVar = hVarArr[0]) != null && hVar.j()) {
                String[] strArr = this.f989l;
                new m((strArr.length == 0 || v0.h.e(strArr[0])) ? hVarArr[0] : new h0.h(strArr[0], hVarArr[0]), z2).g(null, this.f987j);
            }
        }
    }

    @Override
    public final void onClick(View view) {
        if (this.f984g == null) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        TextView textView = (TextView) this.f984g.findViewById(R.id.tvFileName);
        if (textView != null) {
            sb.append(textView.getText().toString());
            sb.append('\n');
        }
        View viewFindViewById = this.f984g.findViewById(R.id.trFileCount);
        TextView textView2 = (TextView) this.f984g.findViewById(R.id.tvFileCount);
        if (textView2 != null && viewFindViewById != null && viewFindViewById.getVisibility() == 0) {
            sb.append(this.f984g.getContext().getString(R.string.FINFO_ARCHIVE_FILE_COUNT));
            sb.append(' ');
            sb.append(textView2.getText().toString());
            sb.append('\n');
        }
        TextView textView3 = (TextView) this.f984g.findViewById(R.id.tvFileSize);
        if (textView3 != null) {
            sb.append(this.f984g.getContext().getString(R.string.FINFO_SIZE));
            sb.append(' ');
            sb.append(textView3.getText().toString());
            sb.append('\n');
        }
        TextView textView4 = (TextView) this.f984g.findViewById(R.id.tvFileMD5);
        if (textView4 != null && textView4.getVisibility() == 0) {
            sb.append(this.f984g.getContext().getString(R.string.FINFO_MD5));
            sb.append(' ');
            sb.append(textView4.getText().toString());
            sb.append('\n');
        }
        if (this.f991n != 0) {
            for (int i2 = 0; i2 < 5; i2++) {
                View viewFindViewById2 = this.f984g.findViewById(f981p[i2]);
                if (viewFindViewById2 != null && viewFindViewById2.getVisibility() == 0) {
                    TextView textView5 = (TextView) this.f984g.findViewById(f982q[i2]);
                    if (textView5 != null) {
                        sb.append(textView5.getText().toString());
                        sb.append(' ');
                    }
                    TextView textView6 = (TextView) this.f984g.findViewById(f983r[i2]);
                    if (textView6 != null) {
                        sb.append(textView6.getText().toString());
                        sb.append('\n');
                    }
                }
            }
        }
        v0.a.a(this.f984g.getContext(), "ZA File", sb.toString());
    }

    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v3, types: [boolean] */
    /* JADX WARN: Type inference failed for: r1v6 */
    public final void u(Context context) {
        ?? r1;
        boolean z2;
        String str;
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setTitle(R.string.FINFO_TTL_FILE_INFO);
        Configuration configuration = context.getResources().getConfiguration();
        this.f985h = (configuration.orientation == 2 || (configuration.screenLayout & 15) >= 3) ? R.layout.dlg_info_land : R.layout.dlg_info;
        boolean z3 = false;
        View viewInflate = LayoutInflater.from(context).inflate(this.f985h, (ViewGroup) null, false);
        ScrollView scrollView = new ScrollView(context);
        this.f986i = scrollView;
        scrollView.addView(viewInflate);
        builder.setView(this.f986i);
        builder.setPositiveButton(R.string.BTN_OK, this);
        builder.setNeutralButton(R.string.BTN_COPY, this);
        builder.setOnCancelListener(this);
        AlertDialog alertDialogCreate = builder.create();
        this.f984g = alertDialogCreate;
        alertDialogCreate.setOnShowListener(new a());
        TextView textView = (TextView) viewInflate.findViewById(R.id.tvFileName);
        TextView textView2 = (TextView) viewInflate.findViewById(R.id.tvFileType);
        TextView textView3 = (TextView) viewInflate.findViewById(R.id.tvFileLastMod);
        TextView textView4 = (TextView) viewInflate.findViewById(R.id.tvFSPath);
        TextView textView5 = (TextView) viewInflate.findViewById(R.id.tvFSType);
        TextView textView6 = (TextView) viewInflate.findViewById(R.id.tvFileMD5);
        View viewFindViewById = viewInflate.findViewById(R.id.trMD5);
        String[] strArr = this.f989l;
        int length = strArr.length;
        w0.a aVar = this.f987j;
        h0.h[] hVarArr = this.f988k;
        if (length == 1) {
            h0.h hVar = v0.h.e(strArr[0]) ? hVarArr[0] : new h0.h(strArr[0], hVarArr[0]);
            textView4.setText("-");
            textView5.setText("-");
            if (hVar.j()) {
                String strR = hVarArr[0].r();
                boolean z4 = x0.g.b(hVarArr[0]) == 2;
                x0.a.C0041a c0041aB = x0.a.b(strR, false);
                if (c0041aB != null) {
                    textView4.setText(c0041aB.f2245b);
                    textView5.setText(c0041aB.f2246c);
                }
                if (this.f990m && !z4 && strR.startsWith("/storage")) {
                    CheckBox checkBox = (CheckBox) viewInflate.findViewById(R.id.cbNomedia);
                    checkBox.setEnabled(false);
                    checkBox.setVisibility(0);
                    checkBox.setOnCheckedChangeListener(this);
                    new n(hVar).g(null, aVar);
                }
                z3 = z4;
            } else {
                if (hVar.g()) {
                    textView4.setText(hVar.f1108c);
                } else {
                    textView4.setText("-");
                }
                new i(hVar).g(null, aVar);
                textView5.setText("-");
            }
            if (!hVar.j() || hVar.l()) {
                textView6.setVisibility(8);
                viewFindViewById.setVisibility(8);
            }
            textView.setText(hVar.e());
            new k(hVar, z3).g(null, aVar);
        } else {
            textView.setText(context.getResources().getQuantityString(R.plurals.FINFO_FILE_COUNT, strArr.length, Integer.valueOf(strArr.length)));
            textView2.setText(context.getString(R.string.FINFO_TYPE_FILE_GROUP));
            textView3.setText("-");
            textView4.setText("-");
            textView5.setText("-");
            int i2 = 1;
            while (true) {
                if (i2 >= hVarArr.length) {
                    r1 = 0;
                    z2 = true;
                    break;
                } else {
                    r1 = 0;
                    if (!hVarArr[0].equals(hVarArr[i2])) {
                        z2 = false;
                        break;
                    }
                    i2++;
                }
            }
            if (z2) {
                if (hVarArr[r1].j()) {
                    x0.a.C0041a c0041aB2 = x0.a.b(hVarArr[r1].r(), r1);
                    if (c0041aB2 != null) {
                        textView4.setText(c0041aB2.f2245b);
                        textView5.setText(c0041aB2.f2246c);
                    }
                } else {
                    if (hVarArr[r1].g()) {
                        textView4.setText(hVarArr[r1].f1108c);
                    } else {
                        textView4.setText("-");
                    }
                    h0.e.a aVarD = h0.e.d(hVarArr[r1]);
                    if (aVarD == null || (str = aVarD.f1087c) == null) {
                        textView5.setText("-");
                    } else {
                        textView5.setText(str);
                    }
                }
            }
            textView6.setVisibility(8);
            viewFindViewById.setVisibility(8);
            viewInflate.findViewById(R.id.trFileCount).setVisibility(0);
            new g(hVarArr, strArr).g(null, aVar);
        }
        textView.setOnLongClickListener(new b());
    }

    public final void v(Configuration configuration) {
        AlertDialog alertDialog;
        if ((configuration.screenLayout & 15) >= 3 || (alertDialog = this.f984g) == null || alertDialog.getWindow() == null) {
            return;
        }
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        layoutParams.copyFrom(this.f984g.getWindow().getAttributes());
        layoutParams.width = configuration.orientation == 1 ? -1 : -2;
        this.f984g.getWindow().setAttributes(layoutParams);
    }

    public final void w() {
        AlertDialog alertDialog = this.f984g;
        if (alertDialog == null || !g0.i.s(alertDialog)) {
            return;
        }
        this.f987j.a(this, null);
    }

    public o(ru.zdevs.zarchiver.d dVar, Context context, h0.h hVar, String[] strArr, boolean z2) {
        this.f965f = dVar;
        this.f988k = new h0.h[]{hVar};
        this.f989l = strArr;
        this.f990m = z2;
        this.f992o = 0;
        this.f991n = 0;
        u(context);
        c();
    }

    public o(ru.zdevs.zarchiver.d dVar, Context context, h0.h[] hVarArr, String[] strArr, boolean z2) {
        this.f965f = dVar;
        this.f988k = hVarArr;
        this.f989l = strArr;
        this.f990m = z2;
        this.f992o = 0;
        this.f991n = 0;
        u(context);
        c();
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int i2) {
        g0.i.c cVar;
        g0.i.d dVar;
        h0.h hVar;
        if (this.f992o != 0) {
            String[] strArr = this.f989l;
            int length = strArr.length;
            h0.h[] hVarArr = this.f988k;
            if (length != 0 && !v0.h.e(strArr[0])) {
                hVar = new h0.h(strArr[0], hVarArr[0]);
            } else {
                hVar = hVarArr[0];
            }
            if (hVar != null) {
                boolean z2 = this.f992o == 1;
                if (q0.f.b(hVar)) {
                    try {
                        String strA = hVar.f1108c;
                        int i3 = Build.VERSION.SDK_INT;
                        if (i3 < 29) {
                            strA = v0.c.a(strA);
                        }
                        if (z2) {
                            Executors.newSingleThreadExecutor().execute(new q0.f.b(strA));
                        } else {
                            File file = new File(strA);
                            if (i3 < 29) {
                                new q0.f.a(file);
                            } else {
                                Executors.newSingleThreadExecutor().execute(new q0.f.d(file));
                            }
                        }
                    } catch (Throwable unused) {
                    }
                }
            }
        }
        if (i2 == -1 && (dVar = this.f961b) != null) {
            dVar.a(this);
        }
        if (i2 == -2 && (cVar = this.f960a) != null) {
            cVar.b(this);
        }
        e();
    }
}
