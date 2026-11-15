package com.mgadplus.viewgroup.dynamicview;

import android.content.Context;
import android.graphics.Point;
import android.net.Uri;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.RequiresApi;
import androidx.viewpager.widget.ViewPager;
import com.mgmi.R;
import com.mgmi.ViewGroup.convenientbanner.ConvenientBanner;
import defpackage.ey4;
import defpackage.l4d;
import defpackage.lbd;
import defpackage.mpd;
import defpackage.w3d;
import java.util.ArrayList;
import java.util.List;

public class LoopSchemeView extends RelativeLayout implements CornerSchemeView {
    public ConvenientBanner b;
    public ViewGroup c;
    public Animation d;
    public Animation e;
    public ViewGroup.MarginLayoutParams f;
    public com.mgadplus.viewgroup.dynamicview.a.C0159a g;
    public TextView h;
    public TextView i;
    public ImageView j;
    public TextView k;
    public ImageView l;
    public com.mgmi.model.e m;
    public boolean n;
    public com.mgmi.e.a.a o;
    public int p;
    public List q;
    public CornerSchemeView.a r;

    public class a implements Animation.AnimationListener {
        public a() {
        }

        @Override
        public void onAnimationEnd(Animation animation) {
            LoopSchemeView.this.disappear(false);
            LoopSchemeView.this.o.d(LoopSchemeView.this.m.a().get(0));
            if (LoopSchemeView.this.g != null) {
                LoopSchemeView.this.g.a();
            }
        }

        @Override
        public void onAnimationRepeat(Animation animation) {
        }

        @Override
        public void onAnimationStart(Animation animation) {
        }
    }

    public class b implements com.mgmi.ViewGroup.convenientbanner.b.a {
        public b() {
        }

        @Override
        public Object a() {
            return new i(LoopSchemeView.this, null);
        }
    }

    public class c implements View.OnClickListener {
        public c() {
        }

        @Override
        public void onClick(View view) {
            LoopSchemeView.this.m();
        }
    }

    public class d implements View.OnClickListener {
        public d() {
        }

        @Override
        public void onClick(View view) {
            LoopSchemeView.this.k();
        }
    }

    public class e implements View.OnClickListener {
        public e() {
        }

        @Override
        public void onClick(View view) {
            LoopSchemeView.this.i();
        }
    }

    public class f implements ViewPager.OnPageChangeListener {
        public f() {
        }

        @Override
        public void onPageScrollStateChanged(int i) {
        }

        @Override
        public void onPageScrolled(int i, float f, int i2) {
        }

        @Override
        public void onPageSelected(int i) {
            LoopSchemeView.this.b(i);
        }
    }

    public class g implements View.OnClickListener {
        public final int b;

        public g(int i) {
            this.b = i;
        }

        @Override
        public void onClick(View view) {
            if (LoopSchemeView.this.b != null) {
                LoopSchemeView.this.b.setcurrentitem(this.b);
            }
        }
    }

    public static final class h {
        public ImageView a;
        public boolean b;
        public boolean c = false;

        public h b(ImageView imageView) {
            this.a = imageView;
            return this;
        }

        public h c(boolean z) {
            this.b = z;
            return this;
        }
    }

    public class i implements com.mgmi.ViewGroup.convenientbanner.b.b {
        public ImageView a;

        public i() {
        }

        @Override
        public void a(Context context, int i, com.mgmi.model.d dVar) {
            if (dVar == null || TextUtils.isEmpty(dVar.e())) {
                return;
            }
            dVar.e();
            ey4.d(this.a, Uri.parse(dVar.e()), lbd.c(dVar.e(), lbd.E).n(0).t(), null);
        }

        public i(LoopSchemeView loopSchemeView, a aVar) {
            this();
        }

        @Override
        public View a(Context context, com.mgmi.model.d dVar) {
            View viewInflate = LayoutInflater.from(context).inflate(R.layout.loopscheme_item, (ViewGroup) null);
            this.a = (ImageView) viewInflate.findViewById(R.id.itemimage);
            return viewInflate;
        }
    }

    public LoopSchemeView(Context context) {
        super(context);
        this.n = false;
        this.p = 0;
        this.r = CornerSchemeView.a.Center;
        f();
    }

