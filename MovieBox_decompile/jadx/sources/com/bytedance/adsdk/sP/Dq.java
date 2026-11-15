package com.bytedance.adsdk.sP;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Typeface;
import android.util.Base64;
import android.util.JsonReader;
import com.bytedance.adsdk.sP.HiB.ib;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

public class Dq {
    private static final Map<String, Fmk<Jcg>> Sj = new HashMap();
    private static final Set<Object> sP = new HashSet();
    private static final byte[] TKC = {80, 75, 3, 4};

    public static aa<Jcg> TKC(Context context, String str) {
        return TKC(context, str, "asset_".concat(String.valueOf(str)));
    }

    public static Fmk<Jcg> sP(Context context, String str) {
        return sP(context, str, "asset_".concat(String.valueOf(str)));
    }

    public static Fmk<Jcg> Sj(Context context, String str) {
        return Sj(context, str, "url_".concat(String.valueOf(str)));
    }

    public static aa<Jcg> TKC(Context context, String str, String str2) {
        try {
            if (!str.endsWith(".zip") && !str.endsWith(".lottie")) {
                return sP(context.getAssets().open(str), str2);
            }
            return Sj(context, new ZipInputStream(context.getAssets().open(str)), str2);
        } catch (IOException e10) {
            return new aa<>((Throwable) e10);
        }
    }

    public static Fmk<Jcg> sP(Context context, final String str, final String str2) {
        final Context applicationContext = context.getApplicationContext();
        return Sj(str2, new Callable<aa<Jcg>>() {
            @Override
            public aa<Jcg> call() throws Exception {
                return Dq.TKC(applicationContext, str, str2);
            }
        });
    }

    public static Fmk<Jcg> Sj(final Context context, final String str, final String str2) {
        return Sj(str2, new Callable<aa<Jcg>>() {
            @Override
            public aa<Jcg> call() throws Exception {
                aa<Jcg> aaVarSj = HiB.Sj(context).Sj(context, str, str2);
                if (str2 != null && aaVarSj.Sj() != null) {
                    com.bytedance.adsdk.sP.TKC.HiB.Sj().Sj(str2, aaVarSj.Sj());
                }
                return aaVarSj;
            }
        });
    }

    public static Fmk<Jcg> Sj(Context context, int i10) {
        return Sj(context, i10, TKC(context, i10));
    }

    public static aa<Jcg> sP(Context context, int i10) {
        return sP(context, i10, TKC(context, i10));
    }

    public static Fmk<Jcg> Sj(Context context, final int i10, final String str) {
        final WeakReference weakReference = new WeakReference(context);
        final Context applicationContext = context.getApplicationContext();
        return Sj(str, new Callable<aa<Jcg>>() {
            @Override
            public aa<Jcg> call() throws Exception {
                Context context2 = (Context) weakReference.get();
                if (context2 == null) {
                    context2 = applicationContext;
                }
                return Dq.sP(context2, i10, str);
            }
        });
    }

    public static aa<Jcg> sP(Context context, int i10, String str) {
        try {
            return sP(context.getResources().openRawResource(i10), TKC(context, i10));
        } catch (Resources.NotFoundException e10) {
            return new aa<>((Throwable) e10);
        }
    }

    private static String TKC(Context context, int i10) {
        StringBuilder sb2 = new StringBuilder("rawRes");
        sb2.append(Sj(context) ? "_night_" : "_day_");
        sb2.append(i10);
        return sb2.toString();
    }

    public static aa<Jcg> sP(InputStream inputStream, String str) {
        return Sj(inputStream, str, true);
    }

    private static boolean Sj(Context context) {
        return (context.getResources().getConfiguration().uiMode & 48) == 32;
    }

