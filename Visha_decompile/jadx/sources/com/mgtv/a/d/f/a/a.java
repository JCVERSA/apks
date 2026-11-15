package com.mgtv.a.d.f.a;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.mgmi.R;
import com.mgmi.model.Clicks;
import com.mgmi.model.VASTAd;
import com.mgtv.a.d.b.c;
import com.mgtv.a.d.b.d;
import defpackage.dkd;
import defpackage.l4d;

public class a extends c {
    public int a = 0;
    private boolean b;
    private TextView c;
    private TextView d;
    private ImageView e;

    public void f(int i) {
        if (this.a == 0) {
            ImageView imageView = this.e;
            if (imageView != null) {
                imageView.setImageResource(R.drawable.mgmi_icon_ad_voice_close);
            }
        } else {
            ImageView imageView2 = this.e;
            if (imageView2 != null) {
                imageView2.setImageResource(R.drawable.mgmi_icon_ad_voice_open);
            }
        }
        d dVar = this.v;
        if (dVar != null) {
            dVar.a(i, Boolean.valueOf(this.a == 0));
        }
    }

    @Override
    public void g() {
        View view = this.s;
        if (view != null) {
            view.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View view2) {
                    if (((com.mgtv.a.d.b.a) a.this).v != null) {
                        ((com.mgtv.a.d.b.a) a.this).v.a((Object) null);
                    }
                }
            });
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void b(VASTAd vASTAd) {
        Clicks videoClick;
        View view;
        super.b(vASTAd);
        T t = this.n;
        if (t == 0 || !((VASTAd) t).isMediaVast()) {
            l4d.f(this.e, 8);
        } else {
            l4d.f(this.e, 0);
            f(4);
        }
        T t2 = this.n;
        if (t2 != 0) {
            if (!((VASTAd) t2).isMediaVast() || ((VASTAd) this.n).getCurrentMediaFile() == null) {
                videoClick = ((VASTAd) this.n).getCurrentStaticResource() != null ? ((VASTAd) this.n).getCurrentStaticResource().getVideoClick() : null;
            } else {
                videoClick = ((VASTAd) this.n).getCurrentMediaFile().getVideoClick();
            }
            if (videoClick == null || (view = this.o) == null) {
                return;
            }
            Context context = view.getContext();
            if (context == null) {
                context = com.mgmi.ads.api.c.a();
            }
            CharSequence clickText = videoClick.getClickText(context);
            if (TextUtils.isEmpty(clickText)) {
                l4d.f(this.d, 8);
                return;
            }
            TextView textView = this.d;
            if (textView != null) {
                textView.setText(clickText);
            }
            l4d.f(this.d, 0);
            TextView textView2 = this.d;
            if (textView2 != null) {
                textView2.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View view2) {
                        if (((com.mgtv.a.d.b.a) a.this).v != null) {
                            ((com.mgtv.a.d.b.a) a.this).v.a(a.this.d, new dkd());
                        }
                    }
                });
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void a(VASTAd vASTAd) {
        super.a(vASTAd);
        if (this.c == null || this.o == null) {
            return;
        }
        T t = this.n;
        if (t == 0 || ((VASTAd) t).getAdOrigin() == null || TextUtils.isEmpty(((VASTAd) this.n).getAdOrigin())) {
            this.c.setText(this.o.getResources().getString(R.string.mgmi_template_ad));
        } else {
            this.c.setText(this.o.getResources().getString(R.string.mgmi_adform_dsc, ((VASTAd) this.n).getAdOrigin()));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void a(Context context) {
        T t = this.n;
        if (t != 0) {
            boolean z = ((VASTAd) t).getAdStyle() == 3;
            this.b = z;
            if (z) {
                this.o = LayoutInflater.from(context).inflate(R.layout.mgmi_super_pauseview_control, (ViewGroup) null);
            } else {
                View viewInflate = LayoutInflater.from(context).inflate(R.layout.mgmi_pauseview_control, (ViewGroup) null);
                this.o = viewInflate;
                this.d = (TextView) viewInflate.findViewById(R.id.tv_pause_detail);
                this.s = this.o.findViewById(R.id.closeAdIcon);
            }
            ImageView imageView = (ImageView) this.o.findViewById(R.id.mgmi_ad_voice);
            this.e = imageView;
            if (imageView != null) {
                imageView.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View view) {
                        a aVar = a.this;
                        if (aVar.a == 0) {
                            aVar.a = 1;
                        } else {
                            aVar.a = 0;
                        }
                        aVar.f(2);
                    }
                });
            }
        }
    }
}
