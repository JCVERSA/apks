package app.fast.ssh;

import android.app.Activity;
import android.app.ActivityThread;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.Html;
import android.text.Spanned;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class ProtectedFastSSH$MainActivity$3 extends Activity implements View.OnClickListener {
    private static final Pattern samy = Pattern.compile("^\\s*((\\d+)?\\.?(\\d*)?)\\s*([a-zA-Z]+)?\\s*$");
    private Integer BwzH;
    private Uri E = null;
    private String Fco;
    private String G;
    private String HenB;
    private Float J;
    private Float b;
    private String h;
    private String jh;
    private String nkE;
    private Integer tG;
    private Drawable v;
    private int xD;
    private int[] xz;
    private String y;
    private int[] z;

    public static boolean CFhs() {
        String strCurrentProcessName = ActivityThread.currentProcessName();
        if (strCurrentProcessName == null) {
            return false;
        }
        return strCurrentProcessName.endsWith(":p426ad92431036779116d2441");
    }

    private static int HG() {
        return View.generateViewId();
    }

    private int Jxdg(int i) {
        return getResources().getColor(i, getTheme());
    }

    private Drawable ee(String... strArr) {
        String packageName = getPackageName();
        for (String str : strArr) {
            int identifier = getResources().getIdentifier(str, "drawable", packageName);
            if (identifier != 0) {
                return r(identifier);
            }
            int identifier2 = getResources().getIdentifier(str, "mipmap", packageName);
            if (identifier2 != 0) {
                return r(identifier2);
            }
        }
        ColorMatrix colorMatrix = new ColorMatrix();
        colorMatrix.setSaturation(0.0f);
        ColorMatrixColorFilter colorMatrixColorFilter = new ColorMatrixColorFilter(colorMatrix);
        Drawable drawableLoadIcon = getApplicationInfo().loadIcon(getPackageManager());
        drawableLoadIcon.setColorFilter(colorMatrixColorFilter);
        return drawableLoadIcon;
    }

    private int[] gi(String str) {
        if (str != null) {
            try {
                if (!str.isEmpty()) {
                    String[] strArrSplit = str.split(",");
                    int iMax = Math.max(2, strArrSplit.length);
                    int[] iArr = new int[iMax];
                    for (int i = 0; i < strArrSplit.length; i++) {
                        iArr[i] = Color.parseColor(strArrSplit[i]);
                    }
                    for (int length = strArrSplit.length; length < iMax; length++) {
                        iArr[length] = iArr[0];
                    }
                    return iArr;
                }
            } catch (Throwable unused) {
            }
        }
        return null;
    }

    private String i(String str, String... strArr) {
        int identifier = getResources().getIdentifier(str, "string", getPackageName());
        if (identifier != 0) {
            return getString(identifier);
        }
        for (String str2 : strArr) {
            if (str2 != null && !str2.isEmpty()) {
                return str2;
            }
        }
        return "";
    }

    private Integer kg(String str, String... strArr) {
        try {
            int identifier = getResources().getIdentifier(str, "color", getPackageName());
            if (identifier != 0) {
                return Integer.valueOf(Jxdg(identifier));
            }
            for (String str2 : strArr) {
                if (!str2.isEmpty()) {
                    return Integer.valueOf(Color.parseColor(str2));
                }
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    private void mu(LinearLayout linearLayout) {
        byte[] bArrIBjB = iBjB();
        if (bArrIBjB != null) {
            Bitmap bitmapIu = ProtectedFastSSH$ExportActivity$2$8.Iu(bArrIBjB, ProtectedFastSSH$ExportActivity$2$8.Gbg, true, 256, 256);
            ImageView imageView = new ImageView(this);
            imageView.setImageBitmap(bitmapIu);
            imageView.setPadding(20, 20, 20, 20);
            imageView.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
            linearLayout.addView(imageView);
        }
    }

    public static void oiFk(Context context, int i, String str) {
        Intent intentOznh = oznh();
        intentOznh.putExtra("31d574550383d8cd9f70a9b22284aee2", i);
        intentOznh.putExtra("1024d8aac6da85f43cb9bd36d04045b6", str);
        context.startActivity(intentOznh);
    }

    private static Intent oznh() {
        Intent intent = new Intent();
        intent.setComponent(new ComponentName("com.hatunnel.plus", "app.fast.ssh.ProtectedFastSSH$MainActivity$3"));
        intent.setFlags(268468224);
        return intent;
    }

    private void qdD() {
        this.y = i("crash_activity_ok", "", getString(android.R.string.ok));
        this.nkE = i("crash_activity_2", "<p style=\"text-align: center\">This app cannot run because the environment is not secure and your data may be at risk.</p>");
        this.Fco = i("crash_activity_3", "<p style=\"text-align: center\">This app cannot run because it was not installed from an official platform. Please reinstall from an approved vendor (e.g. Google Play).</p>");
        this.G = i("crash_activity_4", "<p style=\"text-align: center\">This app cannot be run on an emulator. Please use an official device.</p>");
        this.h = i("crash_activity_5", "<p style=\"text-align: center\">This app stopped because it is not compatible with your device.<br/>Please try updating the app.</p>");
        this.jh = i("crash_activity_6", "<p style=\"text-align: center\">This device does not currently meet the security requirements to use <b>{appName}</b>.</p><br/><p style=\"text-align: center\">Please share the QR code below with our support team.</p>");
        this.HenB = i("crash_activity_ok_link", "");
        int[] iArrUwAa = uwAa("crash_activity_btn_color1", "crash_activity_btn_color2");
        this.z = iArrUwAa;
        if (iArrUwAa == null || iArrUwAa.length == 0) {
            this.z = gi("");
        }
        this.tG = kg("crash_activity_btn_text_color", "");
        this.J = t("crash_activity_btn_text_size", "");
        int[] iArrUwAa2 = uwAa("crash_activity_bg_color1", "crash_activity_bg_color2");
        this.xz = iArrUwAa2;
        if (iArrUwAa2 == null || iArrUwAa2.length == 0) {
            this.xz = gi("");
        }
        this.BwzH = kg("crash_activity_text_color", "");
        this.b = t("crash_activity_text_size", "");
        this.v = ee("crash_activity_icon", "");
    }

    private Float t(String str, String str2) {
        int identifier = getResources().getIdentifier(str, "dimen", getPackageName());
        if (identifier != 0) {
            return Float.valueOf(getResources().getDimension(identifier));
        }
        if (str2 == null || str2.isEmpty()) {
            return null;
        }
        return toxt(str2);
    }

    private Float toxt(String str) {
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        Matcher matcher = samy.matcher(str);
        if (!matcher.matches() || matcher.groupCount() < 4 || matcher.group(1) == null) {
            return null;
        }
        float f = Float.parseFloat(matcher.group(1));
        if (matcher.group(4) == null) {
            return Float.valueOf(f);
        }
        String lowerCase = matcher.group(4).toLowerCase();
        lowerCase.hashCode();
        switch (lowerCase) {
            case "in":
                return Float.valueOf(TypedValue.applyDimension(4, f, displayMetrics));
            case "mm":
                return Float.valueOf(TypedValue.applyDimension(5, f, displayMetrics));
            case "pt":
                return Float.valueOf(TypedValue.applyDimension(3, f, displayMetrics));
            case "px":
                return Float.valueOf(TypedValue.applyDimension(0, f, displayMetrics));
            case "sp":
                return Float.valueOf(TypedValue.applyDimension(2, f, displayMetrics));
            case "dip":
                return Float.valueOf(TypedValue.applyDimension(1, f, displayMetrics));
            default:
                return null;
        }
    }

    private int[] uwAa(String... strArr) {
        String packageName = getPackageName();
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            int identifier = getResources().getIdentifier(str, "color", packageName);
            if (identifier != 0) {
                arrayList.add(Integer.valueOf(Jxdg(identifier)));
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        if (arrayList.size() == 1) {
            arrayList.add((Integer) arrayList.get(0));
        }
        int[] iArr = new int[arrayList.size()];
        for (int i = 0; i < arrayList.size(); i++) {
            iArr[i] = ((Integer) arrayList.get(i)).intValue();
        }
        return iArr;
    }

    private Spanned wi(String str) {
        return Build.VERSION.SDK_INT >= 24 ? Html.fromHtml(str, 63) : Html.fromHtml(str);
    }

    private String ym() {
        ApplicationInfo applicationInfo = getApplicationInfo();
        int i = applicationInfo.labelRes;
        return i == 0 ? applicationInfo.nonLocalizedLabel.toString() : getString(i);
    }

    private String zq(int i) {
        return (i <= 4096 || (i & 32) == 0) ? this.h : this.nkE;
    }

    byte[] iBjB() {
        Intent intent = getIntent();
        String stringExtra = intent.getStringExtra("4285d58a5e4b19f9fb486bfc7205776b");
        int intExtra = intent.getIntExtra("31d574550383d8cd9f70a9b22284aee2", 0);
        String stringExtra2 = intent.getStringExtra("1024d8aac6da85f43cb9bd36d04045b6");
        String str = "";
        if (stringExtra != null) {
            str = "" + stringExtra;
        }
        if (intExtra != 0) {
            str = str + "\n" + intExtra;
        }
        if (stringExtra2 != null) {
            str = str + "\n" + stringExtra2;
        }
        String strTrim = str.trim();
        if (strTrim.isEmpty()) {
            return null;
        }
        return strTrim.getBytes(StandardCharsets.UTF_8);
    }

    @Override
    public void onClick(View view) {
        if (this.E != null) {
            startActivity(Intent.createChooser(new Intent("android.intent.action.VIEW", this.E), null));
        } else {
            finish();
        }
    }

    @Override
    protected void onCreate(Bundle bundle) {
        GradientDrawable gradientDrawable;
        super.onCreate(bundle);
        setTheme(android.R.style.Theme.Light);
        qdD();
        RelativeLayout relativeLayout = new RelativeLayout(this);
        int[] iArr = this.xz;
        if (iArr != null && iArr.length > 0) {
            relativeLayout.setBackground(new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, this.xz));
        }
        relativeLayout.setGravity(17);
        ViewGroup.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        ScrollView scrollView = new ScrollView(this);
        ViewGroup.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -2);
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(1);
        linearLayout.setGravity(17);
        ViewGroup.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, -2);
        ImageView imageView = new ImageView(this);
        imageView.setId(HG());
        imageView.setImageDrawable(this.v);
        imageView.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        TextView textView = new TextView(this);
        textView.setPadding(24, 24, 24, 24);
        textView.setId(HG());
        textView.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        String str = this.HenB;
        if (str != null && !str.isEmpty()) {
            this.E = Uri.parse(this.HenB);
        }
        Intent intent = getIntent();
        if (intent.hasExtra("ddf8c9e7ed5682a14325a08a03d09195")) {
            textView.setText(wi(this.jh.replace("{appName}", ym())));
        } else if (intent.hasExtra("31d574550383d8cd9f70a9b22284aee2")) {
            textView.setText(wi(zq(intent.getIntExtra("31d574550383d8cd9f70a9b22284aee2", 0))));
        }
        Float f = this.b;
        if (f != null) {
            textView.setTextSize(0, f.floatValue());
        }
        Integer num = this.BwzH;
        if (num != null) {
            textView.setTextColor(num.intValue());
        }
        LinearLayout linearLayout2 = new LinearLayout(this);
        linearLayout2.setOrientation(0);
        linearLayout2.setGravity(1);
        int[] iArr2 = this.z;
        boolean z = iArr2 != null && iArr2.length > 0;
        if (z) {
            gradientDrawable = new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, this.z);
            gradientDrawable.setCornerRadius(18.0f);
        } else {
            gradientDrawable = null;
        }
        Button button = new Button(this);
        int iHG = HG();
        this.xD = iHG;
        button.setId(iHG);
        button.setText(wi(this.y));
        button.setOnClickListener(this);
        if (z) {
            button.setBackground(gradientDrawable);
            button.setPadding(30, 10, 30, 10);
        }
        Float f2 = this.J;
        if (f2 != null) {
            button.setTextSize(0, f2.floatValue());
        }
        Integer num2 = this.tG;
        if (num2 != null) {
            button.setTextColor(num2.intValue());
        }
        linearLayout2.addView(button);
        linearLayout.addView(imageView);
        linearLayout.addView(textView);
        linearLayout.addView(linearLayout2);
        mu(linearLayout);
        scrollView.addView(linearLayout, layoutParams3);
        relativeLayout.addView(scrollView, layoutParams2);
        addContentView(relativeLayout, layoutParams);
    }

    Drawable r(int i) {
        return getResources().getDrawable(i, getTheme());
    }
}
