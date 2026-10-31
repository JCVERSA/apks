package com.snaptube.extractor.pluginlib.piratical;

import android.R;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.StateListDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import com.snaptube.extractor.pluginlib.common.QuickDownloadConfigProvider;
import com.vungle.ads.internal.protos.Sdk;
import java.io.File;
import java.util.Arrays;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Result;
import kotlin.b;
import kotlin.c;
import kotlin.text.StringsKt__StringsKt;
import o.bx2;
import o.cu7;
import o.et5;
import o.ft7;
import o.mg8;
import o.or3;
import o.pf5;
import o.pg1;
import o.qf5;
import o.sf5;
import o.t14;
import o.xl;
import o.xm3;

public final class OfficialWarningDialog extends Dialog {
    public static boolean e;
    public final String a;
    public Button b;
    public Button c;
    public static final a d = new a(null);
    public static final ConcurrentHashMap f = new ConcurrentHashMap(1);
    public static final t14 g = b.b(OfficialWarningDialog$Companion$TRANSLATES$2.INSTANCE);

    public static final class a {
        public a() {
        }

        public a(pg1 pg1Var) {
            this();
        }

        public static void a(a aVar, Activity activity) {
            d(aVar, activity);
        }

        public static final String b(a aVar, String str) {
            return aVar.g(str);
        }

        public static final void d(a aVar, Activity activity) {
            or3.f(aVar, "$this_runCatching");
            or3.f(activity, "$activity");
            try {
                Result.Companion companion = Result.INSTANCE;
                if (!activity.isFinishing()) {
                    new OfficialWarningDialog(activity, xl.a).show();
                    OfficialWarningDialog.e().put(Integer.valueOf(activity.hashCode()), Boolean.TRUE);
                }
                Result.m370constructorimpl(mg8.a);
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m370constructorimpl(c.a(th));
            }
        }

