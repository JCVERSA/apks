package com.bytedance.sdk.openadsdk.core.TEQ;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.ImageDecoder;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextUtils;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.resource.drawable.c;
import com.bytedance.sdk.component.Dq.Dq;
import com.bytedance.sdk.component.HiB.TEQ;
import com.bytedance.sdk.component.HiB.Ym;
import com.bytedance.sdk.component.HiB.uvD;
import com.bytedance.sdk.component.utils.Jcg;
import com.bytedance.sdk.component.utils.sU;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.utils.JcM;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.nio.ByteBuffer;
import java.util.Map;

public class Sj implements com.bytedance.adsdk.ugeno.Sj {

    public interface InterfaceC0239Sj {
        void Sj(Drawable drawable);
    }

    private static class sP implements uvD {
        private final int EjP;
        private final WeakReference<ImageView> Sj;
        private final int TKC;
        private final Sj sP;

        public sP(ImageView imageView, Sj sj2, int i10, int i11) {
            this.Sj = new WeakReference<>(imageView);
            this.sP = sj2;
            this.TKC = i10;
            this.EjP = i11;
        }

        @Override
        public void Sj(int i10, String str, Throwable th2) {
        }

        @Override
        public void Sj(Ym ym2) {
            try {
                final ImageView imageView = this.Sj.get();
                if (imageView == null) {
                    return;
                }
                final Object objSP = ym2.sP();
                if (!(objSP instanceof byte[])) {
                    if (objSP instanceof Bitmap) {
                        JcM.Sj((Runnable) new Dq("ug_load_bitmap") {
                            @Override
                            public void run() {
                                imageView.setImageBitmap((Bitmap) objSP);
                            }
                        });
                    }
                } else {
                    if (ym2.HiB()) {
                        if (Build.VERSION.SDK_INT <= 30) {
                            this.sP.Sj((byte[]) objSP, imageView);
                            return;
                        } else {
                            this.sP.Sj(imageView, (byte[]) objSP, this.TKC, this.EjP);
                            return;
                        }
                    }
                    if (this.sP.Sj((byte[]) objSP)) {
                        this.sP.Sj(imageView, (byte[]) objSP, this.TKC, this.EjP);
                        return;
                    }
                    final Bitmap bitmapSj = new com.bytedance.sdk.component.HiB.EjP.TKC.sP.Sj(this.TKC, this.EjP, imageView.getScaleType(), Bitmap.Config.RGB_565, this.TKC, this.EjP).Sj((byte[]) objSP);
                    if (bitmapSj != null) {
                        JcM.Sj((Runnable) new Dq("load_static_img") {
                            @Override
                            public void run() {
                                imageView.setImageBitmap(bitmapSj);
                            }
                        });
                    }
                }
            } catch (Throwable th2) {
                sU.sP("ImageLoaderProvider", th2.getMessage());
            }
        }
    }

    private void sP(final ImageView imageView, byte[] bArr, int i10, int i11) {
        final Bitmap bitmapSj = new com.bytedance.sdk.component.HiB.EjP.TKC.sP.Sj(i10, i11, imageView.getScaleType(), Bitmap.Config.ARGB_4444, i10, i11).Sj(bArr);
        if (bitmapSj != null) {
            JcM.Sj((Runnable) new Dq("loadStaticImage") {
                @Override
                public void run() {
                    imageView.setImageBitmap(bitmapSj);
                }
            });
        }
    }

