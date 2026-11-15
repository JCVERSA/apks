package com.mgtv.a.d.a.a;

import android.animation.ArgbEvaluator;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Color;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.annotation.NonNull;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.mgadplus.viewgroup.dynamicview.ContainerLayout;
import com.mgmi.R;
import com.mgmi.ads.api.c;
import com.mgmi.f.f;
import com.mgmi.model.Clicks;
import com.mgmi.model.VASTAd;
import com.mgmi.model.VASTChannelAd;
import com.mgmi.platform.view.ViewGroup.widget.ProgressWheel;
import defpackage.dkd;
import defpackage.e6d;
import defpackage.l4d;
import defpackage.w3d;

public class a extends com.mgtv.a.d.b.a<VASTChannelAd> {
    private View A;
    private TextView B;
    private ProgressWheel C;
    private TextView D;
    private e6d E;
    protected ImageView b;
    protected TextView c;
    protected ValueAnimator e;
    private View w;
    private TextView x;
    private TextView y;
    private TextView z;
    protected int a = -1;
    boolean d = false;
    protected Handler f = new Handler(Looper.getMainLooper()) {
        @Override
        public void handleMessage(@NonNull Message message) {
            a.this.k();
        }
    };

    private static int c(VASTAd vASTAd) {
        if (vASTAd == null || vASTAd.getCurrentStaticResource() == null || vASTAd.getCurrentStaticResource().getUrl() == null || TextUtils.isEmpty(vASTAd.getCurrentStaticResource().getUrl())) {
            return -1;
        }
        String type = vASTAd.getCurrentStaticResource().getType();
        if (type != null && "text/html".endsWith(type)) {
            return -2;
        }
        String style = vASTAd.getCurrentStaticResource().getStyle();
        if ((vASTAd.getTitle() != null && !TextUtils.isEmpty(vASTAd.getTitle())) || "12".equalsIgnoreCase(style) || "14".equalsIgnoreCase(style)) {
            if (style == null || TextUtils.isEmpty(style)) {
                return -1;
            }
            if ("0".equals(style)) {
                return 0;
            }
            if (!"1".equals(style)) {
                if ("2".equals(style)) {
                    return 2;
                }
                if ("3".equals(style)) {
                    return 3;
                }
                if ("4".equals(style)) {
                    return 4;
                }
                if ("5".equals(style)) {
                    return 5;
                }
                if ("12".equals(style)) {
                    return 12;
                }
                if ("14".equals(style)) {
                    return 14;
                }
                if ("7".equals(style)) {
                    return 7;
                }
                if ("9".equals(style)) {
                    return 9;
                }
                if ("16".equals(style)) {
                    return 16;
                }
            }
        }
        return 1;
    }

    private void f(int i) {
        TextView textView = this.y;
        if (textView != null) {
            textView.setMaxLines(i);
        }
        TextView textView2 = this.z;
        if (textView2 != null) {
            l4d.f(textView2, 8);
        }
    }

    public void k() {
        TextView textView = this.c;
        if (textView != null) {
            textView.setBackgroundColor(Color.parseColor("#10FF4500"));
            ObjectAnimator objectAnimatorOfInt = ObjectAnimator.ofInt(this.c, TtmlNode.ATTR_TTS_BACKGROUND_COLOR, 285164800, -2130754304, -855685888, -419478272, -47872);
            this.e = objectAnimatorOfInt;
            objectAnimatorOfInt.setDuration(1000L);
            this.e.setEvaluator(new ArgbEvaluator());
            this.e.setRepeatCount(0);
            this.e.setRepeatMode(2);
            this.e.start();
        }
    }

    public void d() {
        e6d e6dVar = this.E;
        if (e6dVar != null) {
            e6dVar.dismiss();
            this.E = null;
        }
    }

    @Override
    public void e() {
        d();
    }

