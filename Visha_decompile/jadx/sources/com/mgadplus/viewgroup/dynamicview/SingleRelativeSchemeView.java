package com.mgadplus.viewgroup.dynamicview;

import android.content.Context;
import android.graphics.Point;
import android.net.Uri;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.mgmi.R;
import com.transsion.audiotagger.tag.id3.valuepair.ImageFormats;
import defpackage.ey4;
import defpackage.j4d;
import defpackage.l4d;
import defpackage.lbd;
import defpackage.mpd;
import defpackage.w3d;

public class SingleRelativeSchemeView extends RelativeLayout implements CornerSchemeView {
    public ViewGroup b;
    public boolean c;
    public com.mgadplus.viewgroup.dynamicview.a.C0159a d;
    public com.mgmi.model.e e;
    public Animation f;
    public Animation g;
    public com.mgmi.e.a.a h;
    public CornerSchemeView.a i;
    public ViewGroup.MarginLayoutParams j;

    public class a implements Animation.AnimationListener {
        public a() {
        }

        @Override
        public void onAnimationEnd(Animation animation) {
            SingleRelativeSchemeView.this.disappear(false);
            SingleRelativeSchemeView.this.h.d(SingleRelativeSchemeView.this.e.a().get(0));
            if (SingleRelativeSchemeView.this.d != null) {
                SingleRelativeSchemeView.this.d.a();
            }
        }

        @Override
        public void onAnimationRepeat(Animation animation) {
        }

        @Override
        public void onAnimationStart(Animation animation) {
        }
    }

    public class b implements View.OnClickListener {
        public b() {
        }

        @Override
        public void onClick(View view) {
            SingleRelativeSchemeView.this.d();
        }
    }

    public class c implements View.OnClickListener {
        public c() {
        }

        @Override
        public void onClick(View view) {
            SingleRelativeSchemeView.this.d();
        }
    }

    public class d implements View.OnClickListener {
        public final ImageButton b;

        public d(ImageButton imageButton) {
            this.b = imageButton;
        }

        @Override
        public void onClick(View view) {
            ImageButton imageButton = this.b;
            if (imageButton != null) {
                imageButton.setImageResource(R.drawable.dianzan_press);
                this.b.setClickable(false);
            }
            SingleRelativeSchemeView.this.f();
        }
    }

    public class e implements View.OnClickListener {
        public e() {
        }

        @Override
        public void onClick(View view) {
            SingleRelativeSchemeView.this.d();
        }
    }

    public class f implements View.OnClickListener {
        public f() {
        }

        @Override
        public void onClick(View view) {
            SingleRelativeSchemeView.this.h();
        }
    }

    public SingleRelativeSchemeView(@NonNull Context context) {
        super(context);
        this.c = false;
        this.i = CornerSchemeView.a.Center;
        b();
    }

    private void b() {
        this.h = new com.mgmi.e.a.a(getContext());
    }

    public void d() {
        com.mgmi.model.e eVar;
        disappear(false);
        if (this.h != null && (eVar = this.e) != null && eVar.a() != null && this.e.a().size() > 0) {
            this.h.a(this.e.a().get(0));
        }
        com.mgadplus.viewgroup.dynamicview.a.C0159a c0159a = this.d;
        if (c0159a != null) {
            c0159a.a(0);
        }
    }

    public void f() {
        this.h.b(this.e.a().get(0));
    }

    public void h() {
        disappear(true);
    }

