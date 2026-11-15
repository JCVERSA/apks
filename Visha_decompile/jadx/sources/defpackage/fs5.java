package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Typeface;
import android.util.Base64;
import com.airbnb.lottie.LottieTask;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.alibaba.android.arouter.utils.Consts;
import com.transsion.socket.pkgdata.SocketData;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.zip.GZIPInputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import okio.BufferedSource;
import okio.Okio;
import okio.Source;

public abstract class fs5 {
    public static final Map a = new HashMap();
    public static final Set b = new HashSet();
    public static final byte[] c = {80, 75, 3, 4};
    public static final byte[] d = {31, SocketData.CLAZZ_TYPE_STRING, 8};

    public static LottieTask A(Context context, String str) {
        return B(context, str, "url_" + str);
    }

    public static LottieTask B(final Context context, final String str, final String str2) {
        return j(str2, new Callable() {
            @Override
            public final Object call() {
                return fs5.Q(context, str, str2);
            }
        }, null);
    }

    public static LottieTask C(final Context context, final ZipInputStream zipInputStream, final String str) {
        return j(str, new Callable() {
            @Override
            public final Object call() {
                return fs5.E(context, zipInputStream, str);
            }
        }, new Runnable() {
            @Override
            public final void run() {
                plb.c(zipInputStream);
            }
        });
    }

    public static LottieTask D(ZipInputStream zipInputStream, String str) {
        return C(null, zipInputStream, str);
    }

    public static jt5 E(Context context, ZipInputStream zipInputStream, String str) {
        return F(context, zipInputStream, str, true);
    }

    public static jt5 F(Context context, ZipInputStream zipInputStream, String str, boolean z) {
        try {
            return G(context, zipInputStream, str);
        } finally {
            if (z) {
                plb.c(zipInputStream);
            }
        }
    }

    public static jt5 G(Context context, ZipInputStream zipInputStream, String str) {
        ur5 ur5VarA;
        HashMap map = new HashMap();
        HashMap map2 = new HashMap();
        if (str == null) {
            ur5VarA = null;
        } else {
            try {
                ur5VarA = vr5.b().a(str);
            } catch (IOException e) {
                return new jt5((Throwable) e);
            }
        }
        if (ur5VarA != null) {
            return new jt5(ur5VarA);
        }
        ZipEntry nextEntry = zipInputStream.getNextEntry();
        ur5 ur5Var = null;
        while (nextEntry != null) {
            String name = nextEntry.getName();
            if (name.contains("__MACOSX")) {
                zipInputStream.closeEntry();
            } else if (nextEntry.getName().equalsIgnoreCase("manifest.json")) {
                zipInputStream.closeEntry();
            } else if (nextEntry.getName().contains(".json")) {
                ur5Var = (ur5) u(JsonReader.F(Okio.buffer(Okio.source(zipInputStream))), null, false).b();
            } else if (name.contains(".png") || name.contains(".webp") || name.contains(".jpg") || name.contains(".jpeg")) {
                String[] strArrSplit = name.split("/");
                map.put(strArrSplit[strArrSplit.length - 1], BitmapFactory.decodeStream(zipInputStream));
            } else if (name.contains(".ttf") || name.contains(".otf")) {
                String[] strArrSplit2 = name.split("/");
                String str2 = strArrSplit2[strArrSplit2.length - 1];
                String str3 = str2.split("\\.")[0];
                if (context == null) {
                    return new jt5((Throwable) new IllegalStateException("Unable to extract font " + str3 + " please pass a non-null Context parameter"));
                }
                File file = new File(context.getCacheDir(), str2);
                try {
                    FileOutputStream fileOutputStream = new FileOutputStream(file);
                    try {
                        FileOutputStream fileOutputStream2 = new FileOutputStream(file);
                        try {
                            byte[] bArr = new byte[4096];
                            while (true) {
                                int i = zipInputStream.read(bArr);
                                if (i == -1) {
                                    break;
                                }
                                fileOutputStream2.write(bArr, 0, i);
                            }
                            fileOutputStream2.flush();
                            fileOutputStream2.close();
                            fileOutputStream.close();
                        } catch (Throwable th) {
                            try {
                                fileOutputStream2.close();
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                            }
                            throw th;
                        }
                    } catch (Throwable th3) {
                        try {
                            fileOutputStream.close();
                        } catch (Throwable th4) {
                            th3.addSuppressed(th4);
                        }
                        throw th3;
                    }
                } catch (Throwable th5) {
                    mq5.d("Unable to save font " + str3 + " to the temporary file: " + str2 + ". ", th5);
                }
                Typeface typefaceCreateFromFile = Typeface.createFromFile(file);
                if (!file.delete()) {
                    mq5.c("Failed to delete temp font file " + file.getAbsolutePath() + Consts.DOT);
                }
                map2.put(str3, typefaceCreateFromFile);
            } else {
                zipInputStream.closeEntry();
            }
            nextEntry = zipInputStream.getNextEntry();
        }
        if (ur5Var == null) {
            return new jt5((Throwable) new IllegalArgumentException("Unable to parse composition"));
        }
        for (Map.Entry entry : map.entrySet()) {
            ct5 ct5VarK = k(ur5Var, (String) entry.getKey());
            if (ct5VarK != null) {
                ct5VarK.g(plb.m((Bitmap) entry.getValue(), ct5VarK.f(), ct5VarK.d()));
            }
        }
        for (Map.Entry entry2 : map2.entrySet()) {
            boolean z = false;
            for (q24 q24Var : ur5Var.g().values()) {
                if (q24Var.a().equals(entry2.getKey())) {
                    q24Var.e((Typeface) entry2.getValue());
                    z = true;
                }
            }
            if (!z) {
                mq5.c("Parsed font for " + ((String) entry2.getKey()) + " however it was not found in the animation.");
            }
        }
        if (map.isEmpty()) {
            Iterator it = ur5Var.j().entrySet().iterator();
            while (it.hasNext()) {
                ct5 ct5Var = (ct5) ((Map.Entry) it.next()).getValue();
                if (ct5Var == null) {
                    return null;
                }
                String strC = ct5Var.c();
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inScaled = true;
                options.inDensity = 160;
                if (strC.startsWith("data:") && strC.indexOf("base64,") > 0) {
                    try {
                        byte[] bArrDecode = Base64.decode(strC.substring(strC.indexOf(44) + 1), 0);
                        ct5Var.g(plb.m(BitmapFactory.decodeByteArray(bArrDecode, 0, bArrDecode.length, options), ct5Var.f(), ct5Var.d()));
                    } catch (IllegalArgumentException e2) {
                        mq5.d("data URL did not have correct base64 format.", e2);
                        return null;
                    }
                }
            }
        }
        if (str != null) {
            vr5.b().c(str, ur5Var);
        }
        return new jt5(ur5Var);
    }

