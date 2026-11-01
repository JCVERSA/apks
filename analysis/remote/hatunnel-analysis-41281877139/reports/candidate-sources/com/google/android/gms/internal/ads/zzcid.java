package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.opengl.GLES20;
import android.opengl.GLUtils;
import app.fast.ssh.ProtectedFastSSH;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.util.concurrent.CountDownLatch;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.egl.EGLSurface;

public final class zzcid extends Thread implements SurfaceTexture.OnFrameAvailableListener, zzcib {
    private static final float[] zza = {-1.0f, -1.0f, -1.0f, 1.0f, -1.0f, -1.0f, -1.0f, 1.0f, -1.0f, 1.0f, 1.0f, -1.0f};
    private volatile boolean zzA;
    private volatile boolean zzB;
    private final zzcic zzb;
    private final float[] zzc;
    private final float[] zzd;
    private final float[] zze;
    private final float[] zzf;
    private final float[] zzg;
    private final float[] zzh;
    private final float[] zzi;
    private float zzj;
    private float zzk;
    private float zzl;
    private int zzm;
    private int zzn;
    private SurfaceTexture zzo;
    private SurfaceTexture zzp;
    private int zzq;
    private int zzr;
    private int zzs;
    private final FloatBuffer zzt;
    private final CountDownLatch zzu;
    private final Object zzv;
    private EGL10 zzw;
    private EGLDisplay zzx;
    private EGLContext zzy;
    private EGLSurface zzz;

    public zzcid(Context context) {
        super(ProtectedFastSSH.s("底"));
        float[] fArr = zza;
        int length = fArr.length;
        FloatBuffer floatBufferAsFloatBuffer = ByteBuffer.allocateDirect(48).order(ByteOrder.nativeOrder()).asFloatBuffer();
        this.zzt = floatBufferAsFloatBuffer;
        floatBufferAsFloatBuffer.put(fArr).position(0);
        this.zzc = new float[9];
        this.zzd = new float[9];
        this.zze = new float[9];
        this.zzf = new float[9];
        this.zzg = new float[9];
        this.zzh = new float[9];
        this.zzi = new float[9];
        this.zzj = Float.NaN;
        zzcic zzcicVar = new zzcic(context);
        this.zzb = zzcicVar;
        zzcicVar.zzc(this);
        this.zzu = new CountDownLatch(1);
        this.zzv = new Object();
    }

    private static final void zzh(String str) {
        int iGlGetError = GLES20.glGetError();
        if (iGlGetError != 0) {
            StringBuilder sb = new StringBuilder(str.length() + 10 + String.valueOf(iGlGetError).length());
            sb.append(str);
            sb.append(ProtectedFastSSH.s("庖"));
            sb.append(iGlGetError);
            sb.toString();
            ProtectedFastSSH.s("店");
        }
    }

    private static final void zzi(float[] fArr, float[] fArr2, float[] fArr3) {
        float f = fArr2[0] * fArr3[0];
        float f2 = fArr2[1];
        float f3 = fArr3[3];
        float f4 = fArr2[2];
        float f5 = fArr3[6];
        fArr[0] = f + (f2 * f3) + (f4 * f5);
        float f6 = fArr2[0];
        float f7 = fArr3[1] * f6;
        float f8 = fArr3[4];
        float f9 = fArr3[7];
        fArr[1] = f7 + (f2 * f8) + (f4 * f9);
        float f10 = f6 * fArr3[2];
        float f11 = fArr2[1];
        float f12 = fArr3[5];
        float f13 = fArr3[8];
        fArr[2] = f10 + (f11 * f12) + (f4 * f13);
        float f14 = fArr2[3];
        float f15 = fArr3[0];
        float f16 = fArr2[4];
        float f17 = fArr2[5];
        fArr[3] = (f14 * f15) + (f3 * f16) + (f17 * f5);
        float f18 = fArr2[3];
        float f19 = fArr3[1];
        fArr[4] = (f18 * f19) + (f16 * f8) + (f17 * f9);
        float f20 = fArr3[2];
        fArr[5] = (f18 * f20) + (fArr2[4] * f12) + (f17 * f13);
        float f21 = fArr2[6] * f15;
        float f22 = fArr2[7];
        float f23 = fArr3[3] * f22;
        float f24 = fArr2[8];
        fArr[6] = f21 + f23 + (f5 * f24);
        float f25 = fArr2[6];
        fArr[7] = (f19 * f25) + (f22 * fArr3[4]) + (f9 * f24);
        fArr[8] = (f25 * f20) + (fArr2[7] * fArr3[5]) + (f24 * f13);
    }

