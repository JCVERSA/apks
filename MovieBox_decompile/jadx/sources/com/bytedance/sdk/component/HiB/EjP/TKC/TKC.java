package com.bytedance.sdk.component.HiB.EjP.TKC;

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
import java.util.ArrayList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;

public class TKC implements uA {
    private int Dq;
    private String EjP;
    private volatile boolean Fmk;
    private uvD HiB;
    private Bitmap.Config Jcg;
    private sef LqL;
    private boolean RiZ;
    Future<?> Sj;
    private Dq TEQ;
    private String TKC;
    private final Handler TzV;
    private byte[] Yf;
    private int Ym;
    private boolean Zq;

    private WeakReference<ImageView> f20237aa;
    private int dNu;

    private int f20238dx;

    private com.bytedance.sdk.component.HiB.sP f20239ib;
    private int kF;
    private boolean ley;
    private String sP;
    private com.bytedance.sdk.component.HiB.Jcg sU;
    private boolean sef;
    private int uA;
    private int uP;
    private RiZ uvD;
    private ImageView.ScaleType vS;
    private ExecutorService wE;
    private vS zR;

    private class Sj implements uvD {
        private uvD sP;

        public Sj(uvD uvd) {
            this.sP = uvd;
        }

        @Override
        public void Sj(final Ym ym2) {
            Bitmap bitmapSj;
            final ImageView imageView = (ImageView) TKC.this.f20237aa.get();
            if (imageView != null && TKC.this.Ym != 3 && Sj(imageView) && (ym2.sP() instanceof Bitmap)) {
                final Bitmap bitmap = (Bitmap) ym2.sP();
                TKC.this.TzV.post(new Runnable() {
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
                TKC.this.TzV.postAtFrontOfQueue(new Runnable() {
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
                TKC.this.TzV.post(new Runnable() {
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

        private boolean f20240aa;
        private Dq dNu;

        private boolean f20241dx;
        private ImageView sP;
        private ExecutorService sU;
        private String sef;
        private vS uvD;
        private Bitmap.Config vS;
        private sef zR;
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
            return new TKC(this).dx();
        }

        @Override
        public uA Sj(ImageView imageView) {
            this.sP = imageView;
            return new TKC(this).dx();
        }

        @Override
        public TEQ Sj(Dq dq2) {
            this.dNu = dq2;
            return this;
        }
    }

    public uA dx() {
        try {
            if (this.zR == null) {
                uvD uvd = this.HiB;
                if (uvd != null) {
                    uvd.Sj(1005, "not init !", null);
                }
                return this;
            }
            String strSj = Sj();
            if (TextUtils.isEmpty(strSj)) {
                this.HiB.Sj(2000, "url is empty", null);
                return this;
            }
            dx dxVarHiB = this.zR.HiB();
            if (!strSj.startsWith("http://") && !strSj.startsWith("https://") && dxVarHiB != null) {
                dxVarHiB.Sj(PointerIconCompat.TYPE_CELL, "url is not validate ".concat(strSj));
            }
            ExecutorService executorServiceEjP = this.wE == null ? this.zR.EjP() : null;
            Runnable runnable = new Runnable() {
                @Override
                public void run() {
                    TKC tkc = TKC.this;
                    com.bytedance.sdk.component.HiB.EjP.TKC.Sj sj2 = new com.bytedance.sdk.component.HiB.EjP.TKC.Sj(tkc, tkc.uvD);
                    try {
                        ArrayList arrayList = new ArrayList();
                        arrayList.add(new com.bytedance.sdk.component.HiB.EjP.sP.sP());
                        arrayList.add(new com.bytedance.sdk.component.HiB.EjP.sP.HiB());
                        arrayList.add(new com.bytedance.sdk.component.HiB.EjP.sP.Sj());
                        arrayList.add(new com.bytedance.sdk.component.HiB.EjP.sP.TKC());
                        arrayList.add(new com.bytedance.sdk.component.HiB.EjP.sP.EjP());
                        for (int i10 = 0; i10 < arrayList.size(); i10++) {
                            if (TKC.this.Fmk) {
                                sj2.Sj(1003, "canceled", null);
                                return;
                            }
                            com.bytedance.sdk.component.HiB.EjP.sP.vS vSVar = (com.bytedance.sdk.component.HiB.EjP.sP.vS) arrayList.get(i10);
                            if (TKC.this.uvD != null && vSVar != null && !"data_intercept".equals(vSVar.Sj())) {
                                TKC.this.uvD.Sj(vSVar.Sj(), TKC.this);
                            }
                            TKC tkc2 = TKC.this;
                            boolean zSj = vSVar.Sj(tkc2, tkc2.uvD, sj2);
                            if (TKC.this.uvD != null && !"data_intercept".equals(vSVar.Sj())) {
                                TKC.this.uvD.sP(vSVar.Sj(), TKC.this);
                            }
                            if (!zSj) {
                                return;
                            }
                        }
                    } catch (Throwable th2) {
                        sj2.Sj(2000, th2.getMessage(), th2);
                    }
                }
            };
            if (this.ley) {
                runnable.run();
            } else {
                ExecutorService executorService = this.wE;
                if (executorService != null) {
                    this.Sj = executorService.submit(runnable);
                } else if (executorServiceEjP != null) {
                    this.Sj = executorServiceEjP.submit(runnable);
                }
            }
            return this;
        } catch (Exception e10) {
            Log.e("ImageRequest", e10.getMessage());
        }
    }

    public boolean Fmk() {
        return this.RiZ;
    }

    public sef RiZ() {
        return this.LqL;
    }

    public String TEQ() {
        return this.TKC;
    }

    public com.bytedance.sdk.component.HiB.sP TzV() {
        return this.f20239ib;
    }

    public Bitmap.Config Ym() {
        return this.Jcg;
    }

    public com.bytedance.sdk.component.HiB.Jcg Zq() {
        return this.sU;
    }

    public int aa() {
        return this.Ym;
    }

    public vS dNu() {
        return this.zR;
    }

    public String sU() {
        return TEQ() + aa();
    }

    public byte[] sef() {
        return this.Yf;
    }

    public int uvD() {
        return this.f20238dx;
    }

    private TKC(sP sPVar) {
        this.TzV = new Handler(Looper.getMainLooper());
        this.RiZ = true;
        this.Yf = null;
        this.sP = sPVar.EjP;
        this.HiB = new Sj(sPVar.Sj);
        this.f20237aa = new WeakReference<>(sPVar.sP);
        this.vS = sPVar.HiB;
        this.Jcg = sPVar.vS;
        this.Dq = sPVar.Jcg;
        this.uA = sPVar.Dq;
        this.Ym = sPVar.uA;
        this.dNu = sPVar.TEQ;
        this.uvD = sPVar.Ym;
        this.f20239ib = Sj(sPVar);
        if (!TextUtils.isEmpty(sPVar.TKC)) {
            sP(sPVar.TKC);
            Sj(sPVar.TKC);
        }
        this.sef = sPVar.f20240aa;
        this.Zq = sPVar.Fmk;
        this.zR = sPVar.uvD;
        this.TEQ = sPVar.dNu;
        this.uP = sPVar.RiZ;
        this.kF = sPVar.TzV;
        this.wE = sPVar.sU;
        this.ley = sPVar.f20241dx;
        this.LqL = sPVar.zR;
    }

    private com.bytedance.sdk.component.HiB.sP Sj(sP sPVar) {
        if (sPVar.Zq != null) {
            return sPVar.Zq;
        }
        return !TextUtils.isEmpty(sPVar.sef) ? com.bytedance.sdk.component.HiB.EjP.TKC.Sj.sP.Sj(new File(sPVar.sef)) : com.bytedance.sdk.component.HiB.EjP.TKC.Sj.sP.TEQ();
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
        return this.uP;
    }

    @Override
    public int TKC() {
        return this.uA;
    }

    public void sP(String str) {
        WeakReference<ImageView> weakReference = this.f20237aa;
        if (weakReference != null && weakReference.get() != null) {
            this.f20237aa.get().setTag(1094453505, str);
        }
        this.TKC = str;
    }

    public String uA() {
        return this.EjP;
    }

    public int vS() {
        return this.kF;
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
        this.RiZ = z10;
    }

    public void Sj(byte[] bArr) {
        this.Yf = bArr;
    }

    public void Sj(int i10) {
        this.f20238dx = i10;
    }
}