    public Drawable sP(byte[] bArr) {
        FileOutputStream fileOutputStream;
        try {
            boolean zTKC = com.bytedance.sdk.openadsdk.multipro.sP.TKC();
            File fileSj = Jcg.Sj(dNu.Sj(), zTKC, zTKC ? "UGEN_GIF_AD_CACHE/" : "/UGEN_GIF_CACHE/", "TT_UGEN_GIF_FILE");
            fileOutputStream = new FileOutputStream(fileSj);
            try {
                fileOutputStream.write(bArr, 0, bArr.length);
                if (Build.VERSION.SDK_INT >= 28) {
                    Drawable drawableDecodeDrawable = ImageDecoder.decodeDrawable(ImageDecoder.createSource(fileSj));
                    try {
                        fileOutputStream.close();
                    } catch (Throwable unused) {
                    }
                    return drawableDecodeDrawable;
                }
                BitmapDrawable bitmapDrawable = new BitmapDrawable(dNu.Sj().getResources(), BitmapFactory.decodeByteArray(bArr, 0, bArr.length));
                try {
                    fileOutputStream.close();
                } catch (Throwable unused2) {
                }
                return bitmapDrawable;
            } catch (Throwable th2) {
                th = th2;
                try {
                    sU.Sj("ImageLoaderProvider", "GifView  getSourceByFile fail : ", th);
                    return null;
                } finally {
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (Throwable unused3) {
                        }
                    }
                }
            }
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream = null;
        }
    }

    @Override
    public void Sj(com.bytedance.adsdk.ugeno.core.Dq dq2, String str, ImageView imageView, int i10, int i11) {
        String strSj = TKC.Sj(str);
        TEQ teqTKC = com.bytedance.sdk.openadsdk.uA.EjP.Sj(strSj).TKC(1);
        Sj(dq2, teqTKC, strSj);
        teqTKC.Sj(new sP(imageView, this, i10, i11), 4);
    }

    public void Sj(final ImageView imageView, byte[] bArr, int i10, int i11) {
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
        if (Build.VERSION.SDK_INT >= 28) {
            try {
                final Drawable drawableDecodeDrawable = ImageDecoder.decodeDrawable(ImageDecoder.createSource(byteBufferWrap));
                if (drawableDecodeDrawable != null) {
                    JcM.Sj((Runnable) new Dq("loadAnimatedDrawable") {
                        @Override
                        public void run() {
                            imageView.setImageDrawable(drawableDecodeDrawable);
                        }
                    });
                    return;
                }
                return;
            } catch (IOException e10) {
                sU.sP("ImageLoaderProvider", e10.getMessage());
                return;
            }
        }
        sP(imageView, bArr, i10, i11);
    }

    public void Sj(byte[] bArr, final ImageView imageView) {
        try {
            Sj(bArr, new InterfaceC0239Sj() {
                @Override
                public void Sj(final Drawable drawable) {
                    JcM.Sj(new Runnable() {
                        @Override
                        public void run() {
                            if (Build.VERSION.SDK_INT >= 28 && com.bumptech.glide.load.resource.drawable.b.a(drawable)) {
                                c.a(drawable).start();
                            }
                            imageView.setImageDrawable(drawable);
                        }
                    });
                }
            });
        } catch (Exception e10) {
            sU.sP("ImageLoaderProvider", e10.getMessage());
        }
    }

    private void Sj(final byte[] bArr, final InterfaceC0239Sj interfaceC0239Sj) {
        JcM.sP(new Dq("pag_animation_drawable") {
            @Override
            public void run() {
                Drawable drawableSP = Sj.this.sP(bArr);
                InterfaceC0239Sj interfaceC0239Sj2 = interfaceC0239Sj;
                if (interfaceC0239Sj2 != null) {
                    interfaceC0239Sj2.Sj(drawableSP);
                }
            }
        });
    }

    public boolean Sj(byte[] bArr) {
        return com.bytedance.sdk.component.utils.Ym.Sj(bArr, 0);
    }

    public void sP(com.bytedance.adsdk.ugeno.core.Dq dq2, String str, final com.bytedance.adsdk.ugeno.Sj.InterfaceC0180Sj interfaceC0180Sj) {
        TEQ teqTKC = com.bytedance.sdk.openadsdk.uA.EjP.Sj(str).TKC(2);
        Sj(dq2, teqTKC, str);
        teqTKC.Sj(new uvD() {
            @Override
            public void Sj(Ym ym2) {
                if (ym2 == null) {
                    interfaceC0180Sj.Sj(null);
                    return;
                }
                if (interfaceC0180Sj != null) {
                    Object objSP = ym2.sP();
                    if (objSP instanceof Bitmap) {
                        interfaceC0180Sj.Sj((Bitmap) objSP);
                        return;
                    }
                    if (ym2.sP() instanceof byte[]) {
                        try {
                            interfaceC0180Sj.Sj(BitmapFactory.decodeByteArray((byte[]) ym2.sP(), 0, ((byte[]) ym2.sP()).length));
                            return;
                        } catch (Throwable unused) {
                        }
                    }
                    interfaceC0180Sj.Sj(null);
                }
            }

            @Override
            public void Sj(int i10, String str2, Throwable th2) {
                com.bytedance.adsdk.ugeno.Sj.InterfaceC0180Sj interfaceC0180Sj2 = interfaceC0180Sj;
                if (interfaceC0180Sj2 != null) {
                    interfaceC0180Sj2.Sj(null);
                }
            }
        }, 4);
    }

    @Override
    public void Sj(com.bytedance.adsdk.ugeno.core.Dq dq2, String str, com.bytedance.adsdk.ugeno.Sj.InterfaceC0180Sj interfaceC0180Sj) {
        sP(dq2, TKC.Sj(str), interfaceC0180Sj);
    }

    private void Sj(com.bytedance.adsdk.ugeno.core.Dq dq2, @NonNull TEQ teq, String str) {
        Map<String, Object> mapSP;
        if (dq2 == null || (mapSP = dq2.sP()) == null) {
            return;
        }
        Object obj = mapSP.get("image_info");
        if (obj instanceof Map) {
            teq.Sj((String) ((Map) obj).get(str));
        }
        String str2 = (String) mapSP.get("cache_dir");
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        teq.sP(str2);
    }
}