    private static aa<Jcg> sP(Context context, ZipInputStream zipInputStream, String str) {
        HashMap map = new HashMap();
        HashMap map2 = new HashMap();
        try {
            ZipEntry nextEntry = zipInputStream.getNextEntry();
            Jcg jcgSj = null;
            while (nextEntry != null) {
                String name = nextEntry.getName();
                if (name.contains("__MACOSX")) {
                    zipInputStream.closeEntry();
                } else if (nextEntry.getName().equalsIgnoreCase("manifest.json")) {
                    zipInputStream.closeEntry();
                } else if (nextEntry.getName().endsWith(".json")) {
                    jcgSj = Sj(new JsonReader(new InputStreamReader(zipInputStream)), (String) null, false).Sj();
                } else if (!name.endsWith(".png") && !name.endsWith(".webp") && !name.endsWith(".jpg") && !name.endsWith(".jpeg")) {
                    if (!name.endsWith(".ttf") && !name.endsWith(".otf")) {
                        zipInputStream.closeEntry();
                    } else if (name.contains("../")) {
                        zipInputStream.closeEntry();
                        nextEntry = zipInputStream.getNextEntry();
                    } else {
                        String[] strArrSplit = name.split("/");
                        String str2 = strArrSplit[strArrSplit.length - 1];
                        String str3 = str2.split("\\.")[0];
                        File file = new File(context.getCacheDir(), str2);
                        new FileOutputStream(file);
                        try {
                            FileOutputStream fileOutputStream = new FileOutputStream(file);
                            try {
                                byte[] bArr = new byte[4096];
                                while (true) {
                                    int i10 = zipInputStream.read(bArr);
                                    if (i10 == -1) {
                                        break;
                                    }
                                    fileOutputStream.write(bArr, 0, i10);
                                }
                                fileOutputStream.flush();
                                fileOutputStream.close();
                            } catch (Throwable th2) {
                                try {
                                    throw th2;
                                } catch (Throwable th3) {
                                    try {
                                        fileOutputStream.close();
                                    } catch (Throwable th4) {
                                        th2.addSuppressed(th4);
                                    }
                                    throw th3;
                                }
                            }
                        } catch (Throwable unused) {
                        }
                        Typeface typefaceCreateFromFile = Typeface.createFromFile(file);
                        if (!file.delete()) {
                            file.getAbsolutePath();
                        }
                        map2.put(str3, typefaceCreateFromFile);
                    }
                } else if (name.contains("../")) {
                    zipInputStream.closeEntry();
                    nextEntry = zipInputStream.getNextEntry();
                } else {
                    String[] strArrSplit2 = name.split("/");
                    map.put(strArrSplit2[strArrSplit2.length - 1], BitmapFactory.decodeStream(zipInputStream));
                }
                nextEntry = zipInputStream.getNextEntry();
            }
            if (jcgSj == null) {
                return new aa<>((Throwable) new IllegalArgumentException("Unable to parse composition"));
            }
            for (Map.Entry entry : map.entrySet()) {
                TEQ teqSj = Sj(jcgSj, (String) entry.getKey());
                if (teqSj != null) {
                    teqSj.Sj(com.bytedance.adsdk.sP.vS.vS.Sj((Bitmap) entry.getValue(), teqSj.Sj(), teqSj.sP()));
                }
            }
            for (Map.Entry entry2 : map2.entrySet()) {
                boolean z10 = false;
                for (com.bytedance.adsdk.sP.TKC.TKC tkc : jcgSj.Zq().values()) {
                    if (tkc.Sj().equals(entry2.getKey())) {
                        tkc.Sj((Typeface) entry2.getValue());
                        z10 = true;
                    }
                }
                if (!z10) {
                }
            }
            if (map.isEmpty()) {
                Iterator<Map.Entry<String, TEQ>> it = jcgSj.uvD().entrySet().iterator();
                while (it.hasNext()) {
                    TEQ value = it.next().getValue();
                    if (value == null) {
                        return null;
                    }
                    String strUA = value.uA();
                    BitmapFactory.Options options = new BitmapFactory.Options();
                    options.inScaled = true;
                    options.inDensity = 160;
                    if (strUA.startsWith("data:") && strUA.indexOf("base64,") > 0) {
                        try {
                            byte[] bArrDecode = Base64.decode(strUA.substring(strUA.indexOf(44) + 1), 0);
                            value.Sj(BitmapFactory.decodeByteArray(bArrDecode, 0, bArrDecode.length, options));
                        } catch (IllegalArgumentException unused2) {
                            return null;
                        }
                    }
                }
            }
            for (Map.Entry<String, TEQ> entry3 : jcgSj.uvD().entrySet()) {
                if (entry3.getValue().Ym() == null) {
                    return new aa<>((Throwable) new IllegalStateException("There is no image for " + entry3.getValue().uA()));
                }
            }
            if (str != null) {
                com.bytedance.adsdk.sP.TKC.HiB.Sj().Sj(str, jcgSj);
            }
            return new aa<>(jcgSj);
        } catch (IOException e10) {
            return new aa<>((Throwable) e10);
        }
    }

