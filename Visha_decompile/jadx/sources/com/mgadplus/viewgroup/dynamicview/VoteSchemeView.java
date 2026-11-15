package com.mgadplus.viewgroup.dynamicview;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.mgmi.R;
import com.mgmi.model.e;
import com.mgmi.model.t;
import com.mgmi.model.u;
import defpackage.ey4;
import defpackage.j4d;
import defpackage.l4d;
import defpackage.lbd;
import java.util.List;

public class VoteSchemeView extends RelativeLayout implements CornerSchemeView {
    public ViewGroup.MarginLayoutParams b;
    public boolean c;
    public ViewGroup d;
    public Animation e;
    public Animation f;
    public VoteAdapter g;
    public com.mgadplus.viewgroup.dynamicview.a.C0159a h;
    public e i;
    public com.mgmi.e.a.a j;
    public RecyclerView k;

    public class a implements VoteAdapter.b {
        public final t a;
        public final List b;

        public a(t tVar, List list) {
            this.a = tVar;
            this.b = list;
        }

        @Override
        public void a(u uVar) {
            if (this.a.c()) {
                return;
            }
            VoteSchemeView.this.e(this.a, uVar, this.b);
        }
    }

    public class b implements Animation.AnimationListener {
        public b() {
        }

        @Override
        public void onAnimationEnd(Animation animation) {
            VoteSchemeView.this.disappear(false);
            VoteSchemeView.this.j.d(VoteSchemeView.this.i.a().get(0));
            if (VoteSchemeView.this.h != null) {
                VoteSchemeView.this.h.a();
            }
        }

        @Override
        public void onAnimationRepeat(Animation animation) {
        }

        @Override
        public void onAnimationStart(Animation animation) {
        }
    }

    public class c implements View.OnClickListener {
        public c() {
        }

        @Override
        public void onClick(View view) {
            VoteSchemeView.this.b();
        }
    }

    public VoteSchemeView(Context context) {
        super(context);
        this.c = false;
        this.j = new com.mgmi.e.a.a(getContext());
    }

    public void b() {
        disappear(false);
        this.j.a(this.i.a().get(0));
        com.mgadplus.viewgroup.dynamicview.a.C0159a c0159a = this.h;
        if (c0159a != null) {
            c0159a.a(0);
        }
    }

    private void d(t tVar) {
        List<u> listA = tVar.a();
        if (tVar.c()) {
            this.g = new VoteAdapter(listA, getContext(), 2);
        } else if (TextUtils.isEmpty(listA.get(0).e())) {
            this.g = new VoteAdapter(listA, getContext(), 0);
        } else {
            this.g = new VoteAdapter(listA, getContext(), 1);
        }
        this.g.a(new a(tVar, listA));
    }

    public void e(t tVar, u uVar, List list) {
        tVar.a(true);
        u.a((List<u>) list);
        uVar.a(true);
        VoteAdapter voteAdapter = new VoteAdapter(list, getContext(), 2);
        this.g = voteAdapter;
        this.k.setAdapter(voteAdapter);
        this.j.a(uVar);
    }

    public void appear(boolean z) {
        Animation animation;
        l4d.c(this.d, this, this.b);
        this.c = true;
        if (!z || (animation = this.e) == null) {
            return;
        }
        startAnimation(animation);
    }

    public void disappear(boolean z) {
        Animation animation;
        this.c = false;
        if (!z || (animation = this.f) == null) {
            j4d.b(new Runnable() {
                @Override
                public void run() {
                    l4d.g(VoteSchemeView.this.d, VoteSchemeView.this);
                }
            });
        } else {
            animation.setAnimationListener(new b());
            startAnimation(this.f);
        }
    }

    public <V extends View> V getSchemeView() {
        return null;
    }

    public boolean isVisiblity() {
        return this.c;
    }

    public CornerSchemeView prepareContainer(ViewGroup viewGroup, ViewGroup.MarginLayoutParams marginLayoutParams) {
        this.d = viewGroup;
        this.b = marginLayoutParams;
        return this;
    }

    @Override
    public void setEventListener(com.mgadplus.viewgroup.dynamicview.a.C0159a c0159a) {
        this.h = c0159a;
    }

    public com.mgadplus.viewgroup.dynamicview.a setInterectAnimation(Animation animation, Animation animation2) {
        this.e = animation;
        this.f = animation2;
        return this;
    }

    public void startTurning() {
    }

    public void stopTurning() {
    }

    @Override
    @NonNull
    public void bindData(e eVar) {
        if (eVar == null || eVar.a() == null || eVar.a().size() <= 0 || eVar.a().get(0) == null || eVar.a().get(0).a() == null || eVar.a().get(0).a().a() == null) {
            return;
        }
        this.i = eVar;
        t tVarA = eVar.a().get(0).a();
        if (!isVisiblity()) {
            appear(false);
        }
        d(tVarA);
        this.k = (RecyclerView) findViewById(R.id.listview);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getContext());
        linearLayoutManager.setOrientation(1);
        this.k.setLayoutManager(linearLayoutManager);
        this.k.setAdapter(this.g);
        TextView textView = (TextView) findViewById(R.id.headview);
        if (textView != null && !TextUtils.isEmpty(tVarA.b())) {
            textView.setText(tVarA.b());
        }
        ImageView imageView = (ImageView) findViewById(R.id.adbanner);
        if (imageView != null && !TextUtils.isEmpty(tVarA.d())) {
            ey4.d(imageView, Uri.parse(tVarA.d()), lbd.c(tVarA.d(), lbd.E).n(0).t(), null);
        }
        imageView.setOnClickListener(new c());
        ImageView imageView2 = (ImageView) findViewById(R.id.logPic);
        if (imageView2 != null && !TextUtils.isEmpty(tVarA.e())) {
            ey4.d(imageView2, Uri.parse(tVarA.e()), lbd.c(tVarA.e(), lbd.E).n(0).M(true).t(), null);
        }
        Animation animation = this.e;
        if (animation != null) {
            startAnimation(animation);
        }
        this.j.c(eVar.a().get(0));
    }

    public VoteSchemeView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.c = false;
        this.j = new com.mgmi.e.a.a(getContext());
    }

    public VoteSchemeView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.c = false;
        this.j = new com.mgmi.e.a.a(getContext());
    }
}
