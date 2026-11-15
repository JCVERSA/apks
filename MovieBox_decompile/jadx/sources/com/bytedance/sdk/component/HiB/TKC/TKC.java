package com.bytedance.sdk.component.HiB.TKC;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import android.widget.ImageView;
import androidx.core.view.PointerIconCompat;
import com.bytedance.sdk.component.HiB.Dq;
import com.bytedance.sdk.component.HiB.RiZ;
import com.bytedance.sdk.component.HiB.TEQ;
import com.bytedance.sdk.component.HiB.Ym;
import com.bytedance.sdk.component.HiB.dx;
import com.bytedance.sdk.component.HiB.sef;
import com.bytedance.sdk.component.HiB.uA;
import com.bytedance.sdk.component.HiB.uvD;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.Queue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;

public class TKC implements uA {
    private int Dq;
    private String EjP;
    private volatile boolean Fmk;
    private uvD HiB;
    private Bitmap.Config Jcg;
    private boolean LD;
    private boolean LqL;
    private final Handler RiZ;
    Future<?> Sj;
    private Dq TEQ;
    private String TKC;
    private Queue<com.bytedance.sdk.component.HiB.HiB.uA> TzV;
    private ExecutorService Yf;
    private int Ym;
    private boolean Zq;

    private WeakReference<ImageView> f20243aa;
    private int dNu;

    private com.bytedance.sdk.component.HiB.Jcg f20244dx;
    private sef fF;

    private vS f20245ib;
    private com.bytedance.sdk.component.HiB.TKC.Sj kF;
    private int ley;
    private String sP;
    private boolean sU;
    private boolean sef;
    private int uA;
    private com.bytedance.sdk.component.HiB.sP uP;
    private RiZ uvD;
    private ImageView.ScaleType vS;
    private int wE;
    private int zR;

    private class Sj implements uvD {
        private uvD sP;

        public Sj(uvD uvd) {
            this.sP = uvd;
        }

        @Override
        public void Sj(final Ym ym2) {
            Bitmap bitmapSj;
            final ImageView imageView = (ImageView) TKC.this.f20243aa.get();
            if (imageView != null && TKC.this.Ym != 3 && Sj(imageView) && (ym2.sP() instanceof Bitmap)) {
                final Bitmap bitmap = (Bitmap) ym2.sP();
                TKC.this.RiZ.post(new Runnable() {
                    @Override
                    public void run() {
                        imageView.setImageBitmap(bitmap);
                    }
                });
            }
            try {
                if (TKC.this.TEQ != null && (ym2.sP() instanceof Bitmap) && (bitmapSj = TKC.this.TEQ.Sj((Bitmap) ym2.sP())) != null) {
                    ym2.Sj(bitmapSj);
                }
            } catch (Throwable unused) {
            }
            if (TKC.this.dNu == 5) {
                TKC.this.RiZ.postAtFrontOfQueue(new Runnable() {
                    @Override
                    public void run() {
                        if (Sj.this.sP != null) {
                            Sj.this.sP.Sj(ym2);
                        }
                    }
                });
                return;
            }
            uvD uvd = this.sP;
            if (uvd != null) {
                uvd.Sj(ym2);
            }
        }

        private boolean Sj(ImageView imageView) {
            Object tag;
            return (imageView == null || (tag = imageView.getTag(1094453505)) == null || !tag.equals(TKC.this.TKC)) ? false : true;
        }

        @Override
        public void Sj(final int i10, final String str, final Throwable th2) {
            if (TKC.this.dNu == 5) {
                TKC.this.RiZ.post(new Runnable() {
                    @Override
                    public void run() {
                        if (Sj.this.sP != null) {
                            Sj.this.sP.Sj(i10, str, th2);
                        }
                    }
                });
                return;
            }
            uvD uvd = this.sP;
            if (uvd != null) {
                uvd.Sj(i10, str, th2);
            }
        }
    }

    public static class sP implements TEQ {
        private int Dq;
        private String EjP;
        private boolean Fmk;
        private ImageView.ScaleType HiB;
        private int Jcg;
        private int RiZ;
        private uvD Sj;
        private String TKC;
        private int TzV;
        private RiZ Ym;
        private com.bytedance.sdk.component.HiB.sP Zq;

        private boolean f20246aa;
        private Dq dNu;

        private ExecutorService f20247dx;

