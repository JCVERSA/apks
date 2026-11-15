package com.transsion.playercommon.utils;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.media.ExifInterface;
import com.transsion.playercommon.utils.AudioCoverProcessorUtils;
import defpackage.db3;
import defpackage.e74;
import defpackage.g1a;
import defpackage.hi;
import defpackage.hz9;
import defpackage.i81;
import defpackage.l1a;
import defpackage.ly0;
import defpackage.mf0;
import defpackage.oo0;
import defpackage.qv0;
import defpackage.se;
import defpackage.vmb;
import defpackage.y45;
import defpackage.zfb;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.ConcurrentHashMap;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.DefaultConstructorMarker;

public abstract class AudioCoverProcessorUtils {
    public static final Companion a = new Companion(null);
    public static final ConcurrentHashMap b = new ConcurrentHashMap();

    public static final class Companion {

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\n\b\u0082\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\u000b"}, d2 = {"Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils$Companion$ProcessError;", "", MethodDecl.initName, "(Ljava/lang/String;I)V", "INVALID_PATH", "FILE_NOT_FOUND", "LOAD_FAILED", "RESIZE_FAILED", "SAVE_FAILED", "OUT_OF_MEMORY", "UNKNOWN", "playercommon_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
        public enum ProcessError {
            INVALID_PATH,
            FILE_NOT_FOUND,
            LOAD_FAILED,
            RESIZE_FAILED,
            SAVE_FAILED,
            OUT_OF_MEMORY,
            UNKNOWN;

            public static final db3 c = kotlin.enums.a.a(a());

            public static db3 getEntries() {
                return c;
            }
        }

        public static final class a {
            public final long a(String str) {
                try {
                    return new File(str).length() / ((long) 1024);
                } catch (Exception e) {
                    vmb.d("AudioCoverProcessorUtils", "获取文件大小失败: " + str, e);
                    return Long.MAX_VALUE;
                }
            }

            public final int b(int i, long j) {
                int i2;
                float f = j / 100;
                if (f > 2.0f) {
                    i2 = 20;
                } else {
                    i2 = f > 1.5f ? 15 : 10;
                }
                int iMax = Math.max(40, i - i2);
                hz9 hz9Var = hz9.a;
                String str = String.format("%.2f", Arrays.copyOf(new Object[]{Float.valueOf(f)}, 1));
                y45.i(str, "format(...)");
                vmb.a("AudioCoverProcessorUtils", "质量调整: " + i + " → " + iMax + " (大小比例: " + str + ")");
                return iMax;
            }

            public final String c(Bitmap bitmap, String str) {
                y45.j(bitmap, "sourceBitmap");
                y45.j(str, "outputFileName");
                int iB = 60;
                int i = 0;
                while (i < 3) {
                    String strD = d(bitmap, str, iB);
                    if (strD == null) {
                        vmb.c("AudioCoverProcessorUtils", "第 " + (i + 1) + " 次保存尝试失败");
                        break;
                    }
                    long jA = a(strD);
                    int i2 = i + 1;
                    vmb.a("AudioCoverProcessorUtils", "压缩尝试 " + i2 + ": 质量=" + iB + ", 大小=" + jA + "KB");
                    if (jA <= 100 || i >= 2) {
                        vmb.e("AudioCoverProcessorUtils", "压缩保存成功: " + strD + " (" + jA + "KB)");
                        return strD;
                    }
                    iB = b(iB, jA);
                    vmb.i("AudioCoverProcessorUtils", "文件大小 " + jA + "KB 超出限制，降低质量至 " + iB);
                    new File(strD).delete();
                    i = i2;
                }
                vmb.c("AudioCoverProcessorUtils", "所有压缩尝试均失败");
                return null;
            }

            public final String d(Bitmap bitmap, String str, int i) {
                try {
                    return mf0.c(str, bitmap, Integer.valueOf(i), se.a(), Bitmap.CompressFormat.WEBP);
                } catch (Exception e) {
                    vmb.d("AudioCoverProcessorUtils", "保存尝试失败: 质量=" + i, e);
                    return null;
                }
            }
        }