    private static final void zzj(float[] fArr, float f) {
        fArr[0] = 1.0f;
        fArr[1] = 0.0f;
        fArr[2] = 0.0f;
        fArr[3] = 0.0f;
        double d = f;
        fArr[4] = (float) Math.cos(d);
        fArr[5] = (float) (-Math.sin(d));
        fArr[6] = 0.0f;
        fArr[7] = (float) Math.sin(d);
        fArr[8] = (float) Math.cos(d);
    }

    private static final void zzk(float[] fArr, float f) {
        double d = f;
        fArr[0] = (float) Math.cos(d);
        fArr[1] = (float) (-Math.sin(d));
        fArr[2] = 0.0f;
        fArr[3] = (float) Math.sin(d);
        fArr[4] = (float) Math.cos(d);
        fArr[5] = 0.0f;
        fArr[6] = 0.0f;
        fArr[7] = 0.0f;
        fArr[8] = 1.0f;
    }

    private static final int zzl(int i, String str) {
        int iGlCreateShader = GLES20.glCreateShader(i);
        zzh(ProtectedFastSSH.s("庘"));
        if (iGlCreateShader != 0) {
            GLES20.glShaderSource(iGlCreateShader, str);
            zzh(ProtectedFastSSH.s("庙"));
            GLES20.glCompileShader(iGlCreateShader);
            zzh(ProtectedFastSSH.s("庚"));
            int[] iArr = new int[1];
            GLES20.glGetShaderiv(iGlCreateShader, 35713, iArr, 0);
            zzh(ProtectedFastSSH.s("庛"));
            if (iArr[0] == 0) {
                StringBuilder sb = new StringBuilder(String.valueOf(i).length() + 26);
                sb.append(ProtectedFastSSH.s("府"));
                sb.append(i);
                sb.append(ProtectedFastSSH.s("庝"));
                sb.toString();
                ProtectedFastSSH.s("店");
                GLES20.glGetShaderInfoLog(iGlCreateShader);
                GLES20.glDeleteShader(iGlCreateShader);
                zzh(ProtectedFastSSH.s("庞"));
                return 0;
            }
        }
        return iGlCreateShader;
    }

    @Override
    public final void onFrameAvailable(SurfaceTexture surfaceTexture) {
        this.zzs++;
        Object obj = this.zzv;
        synchronized (obj) {
            obj.notifyAll();
        }
    }