        /* JADX WARN: Unreachable blocks removed: 18, instructions: 35 */
        /*  JADX ERROR: NullPointerException in pass: BlockProcessor
            java.lang.NullPointerException: Cannot invoke "jadx.core.dex.nodes.BlockNode.getPredecessors()" because "to" is null
            	at jadx.core.dex.visitors.blocks.BlockSplitter.removeConnection(BlockSplitter.java:166)
            	at jadx.core.dex.visitors.blocks.BlockExceptionHandler.removeExcHandler(BlockExceptionHandler.java:325)
            	at jadx.core.dex.visitors.blocks.BlockExceptionHandler.lambda$prepareTryBlocks$2(BlockExceptionHandler.java:208)
            	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
            	at jadx.core.dex.visitors.blocks.BlockExceptionHandler.prepareTryBlocks(BlockExceptionHandler.java:208)
            	at jadx.core.dex.visitors.blocks.BlockExceptionHandler.process(BlockExceptionHandler.java:61)
            	at jadx.core.dex.visitors.blocks.BlockProcessor.independentBlockTreeMod(BlockProcessor.java:422)
            	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:57)
            	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:50)
            */
        public final boolean c(android.content.Context r6) {
            /*
                r5 = this;
                r0 = 0
                return r0
                java.lang.String r0 = "context"
                o.or3.f(r6, r0)
                r0 = 0
                kotlin.Result$a r1 = kotlin.Result.INSTANCE     // Catch: java.lang.Throwable -> L4c
                boolean r1 = r5.j(r6)     // Catch: java.lang.Throwable -> L4c
                if (r1 != 0) goto L11
                return r0
            L11:
                android.app.Activity r1 = r5.e(r6)     // Catch: java.lang.Throwable -> L4c
                if (r1 != 0) goto L18
                return r0
            L18:
                java.util.concurrent.ConcurrentHashMap r2 = com.snaptube.extractor.pluginlib.piratical.OfficialWarningDialog.e()     // Catch: java.lang.Throwable -> L4c
                int r3 = r1.hashCode()     // Catch: java.lang.Throwable -> L4c
                java.lang.Integer r3 = java.lang.Integer.valueOf(r3)     // Catch: java.lang.Throwable -> L4c
                boolean r2 = r2.containsKey(r3)     // Catch: java.lang.Throwable -> L4c
                r3 = 1
                if (r2 == 0) goto L2c
                return r3
            L2c:
                o.et5 r2 = o.et5.a     // Catch: java.lang.Throwable -> L4c
                java.lang.String r4 = o.xl.a     // Catch: java.lang.Throwable -> L4c
                r2.e(r4)     // Catch: java.lang.Throwable -> L4c
                boolean r6 = r5.i(r6)     // Catch: java.lang.Throwable -> L4c
                if (r6 != 0) goto L3a
                return r0
            L3a:
                android.os.Handler r6 = new android.os.Handler     // Catch: java.lang.Throwable -> L4c
                android.os.Looper r2 = android.os.Looper.getMainLooper()     // Catch: java.lang.Throwable -> L4c
                r6.<init>(r2)     // Catch: java.lang.Throwable -> L4c
                o.rf5 r2 = new o.rf5     // Catch: java.lang.Throwable -> L4c
                r2.<init>(r5, r1)     // Catch: java.lang.Throwable -> L4c
                r6.post(r2)     // Catch: java.lang.Throwable -> L4c
                return r3
            L4c:
                r6 = move-exception
                kotlin.Result$a r1 = kotlin.Result.INSTANCE
                java.lang.Object r6 = kotlin.c.a(r6)
                kotlin.Result.m370constructorimpl(r6)
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.snaptube.extractor.pluginlib.piratical.OfficialWarningDialog.a.c(android.content.Context):boolean");
        }

        public final Activity e(Context context) {
            try {
                Class<?> clsLoadClass = context.getClassLoader().loadClass("com.sensorsdata.analytics.android.sdk.AppStateManager");
                return (Activity) clsLoadClass.getMethod("getForegroundActivity", null).invoke(clsLoadClass.getMethod(QuickDownloadConfigProvider.METHOD_GET_INSTANCE, null).invoke(null, null), null);
            } catch (Throwable unused) {
                return null;
            }
        }

        public final File f(Context context, String str) {
            or3.f(context, "context");
            or3.f(str, "name");
            return new File(context.getCacheDir(), str);
        }

        public final String g(String str) {
            Map map = (Map) h().get(str);
            if (map == null) {
                return "";
            }
            String str2 = (String) map.get(Locale.getDefault().getLanguage());
            if (str2 != null) {
                return str2;
            }
            String str3 = (String) map.get("en");
            return str3 == null ? "" : str3;
        }

        public final Map h() {
            return (Map) OfficialWarningDialog.d().getValue();
        }

        public final boolean i(Context context) {
            return (!f(context, "guide_download").exists() || f(context, "guide_uninstall").exists()) ? false : false;
        }

        public final boolean j(Context context) {
            or3.f(context, "context");
            if (!xm3.d().g().b(true)) {
                return false;
            }
            String strC = xl.c(context);
            if (strC != null && strC.length() != 0 && strC.length() == 40) {
                return !cu7.y("be135353437d704f3a37e2b413d040a5ddff4f19", strC, true);
            }
            if (!OfficialWarningDialog.c()) {
                et5.a.d(strC);
            }
            return false;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OfficialWarningDialog(Context context, String str) {
        super(context, R.style.Theme.Material.Dialog);
        or3.f(context, "context");
        this.a = str;
    }

    public static void a(OfficialWarningDialog officialWarningDialog, View view) {
        o(officialWarningDialog, view);
    }

    public static void b(bx2 bx2Var, View view) {
        k(bx2Var, view);
    }

    public static final boolean c() {
        return e;
    }

    public static final t14 d() {
        return g;
    }

    public static final ConcurrentHashMap e() {
        return f;
    }

    public static final void f(OfficialWarningDialog officialWarningDialog) {
        officialWarningDialog.v();
    }

    public static final void g(OfficialWarningDialog officialWarningDialog) {
        officialWarningDialog.w();
    }

    public static final boolean h(Context context) {
        return d.c(context);
    }

    public static final void k(bx2 bx2Var, View view) {
        or3.f(bx2Var, "$onClick");
        bx2Var.invoke();
    }

    public static final void o(OfficialWarningDialog officialWarningDialog, View view) {
        or3.f(officialWarningDialog, "this$0");
        officialWarningDialog.v();
    }

    public static final File r(Context context, String str) {
        return d.f(context, str);
    }

    public static final boolean x(Context context) {
        return d.j(context);
    }

    public final Drawable i(String str) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setColor(Color.parseColor(str));
        gradientDrawable.setCornerRadius(sf5.a(24));
        return gradientDrawable;
    }

    public final Button j(String str, boolean z, bx2 bx2Var) {
        Button button = new Button(getContext());
        button.setText(str);
        button.setTextSize(14.0f);
        button.setTextColor(Color.parseColor("#2F2F2F"));
        button.setAllCaps(false);
        button.setBackground(p());
        button.setOnClickListener(new qf5(bx2Var));
        button.setStateListAnimator(null);
        button.setSelected(z);
        return button;
    }

    public final ImageView l(LinearLayout linearLayout) {
        ImageView imageView = new ImageView(linearLayout.getContext());
        imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        return imageView;
    }

    public final TextView m(LinearLayout linearLayout, CharSequence charSequence) {
        TextView textView = new TextView(linearLayout.getContext());
        textView.setText(charSequence);
        textView.setTextSize(16.0f);
        textView.setTextColor(Color.parseColor("#2F2F2F"));
        textView.setTypeface(null, 1);
        textView.setPadding((int) sf5.a(16), (int) sf5.a(16), (int) sf5.a(16), (int) sf5.a(16));
        return textView;
    }

    public final View n() {
        View view;
        ScrollView scrollView = new ScrollView(getContext());
        scrollView.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        scrollView.setBackgroundColor(-1);
        LinearLayout linearLayout = new LinearLayout(scrollView.getContext());
        linearLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        linearLayout.setOrientation(1);
        TextView textView = new TextView(linearLayout.getContext());
        textView.setText(t());
        textView.setTextColor(Color.parseColor("#2F2F2F"));
        textView.setGravity(17);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        layoutParams.topMargin = (int) sf5.a(16);
        layoutParams.bottomMargin = (int) sf5.a(48);
        mg8 mg8Var = mg8.a;
        linearLayout.addView(textView, layoutParams);
        TextView textViewM = m(linearLayout, q());
        textViewM.setOnClickListener(new pf5(this));
        linearLayout.addView(textViewM);
        ImageView imageViewL = l(linearLayout);
        a aVar = d;
        Context context = imageViewL.getContext();
        or3.e(context, "getContext(...)");
        File fileF = aVar.f(context, "guide_download");
        if (fileF.exists()) {
            imageViewL.setImageBitmap(BitmapFactory.decodeFile(fileF.getPath(), new BitmapFactory.Options()));
        }
        ViewGroup.LayoutParams layoutParams2 = new ViewGroup.LayoutParams((int) sf5.a(Sdk.SDKError.Reason.AD_CONSUMED_VALUE), (int) sf5.a(102));
        linearLayout.setGravity(1);
        linearLayout.addView(imageViewL, layoutParams2);
        Button buttonJ = j(a.b(aVar, "step_one_action"), true, new OfficialWarningDialog$createView$1$1$6(this));
        this.b = buttonJ;
        if (buttonJ == null) {
            or3.w("btnDownload");
            buttonJ = null;
        }
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams3.setMargins((int) sf5.a(16), (int) sf5.a(16), (int) sf5.a(16), (int) sf5.a(16));
        linearLayout.addView(buttonJ, layoutParams3);
        linearLayout.addView(m(linearLayout, s()));
        ImageView imageViewL2 = l(linearLayout);
        Context context2 = imageViewL2.getContext();
        or3.e(context2, "getContext(...)");
        File fileF2 = aVar.f(context2, "guide_uninstall");
        if (fileF2.exists()) {
            imageViewL2.setImageBitmap(BitmapFactory.decodeFile(fileF2.getPath(), new BitmapFactory.Options()));
        }
        ViewGroup.LayoutParams layoutParams4 = new ViewGroup.LayoutParams((int) sf5.a(Sdk.SDKError.Reason.AD_CONSUMED_VALUE), (int) sf5.a(102));
        linearLayout.setGravity(1);
        linearLayout.addView(imageViewL2, layoutParams4);
        Button buttonJ2 = j(a.b(aVar, "step_two_action"), false, new OfficialWarningDialog$createView$1$1$10(this));
        this.c = buttonJ2;
        if (buttonJ2 == null) {
            or3.w("btnUninstall");
            view = null;
        } else {
            view = buttonJ2;
        }
        LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams5.setMargins((int) sf5.a(16), (int) sf5.a(16), (int) sf5.a(16), (int) sf5.a(16));
        linearLayout.addView(view, layoutParams5);
        scrollView.addView(linearLayout, new ViewGroup.LayoutParams(-1, -1));
        return scrollView;
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Window window = getWindow();
        if (window != null) {
            window.requestFeature(1);
        }
        setContentView(n());
        et5.a.c(this.a);
    }

    @Override
    public void onStart() {
        super.onStart();
        u();
    }

    public final Drawable p() {
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{R.attr.state_selected}, i("#FFCD22"));
        stateListDrawable.addState(new int[0], i("#F5F5F5"));
        return stateListDrawable;
    }

    public final CharSequence q() {
        StringBuilder sb = new StringBuilder();
        sb.append("1. ");
        ft7 ft7Var = ft7.a;
        String str = String.format(a.b(d, "step_one_title"), Arrays.copyOf(new Object[]{"Snaptube.com"}, 1));
        or3.e(str, "format(...)");
        sb.append(str);
        String string = sb.toString();
        int iD0 = StringsKt__StringsKt.d0(string, "Snaptube.com", 0, false, 6, null);
        if (iD0 == -1) {
            return string;
        }
        SpannableString spannableString = new SpannableString(string);
        spannableString.setSpan(new ForegroundColorSpan(Color.parseColor("#4D90FF")), iD0, string.length(), 18);
        return spannableString;
    }

    public final String s() {
        return "2. " + a.b(d, "step_two_title");
    }

    public final CharSequence t() {
        a aVar = d;
        String strB = a.b(aVar, "title_action");
        ft7 ft7Var = ft7.a;
        String str = String.format(a.b(aVar, "official_snaptube"), Arrays.copyOf(new Object[]{"Snaptube"}, 1));
        or3.e(str, "format(...)");
        SpannableString spannableString = new SpannableString(strB + str);
        spannableString.setSpan(new AbsoluteSizeSpan((int) sf5.b(26), false), 0, strB.length(), 17);
        spannableString.setSpan(new AbsoluteSizeSpan((int) sf5.b(32), false), strB.length(), spannableString.length(), 18);
        return spannableString;
    }

    public final void u() {
        Window window = getWindow();
        if (window != null) {
            window.setLayout(-1, -1);
            window.setBackgroundDrawable(new ColorDrawable(0));
        }
        setCancelable(false);
    }

    public final void v() {
        try {
            Result.Companion companion = Result.INSTANCE;
            et5.a.a(this.a);
            getContext().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(a.b(d, "official_web_url"))));
            Button button = this.b;
            Button button2 = null;
            if (button == null) {
                or3.w("btnDownload");
                button = null;
            }
            button.setSelected(false);
            Button button3 = this.c;
            if (button3 == null) {
                or3.w("btnUninstall");
            } else {
                button2 = button3;
            }
            button2.setSelected(true);
            Result.m370constructorimpl(mg8.a);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m370constructorimpl(c.a(th));
        }
    }

    public final void w() {
        try {
            Result.Companion companion = Result.INSTANCE;
            et5.a.b(this.a);
            String packageName = getContext().getPackageName();
            Intent intent = new Intent();
            intent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
            intent.setData(Uri.fromParts("package", packageName, null));
            intent.addFlags(268435456);
            getContext().startActivity(intent);
            Result.m370constructorimpl(mg8.a);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m370constructorimpl(c.a(th));
        }
    }
}
