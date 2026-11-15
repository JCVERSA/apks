package com.mgadplus.viewgroup.dynamicview;

import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.hunantv.media.drm.IDrmSession;
import com.mgadplus.netlib.a.e;
import com.mgmi.R;
import com.mgmi.model.VASTFloatAd;
import com.mgmi.model.t;
import com.mgmi.model.u;
import defpackage.g4d;
import defpackage.l4d;
import java.util.List;

public class VoteFloatView extends FlipFramelayout {
    public boolean I;
    public TextView J;
    public RecyclerView K;
    public ImageView L;
    public boolean M;
    public VoteAdapter N;
    public ViewGroup O;
    public ViewGroup.MarginLayoutParams P;
    public com.mgadplus.viewgroup.dynamicview.a.C0159a Q;
    public GestureDetector R;
    public boolean S;

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
            VoteFloatView.this.l(this.a, uVar, this.b);
        }
    }

    public class b extends com.mgadplus.netlib.base.b {
        public b() {
        }

        @Override
        public void a(int i, int i2, String str, Throwable th, String str2) {
        }

        @Override
        public void b(Object obj) {
        }

        @Override
        public void a(Object obj) {
        }
    }

    public class c implements View.OnClickListener {
        public c() {
        }

        @Override
        public void onClick(View view) {
            if (VoteFloatView.this.Q != null) {
                VoteFloatView.this.Q.a();
            }
        }
    }

    public VoteFloatView(@NonNull Context context) {
        super(context);
        this.M = false;
        this.R = new GestureDetector(this);
        this.S = false;
        setOnTouchListener(this);
        i(context);
    }

    private void i(Context context) {
    }

    @Override
    public void a() {
    }

    @Override
    public void appear(boolean z) {
        l4d.g(this.O, this);
        l4d.c(this.O, this, this.P);
        this.M = true;
        if (z) {
            a();
            c();
        }
    }

    @Override
    public void b() {
    }

    @Override
    public void disappear(boolean z) {
        l4d.g(this.O, this);
        this.M = false;
    }

    @Override
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        this.R.onTouchEvent(motionEvent);
        super.dispatchTouchEvent(motionEvent);
        return true;
    }

    @Override
    public VoteFloatView getSchemeView() {
        return this;
    }

    @Override
    public boolean isVisiblity() {
        return this.M;
    }

    public final void k(t tVar) {
        List<u> listA = tVar.a();
        if (this.N == null) {
            if (tVar.c()) {
                if (this.S) {
                    this.N = new VoteAdapter(listA, getContext(), 4);
                    return;
                } else {
                    this.N = new VoteAdapter(listA, getContext(), 6);
                    return;
                }
            }
            if (this.S) {
                this.N = new VoteAdapter(listA, getContext(), 3);
            } else {
                this.N = new VoteAdapter(listA, getContext(), 5);
            }
            this.N.a(new a(tVar, listA));
        }
    }

    public final void l(t tVar, u uVar, List list) {
        if (tVar != null) {
            tVar.a(true);
        }
        u.a((List<u>) list);
        if (this.S) {
            this.N = new VoteAdapter(list, getContext(), 4);
        } else {
            this.N = new VoteAdapter(list, getContext(), 6);
        }
        this.K.setAdapter(this.N);
        if (TextUtils.isEmpty(uVar.g())) {
            return;
        }
        e.a(new com.mgmi.net.a.a().a(1).a(uVar.g()).a(getContext()), new b());
    }

    @Override
    public boolean onDown(MotionEvent motionEvent) {
        if (this.I) {
            setClickable(false);
        } else {
            setClickable(true);
        }
        return true;
    }

    @Override
    public void onFinishInflate() {
        super.onFinishInflate();
    }

    @Override
    public void onLongPress(MotionEvent motionEvent) {
    }

    @Override
    public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        return false;
    }

    @Override
    public void onShowPress(MotionEvent motionEvent) {
    }

    @Override
    public boolean onSingleTapUp(MotionEvent motionEvent) {
        return false;
    }

    @Override
    public boolean onTouch(View view, MotionEvent motionEvent) {
        return this.I ? this.R.onTouchEvent(motionEvent) : super.onTouchEvent(motionEvent);
    }

    @Override
    public CornerSchemeView prepareContainer(ViewGroup viewGroup, ViewGroup.MarginLayoutParams marginLayoutParams) {
        this.O = viewGroup;
        this.P = marginLayoutParams;
        return this;
    }

    @Override
    public void setEventListener(com.mgadplus.viewgroup.dynamicview.a.C0159a c0159a) {
        this.Q = c0159a;
    }

    public void setFullSreen(boolean z) {
        this.S = z;
    }

    @Override
    public com.mgadplus.viewgroup.dynamicview.a setInterectAnimation(Animation animation, Animation animation2) {
        return null;
    }

    @Override
    public void startTurning() {
    }

    @Override
    public void stopTurning() {
    }

    @Override
    public void bindData(VASTFloatAd vASTFloatAd) {
        l4d.g(this.O, this);
        l4d.c(this.O, this, this.P);
        k(vASTFloatAd.getVoteMessage());
        this.K = (RecyclerView) findViewById(R.id.listview);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getContext());
        linearLayoutManager.setOrientation(0);
        this.K.setLayoutManager(linearLayoutManager);
        this.K.setAdapter(this.N);
        this.M = true;
        ImageView imageView = (ImageView) findViewById(R.id.closeAdIcon);
        this.L = imageView;
        imageView.setOnClickListener(new c());
        if (vASTFloatAd.getClose() == 1) {
            this.L.setVisibility(0);
        } else {
            this.L.setVisibility(8);
        }
        t voteMessage = vASTFloatAd.getVoteMessage();
        if (!TextUtils.isEmpty(voteMessage.b())) {
            TextView textView = (TextView) findViewById(R.id.logbar);
            this.J = textView;
            textView.setText(voteMessage.b());
            GradientDrawable gradientDrawable = (GradientDrawable) this.J.getBackground();
            if (gradientDrawable != null) {
                gradientDrawable.setColor(g4d.w(voteMessage.f()));
                gradientDrawable.setAlpha(IDrmSession.ERROR_SESSION_DRM_NULL);
            }
        }
        FrameLayout frameLayout = (FrameLayout) findViewById(R.id.mainBg);
        this.w = frameLayout;
        this.x = frameLayout;
        c();
        com.mgadplus.viewgroup.dynamicview.a.C0159a c0159a = this.Q;
        if (c0159a != null) {
            c0159a.b();
        }
    }

    public VoteFloatView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.M = false;
        this.R = new GestureDetector(this);
        this.S = false;
        setOnTouchListener(this);
        i(context);
    }

    public VoteFloatView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.M = false;
        this.R = new GestureDetector(this);
        this.S = false;
        setOnTouchListener(this);
        i(context);
    }
}