        public static final class b {
            public final List a = new ArrayList();

            public final Bitmap a(String str) {
                y45.j(str, "imagePath");
                try {
                    File file = new File(str);
                    if (file.exists() && file.isFile()) {
                        Companion companion = AudioCoverProcessorUtils.a;
                        Pair pairT = companion.t(str);
                        if (((Number) pairT.getFirst()).intValue() > 0 && ((Number) pairT.getSecond()).intValue() > 0) {
                            Bitmap bitmapP = companion.p(str, companion.i(((Number) pairT.getFirst()).intValue(), ((Number) pairT.getSecond()).intValue(), 2048));
                            if (bitmapP == null) {
                                return null;
                            }
                            Bitmap bitmapG = companion.g(str, bitmapP);
                            this.a.add(bitmapG);
                            return bitmapG;
                        }
                        vmb.c("AudioCoverProcessorUtils", "图片尺寸无效: " + pairT.getFirst() + "x" + pairT.getSecond());
                        return null;
                    }
                    vmb.c("AudioCoverProcessorUtils", "图片文件不存在或无效: " + str);
                    return null;
                } catch (Exception e) {
                    vmb.d("AudioCoverProcessorUtils", "图片加载失败", e);
                    return null;
                }
            }

            public final Bitmap b(Bitmap bitmap, int i) {
                y45.j(bitmap, "originalBitmap");
                try {
                    Bitmap bitmapW = AudioCoverProcessorUtils.a.w(bitmap, i);
                    if (bitmapW == null) {
                        return bitmapW;
                    }
                    this.a.add(bitmapW);
                    return bitmapW;
                } catch (Exception e) {
                    vmb.d("AudioCoverProcessorUtils", "图片处理失败", e);
                    return null;
                }
            }

            public final void c() {
                for (Bitmap bitmap : this.a) {
                    if (!bitmap.isRecycled()) {
                        bitmap.recycle();
                    }
                }
                this.a.clear();
            }
        }

        public static final class c {
            public static final a a = new a(null);

            public static final class a {
                public a(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                public a() {
                }
            }

            public static final CharSequence d(byte b) {
                String str = String.format("%02x", Arrays.copyOf(new Object[]{Byte.valueOf(b)}, 1));
                y45.i(str, "format(...)");
                return str;
            }

            public final float b(float[] fArr) {
                float f = 0.0f;
                for (float f2 : fArr) {
                    f += f2;
                }
                return f / fArr.length;
            }

            public final String c(String str, String str2) throws NoSuchAlgorithmException {
                String str3 = str2 + "_" + str;
                MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                byte[] bytes = str3.getBytes(qv0.b);
                y45.i(bytes, "getBytes(...)");
                byte[] bArrDigest = messageDigest.digest(bytes);
                y45.g(bArrDigest);
                return i81.y0(hi.M0(bArrDigest, 16), "", null, null, 0, null, new e74() {
                    @Override
                    public final Object invoke(Object obj) {
                        return AudioCoverProcessorUtils.Companion.c.d(((Byte) obj).byteValue());
                    }
                }, 30, null);
            }

            public final float[] e(Bitmap bitmap) {
                int width = bitmap.getWidth();
                int height = bitmap.getHeight();
                int i = width * height;
                int[] iArr = new int[i];
                bitmap.getPixels(iArr, 0, width, 0, 0, width, height);
                float[] fArr = new float[i];
                for (int i2 = 0; i2 < i; i2++) {
                    int i3 = iArr[i2];
                    fArr[i2] = (((i3 >> 16) & 255) * 0.299f) + (((i3 >> 8) & 255) * 0.587f) + ((i3 & 255) * 0.114f);
                }
                return fArr;
            }

