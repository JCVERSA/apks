package com.transsion.audio.fragments;

import android.animation.ValueAnimator;
import android.content.ClipData;
import android.graphics.Color;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.LinearLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.p004lifecycle.Observer;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.LogUtils;
import com.transsion.audio.R;
import com.transsion.audio.adapter.AudioItemAdapter;
import com.transsion.audio.widgets.AudioAnimationView;
import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.dbdata.utils.SortUtil;
import com.transsion.effectengine.bounceeffect.IOverScrollDecor;
import com.transsion.eventbus.LiveEventBus;
import com.transsion.playercommon.adapter.AudioStackAdapter;
import com.transsion.playercommon.fragments.BaseFragment;
import com.transsion.playercommon.stack.AudioStackLayoutManager;
import com.transsion.playercommon.videomodel.AudioAlbumViewModel;
import com.transsion.utils.BaseConstant;
import com.transsion.widgets.CustomSwipeRefreshLayout;
import defpackage.aec;
import defpackage.av3;
import defpackage.bec;
import defpackage.bf7;
import defpackage.cec;
import defpackage.h27;
import defpackage.jf;
import defpackage.pz5;
import defpackage.t55;
import defpackage.w6c;
import defpackage.ydc;
import defpackage.ze7;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class AudioDragBaseFragment extends AudioBaseFragment implements AudioItemAdapter.b, AudioItemAdapter.d {
    public ConstraintLayout V;
    public AudioStackAdapter W;
    public RecyclerView X;
    public View.DragShadowBuilder Y;
    public cec Z;
    public int a0;
    public View d0;
    public BaseConstant.SCREEN_TYPE f0;
    public float[] h0;
    public Bundle i0;
    public AudioAlbumViewModel n0;
    public boolean o0;
    public boolean p0;
    public boolean q0;
    public boolean r0;
    public int s0;
    public String b0 = "";
    public int c0 = 0;
    public List e0 = new ArrayList();
    public boolean g0 = false;
    public float j0 = 0.0f;
    public float k0 = 0.0f;
    public float l0 = 1.0f;
    public boolean m0 = false;
    public final ze7 t0 = new d();
    public final bf7 u0 = new bf7() {
        @Override
        public final void a(RecyclerView.ViewHolder viewHolder, int i) {
            this.a.X1(viewHolder, i);
        }
    };
    public Handler v0 = new Handler(new Handler.Callback() {
        @Override
        public final boolean handleMessage(Message message) {
            return this.b.Y1(message);
        }
    });

    public class a implements View.OnAttachStateChangeListener {
        public a() {
        }

        @Override
        public void onViewAttachedToWindow(View view) {
        }

        @Override
        public void onViewDetachedFromWindow(View view) {
            View view2 = AudioDragBaseFragment.this.d0;
            if (view2 != null) {
                view2.cancelDragAndDrop();
            }
        }
    }

    public class b implements RecyclerView.OnChildAttachStateChangeListener {
        public b() {
        }

        @Override
        public void onChildViewAttachedToWindow(View view) {
            if (AudioDragBaseFragment.this.e0.contains(view)) {
                AudioDragBaseFragment.this.e0.remove(view);
            }
            AudioDragBaseFragment.this.e0.add(view);
        }

        @Override
        public void onChildViewDetachedFromWindow(View view) {
            AudioDragBaseFragment.this.e0.remove(view);
        }
    }

    public class c implements RecyclerView.OnItemTouchListener {
        public c() {
        }

        /* JADX WARN: Code duplicated, block: B:10:0x0011  */
        /* JADX WARN: Code duplicated, block: B:11:0x0017  */
        @Override
        public boolean onInterceptTouchEvent(RecyclerView recyclerView, MotionEvent motionEvent) {
            int action = motionEvent.getAction();
            if (action == 0) {
                AudioDragBaseFragment.this.g0 = true;
            } else if (action == 1) {
                AudioDragBaseFragment.this.g0 = false;
            } else if (action == 2) {
                AudioDragBaseFragment.this.g0 = true;
            } else if (action == 3) {
                AudioDragBaseFragment.this.g0 = false;
            }
            return false;
        }

        @Override
        public void onRequestDisallowInterceptTouchEvent(boolean z) {
        }

        @Override
        public void onTouchEvent(RecyclerView recyclerView, MotionEvent motionEvent) {
        }
    }

    public class d implements ze7 {
        public d() {
        }

        @Override
        public void onItemDismiss(RecyclerView.ViewHolder viewHolder) {
        }

        @Override
        public boolean onItemMove(RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2) {
            if (viewHolder.getItemViewType() != viewHolder2.getItemViewType()) {
                return false;
            }
            int adapterPosition = viewHolder.getAdapterPosition();
            int adapterPosition2 = viewHolder2.getAdapterPosition();
            if (adapterPosition != adapterPosition2) {
                AudioDragBaseFragment.this.o0 = true;
            }
            Collections.swap(AudioDragBaseFragment.this.u.getData(), adapterPosition, adapterPosition2);
            AudioDragBaseFragment.this.u.notifyItemMoved(adapterPosition, adapterPosition2);
            return true;
        }
    }

    public class e implements aec {
        public e() {
        }

        @Override
        public void onUpdateDrawShadow(String str, int i) {
            if (AudioDragBaseFragment.this.Z != null) {
                if (i == 4) {
                    LiveEventBus.b().c("draw_shadow", Boolean.TRUE);
                } else {
                    LiveEventBus.b().c("draw_shadow", Boolean.FALSE);
                    if (i == 3) {
                        AudioDragBaseFragment.this.z1(false);
                        AudioDragBaseFragment.this.Z.release();
                        AudioDragBaseFragment.this.Z = null;
                    }
                }
            }
            AudioDragBaseFragment audioDragBaseFragment = AudioDragBaseFragment.this;
            View view = audioDragBaseFragment.d0;
            if (view != null) {
                audioDragBaseFragment.h2(view, str, i);
            }
        }
    }

    public class f implements ValueAnimator.AnimatorUpdateListener {
        public final AudioAnimationView b;
        public final boolean c;
        public final View d;
        public final LinearLayout e;
        public final int[] f;
        public final int[] g;

        public f(AudioAnimationView audioAnimationView, boolean z, View view, LinearLayout linearLayout, int[] iArr, int[] iArr2) {
            this.b = audioAnimationView;
            this.c = z;
            this.d = view;
            this.e = linearLayout;
            this.f = iArr;
            this.g = iArr2;
        }

        @Override
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            ConstraintLayout constraintLayout;
            try {
                float[] fArrB = bec.b(((BaseFragment) AudioDragBaseFragment.this).mContext);
                AudioDragBaseFragment audioDragBaseFragment = AudioDragBaseFragment.this;
                if (fArrB == null) {
                    fArrB = audioDragBaseFragment.h0;
                }
                audioDragBaseFragment.h0 = fArrB;
            } catch (Exception e) {
                Log.e("AudioDragBaseFragment", "onAnimationUpdate: exception " + e.getMessage());
            }
            AudioDragBaseFragment audioDragBaseFragment2 = AudioDragBaseFragment.this;
            if (audioDragBaseFragment2.h0 == null) {
                ConstraintLayout constraintLayout2 = audioDragBaseFragment2.V;
                if (constraintLayout2 != null) {
                    constraintLayout2.removeView(this.b);
                    return;
                }
                return;
            }
            ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) this.b.getLayoutParams();
            if (this.c) {
                layoutParams.setMarginStart((int) ((((this.d.getWidth() - (AudioDragBaseFragment.this.h0[0] - (this.e.getWidth() / 2))) - this.e.getWidth()) * (valueAnimator.getCurrentPlayTime() / 300.0f)) / AudioDragBaseFragment.this.l0));
            } else {
                ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin = (int) (((this.f[0] - this.g[0]) + (((AudioDragBaseFragment.this.h0[0] - (this.e.getWidth() / 2)) - this.f[0]) * (valueAnimator.getCurrentPlayTime() / 300.0f))) / AudioDragBaseFragment.this.l0);
            }
            float f = this.f[1];
            AudioDragBaseFragment audioDragBaseFragment3 = AudioDragBaseFragment.this;
            ((ViewGroup.MarginLayoutParams) layoutParams).topMargin = (int) (((f - ((audioDragBaseFragment3.l0 * 110.0f) + audioDragBaseFragment3.k0)) + (((audioDragBaseFragment3.h0[1] - (this.e.getHeight() / 2)) - this.f[1]) * (valueAnimator.getCurrentPlayTime() / 300.0f))) / AudioDragBaseFragment.this.l0);
            this.b.setLayoutParams(layoutParams);
            if (valueAnimator.getCurrentPlayTime() < 300 || (constraintLayout = AudioDragBaseFragment.this.V) == null) {
                return;
            }
            constraintLayout.removeView(this.b);
        }
    }

    public void h2(View view, String str, int i) {
        this.c0 = i;
        this.b0 = str;
        a2();
        this.v0.removeMessages(1);
        if (this.G) {
            this.v0.sendEmptyMessageDelayed(1, 300L);
        }
    }

    @Override
    public void K0(boolean z) {
        super.K0(z);
    }

    public void N1() {
        this.n0 = (AudioAlbumViewModel) getViewModelByActivity(AudioAlbumViewModel.class);
        if (getActivity() != null) {
            this.n0.a(this, new Observer() {
                @Override
                public void onChanged(List list) {
                    AudioItemAdapter audioItemAdapter = AudioDragBaseFragment.this.u;
                    if (audioItemAdapter == null || audioItemAdapter == null || list == null) {
                        return;
                    }
                    AudioDragBaseFragment.this.u.q = list;
                    AudioDragBaseFragment.this.H.post(new Runnable() {
                        @Override
                        public void run() {
                            try {
                                AudioDragBaseFragment.this.u.notifyDataSetChanged();
                            } catch (Exception e2) {
                                Log.e("AudioDragBaseFragment", "addAudioAlbumViewModelObserver: " + e2);
                            }
                        }
                    });
                }
            });
        }
    }

    public void O1() {
        this.u.setOnSelectListener(this);
        this.u.setOnDragListener(this);
        this.u.setOnTitleClickListener(this);
        this.H.addOnChildAttachStateChangeListener(new b());
        this.H.addOnItemTouchListener(new c());
    }

    public void P1() {
        LogUtils.j("AudioDragBaseFragment", "disableManualDrag");
        this.M = false;
        if (!this.o0) {
            c2();
        }
        CustomSwipeRefreshLayout customSwipeRefreshLayout = this.mPullDampingLayout;
        if (customSwipeRefreshLayout != null) {
            customSwipeRefreshLayout.setEnabled(true);
            this.mPullDampingLayout.setNestedScrollingEnabled(true);
        }
        this.H.setOverScrollMode(0);
        IOverScrollDecor iOverScrollDecor = this.mOverScrollDecor;
        if (iOverScrollDecor != null) {
            iOverScrollDecor.enable();
        }
        this.H.setLongPressDragEnabled(false);
        this.H.setOnItemMoveListener(null);
        this.u.setOnTouchListener(null);
        this.H.setOnItemStateChangedListener(null);
        K0(false);
    }

    public void Q1() {
        LogUtils.j("AudioDragBaseFragment", "enableManualDrag");
        this.M = true;
        this.o0 = false;
        CustomSwipeRefreshLayout customSwipeRefreshLayout = this.mPullDampingLayout;
        if (customSwipeRefreshLayout != null) {
            customSwipeRefreshLayout.setEnabled(false);
            this.mPullDampingLayout.setNestedScrollingEnabled(false);
        }
        this.H.setOverScrollMode(2);
        IOverScrollDecor iOverScrollDecor = this.mOverScrollDecor;
        if (iOverScrollDecor != null) {
            iOverScrollDecor.disable();
        }
        this.H.setLongPressDragEnabled(true);
        this.H.setOnItemMoveListener(this.t0);
        this.H.setOnItemStateChangedListener(this.u0);
        this.u.setOnTouchListener(new AudioItemAdapter.e() {
            @Override
            public final boolean a(RecyclerView.ViewHolder viewHolder) {
                return this.a.W1(viewHolder);
            }
        });
        b2();
        K0(true);
    }

    public final void R1(int i, AudioItem audioItem) {
        this.C.clear();
        this.C.add(audioItem);
        g2(this.C);
        boolean z = this.isInEditMode;
        if (!z) {
            editMode(true);
        }
        this.u.P(audioItem, true, i);
        View view = this.d0;
        if (view != null) {
            view.setVisibility(4);
        }
        this.B = this.u.G();
        if (ydc.f()) {
            this.v0.removeMessages(2);
            Message message = new Message();
            message.obj = audioItem;
            message.what = 2;
            this.v0.sendMessageDelayed(message, z ? 0L : 800L);
        }
    }

    public final void S1(int i, AudioItem audioItem) {
    }

    public void T1(View view) {
        if (getDragAnimationView() != null) {
            this.V = getDragAnimationView();
        }
        if (this.d0 == null) {
            View viewInflate = ((ViewStub) view.findViewById(R.id.vs_audio_stack)).inflate();
            this.d0 = viewInflate;
            this.X = (RecyclerView) viewInflate.findViewById(R.id.ry_stack);
            this.d0.setVisibility(8);
            this.X.setItemAnimator(new DefaultItemAnimator());
            AudioStackAdapter audioStackAdapter = new AudioStackAdapter(this.mContext, this.C, this.f0);
            this.W = audioStackAdapter;
            audioStackAdapter.r(this.c0);
            this.X.setAdapter(this.W);
            this.X.setLayoutManager(new AudioStackLayoutManager(this.mContext, this.X));
            this.d0.addOnAttachStateChangeListener(new a());
        }
    }

    public final void U1() {
        cec cecVar = this.Z;
        if (cecVar != null) {
            cecVar.release();
        }
        cec cecVarA = bec.a(this.mContext, true);
        this.Z = cecVarA;
        if (cecVarA == null) {
            return;
        }
        cecVarA.a(new e());
    }

    public void V1(AudioItem audioItem, View view) {
        View view2;
        if (this.B.contains(audioItem) && this.c0 == 4) {
            f2(view, audioItem, bec.b(this.mContext));
        } else if (this.B.size() == 0 && (view2 = this.d0) != null) {
            view2.cancelDragAndDrop();
        }
        View view3 = this.d0;
        if (view3 != null) {
            h2(view3, this.b0, this.c0);
        }
    }

    public final boolean W1(RecyclerView.ViewHolder viewHolder) {
        this.H.startDrag(viewHolder);
        return false;
    }

    public final void X1(RecyclerView.ViewHolder viewHolder, int i) {
        if (i == 2) {
            viewHolder.itemView.setBackgroundColor(Color.parseColor("#1D000000"));
            pz5.a(getListFlag());
        } else if (i == 0) {
            viewHolder.itemView.setBackgroundColor(Color.parseColor("#00ffffff"));
            d2();
        }
    }

    public final boolean Y1(Message message) {
        View view;
        int i = message.what;
        if (i == 1) {
            View view2 = this.d0;
            if (view2 != null) {
                view2.updateDragShadow(this.Y);
            }
        } else if (i == 2 && this.g0 && (view = this.d0) != null) {
            e2(view, (AudioItem) message.obj);
        }
        return true;
    }

    public void Z1() {
        View view = this.d0;
        if (view != null) {
            view.cancelDragAndDrop();
        }
        List list = this.e0;
        if (list != null) {
            list.clear();
        }
    }

    public void a2() {
        AudioStackAdapter audioStackAdapter = this.W;
        if (audioStackAdapter == null) {
            return;
        }
        audioStackAdapter.r(this.c0);
        this.W.t(this.f0);
        g2(this.B);
    }

    public void b2() {
        ArrayList arrayList = new ArrayList(this.u.getData());
        t55.n(arrayList, this.z);
        this.u.setNewData(arrayList);
    }

    public final void c2() {
        if (this.p0) {
            if (!this.r0 || Build.VERSION.SDK_INT <= 29) {
                w6c.t(this.mContext, "audio_pref_sort_name", this.s0);
                w6c.r(this.mContext, "audio_pref_sort_by", this.q0);
            } else {
                w6c.t(this.mContext, "audio_pref_sort_name_album", this.s0);
                w6c.r(this.mContext, "audio_pref_sort_by_album", this.q0);
            }
            SortUtil.q(this.s0);
            SortUtil.p(this.q0);
            this.p0 = false;
        }
    }

    @Override
    public void d(boolean z) {
        if (!z) {
            Z1();
            return;
        }
        View view = this.d0;
        if (view != null) {
            h2(view, this.b0, this.c0);
        }
    }

    public void d2() {
        t55.t(this.u.getData(), this.z);
    }

    public final void e2(View view, AudioItem audioItem) {
        ClipData clipDataNewUri;
        List list;
        if (this.B.size() > 0) {
            clipDataNewUri = null;
            for (int i = 0; i < this.B.size(); i++) {
                if (clipDataNewUri == null) {
                    clipDataNewUri = ClipData.newUri(view.getContext().getContentResolver(), "vishaplayerhd", ((AudioItem) this.B.get(i)).getUri());
                } else {
                    clipDataNewUri.addItem(new ClipData.Item(((AudioItem) this.B.get(i)).getUri()));
                }
            }
        } else {
            clipDataNewUri = null;
        }
        try {
            this.Y = new View.DragShadowBuilder(view);
            U1();
            this.a0 = 769;
            view.startDragAndDrop(clipDataNewUri, this.Y, null, 769);
            z1(true);
            C1(this.x);
            if (bec.b(this.mContext) == null || (list = this.e0) == null || list.size() <= 0) {
                return;
            }
            int i2 = 0;
            for (int i3 = 0; i3 < this.e0.size(); i3++) {
                RecyclerView.ViewHolder viewHolderFindContainingViewHolder = this.H.findContainingViewHolder((View) this.e0.get(i3));
                if (viewHolderFindContainingViewHolder != null) {
                    int layoutPosition = viewHolderFindContainingViewHolder.getLayoutPosition();
                    int footerLayoutCount = this.u.getFooterLayoutCount();
                    if (this.u.getData().size() <= layoutPosition) {
                        layoutPosition -= footerLayoutCount;
                    }
                    AudioItem audioItem2 = this.u.getData().get(layoutPosition);
                    if (!this.B.contains(audioItem2)) {
                        continue;
                    } else {
                        if (i2 > 5) {
                            return;
                        }
                        f2((View) this.e0.get(i3), audioItem2, bec.b(this.mContext));
                        i2++;
                    }
                }
            }
        } catch (Exception e2) {
            Log.e("AudioDragBaseFragment", "startDragAnimation error: " + e2.getMessage());
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final void f2(View view, AudioItem audioItem, float[] fArr) {
        boolean z = av3.z();
        if (fArr == null) {
            return;
        }
        int[] iArr = new int[2];
        int[] iArr2 = new int[2];
        LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.ll_item);
        view.getLocationOnScreen(iArr2);
        if (linearLayout == null) {
            return;
        }
        linearLayout.getLocationOnScreen(iArr);
        if (jf.m(this.mContext)) {
            Bundle bundleF = jf.f(this.mContext);
            this.i0 = bundleF;
            if (bundleF != null) {
                this.j0 = bundleF.getFloat("position_x");
                this.k0 = this.i0.getFloat("position_y");
                float f2 = this.i0.getFloat("scale");
                this.l0 = f2;
                float f3 = iArr[0] * f2;
                float f4 = this.j0;
                iArr[0] = (int) (f3 + f4);
                float f5 = iArr[1] * f2;
                float f6 = this.k0;
                iArr[1] = (int) (f5 + f6);
                iArr2[0] = (int) ((iArr2[0] * f2) + f4);
                iArr2[1] = (int) ((iArr2[1] * f2) + f6);
            }
        } else {
            this.j0 = 0.0f;
            this.k0 = 0.0f;
            this.l0 = 1.0f;
        }
        if (audioItem == null || TextUtils.isEmpty(audioItem.getUri().toString())) {
            return;
        }
        AudioAnimationView audioAnimationView = new AudioAnimationView(this.mContext, audioItem);
        ConstraintLayout.LayoutParams layoutParams = new ConstraintLayout.LayoutParams(linearLayout.getWidth(), linearLayout.getHeight());
        if (z) {
            layoutParams.setMarginStart((int) ((((view.getWidth() - iArr[0]) - linearLayout.getWidth()) - iArr2[0]) / this.l0));
        } else {
            ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin = (int) ((iArr[0] - iArr2[0]) / this.l0);
        }
        int i = R.id.cl_drag_animation_view;
        layoutParams.startToStart = i;
        layoutParams.topToTop = i;
        float f7 = iArr[1];
        float f8 = this.l0;
        ((ViewGroup.MarginLayoutParams) layoutParams).topMargin = (int) ((f7 - ((110.0f * f8) + this.k0)) / f8);
        audioAnimationView.setAlpha(0.7f);
        audioAnimationView.setLayoutParams(layoutParams);
        ConstraintLayout constraintLayout = this.V;
        if (constraintLayout != null) {
            constraintLayout.addView(audioAnimationView);
        }
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(1, 100);
        valueAnimatorOfInt.addUpdateListener(new f(audioAnimationView, z, view, linearLayout, iArr, iArr2));
        valueAnimatorOfInt.setDuration(300L);
        valueAnimatorOfInt.start();
        h2(this.d0, this.b0, 4);
    }

    public final void g2(final ArrayList arrayList) {
        if (this.W == null || this.X == null) {
            return;
        }
        new Runnable() {
            int mRetryCount = 0;

            @Override
            public void run() {
                RecyclerView recyclerView;
                int i;
                AudioDragBaseFragment audioDragBaseFragment = AudioDragBaseFragment.this;
                if (audioDragBaseFragment.W == null || (recyclerView = audioDragBaseFragment.X) == null) {
                    return;
                }
                if ((recyclerView.isComputingLayout() || AudioDragBaseFragment.this.X.getScrollState() != 0) && (i = this.mRetryCount) < 4) {
                    this.mRetryCount = i + 1;
                    AudioDragBaseFragment.this.X.post(this);
                    return;
                }
                try {
                    AudioDragBaseFragment.this.W.s(arrayList);
                } catch (IllegalStateException e2) {
                    Log.e("AudioDragBaseFragment", "updateAudioStackDataSafely: " + e2.getMessage());
                }
            }
        }.run();
    }

    @Override
    public void handleManual(boolean z) {
        super.handleManual(z);
        if (z) {
            Q1();
        } else {
            P1();
        }
    }

    @Override
    public void onDestroy() {
        cec cecVar = this.Z;
        if (cecVar != null) {
            cecVar.release();
            this.Z = null;
        }
        super.onDestroy();
        this.v0.removeCallbacksAndMessages(null);
    }

    @Override
    public void onDestroyView() {
        super.onDestroyView();
        if (this.V != null) {
            this.V = null;
        }
        this.d0 = null;
    }

    @Override
    public void onManualSortRequested(int i, boolean z, boolean z2) {
        this.p0 = true;
        this.s0 = i;
        this.q0 = z;
        this.r0 = z2;
    }

    @Override
    public void s(View view, int i, AudioItem audioItem, boolean z, View view2, boolean z2) {
        if (this.u.getData().size() == 0 || this.G || this.m0) {
            return;
        }
        Log.d("AudioDragBaseFragment", "isInEditMode : " + this.isInEditMode + "isManualSort : " + this.M);
        if (audioItem.isTimeItem) {
            return;
        }
        if (this.M) {
            S1(i, audioItem);
        } else {
            R1(i, audioItem);
        }
    }

    @Override
    public void showSortPopupWindow(View view, boolean z, boolean z2) {
        super.showSortPopupWindow(view, z, z2);
        h27.c().e(1144, new Object[0]);
    }

    @Override
    public void startDragMode(boolean z, int i, boolean z2) {
        super.startDragMode(z, i, z2);
        if (this.M == z || z) {
            return;
        }
        P1();
    }
}