    /* JADX WARN: Code duplicated, block: B:38:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:6:0x001e  */
    @Override
    public final void run() {
        boolean z;
        int iGlCreateProgram;
        if (this.zzp == null) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzf(ProtectedFastSSH.s("庹"));
            this.zzu.countDown();
            return;
        }
        EGL10 egl10 = (EGL10) EGLContext.getEGL();
        this.zzw = egl10;
        EGLDisplay eGLDisplayEglGetDisplay = egl10.eglGetDisplay(EGL10.EGL_DEFAULT_DISPLAY);
        this.zzx = eGLDisplayEglGetDisplay;
        if (eGLDisplayEglGetDisplay != EGL10.EGL_NO_DISPLAY && this.zzw.eglInitialize(this.zzx, new int[2])) {
            int[] iArr = new int[1];
            EGLConfig[] eGLConfigArr = new EGLConfig[1];
            EGLConfig eGLConfig = (this.zzw.eglChooseConfig(this.zzx, new int[]{12352, 4, 12324, 8, 12323, 8, 12322, 8, 12325, 16, 12344}, eGLConfigArr, 1, iArr) && iArr[0] > 0) ? eGLConfigArr[0] : null;
            if (eGLConfig == null) {
                z = false;
            } else {
                EGLContext eGLContextEglCreateContext = this.zzw.eglCreateContext(this.zzx, eGLConfig, EGL10.EGL_NO_CONTEXT, new int[]{12440, 2, 12344});
                this.zzy = eGLContextEglCreateContext;
                if (eGLContextEglCreateContext == null || eGLContextEglCreateContext == EGL10.EGL_NO_CONTEXT) {
                    z = false;
                } else {
                    EGLSurface eGLSurfaceEglCreateWindowSurface = this.zzw.eglCreateWindowSurface(this.zzx, eGLConfig, this.zzp, null);
                    this.zzz = eGLSurfaceEglCreateWindowSurface;
                    if (eGLSurfaceEglCreateWindowSurface == null || eGLSurfaceEglCreateWindowSurface == EGL10.EGL_NO_SURFACE) {
                        z = false;
                    } else {
                        EGL10 egl11 = this.zzw;
                        EGLDisplay eGLDisplay = this.zzx;
                        EGLSurface eGLSurface = this.zzz;
                        if (egl11.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, this.zzy)) {
                            z = true;
                        } else {
                            z = false;
                        }
                    }
                }
            }
        } else {
            z = false;
        }
        zzbix zzbixVar = zzbjg.zzca;
        int iZzl = zzl(35633, !((String) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbixVar)).equals(zzbixVar.zzf()) ? (String) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbixVar) : ProtectedFastSSH.s("废"));
        if (iZzl == 0) {
            iGlCreateProgram = 0;
        } else {
            zzbix zzbixVar2 = zzbjg.zzcb;
            int iZzl2 = zzl(35632, !((String) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbixVar2)).equals(zzbixVar2.zzf()) ? (String) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbixVar2) : ProtectedFastSSH.s("庠"));
            if (iZzl2 == 0) {
                iGlCreateProgram = 0;
            } else {
                String strS = ProtectedFastSSH.s("庡");
                iGlCreateProgram = GLES20.glCreateProgram();
                zzh(strS);
                if (iGlCreateProgram != 0) {
                    GLES20.glAttachShader(iGlCreateProgram, iZzl);
                    zzh(ProtectedFastSSH.s("庢"));
                    GLES20.glAttachShader(iGlCreateProgram, iZzl2);
                    zzh(ProtectedFastSSH.s("庢"));
                    GLES20.glLinkProgram(iGlCreateProgram);
                    zzh(ProtectedFastSSH.s("庣"));
                    int[] iArr2 = new int[1];
                    GLES20.glGetProgramiv(iGlCreateProgram, 35714, iArr2, 0);
                    zzh(ProtectedFastSSH.s("庤"));
                    if (iArr2[0] != 1) {
                        ProtectedFastSSH.s("店");
                        ProtectedFastSSH.s("庥");
                        GLES20.glGetProgramInfoLog(iGlCreateProgram);
                        ProtectedFastSSH.s("店");
                        GLES20.glDeleteProgram(iGlCreateProgram);
                        zzh(ProtectedFastSSH.s("度"));
                        iGlCreateProgram = 0;
                    } else {
                        GLES20.glValidateProgram(iGlCreateProgram);
                        zzh(ProtectedFastSSH.s("座"));
                    }
                }
            }
        }
        this.zzq = iGlCreateProgram;
        GLES20.glUseProgram(iGlCreateProgram);
        zzh(ProtectedFastSSH.s("庨"));
        int iGlGetAttribLocation = GLES20.glGetAttribLocation(this.zzq, ProtectedFastSSH.s("庩"));
        GLES20.glVertexAttribPointer(iGlGetAttribLocation, 3, 5126, false, 12, (Buffer) this.zzt);
        zzh(ProtectedFastSSH.s("庪"));
        GLES20.glEnableVertexAttribArray(iGlGetAttribLocation);
        zzh(ProtectedFastSSH.s("庫"));
        int[] iArr3 = new int[1];
        GLES20.glGenTextures(1, iArr3, 0);
        zzh(ProtectedFastSSH.s("庬"));
        int i2 = iArr3[0];
        GLES20.glBindTexture(36197, i2);
        zzh(ProtectedFastSSH.s("庭"));
        GLES20.glTexParameteri(36197, 10240, 9729);
        zzh(ProtectedFastSSH.s("庮"));
        GLES20.glTexParameteri(36197, 10241, 9729);
        zzh(ProtectedFastSSH.s("庮"));
        GLES20.glTexParameteri(36197, 10242, 33071);
        zzh(ProtectedFastSSH.s("庮"));
        GLES20.glTexParameteri(36197, 10243, 33071);
        zzh(ProtectedFastSSH.s("庮"));
        int iGlGetUniformLocation = GLES20.glGetUniformLocation(this.zzq, ProtectedFastSSH.s("庯"));
        this.zzr = iGlGetUniformLocation;
        GLES20.glUniformMatrix3fv(iGlGetUniformLocation, 1, false, new float[]{1.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 1.0f}, 0);
        int i3 = this.zzq;
        if (!z || i3 == 0) {
            String eGLErrorString = GLUtils.getEGLErrorString(this.zzw.eglGetError());
            String.valueOf(eGLErrorString);
            String strValueOf = String.valueOf(eGLErrorString);
            int i4 = com.google.android.gms.ads.internal.util.zze.zza;
            String strConcat = ProtectedFastSSH.s("康").concat(strValueOf);
            com.google.android.gms.ads.internal.util.client.zzo.zzf(strConcat);
            com.google.android.gms.ads.internal.zzt.zzh().zzh(new Throwable(strConcat), ProtectedFastSSH.s("庸"));
            zzg();
            this.zzu.countDown();
            return;
        }
        SurfaceTexture surfaceTexture = new SurfaceTexture(i2);
        this.zzo = surfaceTexture;
        surfaceTexture.setOnFrameAvailableListener(this);
        this.zzu.countDown();
        zzcic zzcicVar = this.zzb;
        zzcicVar.zza();
        try {
            try {
                try {
                    this.zzA = true;
                    while (!this.zzB) {
                        while (this.zzs > 0) {
                            this.zzo.updateTexImage();
                            this.zzs--;
                        }
                        float[] fArr = this.zzc;
                        if (zzcicVar.zze(fArr)) {
                            if (Float.isNaN(this.zzj)) {
                                float[] fArr2 = {0.0f, 1.0f, 0.0f};
                                float f = fArr[0];
                                float f2 = fArr2[0];
                                float f3 = fArr[1];
                                float f4 = fArr2[1];
                                float[] fArr3 = {(f * f2) + (f3 * f4) + (fArr[2] * 0.0f), (fArr[3] * f2) + (fArr[4] * f4) + (fArr[5] * 0.0f), (fArr[6] * f2) + (fArr[7] * f4) + (fArr[8] * 0.0f)};
                                this.zzj = -(((float) Math.atan2(fArr3[1], fArr3[0])) - 1.5707964f);
                            }
                            zzk(this.zzh, this.zzj + this.zzk);
                        } else {
                            zzj(fArr, -1.5707964f);
                            zzk(this.zzh, this.zzk);
                        }
                        float[] fArr4 = this.zzd;
                        zzj(fArr4, 1.5707964f);
                        float[] fArr5 = this.zze;
                        zzi(fArr5, this.zzh, fArr4);
                        float[] fArr6 = this.zzf;
                        zzi(fArr6, fArr, fArr5);
                        float[] fArr7 = this.zzg;
                        zzj(fArr7, this.zzl);
                        float[] fArr8 = this.zzi;
                        zzi(fArr8, fArr7, fArr6);
                        GLES20.glUniformMatrix3fv(this.zzr, 1, false, fArr8, 0);
                        GLES20.glDrawArrays(5, 0, 4);
                        zzh(ProtectedFastSSH.s("庰"));
                        GLES20.glFinish();
                        this.zzw.eglSwapBuffers(this.zzx, this.zzz);
                        if (this.zzA) {
                            GLES20.glViewport(0, 0, this.zzn, this.zzm);
                            zzh(ProtectedFastSSH.s("庱"));
                            int iGlGetUniformLocation2 = GLES20.glGetUniformLocation(this.zzq, ProtectedFastSSH.s("庲"));
                            int iGlGetUniformLocation3 = GLES20.glGetUniformLocation(this.zzq, ProtectedFastSSH.s("庳"));
                            int i5 = this.zzn;
                            int i6 = this.zzm;
                            if (i5 > i6) {
                                GLES20.glUniform1f(iGlGetUniformLocation2, 0.87266463f);
                                GLES20.glUniform1f(iGlGetUniformLocation3, (this.zzm * 0.87266463f) / this.zzn);
                            } else {
                                GLES20.glUniform1f(iGlGetUniformLocation2, (i5 * 0.87266463f) / i6);
                                GLES20.glUniform1f(iGlGetUniformLocation3, 0.87266463f);
                            }
                            this.zzA = false;
                        }
                        try {
                            Object obj = this.zzv;
                            synchronized (obj) {
                                try {
                                    if (!this.zzB && !this.zzA && this.zzs == 0) {
                                        obj.wait();
                                    }
                                } catch (Throwable th) {
                                    throw th;
                                }
                            }
                        } catch (InterruptedException unused) {
                        }
                    }
                } catch (IllegalStateException unused2) {
                    String strS2 = ProtectedFastSSH.s("庶");
                    int i7 = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzi(strS2);
                }
            } catch (Throwable th2) {
                String strS3 = ProtectedFastSSH.s("庴");
                int i8 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzg(strS3, th2);
                com.google.android.gms.ads.internal.zzt.zzh().zzh(th2, ProtectedFastSSH.s("庵"));
            }
            this.zzb.zzb();
            this.zzo.setOnFrameAvailableListener(null);
            this.zzo = null;
            zzg();
        } catch (Throwable th3) {
            this.zzb.zzb();
            this.zzo.setOnFrameAvailableListener(null);
            this.zzo = null;
            zzg();
            throw th3;
        }
    }

    @Override
    public final void zza() {
        Object obj = this.zzv;
        synchronized (obj) {
            obj.notifyAll();
        }
    }

    public final void zzb(SurfaceTexture surfaceTexture, int i, int i2) {
        this.zzn = i;
        this.zzm = i2;
        this.zzp = surfaceTexture;
    }

    public final void zzc(int i, int i2) {
        Object obj = this.zzv;
        synchronized (obj) {
            this.zzn = i;
            this.zzm = i2;
            this.zzA = true;
            obj.notifyAll();
        }
    }

    public final void zzd() {
        Object obj = this.zzv;
        synchronized (obj) {
            this.zzB = true;
            this.zzp = null;
            obj.notifyAll();
        }
    }

    public final SurfaceTexture zze() {
        if (this.zzp == null) {
            return null;
        }
        try {
            this.zzu.await();
        } catch (InterruptedException unused) {
        }
        return this.zzo;
    }

    public final void zzf(float f, float f2) {
        int i = this.zzn;
        int i2 = this.zzm;
        if (i <= i2) {
            i = i2;
        }
        float f3 = i;
        this.zzk -= (f * 1.7453293f) / f3;
        float f4 = this.zzl - ((f2 * 1.7453293f) / f3);
        this.zzl = f4;
        if (f4 < -1.5707964f) {
            this.zzl = -1.5707964f;
            f4 = -1.5707964f;
        }
        if (f4 > 1.5707964f) {
            this.zzl = 1.5707964f;
        }
    }

    final boolean zzg() {
        EGLSurface eGLSurface = this.zzz;
        boolean zEglDestroyContext = false;
        if (eGLSurface != null && eGLSurface != EGL10.EGL_NO_SURFACE) {
            zEglDestroyContext = this.zzw.eglDestroySurface(this.zzx, this.zzz) | this.zzw.eglMakeCurrent(this.zzx, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_CONTEXT);
            this.zzz = null;
        }
        EGLContext eGLContext = this.zzy;
        if (eGLContext != null) {
            zEglDestroyContext |= this.zzw.eglDestroyContext(this.zzx, eGLContext);
            this.zzy = null;
        }
        EGLDisplay eGLDisplay = this.zzx;
        if (eGLDisplay == null) {
            return zEglDestroyContext;
        }
        boolean zEglTerminate = this.zzw.eglTerminate(eGLDisplay) | zEglDestroyContext;
        this.zzx = null;
        return zEglTerminate;
    }
}