    public static Boolean H(BufferedSource bufferedSource) {
        return T(bufferedSource, d);
    }

    public static boolean I(Context context) {
        return (context.getResources().getConfiguration().uiMode & 48) == 32;
    }

    public static Boolean J(BufferedSource bufferedSource) {
        return T(bufferedSource, c);
    }

    public static void K(String str, AtomicBoolean atomicBoolean, ur5 ur5Var) {
        Map map = a;
        map.remove(str);
        atomicBoolean.set(true);
        if (map.size() == 0) {
            U(true);
        }
    }

    public static void L(String str, AtomicBoolean atomicBoolean, Throwable th) {
        Map map = a;
        map.remove(str);
        atomicBoolean.set(true);
        if (map.size() == 0) {
            U(true);
        }
    }

    public static jt5 P(WeakReference weakReference, Context context, int i, String str) {
        Context context2 = (Context) weakReference.get();
        if (context2 != null) {
            context = context2;
        }
        return z(context, i, str);
    }

    public static jt5 Q(Context context, String str, String str2) {
        jt5 jt5VarC = yh5.k(context).c(context, str, str2);
        if (str2 != null && jt5VarC.b() != null) {
            vr5.b().c(str2, (ur5) jt5VarC.b());
        }
        return jt5VarC;
    }

    public static Boolean T(BufferedSource bufferedSource, byte[] bArr) {
        try {
            BufferedSource bufferedSourcePeek = bufferedSource.peek();
            for (byte b2 : bArr) {
                if (bufferedSourcePeek.readByte() != b2) {
                    return Boolean.FALSE;
                }
            }
            bufferedSourcePeek.close();
            return Boolean.TRUE;
        } catch (Exception e) {
            mq5.b("Failed to check zip file header", e);
            return Boolean.FALSE;
        } catch (NoSuchMethodError unused) {
            return Boolean.FALSE;
        }
    }

    public static void U(boolean z) {
        ArrayList arrayList = new ArrayList(b);
        if (arrayList.size() <= 0) {
            return;
        }
        ubc.a(arrayList.get(0));
        throw null;
    }

    public static String V(Context context, int i) {
        StringBuilder sb = new StringBuilder();
        sb.append("rawRes");
        sb.append(I(context) ? "_night_" : "_day_");
        sb.append(i);
        return sb.toString();
    }

    public static LottieTask j(final String str, Callable callable, Runnable runnable) {
        ur5 ur5VarA = str == null ? null : vr5.b().a(str);
        LottieTask lottieTask = ur5VarA != null ? new LottieTask(ur5VarA) : null;
        if (str != null) {
            Map map = a;
            if (map.containsKey(str)) {
                lottieTask = (LottieTask) map.get(str);
            }
        }
        if (lottieTask != null) {
            if (runnable != null) {
                runnable.run();
            }
            return lottieTask;
        }
        LottieTask lottieTask2 = new LottieTask(callable);
        if (str != null) {
            final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
            lottieTask2.d(new dt5() {
                @Override
                public final void onResult(Object obj) {
                    fs5.K(str, atomicBoolean, (ur5) obj);
                }
            });
            lottieTask2.c(new dt5() {
                @Override
                public final void onResult(Object obj) {
                    fs5.L(str, atomicBoolean, (Throwable) obj);
                }
            });
            if (!atomicBoolean.get()) {
                Map map2 = a;
                map2.put(str, lottieTask2);
                if (map2.size() == 1) {
                    U(false);
                }
            }
        }
        return lottieTask2;
    }