    private void i() {
        CornerSchemeView.a aVar = this.i;
        if (aVar == CornerSchemeView.a.Right) {
            Point pointD = mpd.d(getContext());
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) ((ImageView) findViewById(R.id.largeimage)).getLayoutParams();
            int i = (int) (((double) pointD.x) * 0.47d);
            layoutParams.height = i;
            layoutParams.width = (int) (((double) i) * 1.42d);
            ((RelativeLayout.LayoutParams) ((ImageView) findViewById(R.id.small_icon)).getLayoutParams()).topMargin = layoutParams.height - w3d.a(getContext(), 25.0f);
            ((RelativeLayout.LayoutParams) findViewById(R.id.contentFrame).getLayoutParams()).width = layoutParams.width;
            return;
        }
        if (aVar == CornerSchemeView.a.Left) {
            Point pointD2 = mpd.d(getContext());
            RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) ((ImageView) findViewById(R.id.largeimage)).getLayoutParams();
            int i2 = (int) (((double) pointD2.x) * 0.47d);
            layoutParams2.height = i2;
            layoutParams2.width = (int) (((double) i2) * 1.42d);
            RelativeLayout.LayoutParams layoutParams3 = (RelativeLayout.LayoutParams) ((ImageView) findViewById(R.id.small_icon)).getLayoutParams();
            layoutParams3.topMargin = layoutParams2.height - w3d.a(getContext(), 25.0f);
            layoutParams3.leftMargin = layoutParams2.width - w3d.a(getContext(), 25.0f);
            ((RelativeLayout.LayoutParams) findViewById(R.id.contentFrame).getLayoutParams()).width = layoutParams2.width;
        }
    }

    public void appear(boolean z) {
        Animation animation;
        l4d.c(this.b, this, this.j);
        this.c = true;
        if (!z || (animation = this.f) == null) {
            return;
        }
        startAnimation(animation);
    }

    public void disappear(boolean z) {
        Animation animation;
        this.c = false;
        if (!z || (animation = this.g) == null) {
            j4d.b(new Runnable() {
                @Override
                public void run() {
                    l4d.g(SingleRelativeSchemeView.this.b, SingleRelativeSchemeView.this);
                }
            });
        } else {
            animation.setAnimationListener(new a());
            startAnimation(this.g);
        }
    }

    public SingleRelativeSchemeView getSchemeView() {
        return null;
    }

    public CornerSchemeView.a getStyle() {
        return this.i;
    }

    public boolean isVisiblity() {
        return this.c;
    }

    public CornerSchemeView prepareContainer(ViewGroup viewGroup, ViewGroup.MarginLayoutParams marginLayoutParams) {
        this.b = viewGroup;
        this.j = marginLayoutParams;
        return this;
    }

    @Override
    public void setEventListener(com.mgadplus.viewgroup.dynamicview.a.C0159a c0159a) {
        this.d = c0159a;
    }

    public com.mgadplus.viewgroup.dynamicview.a setInterectAnimation(Animation animation, Animation animation2) {
        this.f = animation;
        this.g = animation2;
        return this;
    }

    public void setStyle(CornerSchemeView.a aVar) {
        this.i = aVar;
    }

    public void startTurning() {
    }

    public void stopTurning() {
    }

    @Override
    public void bindData(com.mgmi.model.e eVar) {
        ImageView imageView;
        if (eVar == null || eVar.a() == null || eVar.a().size() <= 0 || eVar.a().get(0) == null) {
            return;
        }
        this.e = eVar;
        if (!isVisiblity()) {
            appear(false);
        }
        i();
        this.h.c(eVar.a().get(0));
        com.mgmi.model.d dVar = eVar.a().get(0);
        if (!TextUtils.isEmpty(dVar.b())) {
            ((TextView) findViewById(R.id.title)).setText(dVar.b());
        }
        if (!TextUtils.isEmpty(dVar.d())) {
            ((TextView) findViewById(R.id.contentText)).setText(dVar.d());
        }
        ((RelativeLayout) findViewById(R.id.contentFrame)).setOnClickListener(new b());
        RelativeLayout relativeLayout = (RelativeLayout) findViewById(R.id.congtentView);
        if (relativeLayout != null) {
            relativeLayout.setOnClickListener(new c());
        }
        ImageButton imageButton = (ImageButton) findViewById(R.id.dianzanButton);
        imageButton.setOnClickListener(new d(imageButton));
        TextView textView = (TextView) findViewById(R.id.tvAdDetail);
        if (TextUtils.isEmpty(dVar.c()) || dVar.g()) {
            l4d.f(textView, 8);
            l4d.f(imageButton, 8);
        } else {
            l4d.f(textView, 0);
            textView.setText(dVar.c());
            textView.setOnClickListener(new e());
        }
        ImageView imageView2 = (ImageView) findViewById(R.id.schemeClose);
        if (imageView2 != null) {
            imageView2.setOnClickListener(new f());
        }
        ImageView imageView3 = (ImageView) findViewById(R.id.largeimage);
        if (!TextUtils.isEmpty(dVar.e())) {
            String strE = dVar.e();
            if (strE.endsWith("gif") || strE.endsWith(ImageFormats.V22_GIF_FORMAT)) {
                ey4.d(imageView3, Uri.parse(dVar.e()), lbd.c(strE, lbd.E).n(1).s(true).r(Integer.valueOf(R.drawable.mgmi_shape_placeholder)).t(), null);
            } else {
                ey4.d(imageView3, Uri.parse(dVar.e()), lbd.c(strE, lbd.E).n(1).r(Integer.valueOf(R.drawable.mgmi_shape_placeholder)).t(), null);
            }
        }
        if ((eVar.b() == 2 || eVar.b() == 3) && !TextUtils.isEmpty(dVar.f()) && (imageView = (ImageView) findViewById(R.id.small_icon)) != null) {
            ey4.d(imageView, Uri.parse(dVar.f()), lbd.c(dVar.f(), lbd.E).M(true).n(1).t(), null);
        }
        Animation animation = this.f;
        if (animation != null) {
            startAnimation(animation);
        }
    }

    public SingleRelativeSchemeView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.c = false;
        this.i = CornerSchemeView.a.Center;
        b();
    }

    public SingleRelativeSchemeView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.c = false;
        this.i = CornerSchemeView.a.Center;
        b();
    }

    @RequiresApi(api = 21)
    public SingleRelativeSchemeView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.c = false;
        this.i = CornerSchemeView.a.Center;
        b();
    }
}
