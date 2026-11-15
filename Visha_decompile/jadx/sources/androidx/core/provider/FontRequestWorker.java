package androidx.core.provider;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.Typeface;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.LruCache;
import androidx.collection.SimpleArrayMap;
import androidx.core.graphics.TypefaceCompat;
import androidx.core.util.Consumer;
import androidx.tracing.Trace;
import com.transsion.apiinvoke.common.router.ProcessInfo;
import defpackage.hdb;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;

class FontRequestWorker {
    static final LruCache<String, Typeface> sTypefaceCache = new LruCache<>(16);
    private static final ExecutorService DEFAULT_EXECUTOR_SERVICE = RequestExecutor.createDefaultExecutor("fonts-androidx", 10, 10000);
    static final Object LOCK = new Object();

    @GuardedBy("LOCK")
    static final SimpleArrayMap<String, ArrayList<Consumer<TypefaceResult>>> PENDING_REPLIES = new SimpleArrayMap<>();

    private FontRequestWorker() {
    }

    private static String createCacheId(@NonNull List<FontRequest> list, int i) {
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < list.size(); i2++) {
            sb.append(list.get(i2).getId());
            sb.append("-");
            sb.append(i);
            if (i2 < list.size() - 1) {
                sb.append(ProcessInfo.SPLIT_NEW_VERSION);
            }
        }
        return sb.toString();
    }

    @SuppressLint({"WrongConstant"})
    private static int getFontFamilyResultStatus(@NonNull FontsContractCompat.FontFamilyResult fontFamilyResult) {
        int i = 1;
        if (fontFamilyResult.getStatusCode() != 0) {
            return fontFamilyResult.getStatusCode() != 1 ? -3 : -2;
        }
        FontsContractCompat.FontInfo[] fonts = fontFamilyResult.getFonts();
        if (fonts != null && fonts.length != 0) {
            i = 0;
            for (FontsContractCompat.FontInfo fontInfo : fonts) {
                int resultCode = fontInfo.getResultCode();
                if (resultCode != 0) {
                    if (resultCode < 0) {
                        return -3;
                    }
                    return resultCode;
                }
            }
        }
        return i;
    }

    @NonNull
    public static TypefaceResult getFontSync(@NonNull String str, @NonNull Context context, @NonNull List<FontRequest> list, int i) {
        Trace.beginSection("getFontSync");
        try {
            LruCache<String, Typeface> lruCache = sTypefaceCache;
            Typeface typeface = lruCache.get(str);
            if (typeface != null) {
                TypefaceResult typefaceResult = new TypefaceResult(typeface);
                Trace.endSection();
                return typefaceResult;
            }
            try {
                FontsContractCompat.FontFamilyResult fontFamilyResult = FontProvider.getFontFamilyResult(context, list, null);
                int fontFamilyResultStatus = getFontFamilyResultStatus(fontFamilyResult);
                if (fontFamilyResultStatus != 0) {
                    TypefaceResult typefaceResult2 = new TypefaceResult(fontFamilyResultStatus);
                    Trace.endSection();
                    return typefaceResult2;
                }
                Typeface typefaceCreateFromFontInfoWithFallback = fontFamilyResult.hasFallback() ? TypefaceCompat.createFromFontInfoWithFallback(context, null, fontFamilyResult.getFontsWithFallbacks(), i) : TypefaceCompat.createFromFontInfo(context, null, fontFamilyResult.getFonts(), i);
                if (typefaceCreateFromFontInfoWithFallback == null) {
                    TypefaceResult typefaceResult3 = new TypefaceResult(-3);
                    Trace.endSection();
                    return typefaceResult3;
                }
                lruCache.put(str, typefaceCreateFromFontInfoWithFallback);
                TypefaceResult typefaceResult4 = new TypefaceResult(typefaceCreateFromFontInfoWithFallback);
                Trace.endSection();
                return typefaceResult4;
            } catch (PackageManager.NameNotFoundException unused) {
                TypefaceResult typefaceResult5 = new TypefaceResult(-1);
                Trace.endSection();
                return typefaceResult5;
            }
        } catch (Throwable th) {
            Trace.endSection();
            throw th;
        }
    }

    public static Typeface requestFontAsync(@NonNull final Context context, @NonNull final List<FontRequest> list, final int i, @Nullable Executor executor, @NonNull final CallbackWrapper callbackWrapper) {
        final String strCreateCacheId = createCacheId(list, i);
        Typeface typeface = sTypefaceCache.get(strCreateCacheId);
        if (typeface != null) {
            callbackWrapper.onTypefaceResult(new TypefaceResult(typeface));
            return typeface;
        }
        Consumer<TypefaceResult> consumer = new Consumer<TypefaceResult>() {
            @Override
            public void accept(TypefaceResult typefaceResult) {
                if (typefaceResult == null) {
                    typefaceResult = new TypefaceResult(-3);
                }
                callbackWrapper.onTypefaceResult(typefaceResult);
            }
        };
        synchronized (LOCK) {
            try {
                SimpleArrayMap<String, ArrayList<Consumer<TypefaceResult>>> simpleArrayMap = PENDING_REPLIES;
                ArrayList<Consumer<TypefaceResult>> arrayList = simpleArrayMap.get(strCreateCacheId);
                if (arrayList != null) {
                    arrayList.add(consumer);
                    return null;
                }
                ArrayList<Consumer<TypefaceResult>> arrayList2 = new ArrayList<>();
                arrayList2.add(consumer);
                simpleArrayMap.put(strCreateCacheId, arrayList2);
                Callable<TypefaceResult> callable = new Callable<TypefaceResult>() {
                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override
                    public TypefaceResult call() {
                        try {
                            return FontRequestWorker.getFontSync(strCreateCacheId, context, list, i);
                        } catch (Throwable unused) {
                            return new TypefaceResult(-3);
                        }
                    }
                };
                if (executor == null) {
                    executor = DEFAULT_EXECUTOR_SERVICE;
                }
                RequestExecutor.execute(executor, callable, new Consumer<TypefaceResult>() {
                    @Override
                    public void accept(TypefaceResult typefaceResult) {
                        synchronized (FontRequestWorker.LOCK) {
                            try {
                                SimpleArrayMap<String, ArrayList<Consumer<TypefaceResult>>> simpleArrayMap2 = FontRequestWorker.PENDING_REPLIES;
                                ArrayList<Consumer<TypefaceResult>> arrayList3 = simpleArrayMap2.get(strCreateCacheId);
                                if (arrayList3 == null) {
                                    return;
                                }
                                simpleArrayMap2.remove(strCreateCacheId);
                                for (int i2 = 0; i2 < arrayList3.size(); i2++) {
                                    arrayList3.get(i2).accept(typefaceResult);
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                });
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static Typeface requestFontSync(@NonNull final Context context, @NonNull final FontRequest fontRequest, @NonNull CallbackWrapper callbackWrapper, final int i, int i2) {
        final String strCreateCacheId = createCacheId(hdb.a(new Object[]{fontRequest}), i);
        Typeface typeface = sTypefaceCache.get(strCreateCacheId);
        if (typeface != null) {
            callbackWrapper.onTypefaceResult(new TypefaceResult(typeface));
            return typeface;
        }
        if (i2 == -1) {
            TypefaceResult fontSync = getFontSync(strCreateCacheId, context, hdb.a(new Object[]{fontRequest}), i);
            callbackWrapper.onTypefaceResult(fontSync);
            return fontSync.mTypeface;
        }
        try {
            TypefaceResult typefaceResult = (TypefaceResult) RequestExecutor.submit(DEFAULT_EXECUTOR_SERVICE, new Callable<TypefaceResult>() {
                /* JADX WARN: Can't rename method to resolve collision */
                @Override
                public TypefaceResult call() {
                    return FontRequestWorker.getFontSync(strCreateCacheId, context, hdb.a(new Object[]{fontRequest}), i);
                }
            }, i2);
            callbackWrapper.onTypefaceResult(typefaceResult);
            return typefaceResult.mTypeface;
        } catch (InterruptedException unused) {
            callbackWrapper.onTypefaceResult(new TypefaceResult(-3));
            return null;
        }
    }

    public static void resetTypefaceCache() {
        sTypefaceCache.evictAll();
    }

    public static final class TypefaceResult {
        final int mResult;
        final Typeface mTypeface;

        public TypefaceResult(int i) {
            this.mTypeface = null;
            this.mResult = i;
        }

        @SuppressLint({"WrongConstant"})
        public boolean isSuccess() {
            return this.mResult == 0;
        }

        @SuppressLint({"WrongConstant"})
        public TypefaceResult(@NonNull Typeface typeface) {
            this.mTypeface = typeface;
            this.mResult = 0;
        }
    }
}
