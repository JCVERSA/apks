package com.mgtv.a.c;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.request.target.SimpleTarget;
import com.bumptech.glide.request.transition.Transition;
import com.mgadplus.mgutil.SourceKitLogger;
import com.mgmi.R;
import com.mgmi.ads.api.render.MySimpleDraweeView;
import com.mgmi.model.VASTAd;
import com.mgmi.model.m;
import com.transsion.audiotagger.tag.id3.valuepair.ImageFormats;
import defpackage.aud;
import defpackage.ckd;
import defpackage.ey4;
import defpackage.j4d;
import defpackage.lbd;
import defpackage.sed;
import java.io.File;

public class f extends a {
    protected boolean s;
    private boolean t = false;
    private boolean u = false;
    private FrameLayout v;
    private MySimpleDraweeView w;
    private ImageView x;

    public void c(boolean z) {
        this.t = z;
    }

    @Override
    public void g() {
        int i = this.d;
        if (i == 2) {
            this.c++;
            this.d = 0;
        } else {
            this.d = i + 1;
        }
        int i2 = this.c;
        int i3 = this.b;
        if (i2 >= i3) {
            e eVar = this.q;
            if (eVar != null) {
                eVar.g();
            }
            f();
            return;
        }
        e eVar2 = this.q;
        if (eVar2 != null) {
            eVar2.a(i2 * 1000, i3);
        }
        a(500L);
    }

    @Override
    public boolean i() {
        return this.s;
    }

    @Override
    public void q() {
        this.s = false;
        super.q();
    }

    public String s() {
        m mVar = this.o;
        return (mVar == null || !(mVar.h() instanceof VASTAd) || ((VASTAd) this.o.h()).getCurrentStaticResource() == null) ? "" : ((VASTAd) this.o.h()).getCurrentStaticResource().getMd5();
    }

    public static boolean b(String str) {
        return str.endsWith("gif") || str.endsWith(ImageFormats.V22_GIF_FORMAT);
    }

    @Override
    public void a(Context context) {
        if (!this.t) {
            MySimpleDraweeView mySimpleDraweeView = new MySimpleDraweeView(context);
            this.w = mySimpleDraweeView;
            mySimpleDraweeView.setScaleType(ImageView.ScaleType.FIT_XY);
        } else {
            FrameLayout frameLayout = (FrameLayout) LayoutInflater.from(context).inflate(R.layout.layout_blur_image, (ViewGroup) null);
            this.v = frameLayout;
            this.w = (MySimpleDraweeView) frameLayout.findViewById(R.id.style_ad_ivImage);
            this.x = (ImageView) this.v.findViewById(R.id.fl_bg_image);
        }
    }