    public void b(int i2) {
        ImageView imageView;
        TextView textView = this.i;
        if (textView != null) {
            textView.setText(this.m.a().get(i2).b());
        }
        TextView textView2 = this.h;
        if (textView2 != null) {
            textView2.setText(this.m.a().get(i2).c());
        }
        TextView textView3 = this.k;
        if (textView3 != null) {
            textView3.setText(this.m.a().get(i2).d());
        }
        if (this.l != null && this.m.a().get(i2) != null && !TextUtils.isEmpty(this.m.a().get(i2).f())) {
            ey4.d(this.l, Uri.parse(this.m.a().get(i2).f()), lbd.c(this.m.a().get(i2).f(), lbd.E).M(true).n(1).t(), null);
        }
        int i3 = this.p;
        if (i2 != i3) {
            l4d.a(((h) this.q.get(i3)).a, 0.4f);
        }
        l4d.a(((h) this.q.get(i2)).a, 1.0f);
        this.p = i2;
        List list = this.q;
        if (list == null || i2 >= list.size()) {
            return;
        }
        if (!((h) this.q.get(i2)).b) {
            ((h) this.q.get(i2)).b = true;
            this.o.c(this.m.a().get(i2));
        }
        if (((h) this.q.get(i2)).c || (imageView = this.j) == null) {
            return;
        }
        imageView.setClickable(true);
        this.j.setImageResource(R.drawable.dianzan_nor);
    }

    private void f() {
        this.q = new ArrayList();
        this.o = new com.mgmi.e.a.a(getContext());
    }