    @Override
    public void a(VASTChannelAd vASTChannelAd) {
        super.a(vASTChannelAd);
        if (this.d) {
            if (vASTChannelAd != null && vASTChannelAd.isShowAdLog()) {
                l4d.f(this.x, 0);
                if (!TextUtils.isEmpty(vASTChannelAd.getAdOrigin())) {
                    TextView textView = this.x;
                    if (textView != null) {
                        textView.setText(this.x.getContext().getString(R.string.mgmi_template_ad_count_pre) + vASTChannelAd.getAdOrigin());
                        return;
                    }
                    return;
                }
                TextView textView2 = this.x;
                if (textView2 != null) {
                    textView2.setText(textView2.getContext().getString(R.string.mgmi_template_ad));
                    return;
                }
                return;
            }
            l4d.f(this.x, 8);
            return;
        }
        l4d.f(this.x, 8);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void a(Context context) {
        T t = this.n;
        VASTChannelAd vASTChannelAd = (VASTChannelAd) t;
        this.a = c((VASTAd) t);
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(context);
        int i = this.a;
        if (i == -2) {
            ViewGroup viewGroup = (ViewGroup) layoutInflaterFrom.inflate(R.layout.mgmi_banner_style_h5, (ViewGroup) null);
            this.o = viewGroup;
            this.t = (ViewGroup) viewGroup.findViewById(R.id.banner_webview);
        } else if (i == 7) {
            a(layoutInflaterFrom, vASTChannelAd, i());
        } else if (i == 12) {
            View viewInflate = layoutInflaterFrom.inflate(R.layout.mgmi_ad_style_h51, (ViewGroup) null);
            this.o = viewInflate;
            ((ContainerLayout) viewInflate).setVibilityListener(new ContainerLayout.e() {
                @Override
                public void onVisibility(boolean z) {
                }
            });
            this.b = (ImageView) this.o.findViewById(R.id.ad_h5_video_adVoice);
            this.t = (ViewGroup) this.o.findViewById(R.id.ad_h5_webview);
            this.x = (TextView) this.o.findViewById(R.id.mgmi_ad_h5_dec);
            this.y = (TextView) this.o.findViewById(R.id.ad_h5_tvTitle);
            this.z = (TextView) this.o.findViewById(R.id.ad_h5_subTvTitle);
            View viewFindViewById = this.o.findViewById(R.id.ad_h5_area);
            if (viewFindViewById instanceof ContainerLayout) {
                ((ContainerLayout) viewFindViewById).setTapclickListener(new ContainerLayout.b() {
                    @Override
                    public void onClick(View view, float f, float f2, float f3, float f4, float f5, float f6) {
                        if (((com.mgtv.a.d.b.a) a.this).v != null) {
                            ((com.mgtv.a.d.b.a) a.this).v.a(view, new dkd(f, f2, f3, f4, f5, f6));
                        }
                    }
                });
            }
            View viewFindViewById2 = this.o.findViewById(R.id.ex_bottom_bar);
            this.A = viewFindViewById2;
            if (viewFindViewById2 instanceof ContainerLayout) {
                ((ContainerLayout) viewFindViewById2).setTapclickListener(new ContainerLayout.b() {
                    @Override
                    public void onClick(View view, float f, float f2, float f3, float f4, float f5, float f6) {
                        if (((com.mgtv.a.d.b.a) a.this).v != null) {
                            ((com.mgtv.a.d.b.a) a.this).v.a(view, new dkd(f, f2, f3, f4, f5, f6));
                        }
                    }
                });
            }
            this.B = (TextView) this.o.findViewById(R.id.buttonDetail);
            a(vASTChannelAd, (ContainerLayout) this.o);
        } else if (i == 14) {
            ViewGroup viewGroup2 = (ViewGroup) layoutInflaterFrom.inflate(R.layout.mgmi_banner_style_image_14, (ViewGroup) null);
            this.o = viewGroup2;
            ((ContainerLayout) viewGroup2).setVibilityListener(new ContainerLayout.e() {
                @Override
                public void onVisibility(boolean z) {
                    if (z) {
                        return;
                    }
                    a.this.c();
                }
            });
            this.t = (ViewGroup) this.o.findViewById(R.id.image_container);
            View viewFindViewById3 = this.o.findViewById(R.id.righttvAdIcon);
            this.w = viewFindViewById3;
            viewFindViewById3.setVisibility(8);
            this.y = (TextView) this.o.findViewById(R.id.tvTitle);
            this.c = (TextView) this.o.findViewById(R.id.tvOpenAdDetail);
            if (this.y != null && vASTChannelAd.getTitle() != null && !TextUtils.isEmpty(vASTChannelAd.getTitle())) {
                this.d = true;
                this.y.setText(vASTChannelAd.getTitle());
                l4d.f(this.y, 0);
            }
            TextView textView = (TextView) this.o.findViewById(R.id.tvTitle2);
            if (textView != null && vASTChannelAd.getDiscription() != null && !TextUtils.isEmpty(vASTChannelAd.getDiscription())) {
                this.d = true;
                textView.setText(vASTChannelAd.getDiscription());
                l4d.f(textView, 0);
            }
        } else if (i == 16) {
            b(layoutInflaterFrom, vASTChannelAd, i());
        } else if (i == 0) {
            ViewGroup viewGroup3 = (ViewGroup) layoutInflaterFrom.inflate(R.layout.mgmi_banner_style_imagetext, (ViewGroup) null);
            this.o = viewGroup3;
            this.t = (ViewGroup) viewGroup3.findViewById(R.id.style_ad_ivImage);
            a(vASTChannelAd, (ContainerLayout) this.o);
            this.B = (TextView) this.o.findViewById(R.id.buttonDetail);
        } else if (i == 1) {
            ViewGroup viewGroup4 = (ViewGroup) layoutInflaterFrom.inflate(R.layout.mgmi_banner_style_image, (ViewGroup) null);
            this.o = viewGroup4;
            this.t = (ViewGroup) viewGroup4.findViewById(R.id.image_container);
            this.x = (TextView) this.o.findViewById(R.id.mgmi_ad_h5_dec);
            this.w = this.o.findViewById(R.id.tvAdIcon);
        } else if (i == 2) {
            ContainerLayout containerLayout = (ContainerLayout) layoutInflaterFrom.inflate(R.layout.mgmi_banner_style_imagetexthorizotal_sample, (ViewGroup) null);
            this.o = containerLayout;
            this.t = (ViewGroup) containerLayout.findViewById(R.id.style_imagetexthorizotal_ivImage);
            TextView textView2 = (TextView) this.o.findViewById(R.id.tvTitle1);
            this.y = textView2;
            if (textView2 != null && vASTChannelAd.getTitle() != null && !TextUtils.isEmpty(vASTChannelAd.getTitle())) {
                this.y.setText(vASTChannelAd.getTitle());
                l4d.f(this.y, 0);
            }
            TextView textView3 = (TextView) this.o.findViewById(R.id.tvTitle2);
            if (textView3 != null && vASTChannelAd.getDiscription() != null && !TextUtils.isEmpty(vASTChannelAd.getDiscription())) {
                textView3.setText(vASTChannelAd.getDiscription());
                l4d.f(textView3, 0);
            }
            TextView textView4 = (TextView) this.o.findViewById(R.id.adOrigin);
            if (textView4 != null && vASTChannelAd.getAdOrigin() != null && !TextUtils.isEmpty(vASTChannelAd.getAdOrigin())) {
                textView4.setText(vASTChannelAd.getAdOrigin());
                l4d.f(textView4, 0);
            }
            this.w = containerLayout.findViewById(R.id.tvAdIcon);
            a(vASTChannelAd, containerLayout, R.id.mgadlog);
        } else if (i == 3) {
            ContainerLayout containerLayout2 = (ContainerLayout) layoutInflaterFrom.inflate(R.layout.mgmi_banner_style_imagetexthorizotal, (ViewGroup) null);
            this.o = containerLayout2;
            this.t = (ViewGroup) containerLayout2.findViewById(R.id.style_ad_ivImage);
            TextView textView5 = (TextView) this.o.findViewById(R.id.tvTitle);
            this.y = textView5;
            if (textView5 != null && vASTChannelAd.getTitle() != null && !TextUtils.isEmpty(vASTChannelAd.getTitle())) {
                this.y.setText(vASTChannelAd.getTitle());
                l4d.f(this.y, 0);
            }
            TextView textView6 = (TextView) this.o.findViewById(R.id.subTvTitle);
            if (textView6 != null && vASTChannelAd.getDiscription() != null && !TextUtils.isEmpty(vASTChannelAd.getDiscription())) {
                textView6.setText(vASTChannelAd.getDiscription());
                l4d.f(textView6, 0);
            }
            TextView textView7 = (TextView) this.o.findViewById(R.id.adOrigin);
            if (textView7 != null && vASTChannelAd.getAdOrigin() != null && !TextUtils.isEmpty(vASTChannelAd.getAdOrigin())) {
                textView7.setText(vASTChannelAd.getAdOrigin());
                l4d.f(textView7, 0);
            }
            this.w = this.o.findViewById(R.id.tvAdIcon);
            a(vASTChannelAd, containerLayout2, R.id.mgadlog);
        } else if (i == 4) {
            ViewGroup viewGroup5 = (ViewGroup) layoutInflaterFrom.inflate(R.layout.mgmi_banner_style_imagetextup, (ViewGroup) null);
            this.o = viewGroup5;
            this.t = (ViewGroup) viewGroup5.findViewById(R.id.style_ad_ivImage);
            TextView textView8 = (TextView) this.o.findViewById(R.id.tvTitle);
            this.y = textView8;
            if (textView8 != null && vASTChannelAd.getTitle() != null && !TextUtils.isEmpty(vASTChannelAd.getTitle())) {
                this.y.setText(vASTChannelAd.getTitle());
            }
            this.w = this.o.findViewById(R.id.tvAdIcon);
        } else if (i == 5) {
            a(layoutInflaterFrom, vASTChannelAd);
        }
        TextView textView9 = this.B;
        if (textView9 != null) {
            this.r = textView9;
        } else {
            this.r = this.c;
        }
        View view = this.w;
        if (view != null) {
            view.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View view2) {
                    a aVar = a.this;
                    aVar.a(aVar.w);
                }
            });
        }
    }

    private void b(VASTAd vASTAd) {
        a(vASTAd, true);
    }

    private void b(LayoutInflater layoutInflater, VASTAd vASTAd, boolean z) {
        ContainerLayout containerLayout = (ContainerLayout) layoutInflater.inflate(R.layout.mgmi_banner_style_video_16, (ViewGroup) null);
        this.t = (ViewGroup) containerLayout.findViewById(R.id.videoarea);
        ImageView imageView = (ImageView) containerLayout.findViewById(R.id.playbutton);
        this.u = imageView;
        imageView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
            }
        });
        this.C = (ProgressWheel) containerLayout.findViewById(R.id.progressWheel);
        this.D = (TextView) containerLayout.findViewById(R.id.mgmi_feed_wifi_notice);
        this.c = (TextView) containerLayout.findViewById(R.id.buttonDetail);
        View viewFindViewById = containerLayout.findViewById(R.id.buttonDetail_parent);
        ImageView imageView2 = (ImageView) containerLayout.findViewById(R.id.imgv_buttonDetail);
        if (vASTAd.getCurrentStaticResource() != null && vASTAd.getCurrentStaticResource().getVideoClick() != null) {
            Clicks videoClick = vASTAd.getCurrentStaticResource().getVideoClick();
            CharSequence clickText = vASTAd.getCurrentStaticResource().getVideoClick().getClickText(containerLayout.getContext());
            if (this.c != null && !TextUtils.isEmpty(clickText)) {
                this.c.setText(clickText);
                if (videoClick.isDonwloadType(containerLayout.getContext())) {
                    if (videoClick.isFileDownload(containerLayout.getContext())) {
                        imageView2.setImageResource(R.drawable.icon_immer_detail);
                    } else {
                        imageView2.setImageResource(R.drawable.icon_immer_down);
                    }
                }
                l4d.f(viewFindViewById, 0);
            } else {
                l4d.f(viewFindViewById, 8);
                l4d.f(this.c, 8);
            }
        }
        this.y = (TextView) containerLayout.findViewById(R.id.tvTitle);
        this.z = (TextView) containerLayout.findViewById(R.id.tvTitle2);
        View viewFindViewById2 = containerLayout.findViewById(R.id.bottom_bar);
        if (viewFindViewById2 != null) {
            viewFindViewById2.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View view) {
                    if (((com.mgtv.a.d.b.a) a.this).v != null) {
                        ((com.mgtv.a.d.b.a) a.this).v.a(view, new dkd());
                    }
                }
            });
        }
        if (!TextUtils.isEmpty(vASTAd.getTitle())) {
            this.d = true;
            TextView textView = this.y;
            if (textView != null) {
                textView.setText(vASTAd.getTitle());
            }
        }
        if (!TextUtils.isEmpty(vASTAd.getDiscription())) {
            this.d = true;
            TextView textView2 = this.z;
            if (textView2 != null) {
                textView2.setText(vASTAd.getDiscription());
            }
            l4d.f(this.z, 0);
        } else {
            l4d.f(this.z, 8);
        }
        this.o = containerLayout;
    }

    public void c() {
        TextView textView = this.c;
        if (textView != null) {
            textView.setBackgroundColor(Color.parseColor("#191A1B"));
        }
        ValueAnimator valueAnimator = this.e;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        this.f.removeMessages(1);
    }

    public void b() {
        if (this.c == null) {
            return;
        }
        ValueAnimator valueAnimator = this.e;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        this.f.sendEmptyMessageDelayed(1, 1000L);
    }

    public void a(VASTAd vASTAd) {
        a(this.t, vASTAd);
        int i = this.a;
        if (i != -2 && i != 7 && i != 12 && i != 14 && i != 16 && i != 0 && i != 1) {
            if (i != 2 && i != 3) {
                if (i != 4) {
                    if (i != 5) {
                        return;
                    }
                }
            }
            a(this.o, vASTAd);
            return;
        }
        a(this.t, vASTAd);
    }

    private void a(VASTAd vASTAd, ContainerLayout containerLayout) {
        if (vASTAd == null || containerLayout == null) {
            return;
        }
        this.y = (TextView) containerLayout.findViewById(R.id.tvTitle);
        TextView textView = (TextView) containerLayout.findViewById(R.id.subTvTitle);
        final View viewFindViewById = containerLayout.findViewById(R.id.tvAdIcon);
        final View viewFindViewById2 = containerLayout.findViewById(R.id.ll_left_bottom);
        if (this.y != null && !TextUtils.isEmpty(vASTAd.getTitle())) {
            this.y.setText(vASTAd.getTitle());
        }
        if (textView != null && !TextUtils.isEmpty(vASTAd.getDiscription())) {
            textView.setText(vASTAd.getDiscription());
            l4d.f(textView, 0);
        } else {
            l4d.f(textView, 8);
        }
        if (TextUtils.isEmpty(vASTAd.getTitle()) && TextUtils.isEmpty(vASTAd.getDiscription())) {
            l4d.f(this.y, 8);
            l4d.f(textView, 8);
            l4d.f(viewFindViewById, 0);
            l4d.f(viewFindViewById2, 8);
            l4d.f(this.A, 8);
        } else {
            l4d.f(viewFindViewById, 8);
            l4d.f(this.A, 0);
        }
        if (viewFindViewById != null) {
            viewFindViewById.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View view) {
                    a.this.a(viewFindViewById);
                }
            });
        }
        if (viewFindViewById2 != null) {
            viewFindViewById2.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View view) {
                    a.this.a(viewFindViewById2);
                }
            });
        }
    }

    @Override
    public void b(VASTChannelAd vASTChannelAd) {
        super.b(vASTChannelAd);
        if (this.o == null || vASTChannelAd.getCurrentStaticResource() == null || vASTChannelAd.getCurrentStaticResource().getVideoClick() == null) {
            return;
        }
        if (this.B != null) {
            CharSequence clickText = vASTChannelAd.getCurrentStaticResource().getVideoClick().getClickText(this.o.getContext());
            if (!TextUtils.isEmpty(clickText)) {
                this.B.setText(clickText);
                this.B.setVisibility(0);
                return;
            } else {
                this.B.setVisibility(8);
                return;
            }
        }
        if (this.c != null) {
            CharSequence clickText2 = vASTChannelAd.getCurrentStaticResource().getVideoClick().getClickText(this.c.getContext());
            if (TextUtils.isEmpty(clickText2)) {
                l4d.f(this.c, 8);
                return;
            }
            l4d.f(this.c, 0);
            this.c.setText(((Object) clickText2) + " ");
        }
    }

    private void a(LayoutInflater layoutInflater, VASTAd vASTAd) {
        ViewGroup viewGroup = (ViewGroup) layoutInflater.inflate(R.layout.mgmi_banner_style_image_large_icon, (ViewGroup) null);
        this.o = viewGroup;
        this.t = (ViewGroup) viewGroup.findViewById(R.id.style_ad_ivImage);
        this.y = (TextView) this.o.findViewById(R.id.tvTitle);
        this.z = (TextView) this.o.findViewById(R.id.subTvTitle);
        this.x = (TextView) this.o.findViewById(R.id.adOrigin);
        this.w = this.o.findViewById(R.id.tvAdIcon);
        this.B = (TextView) this.o.findViewById(R.id.buttonDetail);
        b(vASTAd);
        f(2);
    }

    private void a(VASTAd vASTAd, boolean z) {
        if (vASTAd == null) {
            return;
        }
        if (this.x != null) {
            if (!TextUtils.isEmpty(vASTAd.getAdOrigin())) {
                this.x.setVisibility(0);
                this.x.setText(vASTAd.getAdOrigin());
            } else {
                this.x.setVisibility(8);
            }
        }
        if (this.z != null) {
            if (!TextUtils.isEmpty(vASTAd.getDiscription())) {
                this.z.setText(vASTAd.getDiscription());
                l4d.f(this.z, 0);
            } else {
                l4d.f(this.z, 8);
            }
        }
        if (this.y != null) {
            if (!TextUtils.isEmpty(vASTAd.getTitle())) {
                l4d.f(this.y, 0);
                this.y.setText(vASTAd.getTitle());
                if (z && TextUtils.isEmpty(vASTAd.getDiscription())) {
                    this.y.setMaxLines(2);
                    return;
                }
                return;
            }
            l4d.f(this.y, 8);
        }
    }

    private ViewGroup a(LayoutInflater layoutInflater, VASTAd vASTAd, boolean z) {
        TextView textView;
        ContainerLayout containerLayout = (ContainerLayout) layoutInflater.inflate(R.layout.mgmi_banner_style_feedvideo, (ViewGroup) null);
        this.t = (ViewGroup) containerLayout.findViewById(R.id.videoarea);
        this.u = (ImageView) containerLayout.findViewById(R.id.playbutton);
        this.C = (ProgressWheel) containerLayout.findViewById(R.id.progressWheel);
        this.D = (TextView) containerLayout.findViewById(R.id.mgmi_feed_wifi_notice);
        this.x = (TextView) containerLayout.findViewById(R.id.mgmi_ad_dec);
        this.B = (TextView) containerLayout.findViewById(R.id.buttonDetail);
        this.y = (TextView) containerLayout.findViewById(R.id.tvTitle);
        this.z = (TextView) containerLayout.findViewById(R.id.subTvTitle);
        View viewFindViewById = containerLayout.findViewById(R.id.bottom_bar);
        this.A = viewFindViewById;
        if (viewFindViewById != null) {
            viewFindViewById.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View view) {
                    if (((com.mgtv.a.d.b.a) a.this).v != null) {
                        ((com.mgtv.a.d.b.a) a.this).v.a(view, new dkd());
                    }
                }
            });
        }
        if (!TextUtils.isEmpty(vASTAd.getTitle()) && (textView = this.y) != null) {
            textView.setText(vASTAd.getTitle());
        }
        this.w = containerLayout.findViewById(R.id.tvAdIcon);
        if (!TextUtils.isEmpty(vASTAd.getDiscription())) {
            TextView textView2 = this.z;
            if (textView2 != null) {
                textView2.setText(vASTAd.getDiscription());
            }
            l4d.f(this.z, 0);
        } else {
            l4d.f(this.z, 8);
        }
        this.o = containerLayout;
        return containerLayout;
    }

    /* JADX WARN: Code duplicated, block: B:78:0x012a  */
    /* JADX WARN: Code duplicated, block: B:99:0x019b  */
    private void a(View view, VASTAd vASTAd) {
        int iA;
        int iA2;
        int height;
        int iA3;
        float width;
        int iA4;
        int i;
        int i2;
        if (this.o == null) {
            return;
        }
        int i3 = this.a;
        boolean z = true;
        int height2 = 0;
        int i4 = -2;
        if (i3 != -2) {
            if (i3 == 7 || i3 == 12) {
                if (view == null || view.getLayoutParams() == null) {
                    return;
                }
                int displayWdith = vASTAd.getDisplayWdith();
                if (displayWdith != -5 && displayWdith != -1) {
                    iA2 = w3d.a(view.getContext(), displayWdith);
                } else {
                    View view2 = this.o;
                    int width2 = view2 != null ? view2.getWidth() : a();
                    iA2 = width2 == 0 ? a() : width2;
                }
                int displayHeight = vASTAd.getDisplayHeight();
                if (displayHeight != -2 && displayHeight != -5) {
                    int iA5 = w3d.a(view.getContext(), displayWdith);
                    if (iA5 > 0) {
                        int i5 = (int) ((iA5 * 16) / 9.0f);
                        if (iA2 < i5) {
                            i4 = (int) ((iA2 * 9) / 16.0f);
                        } else {
                            i4 = iA5;
                            iA2 = i5;
                        }
                    }
                } else if (iA2 > 0) {
                    i4 = (int) ((iA2 * 9) / 16.0f);
                }
                if (i4 == 0 || iA2 == 0) {
                    return;
                }
                view.getLayoutParams().width = iA2;
                view.getLayoutParams().height = i4;
                return;
            }
            if (i3 != 0 && i3 != 1) {
                if (i3 == 2 || i3 == 3) {
                    if (view == null || view.getLayoutParams() == null) {
                        return;
                    }
                    int displayWdith2 = vASTAd.getDisplayWdith();
                    int iA6 = (displayWdith2 == -5 || displayWdith2 == -1) ? 0 : w3d.a(view.getContext(), displayWdith2);
                    int displayHeight2 = vASTAd.getDisplayHeight();
                    if (displayHeight2 != -5 && displayHeight2 != -1) {
                        iA3 = w3d.a(view.getContext(), displayHeight2);
                        if (iA6 == 0) {
                            if (iA3 > 0) {
                                if (vASTAd.getCurrentStaticResource().getHeight() <= 0 || vASTAd.getCurrentStaticResource().getWidth() <= 0) {
                                    width = (iA3 * 738.0f) / 206.0f;
                                } else {
                                    width = ((iA3 * 1.0f) * vASTAd.getCurrentStaticResource().getWidth()) / vASTAd.getCurrentStaticResource().getHeight();
                                }
                                height2 = (int) width;
                            } else {
                                iA3 = 0;
                            }
                        } else if (iA6 > 0) {
                            height = (int) ((vASTAd.getCurrentStaticResource().getHeight() <= 0 || vASTAd.getCurrentStaticResource().getWidth() <= 0) ? (iA6 * 206.0f) / 738.0f : ((iA6 * 1.0f) * vASTAd.getCurrentStaticResource().getHeight()) / vASTAd.getCurrentStaticResource().getWidth());
                            if (height <= iA3 || iA3 <= 0) {
                                iA3 = height;
                                height2 = iA6;
                            } else {
                                width = (iA3 * 738.0f) / 206.0f;
                                height2 = (int) width;
                            }
                        } else {
                            iA3 = 0;
                        }
                    } else if (iA6 > 0) {
                        height = (int) ((vASTAd.getCurrentStaticResource().getHeight() <= 0 || vASTAd.getCurrentStaticResource().getWidth() <= 0) ? (iA6 * 206.0f) / 738.0f : ((iA6 * 1.0f) * vASTAd.getCurrentStaticResource().getHeight()) / vASTAd.getCurrentStaticResource().getWidth());
                        iA3 = height;
                        height2 = iA6;
                    } else {
                        iA3 = 0;
                    }
                    if (height2 == 0 || iA3 == 0) {
                        return;
                    }
                    view.getLayoutParams().width = height2;
                    view.getLayoutParams().height = iA3;
                    return;
                }
                if (i3 != 4) {
                    if (i3 != 5) {
                        return;
                    }
                    int displayHeight3 = vASTAd.getDisplayHeight();
                    if (displayHeight3 != -5 && displayHeight3 != -1) {
                        iA4 = w3d.a(view.getContext(), displayHeight3);
                    } else if (view != null && view.getLayoutParams() != null && vASTAd.getCurrentStaticResource() != null && vASTAd.getCurrentStaticResource().getHeight() > 0) {
                        iA4 = w3d.a(view.getContext(), vASTAd.getCurrentStaticResource().getHeight() / 2);
                    } else {
                        iA4 = w3d.a(view.getContext(), 64.0f);
                    }
                    int displayWdith3 = vASTAd.getDisplayWdith();
                    if (displayWdith3 != -5 && displayWdith3 != -1) {
                        int iA7 = w3d.a(view.getContext(), displayWdith3);
                        if (iA7 > 0) {
                            int i6 = (int) ((iA7 * 9) / 16.0f);
                            if (iA4 < i6) {
                                i2 = (int) ((iA4 * 16) / 9.0f);
                            } else {
                                i2 = iA7;
                                iA4 = i6;
                            }
                            int i7 = i2;
                            height2 = iA4;
                            i = i7;
                        } else {
                            i = 0;
                            height2 = -1;
                        }
                    } else if (iA4 > 0) {
                        i2 = (int) ((iA4 * 16) / 9.0f);
                        int i8 = i2;
                        height2 = iA4;
                        i = i8;
                    } else {
                        i = 0;
                    }
                    if (height2 == 0 || i == 0) {
                        return;
                    }
                    view.getLayoutParams().width = i;
                    view.getLayoutParams().height = height2;
                    return;
                }
            }
        }
        if (view == null || view.getLayoutParams() == null) {
            return;
        }
        int displayWdith4 = vASTAd.getDisplayWdith();
        if (displayWdith4 != -5 && displayWdith4 != -1) {
            iA = w3d.a(view.getContext(), displayWdith4);
            z = false;
        } else {
            View view3 = this.o;
            int width3 = view3 != null ? view3.getWidth() : a();
            iA = width3 == 0 ? a() : width3;
        }
        int displayHeight4 = vASTAd.getDisplayHeight();
        if (displayHeight4 != -5 && displayHeight4 != -2) {
            int iA8 = w3d.a(view.getContext(), displayHeight4);
            if (vASTAd.getCurrentStaticResource().getHeight() <= 0 || vASTAd.getCurrentStaticResource().getWidth() <= 0) {
                int i9 = (int) ((iA * 206.0f) / 738.0f);
                if (i9 <= iA8) {
                    height2 = i9;
                } else if (!z) {
                    iA = (int) ((iA8 * 738.0f) / 206.0f);
                }
            } else {
                height2 = (int) (((iA * 1.0f) * vASTAd.getCurrentStaticResource().getHeight()) / vASTAd.getCurrentStaticResource().getWidth());
                if (height2 > iA8) {
                    iA = (int) (((iA8 * 1.0f) * vASTAd.getCurrentStaticResource().getWidth()) / vASTAd.getCurrentStaticResource().getHeight());
                    height2 = iA8;
                }
            }
        } else {
            height2 = (int) ((vASTAd.getCurrentStaticResource().getHeight() <= 0 || vASTAd.getCurrentStaticResource().getWidth() <= 0) ? (iA * 206.0f) / 738.0f : ((iA * 1.0f) * vASTAd.getCurrentStaticResource().getHeight()) / vASTAd.getCurrentStaticResource().getWidth());
        }
        if (iA == 0 || height2 == 0) {
            return;
        }
        view.getLayoutParams().height = height2;
        view.getLayoutParams().width = iA;
    }

    public int a() {
        int iA = f.a(c.a());
        int iB = f.b(c.a());
        return iA > iB ? iB : iA;
    }

    private void a(VASTAd vASTAd, ViewGroup viewGroup, int i) {
        try {
            View viewFindViewById = viewGroup.findViewById(i);
            if (viewFindViewById == null) {
                return;
            }
            if (vASTAd.isShowAdLog()) {
                viewFindViewById.setVisibility(0);
            } else {
                viewFindViewById.setVisibility(8);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void a(View view) {
        if (this.o != null) {
            e6d e6dVar = new e6d(this.o.getContext(), new e6d.a() {
                @Override
                public void a() {
                    a.this.d();
                    if (a.this.E != null) {
                        a.this.E = null;
                    }
                    if (((com.mgtv.a.d.b.a) a.this).v != null) {
                        ((com.mgtv.a.d.b.a) a.this).v.a(((com.mgtv.a.d.b.a) a.this).n);
                    }
                    if (((com.mgtv.a.d.b.a) a.this).o != null) {
                        Toast.makeText(((com.mgtv.a.d.b.a) a.this).o.getContext(), ((com.mgtv.a.d.b.a) a.this).o.getContext().getString(R.string.mgmi_banner_feed_pop), 0).show();
                    }
                }

                @Override
                public boolean b() {
                    return a.this.i();
                }
            }, this.o.getMeasuredWidth());
            this.E = e6dVar;
            e6dVar.setFocusable(true);
            this.E.h(view);
            this.E.update();
        }
    }
}