    public static ct5 k(ur5 ur5Var, String str) {
        for (ct5 ct5Var : ur5Var.j().values()) {
            if (ct5Var.c().equals(str)) {
                return ct5Var;
            }
        }
        return null;
    }

    public static LottieTask l(Context context, String str) {
        return m(context, str, "asset_" + str);
    }

    public static LottieTask m(Context context, final String str, final String str2) {
        final Context applicationContext = context.getApplicationContext();
        return j(str2, new Callable() {
            @Override
            public final Object call() {
                return fs5.o(applicationContext, str, str2);
            }
        }, null);
    }

    public static jt5 n(Context context, String str) {
        return o(context, str, "asset_" + str);
    }

    public static jt5 o(Context context, String str, String str2) {
        ur5 ur5VarA = str2 == null ? null : vr5.b().a(str2);
        if (ur5VarA != null) {
            return new jt5(ur5VarA);
        }
        try {
            BufferedSource bufferedSourceBuffer = Okio.buffer(Okio.source(context.getAssets().open(str)));
            if (J(bufferedSourceBuffer).booleanValue()) {
                return E(context, new ZipInputStream(bufferedSourceBuffer.inputStream()), str2);
            }
            return H(bufferedSourceBuffer).booleanValue() ? q(new GZIPInputStream(bufferedSourceBuffer.inputStream()), str2) : s(JsonReader.F(bufferedSourceBuffer), str2);
        } catch (IOException e) {
            return new jt5((Throwable) e);
        }
    }

    public static LottieTask p(final InputStream inputStream, final String str) {
        return j(str, new Callable() {
            @Override
            public final Object call() {
                return fs5.q(inputStream, str);
            }
        }, new Runnable() {
            @Override
            public final void run() {
                plb.c(inputStream);
            }
        });
    }

    public static jt5 q(InputStream inputStream, String str) {
        return r(inputStream, str, true);
    }

    public static jt5 r(InputStream inputStream, String str, boolean z) {
        return v(Okio.source(inputStream), str, z);
    }

    public static jt5 s(JsonReader jsonReader, String str) {
        return t(jsonReader, str, true);
    }

    public static jt5 t(JsonReader jsonReader, String str, boolean z) {
        return u(jsonReader, str, z);
    }

    public static jt5 u(JsonReader jsonReader, String str, boolean z) {
        try {
            ur5 ur5VarA = str == null ? null : vr5.b().a(str);
            if (ur5VarA != null) {
                return new jt5(ur5VarA);
            }
            ur5 ur5VarA2 = gs5.a(jsonReader);
            if (str != null) {
                vr5.b().c(str, ur5VarA2);
            }
            return new jt5(ur5VarA2);
        } catch (Exception e) {
            return new jt5((Throwable) e);
        } finally {
            if (z) {
                plb.c(jsonReader);
            }
        }
    }

    public static jt5 v(Source source, String str, boolean z) {
        return u(JsonReader.F(Okio.buffer(source)), str, z);
    }

    public static LottieTask w(Context context, int i) {
        return x(context, i, V(context, i));
    }

    public static LottieTask x(Context context, final int i, final String str) {
        final WeakReference weakReference = new WeakReference(context);
        final Context applicationContext = context.getApplicationContext();
        return j(str, new Callable() {
            @Override
            public final Object call() {
                return fs5.P(weakReference, applicationContext, i, str);
            }
        }, null);
    }

    public static jt5 y(Context context, int i) {
        return z(context, i, V(context, i));
    }

    public static jt5 z(Context context, int i, String str) {
        ur5 ur5VarA = str == null ? null : vr5.b().a(str);
        if (ur5VarA != null) {
            return new jt5(ur5VarA);
        }
        try {
            BufferedSource bufferedSourceBuffer = Okio.buffer(Okio.source(context.getResources().openRawResource(i)));
            if (J(bufferedSourceBuffer).booleanValue()) {
                return E(context, new ZipInputStream(bufferedSourceBuffer.inputStream()), str);
            }
            if (!H(bufferedSourceBuffer).booleanValue()) {
                return s(JsonReader.F(bufferedSourceBuffer), str);
            }
            try {
                return q(new GZIPInputStream(bufferedSourceBuffer.inputStream()), str);
            } catch (IOException e) {
                return new jt5((Throwable) e);
            }
        } catch (Resources.NotFoundException e2) {
            return new jt5((Throwable) e2);
        }
    }
}