    private void h() {
        CornerSchemeView.a aVar = this.r;
        if (aVar == CornerSchemeView.a.Right) {
            Point pointD = mpd.d(getContext());
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) ((ConvenientBanner) findViewById(R.id.convenientBanner)).getLayoutParams();
            int i2 = (int) (((double) pointD.y) * 0.5d);
            layoutParams.height = i2;
            layoutParams.width = i2;
            ((RelativeLayout.LayoutParams) ((ImageView) findViewById(R.id.small_icon)).getLayoutParams()).topMargin = layoutParams.height - w3d.a(getContext(), 20.0f);
            ((RelativeLayout.LayoutParams) findViewById(R.id.contentLayout).getLayoutParams()).width = layoutParams.width;
            return;
        }
        if (aVar == CornerSchemeView.a.Left) {
            Point pointD2 = mpd.d(getContext());
            RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) ((ImageView) findViewById(R.id.largeimage)).getLayoutParams();
            int i3 = (int) (((double) pointD2.y) * 0.5d);
            layoutParams2.height = i3;
            layoutParams2.width = i3;
            RelativeLayout.LayoutParams layoutParams3 = (RelativeLayout.LayoutParams) ((ImageView) findViewById(R.id.small_icon)).getLayoutParams();
            layoutParams3.topMargin = layoutParams2.height - w3d.a(getContext(), 20.0f);
            layoutParams3.leftMargin = layoutParams2.width - w3d.a(getContext(), 20.0f);
            ((RelativeLayout.LayoutParams) findViewById(R.id.contentLayout).getLayoutParams()).width = layoutParams2.width;
        }
    }

    public void i() {
        disappear(true);
    }

    public void k() {
        this.o.b(this.m.a().get(this.p));
        List list = this.q;
        if (list != null && this.p < list.size()) {
            ((h) this.q.get(this.p)).c = true;
        }
        ImageView imageView = this.j;
        if (imageView != null) {
            imageView.setImageResource(R.drawable.dianzan_press);
            this.j.setClickable(false);
        }
    }

    public void m() {
        disappear(false);
        this.o.a(this.m.a().get(this.p));
        com.mgadplus.viewgroup.dynamicview.a.C0159a c0159a = this.g;
        if (c0159a != null) {
            c0159a.a(this.p);
        }
    }

    public void appear(boolean z) {
        Animation animation;
        l4d.c(this.c, this, this.f);
        this.n = true;
        if (z && (animation = this.d) != null) {
            startAnimation(animation);
        }
        startTurning();
    }

    public final void c(ViewGroup viewGroup, int i2) {
        ImageView imageView = new ImageView(getContext());
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1, 1.0f);
        if (this.m.b() == 1) {
            layoutParams.gravity = 1;
        } else {
            layoutParams.gravity = 16;
        }
        l4d.a(imageView, 0.4f);
        viewGroup.addView(imageView, layoutParams);
        this.q.add(new h().c(false).b(imageView));
        imageView.setOnClickListener(new g(i2));
        if (this.m.a().get(i2) == null || TextUtils.isEmpty(this.m.a().get(i2).e())) {
            return;
        }
        ey4.d(imageView, Uri.parse(this.m.a().get(i2).e()), lbd.c(this.m.a().get(i2).e(), lbd.E).M(true).n(1).t(), null);
    }

    public void disappear(boolean z) {
        Animation animation;
        this.n = false;
        if (a()) {
            stopTurning();
        }
        if (!z || (animation = this.e) == null) {
            l4d.g(this.c, this);
        } else {
            animation.setAnimationListener(new a());
            startAnimation(this.e);
        }
    }

    public LoopSchemeView getSchemeView() {
        return this;
    }

    public CornerSchemeView.a getStyle() {
        return this.r;
    }

    public boolean isVisiblity() {
        return this.n;
    }

    public CornerSchemeView prepareContainer(ViewGroup viewGroup, ViewGroup.MarginLayoutParams marginLayoutParams) {
        this.c = viewGroup;
        this.f = marginLayoutParams;
        return this;
    }

    @Override
    public void setEventListener(com.mgadplus.viewgroup.dynamicview.a.C0159a c0159a) {
        this.g = c0159a;
    }

    public com.mgadplus.viewgroup.dynamicview.a setInterectAnimation(Animation animation, Animation animation2) {
        this.d = animation;
        this.e = animation2;
        return this;
    }

    public void setStyle(CornerSchemeView.a aVar) {
        this.r = aVar;
    }

    public void startTurning() {
        ConvenientBanner convenientBanner = this.b;
        if (convenientBanner != null) {
            convenientBanner.a(5000L);
        }
    }

    public void stopTurning() {
        ConvenientBanner convenientBanner = this.b;
        if (convenientBanner != null) {
            convenientBanner.b();
        }
    }

    @Override
    public void bindData(com.mgmi.model.e eVar) {
        if (eVar == null || eVar.a() == null) {
            return;
        }
        if ((eVar.a().size() == 2 || eVar.a().size() == 3) && !isVisiblity()) {
            this.p = 0;
            this.m = eVar;
            appear(true);
            h();
            ConvenientBanner convenientBanner = (ConvenientBanner) findViewById(R.id.convenientBanner);
            this.b = convenientBanner;
            convenientBanner.setCanLoop(true);
            this.b.setManualPageable(true);
            this.b.a(new b(), this.m.a());
            TextView textView = (TextView) findViewById(R.id.tvAdDetail);
            this.h = textView;
            textView.setOnClickListener(new c());
            ImageButton imageButton = (ImageButton) findViewById(R.id.dianzanButton);
            this.j = imageButton;
            if (imageButton != null) {
                imageButton.setOnClickListener(new d());
            }
            ImageView imageView = (ImageView) findViewById(R.id.schemeClose);
            if (imageView != null) {
                imageView.setOnClickListener(new e());
            }
            this.i = (TextView) findViewById(R.id.title);
            this.k = (TextView) findViewById(R.id.content);
            this.l = (ImageView) findViewById(R.id.small_icon);
            this.b.a(new f());
            ViewGroup viewGroup = (ViewGroup) findViewById(R.id.logbar);
            if (eVar.a().size() == 3) {
                c(viewGroup, 0);
                c(viewGroup, 1);
                c(viewGroup, 2);
            } else {
                c(viewGroup, 0);
                c(viewGroup, 1);
            }
            b(0);
            startTurning();
        }
    }

    public LoopSchemeView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.n = false;
        this.p = 0;
        this.r = CornerSchemeView.a.Center;
        f();
    }

    public LoopSchemeView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.n = false;
        this.p = 0;
        this.r = CornerSchemeView.a.Center;
        f();
    }

    @RequiresApi(api = 21)
    public LoopSchemeView(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        this.n = false;
        this.p = 0;
        this.r = CornerSchemeView.a.Center;
        f();
    }

    public boolean a() {
        return this.b.a();
    }
}
