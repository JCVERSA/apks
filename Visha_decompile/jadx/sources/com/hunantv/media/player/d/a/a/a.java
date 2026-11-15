package com.hunantv.media.player.d.a.a;

import android.content.Context;
import android.opengl.GLES20;
import android.util.Log;
import com.hunantv.media.player.utils.CryptoUtil;
import com.hunantv.media.player.utils.FileUtil;
import com.hunantv.media.player.utils.StringUtil;
import com.hunantv.media.report.c.f;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;

public class a extends com.hunantv.media.player.d.a.b {
    public static boolean f = true;
    public static boolean g = false;
    public static boolean h = false;
    private static Map<String, String> m = new HashMap();
    public String i = "123456";
    public String j = "123456";
    private String k = null;
    private String l = null;

    public a(Context context, String str, String str2) throws Throwable {
        if (context != null && str != null && str2 != null) {
            a(context, str, str2, f);
            return;
        }
        throw new IOException("filter params [" + context + StringUtils.COMMA + str + StringUtils.COMMA + str2 + "]");
    }

    /* JADX WARN: Code duplicated, block: B:17:0x00bc A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:18:0x00be  */
    /* JADX WARN: Code duplicated, block: B:19:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:22:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:29:0x00f8  */
    /* JADX WARN: Code duplicated, block: B:30:0x0104  */
    /* JADX WARN: Code duplicated, block: B:33:0x0112  */
    /* JADX WARN: Code duplicated, block: B:36:? A[RETURN, SYNTHETIC] */
    private void b(Context context, String str, String str2, boolean z) throws Throwable {
        StringBuilder sb;
        byte[] bytes;
        byte[] bytes2;
        String str3 = context.getExternalCacheDir().getAbsolutePath() + "/shader/" + str;
        String str4 = context.getExternalCacheDir().getAbsolutePath() + "/shader/" + str2;
        if (h) {
            if (!FileUtil.exist(str3)) {
                FileUtil.copyAssertThrow(context, "shader/" + str, str3);
            }
            if (!FileUtil.exist(str4)) {
                sb = new StringBuilder();
            }
            bytes = StringUtil.padRight(this.i, 16).getBytes("UTF-8");
            bytes2 = StringUtil.padRight(this.j, 16).getBytes("UTF-8");
            if (h && m.containsKey(str)) {
                this.k = m.get(str);
            } else {
                if (z) {
                    this.k = new String(CryptoUtil.AESDecrypt16(str3, bytes, bytes2), "UTF-8");
                } else {
                    this.k = FileUtil.read(str3);
                }
                if (!StringUtil.isEmpty(this.k)) {
                    m.put(str, this.k);
                }
            }
            if (h && m.containsKey(str2)) {
                this.l = m.get(str2);
                return;
            }
            if (z) {
                this.l = new String(CryptoUtil.AESDecrypt16(str4, bytes, bytes2), "UTF-8");
            } else {
                this.l = FileUtil.read(str4);
            }
            if (StringUtil.isEmpty(this.l)) {
            }
            m.put(str2, this.l);
        }
        FileUtil.copyAssertThrow(context, "shader/" + str, str3);
        sb = new StringBuilder();
        sb.append("shader/");
        sb.append(str2);
        FileUtil.copyAssertThrow(context, sb.toString(), str4);
        bytes = StringUtil.padRight(this.i, 16).getBytes("UTF-8");
        bytes2 = StringUtil.padRight(this.j, 16).getBytes("UTF-8");
        if (h) {
            if (z) {
                this.k = new String(CryptoUtil.AESDecrypt16(str3, bytes, bytes2), "UTF-8");
            } else {
                this.k = FileUtil.read(str3);
            }
            if (!StringUtil.isEmpty(this.k)) {
                m.put(str, this.k);
            }
        } else {
            if (z) {
                this.k = new String(CryptoUtil.AESDecrypt16(str3, bytes, bytes2), "UTF-8");
            } else {
                this.k = FileUtil.read(str3);
            }
            if (!StringUtil.isEmpty(this.k)) {
                m.put(str, this.k);
            }
        }
        if (h) {
        }
        if (z) {
            this.l = new String(CryptoUtil.AESDecrypt16(str4, bytes, bytes2), "UTF-8");
        } else {
            this.l = FileUtil.read(str4);
        }
        if (StringUtil.isEmpty(this.l)) {
            m.put(str2, this.l);
        }
    }

    private void c(Context context, String str, String str2, boolean z) throws IOException {
        byte[] bytes = StringUtil.padRight(this.i, 16).getBytes("UTF-8");
        byte[] bytes2 = StringUtil.padRight(this.j, 16).getBytes("UTF-8");
        if (m.containsKey(str)) {
            this.k = m.get(str);
        } else {
            if (z) {
                InputStream inputStreamOpen = context.getAssets().open("shader/" + str);
                this.k = new String(CryptoUtil.AESDecrypt16(inputStreamOpen, bytes, bytes2), "UTF-8");
                f.a(inputStreamOpen);
            } else {
                this.k = FileUtil.readAssert(context, "shader/" + str);
            }
            if (!StringUtil.isEmpty(this.k)) {
                m.put(str, this.k);
            }
        }
        if (m.containsKey(str2)) {
            this.l = m.get(str2);
            return;
        }
        if (z) {
            InputStream inputStreamOpen2 = context.getAssets().open("shader/" + str2);
            this.l = new String(CryptoUtil.AESDecrypt16(inputStreamOpen2, bytes, bytes2), "UTF-8");
            f.a(inputStreamOpen2);
        } else {
            this.l = FileUtil.readAssert(context, "shader/" + str2);
        }
        if (StringUtil.isEmpty(this.l)) {
            return;
        }
        m.put(str2, this.l);
    }

    @Override
    public void a(int i, float[] fArr) {
        e();
        GLES20.glUniform1i(a("vTexture"), 0);
        GLES20.glBindBuffer(34962, this.c);
        GLES20.glEnableVertexAttribArray(a("vPosition"));
        GLES20.glVertexAttribPointer(a("vPosition"), 3, 5126, false, 20, 0);
        GLES20.glEnableVertexAttribArray(a("vCoordinate"));
        GLES20.glVertexAttribPointer(a("vCoordinate"), 2, 5126, false, 20, 12);
        GLES20.glActiveTexture(33984);
        GLES20.glBindTexture(3553, i);
        GLES20.glDrawArrays(5, 0, com.hunantv.media.player.d.a.b.b);
        d();
        GLES20.glDisableVertexAttribArray(a("vPosition"));
        GLES20.glDisableVertexAttribArray(a("vCoordinate"));
        GLES20.glBindTexture(3553, 0);
        GLES20.glBindBuffer(34962, 0);
    }

    public void a(Context context, String str, String str2, boolean z) throws Throwable {
        String str3;
        if (context == null || str == null || str2 == null) {
            throw new IOException("filter params [" + context + StringUtils.COMMA + str + StringUtils.COMMA + str2 + "]");
        }
        if (h) {
            g = true;
            f = true;
            z = false;
        }
        if (g) {
            b(context, str, str2, z);
        } else {
            c(context, str, str2, z);
        }
        if (h) {
            Log.d(b(), this.k);
            Log.d(b(), this.l);
        }
        String str4 = this.k;
        if (str4 != null && (str3 = this.l) != null) {
            if (str4 == null || str3 == null) {
                return;
            }
            a(str4, str3);
            return;
        }
        throw new IOException("shader file read invalid. mVertexScript:" + this.k + ",mFragmentScript:" + this.l);
    }
}