            public final Bitmap f(Bitmap bitmap) {
                if (bitmap.getWidth() <= 32 && bitmap.getHeight() <= 32) {
                    return bitmap;
                }
                Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmap, 32, 32, true);
                y45.g(bitmapCreateScaledBitmap);
                return bitmapCreateScaledBitmap;
            }

            public final String g(float[] fArr, float f) {
                StringBuilder sb = new StringBuilder();
                for (float f2 : fArr) {
                    sb.append(f2 > f ? '1' : '0');
                }
                String string = sb.toString();
                y45.i(string, "toString(...)");
                return string;
            }

            public final String h(Bitmap bitmap, int i) {
                y45.j(bitmap, "bitmap");
                Bitmap bitmapF = f(bitmap);
                try {
                    float[] fArrE = e(bitmapF);
                    return c(g(fArrE, b(fArrE)), bitmap.getWidth() + "x" + bitmap.getHeight() + "_q" + i);
                } finally {
                    if (!y45.e(bitmapF, bitmap)) {
                        bitmapF.recycle();
                    }
                }
            }
        }

        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static void A(Companion companion, ProcessError processError, String str, Throwable th, int i, Object obj) {
            if ((i & 4) != 0) {
                th = null;
            }
            companion.z(processError, str, th);
        }

        public static String C(Companion companion, ProcessError processError, String str, Throwable th, int i, Object obj) {
            if ((i & 4) != 0) {
                th = null;
            }
            return companion.B(processError, str, th);
        }

        public static final CharSequence l(byte b2) {
            String str = String.format("%02x", Arrays.copyOf(new Object[]{Byte.valueOf(b2)}, 1));
            y45.i(str, "format(...)");
            return str;
        }

        public final String B(ProcessError processError, String str, Throwable th) {
            z(processError, str, th);
            return null;
        }

        public final String D(Bitmap bitmap, String str) {
            try {
                return new a().c(bitmap, str);
            } catch (Exception e) {
                vmb.d("AudioCoverProcessorUtils", "图片保存过程中发生异常", e);
                return null;
            }
        }

        public final ProcessError E(String str) {
            if (str == null || str.length() == 0) {
                vmb.c("AudioCoverProcessorUtils", "图片路径为空或null");
                return ProcessError.INVALID_PATH;
            }
            File file = new File(str);
            if (file.exists() && file.isFile()) {
                return null;
            }
            vmb.c("AudioCoverProcessorUtils", "图片文件不存在或不是有效文件: " + str);
            return ProcessError.FILE_NOT_FOUND;
        }

        public final Bitmap g(String str, Bitmap bitmap) {
            int iY = y(str);
            if (iY == 0) {
                return bitmap;
            }
            try {
                Matrix matrix = new Matrix();
                matrix.postRotate(iY);
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
                y45.i(bitmapCreateBitmap, "createBitmap(...)");
                vmb.a("AudioCoverProcessorUtils", "已按 EXIF 旋转封面: " + bitmap.getWidth() + "x" + bitmap.getHeight() + " → " + bitmapCreateBitmap.getWidth() + "x" + bitmapCreateBitmap.getHeight() + ", degrees=" + iY);
                if (!y45.e(bitmapCreateBitmap, bitmap) && !bitmap.isRecycled()) {
                    bitmap.recycle();
                }
                return bitmapCreateBitmap;
            } catch (Exception e) {
                vmb.d("AudioCoverProcessorUtils", "EXIF 旋转失败, degrees=" + iY, e);
                return bitmap;
            } catch (OutOfMemoryError e2) {
                vmb.d("AudioCoverProcessorUtils", "EXIF 旋转时内存不足, degrees=" + iY, e2);
                return bitmap;
            }
        }