    public static Fmk<Jcg> Sj(final InputStream inputStream, final String str) {
        return Sj(str, new Callable<aa<Jcg>>() {
            @Override
            public aa<Jcg> call() throws Exception {
                return Dq.sP(inputStream, str);
            }
        });
    }

    private static aa<Jcg> Sj(InputStream inputStream, String str, boolean z10) {
        try {
            return Sj(new JsonReader(new InputStreamReader(inputStream)), str);
        } finally {
            if (z10) {
                com.bytedance.adsdk.sP.vS.vS.Sj(inputStream);
            }
        }
    }

    public static aa<Jcg> Sj(JsonReader jsonReader, String str) {
        return Sj(jsonReader, str, true);
    }

    private static aa<Jcg> Sj(JsonReader jsonReader, String str, boolean z10) {
        try {
            Jcg jcgSj = ib.Sj(jsonReader);
            com.bytedance.adsdk.sP.TKC.HiB.Sj().Sj(str, jcgSj);
            return new aa<>(jcgSj);
        } catch (Exception e10) {
            return new aa<>((Throwable) e10);
        } finally {
            if (z10) {
                Sj(jsonReader);
            }
        }
    }

    public static void Sj(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e10) {
                throw e10;
            } catch (Exception unused) {
            }
        }
    }

    public static aa<Jcg> Sj(Context context, ZipInputStream zipInputStream, String str) {
        try {
            return sP(context, zipInputStream, str);
        } finally {
            com.bytedance.adsdk.sP.vS.vS.Sj(zipInputStream);
        }
    }

    private static TEQ Sj(Jcg jcg, String str) {
        for (TEQ teq : jcg.uvD().values()) {
            if (teq.uA().equals(str)) {
                return teq;
            }
        }
        return null;
    }

    private static Fmk<Jcg> Sj(final String str, Callable<aa<Jcg>> callable) {
        final Jcg jcgSj = str == null ? null : com.bytedance.adsdk.sP.TKC.HiB.Sj().Sj(str);
        if (jcgSj != null) {
            return new Fmk<>(new Callable<aa<Jcg>>() {
                @Override
                public aa<Jcg> call() throws Exception {
                    return new aa<>(jcgSj);
                }
            });
        }
        if (str != null) {
            Map<String, Fmk<Jcg>> map = Sj;
            if (map.containsKey(str)) {
                return map.get(str);
            }
        }
        Fmk<Jcg> fmk = new Fmk<>(callable);
        if (str != null) {
            final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
            fmk.Sj(new Ym<Jcg>() {
                @Override
                public void Sj(Jcg jcg) {
                    Dq.Sj.remove(str);
                    atomicBoolean.set(true);
                    if (Dq.Sj.size() == 0) {
                        Dq.sP(true);
                    }
                }
            });
            fmk.TKC(new Ym<Throwable>() {
                @Override
                public void Sj(Throwable th2) {
                    Dq.Sj.remove(str);
                    atomicBoolean.set(true);
                    if (Dq.Sj.size() == 0) {
                        Dq.sP(true);
                    }
                }
            });
            if (!atomicBoolean.get()) {
                Map<String, Fmk<Jcg>> map2 = Sj;
                map2.put(str, fmk);
                if (map2.size() == 1) {
                    sP(false);
                }
            }
        }
        return fmk;
    }

    public static void sP(boolean z10) {
        ArrayList arrayList = new ArrayList(sP);
        for (int i10 = 0; i10 < arrayList.size(); i10++) {
            arrayList.get(i10);
        }
    }
}