        private sef f20248ib;
        private ImageView sP;
        private boolean sU;
        private String sef;
        private vS uvD;
        private Bitmap.Config vS;
        private boolean zR;
        private int uA = 1;
        private int TEQ = 5;

        public sP(vS vSVar) {
            this.uvD = vSVar;
        }

        @Override
        public TEQ EjP(int i10) {
            this.TzV = i10;
            return this;
        }

        @Override
        public TEQ HiB(int i10) {
            this.RiZ = i10;
            return this;
        }

        @Override
        public TEQ Sj(String str) {
            this.TKC = str;
            return this;
        }

        public TEQ TKC(String str) {
            this.EjP = str;
            return this;
        }

        @Override
        public TEQ sP(int i10) {
            this.Dq = i10;
            return this;
        }

        @Override
        public TEQ Sj(ImageView.ScaleType scaleType) {
            this.HiB = scaleType;
            return this;
        }

        @Override
        public TEQ TKC(int i10) {
            this.uA = i10;
            return this;
        }

        @Override
        public TEQ sP(String str) {
            this.sef = str;
            return this;
        }

        @Override
        public TEQ Sj(Bitmap.Config config) {
            this.vS = config;
            return this;
        }

        @Override
        public TEQ Sj(int i10) {
            this.Jcg = i10;
            return this;
        }

        @Override
        public TEQ Sj(RiZ riZ) {
            this.Ym = riZ;
            return this;
        }

        @Override
        public TEQ Sj(boolean z10) {
            this.Fmk = z10;
            return this;
        }

        @Override
        public uA Sj(uvD uvd, int i10) {
            this.TEQ = i10;
            return Sj(uvd);
        }

        @Override
        public uA Sj(uvD uvd) {
            this.Sj = uvd;
            return new TKC(this).ib();
        }

        @Override
        public uA Sj(ImageView imageView) {
            this.sP = imageView;
            return new TKC(this).ib();
        }

        @Override
        public TEQ Sj(Dq dq2) {
            this.dNu = dq2;
            return this;
        }
    }

    public uA ib() {
        try {
            if (this.f20245ib == null) {
                uvD uvd = this.HiB;
                if (uvd != null) {
                    uvd.Sj(1005, "not init !", null);
                }
                return this;
            }
            String strSj = Sj();
            if (TextUtils.isEmpty(strSj)) {
                uvD uvd2 = this.HiB;
                if (uvd2 != null) {
                    uvd2.Sj(2000, "url is empty", null);
                }
                return this;
            }
            dx dxVarHiB = this.f20245ib.HiB();
            if (!strSj.startsWith("http://") && !strSj.startsWith("https://") && dxVarHiB != null) {
                dxVarHiB.Sj(PointerIconCompat.TYPE_CELL, "url is not validate ".concat(strSj));
            }
            ExecutorService executorServiceJcg = this.Yf == null ? this.f20245ib.Jcg() : null;
            Runnable runnable = new Runnable() {
                @Override
                public void run() {
                    com.bytedance.sdk.component.HiB.HiB.uA uAVar;
                    while (!TKC.this.Fmk && (uAVar = (com.bytedance.sdk.component.HiB.HiB.uA) TKC.this.TzV.poll()) != null) {
                        try {
                            if (TKC.this.uvD != null) {
                                TKC.this.uvD.Sj(uAVar.Sj(), TKC.this);
                            }
                            uAVar.Sj(TKC.this);
                            if (TKC.this.uvD != null) {
                                TKC.this.uvD.sP(uAVar.Sj(), TKC.this);
                            }
                        } catch (Throwable th2) {
                            TKC.this.Sj(2000, th2.getMessage(), th2);
                            if (TKC.this.uvD != null) {
                                TKC.this.uvD.sP("exception", TKC.this);
                                return;
                            }
                            return;
                        }
                    }
                    if (TKC.this.Fmk) {
                        TKC.this.Sj(1003, "canceled", null);
                    }
                }
            };
            if (this.LD) {
                runnable.run();
            } else {
                ExecutorService executorService = this.Yf;
                if (executorService != null) {
                    this.Sj = executorService.submit(runnable);
                } else if (executorServiceJcg != null) {
                    this.Sj = executorServiceJcg.submit(runnable);
                }
            }
            return this;
        } catch (Exception e10) {
            Log.e("ImageRequest", e10.getMessage());
        }
    }

