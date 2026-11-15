package com.hunantv.media.player.d.a;

import android.opengl.GLES20;
import com.hunantv.media.player.pragma.DebugLog;
import java.util.HashMap;

public class b implements d {
    protected static final float[] a;
    protected static final int b;
    protected int c;
    protected int d;
    protected int e;
    private String f;
    private String g;
    private int h;
    private int i;
    private int j;
    private final HashMap<String, Integer> k;

    static {
        float[] fArr = {-1.0f, 1.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f, 0.0f, 1.0f, 1.0f, -1.0f, -1.0f, 0.0f, 0.0f, 0.0f, 1.0f, -1.0f, 0.0f, 1.0f, 0.0f};
        a = fArr;
        b = fArr.length / 5;
    }

    public b() {
        this("attribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying highp vec2 vTextureCoord;\nvoid main() {\ngl_Position = aPosition;\nvTextureCoord = aTextureCoord.xy;\n}\n", "precision mediump float;\nvarying highp vec2 vTextureCoord;\nuniform lowp sampler2D sTexture;\nvoid main() {\ngl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n");
    }

    public final int a(String str) {
        Integer num = this.k.get(str);
        if (num != null) {
            return num.intValue();
        }
        int iGlGetAttribLocation = GLES20.glGetAttribLocation(this.h, str);
        if (iGlGetAttribLocation == -1) {
            iGlGetAttribLocation = GLES20.glGetUniformLocation(this.h, str);
        }
        if (iGlGetAttribLocation == -1) {
            DebugLog.e(b(), "Could not get attrib or uniform location for " + str);
        }
        this.k.put(str, Integer.valueOf(iGlGetAttribLocation));
        return iGlGetAttribLocation;
    }

    public String b() {
        return getClass().getSimpleName();
    }

    public void c() {
        GLES20.glDeleteProgram(this.h);
        this.h = 0;
        GLES20.glDeleteShader(this.i);
        this.i = 0;
        GLES20.glDeleteShader(this.j);
        this.j = 0;
        GLES20.glDeleteBuffers(1, new int[]{this.c}, 0);
        this.c = 0;
        this.k.clear();
    }

    public void d() {
    }

    public final void e() {
        GLES20.glUseProgram(this.h);
    }

    public final int f() {
        return this.c;
    }

    public String g() {
        return "Normal";
    }

    public int h() {
        return 0;
    }

    public b(String str, String str2) {
        this.k = new HashMap<>();
        a(str, str2);
    }

    public void a() {
        c();
        DebugLog.i(b(), "setup in");
        try {
            this.i = a.a(this.f, 35633);
            int iA = a.a(this.g, 35632);
            this.j = iA;
            this.h = a.a(this.i, iA);
            this.c = a.a(a);
        } catch (Exception e) {
            DebugLog.e(b(), "throw filter setup failed" + e.getMessage());
        }
        DebugLog.i(b(), "setup out");
    }

    public void b(int i, int i2) {
    }

    public void a(int i) {
        e();
        GLES20.glBindBuffer(34962, this.c);
        GLES20.glEnableVertexAttribArray(a("aPosition"));
        GLES20.glVertexAttribPointer(a("aPosition"), 3, 5126, false, 20, 0);
        GLES20.glEnableVertexAttribArray(a("aTextureCoord"));
        GLES20.glVertexAttribPointer(a("aTextureCoord"), 2, 5126, false, 20, 12);
        GLES20.glActiveTexture(33984);
        GLES20.glBindTexture(3553, i);
        GLES20.glUniform1i(a("sTexture"), 0);
        d();
        GLES20.glDrawArrays(5, 0, b);
        GLES20.glDisableVertexAttribArray(a("aPosition"));
        GLES20.glDisableVertexAttribArray(a("aTextureCoord"));
        GLES20.glBindTexture(3553, 0);
        GLES20.glBindBuffer(34962, 0);
    }

    public void a(int i, int i2) {
        this.d = i;
        this.e = i2;
        b(i, i2);
    }

    public void a(int i, float[] fArr) {
        a(i);
    }

    public void a(String str, String str2) {
        this.f = str;
        this.g = str2;
    }
}
