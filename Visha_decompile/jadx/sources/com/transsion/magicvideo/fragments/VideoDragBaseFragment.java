package com.transsion.magicvideo.fragments;

import android.animation.ValueAnimator;
import android.content.ClipData;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.res.ResourcesCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.imageview.ShapeableImageView;
import com.transsion.dbdata.beans.ext.MediaExtKt;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.eventbus.LiveEventBus;
import com.transsion.magicvideo.R;
import com.transsion.magicvideo.adapter.BucketDateAdapter;
import com.transsion.magicvideo.widgets.VideoDragAnimationView;
import com.transsion.magicvideo.widgets.VideoGridDragAnimationView;
import com.transsion.playercommon.fragments.BaseFragment;
import com.transsion.playercommon.widgets.RoundFrameLayout;
import com.transsion.utils.BaseConstant;
import com.transsion.utils.ToastUtils;
import com.transsion.widgets.BadgeView;
import defpackage.aec;
import defpackage.av3;
import defpackage.b39;
import defpackage.bec;
import defpackage.c39;
import defpackage.cec;
import defpackage.jf;
import defpackage.wna;
import defpackage.ydc;
import defpackage.z7c;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public class VideoDragBaseFragment extends VideosBaseFragment implements BucketDateAdapter.a, BucketDateAdapter.c {
    public ConstraintLayout Z;
    public View.DragShadowBuilder b0;
    public cec c0;
    public int d0;
    public FrameLayout g0;
    public float[] j0;
    public Bundle k0;
    public float l0;
    public float m0;
    public float n0;
    public int a0 = 1;
    public String e0 = "";
    public int f0 = 0;
    public List h0 = new ArrayList();
    public boolean i0 = false;
    public boolean o0 = false;
    public Handler p0 = new Handler(new Handler.Callback() {
        @Override
        public final boolean handleMessage(Message message) {
            return this.b.N1(message);
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
            FrameLayout frameLayout = VideoDragBaseFragment.this.g0;
            if (frameLayout != null) {
                frameLayout.cancelDragAndDrop();
            }
        }
    }

    public class b implements RecyclerView.OnChildAttachStateChangeListener {
        public b() {
        }

        @Override
        public void onChildViewAttachedToWindow(View view) {
            if (VideoDragBaseFragment.this.h0.contains(view)) {
                VideoDragBaseFragment.this.h0.remove(view);
            }
            VideoDragBaseFragment.this.h0.add(view);
        }

        @Override
        public void onChildViewDetachedFromWindow(View view) {
            VideoDragBaseFragment.this.h0.remove(view);
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
                VideoDragBaseFragment.this.i0 = true;
            } else if (action == 1) {
                VideoDragBaseFragment.this.i0 = false;
            } else if (action == 2) {
                VideoDragBaseFragment.this.i0 = true;
            } else if (action == 3) {
                VideoDragBaseFragment.this.i0 = false;
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

    public class d implements aec {
        public d() {
        }

        @Override
        public void onUpdateDrawShadow(String str, int i) {
            if (VideoDragBaseFragment.this.c0 != null) {
                if (i == 4) {
                    LiveEventBus.b().c("draw_shadow", Boolean.TRUE);
                } else {
                    LiveEventBus.b().c("draw_shadow", Boolean.FALSE);
                    if (i == 3) {
                        VideoDragBaseFragment.this.w1(false);
                        VideoDragBaseFragment.this.c0.release();
                        VideoDragBaseFragment.this.c0 = null;
                    }
                }
            }
            VideoDragBaseFragment videoDragBaseFragment = VideoDragBaseFragment.this;
            FrameLayout frameLayout = videoDragBaseFragment.g0;
            if (frameLayout != null) {
                videoDragBaseFragment.U1(frameLayout, str, i);
            }
        }
    }

    public class e implements ValueAnimator.AnimatorUpdateListener {
        public final VideoDragAnimationView b;
        public final boolean c;
        public final View d;
        public final RoundFrameLayout e;
        public final int[] f;
        public final int[] g;

        public e(VideoDragAnimationView videoDragAnimationView, boolean z, View view, RoundFrameLayout roundFrameLayout, int[] iArr, int[] iArr2) {
            this.b = videoDragAnimationView;
            this.c = z;
            this.d = view;
            this.e = roundFrameLayout;
            this.f = iArr;
            this.g = iArr2;
        }

        @Override
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            ConstraintLayout constraintLayout;
            try {
                float[] fArrB = bec.b(((BaseFragment) VideoDragBaseFragment.this).mContext);
                VideoDragBaseFragment videoDragBaseFragment = VideoDragBaseFragment.this;
                if (fArrB == null) {
                    fArrB = videoDragBaseFragment.j0;
                }
                videoDragBaseFragment.j0 = fArrB;
                if (fArrB == null) {
                    ConstraintLayout constraintLayout2 = videoDragBaseFragment.Z;
                    if (constraintLayout2 != null) {
                        constraintLayout2.removeView(this.b);
                        return;
                    }
                    return;
                }
                ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) this.b.getLayoutParams();
                if (this.c) {
                    layoutParams.setMarginStart((int) ((((this.d.getWidth() - (VideoDragBaseFragment.this.j0[0] - (this.e.getWidth() / 2))) - this.e.getWidth()) * (valueAnimator.getCurrentPlayTime() / 300.0f)) / VideoDragBaseFragment.this.n0));
                } else {
                    ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin = (int) (((this.f[0] - this.g[0]) + (((VideoDragBaseFragment.this.j0[0] - (this.e.getWidth() / 2)) - this.f[0]) * (valueAnimator.getCurrentPlayTime() / 300.0f))) / VideoDragBaseFragment.this.n0);
                }
                float f = this.f[1];
                VideoDragBaseFragment videoDragBaseFragment2 = VideoDragBaseFragment.this;
                ((ViewGroup.MarginLayoutParams) layoutParams).topMargin = (int) (((f - ((videoDragBaseFragment2.n0 * 110.0f) + videoDragBaseFragment2.m0)) + (((videoDragBaseFragment2.j0[1] - (this.e.getHeight() / 2)) - this.f[1]) * (valueAnimator.getCurrentPlayTime() / 300.0f))) / VideoDragBaseFragment.this.n0);
                this.b.setLayoutParams(layoutParams);
                if (valueAnimator.getCurrentPlayTime() < 300 || (constraintLayout = VideoDragBaseFragment.this.Z) == null) {
                    return;
                }
                constraintLayout.removeView(this.b);
            } catch (Exception e) {
                Log.e("VideoDragBaseFragment", "onAnimationUpdate " + e);
            }
        }
    }

    public class f implements ValueAnimator.AnimatorUpdateListener {
        public final VideoGridDragAnimationView b;
        public final boolean c;
        public final int d;
        public final boolean e;
        public final int[] f;
        public final RoundFrameLayout g;

        public f(VideoGridDragAnimationView videoGridDragAnimationView, boolean z, int i, boolean z2, int[] iArr, RoundFrameLayout roundFrameLayout) {
            this.b = videoGridDragAnimationView;
            this.c = z;
            this.d = i;
            this.e = z2;
            this.f = iArr;
            this.g = roundFrameLayout;
        }

        @Override
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            int i;
            ConstraintLayout constraintLayout;
            try {
                float[] fArrB = bec.b(((BaseFragment) VideoDragBaseFragment.this).mContext);
                VideoDragBaseFragment videoDragBaseFragment = VideoDragBaseFragment.this;
                if (fArrB == null) {
                    fArrB = videoDragBaseFragment.j0;
                }
                videoDragBaseFragment.j0 = fArrB;
                if (fArrB == null) {
                    ConstraintLayout constraintLayout2 = videoDragBaseFragment.Z;
                    if (constraintLayout2 != null) {
                        constraintLayout2.removeView(this.b);
                        return;
                    }
                    return;
                }
                ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) this.b.getLayoutParams();
                if (this.c) {
                    float f = this.d;
                    i = this.e ? 0 : 500;
                    VideoDragBaseFragment videoDragBaseFragment2 = VideoDragBaseFragment.this;
                    layoutParams.setMarginStart((int) (((((f - ((i * videoDragBaseFragment2.n0) + videoDragBaseFragment2.l0)) - this.f[0]) - this.g.getWidth()) - (((VideoDragBaseFragment.this.j0[0] - (this.g.getWidth() / 2)) - this.f[0]) * (valueAnimator.getCurrentPlayTime() / 300.0f))) / VideoDragBaseFragment.this.n0));
                } else {
                    float f2 = this.f[0];
                    i = this.e ? 0 : 500;
                    VideoDragBaseFragment videoDragBaseFragment3 = VideoDragBaseFragment.this;
                    ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin = (int) (((f2 - ((i * videoDragBaseFragment3.n0) + videoDragBaseFragment3.l0)) + (((videoDragBaseFragment3.j0[0] - (this.g.getWidth() / 2)) - this.f[0]) * (valueAnimator.getCurrentPlayTime() / 300.0f))) / VideoDragBaseFragment.this.n0);
                }
                float f3 = this.f[1];
                VideoDragBaseFragment videoDragBaseFragment4 = VideoDragBaseFragment.this;
                ((ViewGroup.MarginLayoutParams) layoutParams).topMargin = (int) (((f3 - ((videoDragBaseFragment4.n0 * 110.0f) + videoDragBaseFragment4.m0)) + (((videoDragBaseFragment4.j0[1] - (this.g.getHeight() / 2)) - this.f[1]) * (valueAnimator.getCurrentPlayTime() / 300.0f))) / VideoDragBaseFragment.this.n0);
                this.b.setLayoutParams(layoutParams);
                if (valueAnimator.getCurrentPlayTime() < 300 || (constraintLayout = VideoDragBaseFragment.this.Z) == null) {
                    return;
                }
                constraintLayout.removeView(this.b);
            } catch (Exception e) {
                Log.e("VideoDragBaseFragment", "onAnimationUpdate " + e);
            }
        }
    }

    private void K1() {
        cec cecVar = this.c0;
        if (cecVar != null) {
            cecVar.release();
        }
        cec cecVarA = bec.a(this.mContext, true);
        this.c0 = cecVarA;
        if (cecVarA == null) {
            return;
        }
        cecVarA.a(new d());
    }

    public boolean N1(Message message) {
        FrameLayout frameLayout;
        MediaItem mediaItem;
        MediaItem.MediaType mediaType;
        int i = message.what;
        if (i == 1) {
            FrameLayout frameLayout2 = this.g0;
            if (frameLayout2 != null) {
                frameLayout2.updateDragShadow(this.b0);
            }
        } else if (i == 2 && this.i0 && (frameLayout = this.g0) != null && (((mediaType = (mediaItem = (MediaItem) message.obj).type) == MediaItem.MediaType.VIDEO && !mediaItem.isYoutubeUrl) || mediaType == MediaItem.MediaType.AUDIO)) {
            S1(frameLayout, mediaItem);
        }
        return true;
    }

    public void I1() {
        this.t.setOnDragListener(this);
        this.t.setOnTitleClickListener(this);
        this.t.setOnSelectListener(this);
        this.M.addOnChildAttachStateChangeListener(new b());
        this.M.addOnItemTouchListener(new c());
    }

    public final List J1(ArrayList arrayList) {
        ArrayList arrayList2 = new ArrayList();
        if (arrayList == null || arrayList.size() <= 0) {
            arrayList2.clear();
        } else {
            arrayList2.clear();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                MediaItem mediaItem = (MediaItem) it.next();
                MediaItem.MediaType mediaType = mediaItem.type;
                if (mediaType == MediaItem.MediaType.VIDEO || mediaType == MediaItem.MediaType.AUDIO) {
                    arrayList2.add(mediaItem);
                }
            }
        }
        Collections.reverse(arrayList2);
        return arrayList2;
    }

    public void L1(View view) {
        if (getDragAnimationView() != null) {
            this.Z = getDragAnimationView();
        }
        if (this.g0 == null) {
            FrameLayout frameLayout = (FrameLayout) ((ViewStub) view.findViewById(R.id.vs_video_stack)).inflate();
            this.g0 = frameLayout;
            frameLayout.setVisibility(8);
            this.g0.addOnAttachStateChangeListener(new a());
        }
    }

    public void M1(MediaItem mediaItem, View view) {
        FrameLayout frameLayout;
        Q1();
        try {
            if (this.E.contains(mediaItem) && this.f0 == 4) {
                T1(view, mediaItem, bec.b(this.mContext), this.mScreenType == BaseConstant.SCREEN_TYPE.FOLD);
            } else if (this.E.size() == 0 && (frameLayout = this.g0) != null) {
                frameLayout.cancelDragAndDrop();
            }
        } catch (Exception e2) {
            Log.e("VideoDragBaseFragment", "onAnimationUpdate " + e2);
        }
        FrameLayout frameLayout2 = this.g0;
        if (frameLayout2 != null) {
            U1(frameLayout2, this.e0, this.f0);
        }
    }

    public void O1() {
        FrameLayout frameLayout = this.g0;
        if (frameLayout != null) {
            frameLayout.cancelDragAndDrop();
        }
        List list = this.h0;
        if (list != null) {
            list.clear();
        }
    }

    public final void P1() {
        FrameLayout frameLayout = this.g0;
        if (frameLayout == null) {
            return;
        }
        frameLayout.removeAllViews();
        List listJ1 = J1(this.E);
        int size = listJ1.size();
        List listSubList = size >= 3 ? listJ1.subList(listJ1.size() - 3, listJ1.size()) : listJ1;
        if (listSubList == null || size <= 0) {
            this.g0.setVisibility(8);
            return;
        }
        for (int i = 0; i < listSubList.size(); i++) {
            int i2 = this.a0;
            View viewInflate = null;
            if (i2 == 1) {
                viewInflate = LayoutInflater.from(this.mContext).inflate(R.layout.item_video_stack_list, (ViewGroup) null, false);
            } else if (i2 == 3) {
                viewInflate = LayoutInflater.from(this.mContext).inflate(R.layout.item_video_stack_grid, (ViewGroup) null, false);
            }
            viewInflate.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
            MediaItem mediaItem = (MediaItem) listSubList.get(i);
            ShapeableImageView shapeableImageView = (ShapeableImageView) viewInflate.findViewById(R.id.iv_avatar);
            TextView textView = (TextView) viewInflate.findViewById(R.id.tv_time);
            z7c.c(this.mContext, MediaExtKt.toLocalMediaLoadInfo(mediaItem), ResourcesCompat.getDrawable(this.mContext.getResources(), R.drawable.main_fragment_placeholder, this.mContext.getTheme()), shapeableImageView);
            if (mediaItem.duration == 0) {
                textView.setVisibility(8);
            } else {
                textView.setVisibility(0);
                textView.setText(wna.c(mediaItem.duration));
            }
            viewInflate.setRotation(0.0f);
            if (i == 1) {
                viewInflate.setTranslationX(c39.a(4.0f));
                viewInflate.setTranslationY(-c39.a(4.0f));
            }
            if (i == 2) {
                viewInflate.setRotation(-5.0f);
                viewInflate.setTranslationX(c39.a(4.0f));
                viewInflate.setTranslationY(-c39.a(4.0f));
            }
            this.g0.addView(viewInflate);
        }
        BadgeView badgeView = new BadgeView(this.mContext);
        badgeView.setNum(listJ1.size());
        badgeView.setRedPointType(5);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 53;
        badgeView.setLayoutParams(layoutParams);
        this.g0.addView(badgeView, layoutParams);
    }

    public void Q1() {
        BucketDateAdapter bucketDateAdapter = this.t;
        if (bucketDateAdapter == null) {
            return;
        }
        this.a0 = bucketDateAdapter.y();
        P1();
    }

    public void R1(boolean z) {
        this.o0 = z;
    }

    public final void S1(View view, MediaItem mediaItem) {
        ArrayList arrayList = this.E;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        ArrayList<MediaItem> arrayList2 = new ArrayList(this.E);
        ClipData clipDataNewUri = null;
        for (MediaItem mediaItem2 : arrayList2) {
            if (mediaItem2.isYoutubeUrl) {
                ToastUtils.s(R.string.yoututbe_video_drag_error);
            }
            Uri uri = mediaItem2.getUri();
            if (uri == null && !TextUtils.isEmpty(mediaItem2.data)) {
                uri = Uri.parse(mediaItem2.data);
            }
            if (uri == null) {
                Log.w("VideoDragBaseFragment", "skip drag item for null uri: " + mediaItem2);
            } else if (clipDataNewUri == null) {
                clipDataNewUri = ClipData.newUri(view.getContext().getContentResolver(), "vishaplayerhd", uri);
            } else {
                clipDataNewUri.addItem(new ClipData.Item(uri));
            }
        }
        if (clipDataNewUri == null) {
            Log.w("VideoDragBaseFragment", "setRefreshDragData abort: no valid uri in selection");
            ToastUtils.s(R.string.operation_fail);
            return;
        }
        try {
            this.b0 = new View.DragShadowBuilder(view);
            K1();
            this.d0 = 769;
            view.startDragAndDrop(clipDataNewUri, this.b0, null, 769);
            w1(true);
            z1(this.w);
            if (bec.b(this.mContext) != null) {
                boolean zB = b39.b(this.mActivity);
                List list = this.h0;
                if (list == null || list.size() <= 0) {
                    return;
                }
                int i = 0;
                for (int i2 = 0; i2 < this.h0.size(); i2++) {
                    RecyclerView.ViewHolder viewHolderFindContainingViewHolder = this.M.findContainingViewHolder((View) this.h0.get(i2));
                    if (viewHolderFindContainingViewHolder != null) {
                        MediaItem mediaItem3 = this.t.getData().get(viewHolderFindContainingViewHolder.getLayoutPosition());
                        if (!arrayList2.contains(mediaItem3)) {
                            continue;
                        } else {
                            if (i > 5) {
                                return;
                            }
                            T1((View) this.h0.get(i2), mediaItem3, bec.b(this.mContext), zB);
                            i++;
                        }
                    }
                }
            }
        } catch (Exception e2) {
            Log.e("VideoDragBaseFragment", "startDragAnimation error: " + e2.getMessage());
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
    public final void T1(View view, MediaItem mediaItem, float[] fArr, boolean z) {
        ValueAnimator valueAnimatorOfInt;
        boolean z2 = av3.z();
        MediaItem.MediaType mediaType = mediaItem.type;
        if ((mediaType == MediaItem.MediaType.VIDEO || mediaType == MediaItem.MediaType.AUDIO) && fArr != null) {
            int[] iArr = new int[2];
            int[] iArr2 = new int[2];
            RoundFrameLayout roundFrameLayout = (RoundFrameLayout) view.findViewById(R.id.ll_bucket_fragment_item);
            view.getLocationOnScreen(iArr2);
            if (roundFrameLayout == null) {
                return;
            }
            roundFrameLayout.getLocationOnScreen(iArr);
            if (jf.m(this.mContext)) {
                Bundle bundleF = jf.f(this.mContext);
                this.k0 = bundleF;
                if (bundleF != null) {
                    this.l0 = bundleF.getFloat("position_x");
                    this.m0 = this.k0.getFloat("position_y");
                    float f2 = this.k0.getFloat("scale");
                    this.n0 = f2;
                    float f3 = iArr[0] * f2;
                    float f4 = this.l0;
                    iArr[0] = (int) (f3 + f4);
                    float f5 = iArr[1] * f2;
                    float f6 = this.m0;
                    iArr[1] = (int) (f5 + f6);
                    iArr2[0] = (int) ((iArr2[0] * f2) + f4);
                    iArr2[1] = (int) ((iArr2[1] * f2) + f6);
                }
            } else {
                this.l0 = 0.0f;
                this.m0 = 0.0f;
                this.n0 = 1.0f;
            }
            Uri uri = mediaItem.getUri();
            if (uri == null || TextUtils.isEmpty(uri.toString())) {
                return;
            }
            int i = this.a0;
            if (i == 1) {
                VideoDragAnimationView videoDragAnimationView = new VideoDragAnimationView(this.mContext, mediaItem);
                ConstraintLayout.LayoutParams layoutParams = new ConstraintLayout.LayoutParams(roundFrameLayout.getWidth(), roundFrameLayout.getHeight());
                if (z2) {
                    layoutParams.setMarginStart((int) ((((view.getWidth() - iArr[0]) - roundFrameLayout.getWidth()) - iArr2[0]) / this.n0));
                } else {
                    ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin = (int) ((iArr[0] - iArr2[0]) / this.n0);
                }
                int i2 = R.id.cl_drag_animation_view;
                layoutParams.startToStart = i2;
                layoutParams.topToTop = i2;
                float f7 = iArr[1];
                float f8 = this.n0;
                ((ViewGroup.MarginLayoutParams) layoutParams).topMargin = (int) ((f7 - ((110.0f * f8) + this.m0)) / f8);
                videoDragAnimationView.setAlpha(0.7f);
                videoDragAnimationView.setLayoutParams(layoutParams);
                ConstraintLayout constraintLayout = this.Z;
                if (constraintLayout != null) {
                    constraintLayout.addView(videoDragAnimationView);
                }
                valueAnimatorOfInt = ValueAnimator.ofInt(1, 100);
                valueAnimatorOfInt.addUpdateListener(new e(videoDragAnimationView, z2, view, roundFrameLayout, iArr, iArr2));
            } else if (i == 3) {
                int iM = com.transsion.utils.a.m(this.mContext);
                VideoGridDragAnimationView videoGridDragAnimationView = new VideoGridDragAnimationView(this.mContext, mediaItem);
                ConstraintLayout.LayoutParams layoutParams2 = new ConstraintLayout.LayoutParams(roundFrameLayout.getWidth(), roundFrameLayout.getHeight());
                if (z2) {
                    float width = (iM - iArr[0]) - roundFrameLayout.getWidth();
                    float f9 = z ? 0 : 500;
                    float f10 = this.n0;
                    layoutParams2.setMarginStart((int) ((width - ((f9 * f10) + this.l0)) / f10));
                } else {
                    float f11 = iArr[0];
                    float f12 = z ? 0 : 500;
                    float f13 = this.n0;
                    ((ViewGroup.MarginLayoutParams) layoutParams2).leftMargin = (int) ((f11 - ((f12 * f13) + this.l0)) / f13);
                }
                int i3 = R.id.cl_drag_animation_view;
                layoutParams2.startToStart = i3;
                layoutParams2.topToTop = i3;
                float f14 = iArr[1];
                float f15 = this.n0;
                ((ViewGroup.MarginLayoutParams) layoutParams2).topMargin = (int) ((f14 - ((110.0f * f15) + this.m0)) / f15);
                videoGridDragAnimationView.setAlpha(0.7f);
                videoGridDragAnimationView.setLayoutParams(layoutParams2);
                ConstraintLayout constraintLayout2 = this.Z;
                if (constraintLayout2 != null) {
                    constraintLayout2.addView(videoGridDragAnimationView);
                }
                valueAnimatorOfInt = ValueAnimator.ofInt(1, 100);
                valueAnimatorOfInt.addUpdateListener(new f(videoGridDragAnimationView, z2, iM, z, iArr, roundFrameLayout));
            } else {
                valueAnimatorOfInt = null;
            }
            if (valueAnimatorOfInt != null) {
                valueAnimatorOfInt.setDuration(300L);
                valueAnimatorOfInt.start();
            }
            U1(this.g0, this.e0, 4);
        }
    }

    public void U1(View view, String str, int i) {
        this.f0 = i;
        this.e0 = str;
        if (i == 4) {
            Q1();
        }
        this.p0.removeMessages(1);
        if (this.L) {
            this.p0.sendEmptyMessage(1);
        }
    }

    @Override
    public void d(boolean z) {
        if (!z) {
            O1();
            return;
        }
        FrameLayout frameLayout = this.g0;
        if (frameLayout != null) {
            U1(frameLayout, this.e0, this.f0);
        }
    }

    @Override
    public void h(View view, int i, MediaItem mediaItem, boolean z, View view2) {
        if (this.t.getData().size() == 0 || this.L || this.o0) {
            return;
        }
        Log.d("VideoDragBaseFragment", ":::::::" + this.isInEditMode);
        if (mediaItem.isTimeItem) {
            return;
        }
        this.F.clear();
        this.F.add(mediaItem);
        boolean z2 = this.isInEditMode;
        if (!z2) {
            editMode(true);
        }
        this.t.T(mediaItem, true, i);
        FrameLayout frameLayout = this.g0;
        if (frameLayout != null) {
            frameLayout.setVisibility(4);
        }
        this.E = this.t.D();
        P1();
        if (ydc.f()) {
            this.p0.removeMessages(2);
            Message message = new Message();
            message.obj = mediaItem;
            message.what = 2;
            this.p0.sendMessageDelayed(message, z2 ? 0L : 800L);
        }
    }

    @Override
    public void onDestroy() {
        cec cecVar = this.c0;
        if (cecVar != null) {
            cecVar.release();
            this.c0 = null;
        }
        super.onDestroy();
        this.p0.removeCallbacksAndMessages(null);
    }
}