    public boolean Fmk() {
        return this.sef;
    }

    public com.bytedance.sdk.component.HiB.sP RiZ() {
        return this.uP;
    }

    public vS TzV() {
        return this.f20245ib;
    }

    public Bitmap.Config Ym() {
        return this.Jcg;
    }

    public boolean Zq() {
        return this.sU;
    }

    public int aa() {
        return this.Ym;
    }

    public int dNu() {
        return this.zR;
    }

    public sef dx() {
        return this.fF;
    }

    public boolean sU() {
        return this.LqL;
    }

    public boolean sef() {
        return this.Zq;
    }

    public com.bytedance.sdk.component.HiB.Jcg uvD() {
        return this.f20244dx;
    }

    public String zR() {
        return TEQ() + aa();
    }

    private TKC(sP sPVar) {
        this.TzV = new LinkedBlockingQueue();
        this.RiZ = new Handler(Looper.getMainLooper());
        this.sU = true;
        this.sP = sPVar.EjP;
        this.HiB = new Sj(sPVar.Sj);
        this.f20243aa = new WeakReference<>(sPVar.sP);
        this.vS = sPVar.HiB;
        this.Jcg = sPVar.vS;
        this.Dq = sPVar.Jcg;
        this.uA = sPVar.Dq;
        this.Ym = sPVar.uA;
        this.dNu = sPVar.TEQ;
        this.uvD = sPVar.Ym;
        this.uP = Sj(sPVar);
        if (!TextUtils.isEmpty(sPVar.TKC)) {
            sP(sPVar.TKC);
            Sj(sPVar.TKC);
        }
        this.sef = sPVar.f20246aa;
        this.Zq = sPVar.Fmk;
        this.f20245ib = sPVar.uvD;
        this.TEQ = sPVar.dNu;
        this.ley = sPVar.RiZ;
        this.wE = sPVar.TzV;
        this.Yf = sPVar.f20247dx;
        this.LqL = sPVar.sU;
        this.LD = sPVar.zR;
        this.fF = sPVar.f20248ib;
        this.TzV.add(new com.bytedance.sdk.component.HiB.HiB.TKC());
    }

    public uvD Dq() {
        return this.HiB;
    }

    @Override
    public ImageView.ScaleType EjP() {
        return this.vS;
    }

    @Override
    public Bitmap.Config HiB() {
        return this.Jcg;
    }

    public int Jcg() {
        return this.ley;
    }

    public String TEQ() {
        return this.TKC;
    }

    @Override
    public int TKC() {
        return this.uA;
    }

    public void sP(String str) {
        WeakReference<ImageView> weakReference = this.f20243aa;
        if (weakReference != null && weakReference.get() != null) {
            this.f20243aa.get().setTag(1094453505, str);
        }
        this.TKC = str;
    }

    public String uA() {
        return this.EjP;
    }

    public int vS() {
        return this.wE;
    }

    private com.bytedance.sdk.component.HiB.sP Sj(sP sPVar) {
        if (sPVar.Zq != null) {
            return sPVar.Zq;
        }
        if (!TextUtils.isEmpty(sPVar.sef)) {
            return com.bytedance.sdk.component.HiB.TKC.Sj.Sj.Sj(new File(sPVar.sef));
        }
        return com.bytedance.sdk.component.HiB.TKC.Sj.Sj.TEQ();
    }

    @Override
    public int sP() {
        return this.Dq;
    }

    @Override
    public String Sj() {
        return this.sP;
    }

    public void Sj(String str) {
        this.EjP = str;
    }

    public void Sj(boolean z10) {
        this.sU = z10;
    }

    public void Sj(com.bytedance.sdk.component.HiB.Jcg jcg) {
        this.f20244dx = jcg;
    }

    public void Sj(int i10) {
        this.zR = i10;
    }

    public void Sj(com.bytedance.sdk.component.HiB.TKC.Sj sj2) {
        this.kF = sj2;
    }

    public boolean Sj(com.bytedance.sdk.component.HiB.HiB.uA uAVar) {
        if (this.Fmk) {
            return false;
        }
        return this.TzV.add(uAVar);
    }

    public void Sj(int i10, String str, Throwable th2) {
        new com.bytedance.sdk.component.HiB.HiB.Dq(i10, str, th2).Sj(this);
        this.TzV.clear();
    }
}