    @Override
    public void c() {
        super.c();
        if (this.w == null || TextUtils.isEmpty(this.m)) {
            return;
        }
        if (this.t) {
            e eVar = this.q;
            if (eVar != null) {
                eVar.b();
            }
            if (b(this.m)) {
                ey4.d(this.w, Uri.parse(this.m), lbd.c(this.m, lbd.E).t(), new ckd() {
                    public void a() {
                        try {
                            f.this.e();
                            f.this.g();
                            f fVar = f.this;
                            fVar.s = true;
                            e eVar2 = fVar.q;
                            if (eVar2 != null) {
                                eVar2.d();
                            }
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }

                    public void b() {
                        f fVar = f.this;
                        e eVar2 = fVar.q;
                        if (eVar2 != null) {
                            eVar2.a(fVar.m, 301005, "");
                        }
                    }
                });
                return;
            } else {
                ey4.d(this.w, Uri.parse(this.m), lbd.c(this.m, lbd.E).o(new SimpleTarget<Bitmap>() {
                    @Override
                    public void onResourceReady(@NonNull Bitmap bitmap, @Nullable Transition<? super Bitmap> transition) {
                        try {
                            if (bitmap == null) {
                                f fVar = f.this;
                                e eVar2 = fVar.q;
                                if (eVar2 != null) {
                                    eVar2.a(fVar.m, 301005, "");
                                    return;
                                }
                                return;
                            }
                            f.this.x.setImageBitmap(com.mgmi.f.c.a(f.this.x.getContext().getApplicationContext(), bitmap, 20.0f));
                            f.this.w.setImageBitmap(bitmap);
                            f.this.e();
                            f.this.g();
                            f fVar2 = f.this;
                            fVar2.s = true;
                            e eVar3 = fVar2.q;
                            if (eVar3 != null) {
                                eVar3.d();
                            }
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                }).t(), new ckd() {
                    public void a() {
                    }

                    public void b() {
                        f fVar = f.this;
                        e eVar2 = fVar.q;
                        if (eVar2 != null) {
                            eVar2.a(fVar.m, 301005, "");
                        }
                    }
                });
                return;
            }
        }
        String strA = com.mgmi.b.c.a().a(this.m);
        if (!TextUtils.isEmpty(strA)) {
            File file = new File(strA);
            if (file.exists()) {
                SourceKitLogger.a("SspImagePlayer", "AdsRender exists exists");
                a(this.w, file);
                return;
            }
        }
        a(com.mgmi.ads.api.c.a(), this.w);
    }

    @Override
    public View a() {
        if (this.t) {
            return this.v;
        }
        return this.w;
    }

    @Override
    public boolean a(String str) {
        return super.a(str);
    }

    public void a(ImageView imageView, File file) {
        m mVar;
        BitmapFactory.Options options = new BitmapFactory.Options();
        String absolutePath = file.getAbsolutePath();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(absolutePath, options);
        SourceKitLogger.a("SspImagePlayer", "loadLocalFile file width" + options.outWidth + "height=" + options.outHeight);
        if (this.u && (mVar = this.o) != null && (mVar.h() instanceof VASTAd) && !a((VASTAd) this.o.h(), options.outWidth, options.outHeight)) {
            e eVar = this.q;
            if (eVar != null) {
                eVar.a(this.m, 301004, "");
                return;
            }
            return;
        }
        if (a(file, s()) != null) {
            e eVar2 = this.q;
            if (eVar2 != null) {
                eVar2.a(this.m, 302001, "");
                return;
            }
            return;
        }
        e eVar3 = this.q;
        if (eVar3 != null) {
            eVar3.b();
        }
        ey4.a(imageView, file, c(this.m), new ckd() {
            public void a() {
                f.this.e();
                f.this.g();
                f fVar = f.this;
                fVar.s = true;
                e eVar4 = fVar.q;
                if (eVar4 != null) {
                    eVar4.d();
                }
            }

            public void b() {
                f fVar = f.this;
                e eVar4 = fVar.q;
                if (eVar4 != null) {
                    eVar4.a(fVar.m, 301005, "");
                }
            }
        });
    }

    private lbd c(String str) {
        if (this.j) {
            if (this.e != 0) {
                return lbd.c(str, lbd.E).R(true).M(this.k).z(this.f).G(this.e).t();
            }
            return lbd.c(str, lbd.E).R(true).M(this.k).z(this.f).t();
        }
        return lbd.c(str, lbd.E).M(this.k).z(this.f).t();
    }

    public void a(@NonNull Context context, final ImageView imageView) {
        if (context == null) {
            return;
        }
        ey4.b(context, this.m, new sed() {
            @Override
            public void a(final File file) throws Throwable {
                com.mgmi.b.c.a().a(f.this.m, file.getAbsolutePath());
                if (f.this.w != null) {
                    f.this.w.post(new Runnable() {
                        @Override
                        public void run() {
                            File file2 = file;
                            if (file2 != null && file2.exists()) {
                                AnonymousClass5 anonymousClass5 = AnonymousClass5.this;
                                f.this.a(imageView, file);
                                return;
                            }
                            f fVar = f.this;
                            e eVar = fVar.q;
                            if (eVar != null) {
                                eVar.a(fVar.m, 301007, "");
                            }
                        }
                    });
                }
            }

            @Override
            public void a() {
                j4d.c(new Runnable() {
                    @Override
                    public void run() {
                        f fVar = f.this;
                        e eVar = fVar.q;
                        if (eVar != null) {
                            eVar.a(fVar.m, 301007, "");
                        }
                    }
                }, 0L);
            }
        });
    }

    public boolean a(VASTAd vASTAd, int i, int i2) {
        if (i <= 0 || i2 <= 0) {
            return false;
        }
        return ((double) Math.abs(((vASTAd.getCurrentStaticResource().getHeight() <= 0 || vASTAd.getCurrentStaticResource().getWidth() <= 0) ? 3.5825243f : ((float) vASTAd.getCurrentStaticResource().getWidth()) / ((float) vASTAd.getCurrentStaticResource().getHeight())) - (((float) i) / ((float) i2)))) <= 0.1d;
    }

    private String a(File file, String str) {
        return aud.b(file, str);
    }
}