        public final Bitmap h(Bitmap bitmap, int i) {
            try {
                vmb.i("AudioCoverProcessorUtils", "启用降级处理方案: 目标尺寸 " + i + "x" + i);
                int width = bitmap.getWidth();
                int height = bitmap.getHeight();
                int iMin = Math.min(width, height);
                if (iMin <= i) {
                    return Bitmap.createBitmap(bitmap, (width - iMin) / 2, (height - iMin) / 2, iMin, iMin);
                }
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap, (width - iMin) / 2, (height - iMin) / 2, iMin, iMin);
                y45.i(bitmapCreateBitmap, "createBitmap(...)");
                Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmapCreateBitmap, i, i, true);
                y45.i(bitmapCreateScaledBitmap, "createScaledBitmap(...)");
                if (!y45.e(bitmapCreateBitmap, bitmap) && !bitmapCreateBitmap.isRecycled()) {
                    bitmapCreateBitmap.recycle();
                }
                vmb.e("AudioCoverProcessorUtils", "降级处理成功");
                return bitmapCreateScaledBitmap;
            } catch (Exception e) {
                vmb.d("AudioCoverProcessorUtils", "降级处理也失败了", e);
                return null;
            }
        }

        public final int i(int i, int i2, int i3) {
            int iMax = Math.max(i, i2);
            int i4 = 1;
            while (iMax / i4 > i3) {
                i4 *= 2;
            }
            return i4;
        }

        public final String j(String str, Bitmap bitmap, int i) {
            ConcurrentHashMap concurrentHashMap = AudioCoverProcessorUtils.b;
            Object obj = concurrentHashMap.get(str);
            if (obj == null) {
                String strR = AudioCoverProcessorUtils.a.r(bitmap, i);
                Object objPutIfAbsent = concurrentHashMap.putIfAbsent(str, strR);
                obj = objPutIfAbsent == null ? strR : objPutIfAbsent;
            }
            y45.i(obj, "getOrPut(...)");
            return (String) obj;
        }

        public final String k(String str) {
            try {
                File file = new File(str);
                if (file.exists() && file.isFile()) {
                    File file2 = new File(se.a().getFilesDir(), "cover");
                    if (!file2.exists() && !file2.mkdirs()) {
                        vmb.c("AudioCoverProcessorUtils", "创建私有封面目录失败: " + file2.getAbsolutePath());
                        return null;
                    }
                    String str2 = file.getAbsolutePath() + "_" + file.length() + "_" + file.lastModified();
                    MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                    byte[] bytes = str2.getBytes(qv0.b);
                    y45.i(bytes, "getBytes(...)");
                    byte[] bArrDigest = messageDigest.digest(bytes);
                    y45.i(bArrDigest, "digest(...)");
                    File file3 = new File(file2, "cover_" + l1a.u1(hi.r0(bArrDigest, "", null, null, 0, null, new e74() {
                        @Override
                        public final Object invoke(Object obj) {
                            return AudioCoverProcessorUtils.Companion.l(((Byte) obj).byteValue());
                        }
                    }, 30, null), 12) + ".gif");
                    if (file3.exists() && file3.length() > 0) {
                        return file3.getAbsolutePath();
                    }
                    FileInputStream fileInputStream = new FileInputStream(file);
                    try {
                        FileOutputStream fileOutputStream = new FileOutputStream(file3);
                        try {
                            oo0.b(fileInputStream, fileOutputStream, 0, 2, null);
                            fileOutputStream.flush();
                            zfb zfbVar = zfb.a;
                            ly0.a(fileOutputStream, null);
                            ly0.a(fileInputStream, null);
                            if (!file3.exists() || file3.length() <= 0) {
                                return null;
                            }
                            return file3.getAbsolutePath();
                        } catch (Throwable th) {
                            try {
                                throw th;
                            } catch (Throwable th2) {
                                ly0.a(fileOutputStream, th);
                                throw th2;
                            }
                        }
                    } catch (Throwable th3) {
                        try {
                            throw th3;
                        } catch (Throwable th4) {
                            ly0.a(fileInputStream, th3);
                            throw th4;
                        }
                    }
                }
                vmb.c("AudioCoverProcessorUtils", "GIF 源文件无效: " + str);
                return null;
            } catch (Exception e) {
                vmb.d("AudioCoverProcessorUtils", "复制 GIF 到私有目录失败: " + str, e);
                return null;
            }
        }

        public final String m(String str, int i, int i2) {
            return str + "_" + i + "_" + i2;
        }

        public final Paint n() {
            Paint paint = new Paint(1);
            paint.setFilterBitmap(true);
            paint.setDither(true);
            paint.setAntiAlias(true);
            return paint;
        }

        public final String o(String str, int i, int i2) {
            return "cover_" + str + "_max" + i + "_q" + i2 + ".webp";
        }

        public final Bitmap p(String str, int i) {
            try {
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inSampleSize = i;
                options.inPreferredConfig = Bitmap.Config.RGB_565;
                return BitmapFactory.decodeFile(str, options);
            } catch (Exception e) {
                vmb.d("AudioCoverProcessorUtils", "图片解码失败: " + str, e);
                return null;
            } catch (OutOfMemoryError e2) {
                vmb.d("AudioCoverProcessorUtils", "内存不足，采样率: " + i, e2);
                if (i < 8) {
                    return p(str, i * 2);
                }
                return null;
            }
        }

        public final String q(String str) {
            try {
                File file = new File(se.a().getFilesDir(), str);
                if (!file.exists() || file.length() <= 0) {
                    return null;
                }
                vmb.a("AudioCoverProcessorUtils", "发现现有缓存文件: " + file.getAbsolutePath());
                return file.getAbsolutePath();
            } catch (Exception e) {
                vmb.d("AudioCoverProcessorUtils", "检查缓存文件时发生异常: " + str, e);
                return null;
            }
        }

        public final String r(Bitmap bitmap, int i) {
            try {
                return new c().h(bitmap, i);
            } catch (Exception e) {
                vmb.d("AudioCoverProcessorUtils", "generateContentHash: exception occurred during hash generation", e);
                return s();
            }
        }

        public final String s() {
            return "fallback_" + System.currentTimeMillis() + "_" + ((int) (Math.random() * ((double) 10000)));
        }

        public final Pair t(String str) {
            Pair pair;
            try {
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inJustDecodeBounds = true;
                BitmapFactory.decodeFile(str, options);
                int i = options.outWidth;
                if (i <= 0 || options.outHeight <= 0) {
                    vmb.c("AudioCoverProcessorUtils", "图片尺寸无效: " + str);
                    pair = new Pair(0, 0);
                } else {
                    pair = new Pair(Integer.valueOf(i), Integer.valueOf(options.outHeight));
                }
                return pair;
            } catch (Exception e) {
                vmb.d("AudioCoverProcessorUtils", "获取图片尺寸失败: " + str, e);
                return new Pair(0, 0);
            }
        }

        public final boolean u(String str) {
            String lowerCase = str.toLowerCase(Locale.ROOT);
            y45.i(lowerCase, "toLowerCase(...)");
            return g1a.D(lowerCase, ".gif", false, 2, null);
        }

        public final boolean v(String str) {
            try {
                File file = new File(str);
                boolean z = file.exists() && file.length() > 0;
                if (!z) {
                    vmb.c("AudioCoverProcessorUtils", "保存文件验证失败: 文件不存在或大小为0");
                }
                return z;
            } catch (Exception e) {
                vmb.d("AudioCoverProcessorUtils", "保存文件验证异常", e);
                return false;
            }
        }

        public final Bitmap w(Bitmap bitmap, int i) {
            try {
                int width = bitmap.getWidth();
                int height = bitmap.getHeight();
                vmb.a("AudioCoverProcessorUtils", "开始图片处理: " + width + "x" + height + " → " + i + "x" + i);
                if (width == height && width <= i) {
                    Bitmap.Config config = bitmap.getConfig();
                    if (config == null) {
                        config = Bitmap.Config.ARGB_8888;
                    }
                    return bitmap.copy(config, false);
                }
                Matrix matrix = new Matrix();
                int iMin = Math.min(width, height);
                float f = i / iMin;
                matrix.setTranslate(-((width - iMin) / 2.0f), -((height - iMin) / 2.0f));
                matrix.postScale(f, f);
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i, i, Bitmap.Config.ARGB_8888);
                y45.i(bitmapCreateBitmap, "createBitmap(...)");
                new Canvas(bitmapCreateBitmap).drawBitmap(bitmap, matrix, n());
                vmb.e("AudioCoverProcessorUtils", "图片处理成功: " + i + "x" + i);
                return bitmapCreateBitmap;
            } catch (Exception e) {
                vmb.d("AudioCoverProcessorUtils", "图片处理过程中发生异常", e);
                return null;
            } catch (OutOfMemoryError e2) {
                vmb.d("AudioCoverProcessorUtils", "图片处理时内存不足", e2);
                return h(bitmap, i);
            }
        }

        public final String x(String str) {
            String strB;
            long jCurrentTimeMillis = System.currentTimeMillis();
            ProcessError processErrorE = E(str);
            if (processErrorE != null) {
                A(this, processErrorE, "输入验证失败: " + str, null, 4, null);
                return null;
            }
            y45.g(str);
            if (u(str)) {
                vmb.e("AudioCoverProcessorUtils", "检测到 GIF 封面，复制到私有目录保留动图: " + str);
                return k(str);
            }
            b bVar = new b();
            try {
                try {
                    try {
                        vmb.e("AudioCoverProcessorUtils", "开始处理音频封面: " + str);
                        Bitmap bitmapA = bVar.a(str);
                        if (bitmapA == null) {
                            return C(this, ProcessError.LOAD_FAILED, "图片加载失败: " + str, null, 4, null);
                        }
                        Bitmap bitmapB = bVar.b(bitmapA, 600);
                        if (bitmapB == null) {
                            return C(this, ProcessError.RESIZE_FAILED, "图片处理失败", null, 4, null);
                        }
                        String strO = o(j(m(str, 600, 60), bitmapB, 60), 600, 60);
                        String strQ = q(strO);
                        if (strQ != null) {
                            vmb.e("AudioCoverProcessorUtils", "使用缓存文件: " + strQ);
                            return strQ;
                        }
                        strB = D(bitmapB, strO);
                        if (strB == null) {
                            return C(this, ProcessError.SAVE_FAILED, "图片保存失败", null, 4, null);
                        }
                        if (!v(strB)) {
                            return C(this, ProcessError.SAVE_FAILED, "保存文件验证失败", null, 4, null);
                        }
                        vmb.e("AudioCoverProcessorUtils", "音频封面处理完成，耗时: " + (System.currentTimeMillis() - jCurrentTimeMillis) + "ms，路径: " + strB);
                        return strB;
                    } catch (Exception e) {
                        strB = B(ProcessError.UNKNOWN, "未知错误", e);
                    }
                } catch (OutOfMemoryError e2) {
                    strB = B(ProcessError.OUT_OF_MEMORY, "内存不足", e2);
                }
            } finally {
                bVar.c();
            }
        }

        public final int y(String str) {
            try {
                int attributeInt = new ExifInterface(str).getAttributeInt(androidx.exifinterface.media.ExifInterface.TAG_ORIENTATION, 1);
                if (attributeInt == 3) {
                    return 180;
                }
                if (attributeInt != 6) {
                    return attributeInt != 8 ? 0 : 270;
                }
                return 90;
            } catch (Exception e) {
                vmb.j("AudioCoverProcessorUtils", "读取 EXIF 方向失败: " + str, e);
                return 0;
            }
        }

        public final void z(ProcessError processError, String str, Throwable th) {
            String str2 = "[" + processError + "] " + str;
            if (th != null) {
                vmb.d("AudioCoverProcessorUtils", str2, th);
            } else {
                vmb.c("AudioCoverProcessorUtils", str2);
            }
        }

        public Companion() {
        }
    }

    public static final String b(String str) {
        return a.x(str);
    }
}
