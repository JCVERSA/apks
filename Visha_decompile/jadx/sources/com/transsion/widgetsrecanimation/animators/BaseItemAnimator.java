package com.transsion.widgetsrecanimation.animators;

import android.animation.Animator;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.view.animation.Interpolator;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.SimpleItemAnimator;
import com.transsion.playercommon.vishaapis.gslb.GslbInterceptor;
import com.transsion.widgetsrecanimation.animators.BaseItemAnimator;
import defpackage.lcc;
import defpackage.p97;
import defpackage.wn8;
import defpackage.y45;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import org.apache.commons.text.StringSubstitutor;

@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0018\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u000b\b&\u0018\u0000 e2\u00020\u0001:\u00068;>@BDB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J7\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u000e\u0010\u0003J\u001d\u0010\u0011\u001a\u00020\u000b2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00040\u000fH\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0015\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0015\u0010\u0014J\u0017\u0010\u0016\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0016\u0010\u0014J\u0017\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0017\u0010\u0014J\u0017\u0010\u001a\u001a\u00020\u000b2\u0006\u0010\u0019\u001a\u00020\u0018H\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ%\u0010\u001f\u001a\u00020\u000b2\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00180\u001c2\u0006\u0010\u001e\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u001f\u0010 J\u0017\u0010!\u001a\u00020\u000b2\u0006\u0010\u0019\u001a\u00020\u0018H\u0002¢\u0006\u0004\b!\u0010\u001bJ!\u0010#\u001a\u00020\"2\u0006\u0010\u0019\u001a\u00020\u00182\b\u0010\u001e\u001a\u0004\u0018\u00010\u0004H\u0002¢\u0006\u0004\b#\u0010$J\u000f\u0010%\u001a\u00020\u000bH\u0016¢\u0006\u0004\b%\u0010\u0003J\u0017\u0010&\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u0004H\u0014¢\u0006\u0004\b&\u0010\u0014J\u0017\u0010'\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u0004H\u0014¢\u0006\u0004\b'\u0010\u0014J\u0017\u0010(\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u0004H$¢\u0006\u0004\b(\u0010\u0014J\u0017\u0010)\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u0004H$¢\u0006\u0004\b)\u0010\u0014J\u0017\u0010*\u001a\u00020\"2\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b*\u0010+J\u0017\u0010,\u001a\u00020\"2\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b,\u0010+J7\u0010-\u001a\u00020\"2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u0006H\u0016¢\u0006\u0004\b-\u0010.J?\u00101\u001a\u00020\"2\u0006\u0010/\u001a\u00020\u00042\u0006\u00100\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u0006H\u0016¢\u0006\u0004\b1\u00102J\u0017\u00103\u001a\u00020\u000b2\u0006\u0010\u001e\u001a\u00020\u0004H\u0016¢\u0006\u0004\b3\u0010\u0014J\u000f\u00104\u001a\u00020\"H\u0016¢\u0006\u0004\b4\u00105J\u000f\u00106\u001a\u00020\u000bH\u0016¢\u0006\u0004\b6\u0010\u0003R\u001a\u0010:\u001a\b\u0012\u0004\u0012\u00020\u0004078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b8\u00109R\u001a\u0010<\u001a\b\u0012\u0004\u0012\u00020\u0004078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b;\u00109R\u001a\u0010?\u001a\b\u0012\u0004\u0012\u00020=078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b>\u00109R\u001a\u0010A\u001a\b\u0012\u0004\u0012\u00020\u0018078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b@\u00109R \u0010C\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000407078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bB\u00109R \u0010E\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020=07078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bD\u00109R \u0010F\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001807078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u00109R(\u0010K\u001a\b\u0012\u0004\u0012\u00020\u0004078\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\b\u0017\u00109\u001a\u0004\bG\u0010H\"\u0004\bI\u0010JR\u001a\u0010L\u001a\b\u0012\u0004\u0012\u00020\u0004078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u00109R(\u0010O\u001a\b\u0012\u0004\u0012\u00020\u0004078\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\b!\u00109\u001a\u0004\bM\u0010H\"\u0004\bN\u0010JR\u001a\u0010P\u001a\b\u0012\u0004\u0012\u00020\u0004078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u00109R\"\u0010U\u001a\u00020\"8\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\bG\u0010Q\u001a\u0004\bR\u00105\"\u0004\bS\u0010TR\u0016\u0010Y\u001a\u00020V8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bW\u0010XR\u0016\u0010Z\u001a\u00020V8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bM\u0010XR\u0016\u0010]\u001a\u00020[8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\\R\u0016\u0010^\u001a\u00020[8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010\\R\"\u0010b\u001a\u00020[8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\\\u001a\u0004\bW\u0010_\"\u0004\b`\u0010aR\"\u0010c\u001a\u00020\"8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b&\u0010Q\u001a\u0004\bc\u00105\"\u0004\bd\u0010T¨\u0006f"}, d2 = {"Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;", "Landroidx/recyclerview/widget/SimpleItemAnimator;", MethodDecl.initName, "()V", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "holder", "", "fromX", "fromY", "toX", "toY", "Lzfb;", "animateMoveImpl", "(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)V", "dispatchFinishedWhenDone", "", "viewHolders", "cancelAll", "(Ljava/util/List;)V", "q", "(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V", "o", CmcdData.OBJECT_TYPE_INIT_SEGMENT, CmcdData.STREAMING_FORMAT_HLS, "Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$b;", "changeInfo", GslbInterceptor.HEADER_KEY_GSLB, "(Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$b;)V", "", "infoList", "item", "endChangeAnimation", "(Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V", "j", "", "k", "(Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$b;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z", "runPendingAnimations", "r", TtmlNode.TAG_P, "animateRemoveImpl", "animateAddImpl", "animateRemove", "(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z", "animateAdd", "animateMove", "(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)Z", "oldHolder", "newHolder", "animateChange", "(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)Z", "endAnimation", "isRunning", "()Z", "endAnimations", "Ljava/util/ArrayList;", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "Ljava/util/ArrayList;", "pendingRemovals", "b", "pendingAdditions", "Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$f;", "c", "pendingMoves", "d", "pendingChanges", "e", "additionsList", "f", "movesList", "changesList", CmcdData.STREAM_TYPE_LIVE, "()Ljava/util/ArrayList;", "setAddAnimations", "(Ljava/util/ArrayList;)V", "addAnimations", "moveAnimations", "n", "setRemoveAnimations", "removeAnimations", "changeAnimations", "Z", "getMIsLinearLayoutManager", "v", "(Z)V", "mIsLinearLayoutManager", "Landroid/view/animation/Interpolator;", CmcdData.OBJECT_TYPE_MANIFEST, "Landroid/view/animation/Interpolator;", "moveInterpolator", "moveInterpolatorGrid", "", "J", "moveDurationSync", "moveDurationSyncGrid", "()J", "setDelayedSync", "(J)V", "delayedSync", "isMoveToTop", "w", "s", "widgetsrecanimation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public abstract class BaseItemAnimator extends SimpleItemAnimator {

    public final ArrayList pendingRemovals = new ArrayList();

    public final ArrayList pendingAdditions = new ArrayList();

    public final ArrayList pendingMoves = new ArrayList();

    public final ArrayList pendingChanges = new ArrayList();

    public final ArrayList additionsList = new ArrayList();

    public final ArrayList movesList = new ArrayList();

    public final ArrayList changesList = new ArrayList();

    public ArrayList addAnimations = new ArrayList();

    public final ArrayList moveAnimations = new ArrayList();

    public ArrayList removeAnimations = new ArrayList();

    public final ArrayList changeAnimations = new ArrayList();

    public boolean mIsLinearLayoutManager = true;

    public Interpolator moveInterpolator = new p97();

    public Interpolator moveInterpolatorGrid = new p97();

    public long moveDurationSync = 400;

    public long moveDurationSyncGrid = 400;

    public long delayedSync = 100;

    public boolean isMoveToTop;

    public static class a implements Animator.AnimatorListener {
        @Override
        public void onAnimationCancel(Animator animator) {
            y45.j(animator, "animator");
        }

        @Override
        public void onAnimationRepeat(Animator animator) {
            y45.j(animator, "animator");
        }

        @Override
        public void onAnimationStart(Animator animator) {
            y45.j(animator, "animator");
        }
    }

    public final class d extends a {
        public RecyclerView.ViewHolder b;
        public final BaseItemAnimator c;

        public d(BaseItemAnimator baseItemAnimator, RecyclerView.ViewHolder viewHolder) {
            y45.j(viewHolder, "viewHolder");
            this.c = baseItemAnimator;
            this.b = viewHolder;
        }

        @Override
        public void onAnimationCancel(Animator animator) {
            y45.j(animator, "animator");
            View view = this.b.itemView;
            y45.i(view, "viewHolder.itemView");
            lcc.a(view);
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            y45.j(animator, "animator");
            View view = this.b.itemView;
            y45.i(view, "viewHolder.itemView");
            lcc.a(view);
            this.c.dispatchAddFinished(this.b);
            this.c.getAddAnimations().remove(this.b);
            this.c.dispatchFinishedWhenDone();
        }

        @Override
        public void onAnimationStart(Animator animator) {
            y45.j(animator, "animator");
            this.c.dispatchAddStarting(this.b);
        }
    }

    public final class e extends a {
        public RecyclerView.ViewHolder b;
        public final BaseItemAnimator c;

        public e(BaseItemAnimator baseItemAnimator, RecyclerView.ViewHolder viewHolder) {
            y45.j(viewHolder, "viewHolder");
            this.c = baseItemAnimator;
            this.b = viewHolder;
        }

        @Override
        public void onAnimationCancel(Animator animator) {
            y45.j(animator, "animator");
            View view = this.b.itemView;
            y45.i(view, "viewHolder.itemView");
            lcc.a(view);
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            y45.j(animator, "animator");
            this.b.itemView.setTranslationZ(-0.0f);
            View view = this.b.itemView;
            y45.i(view, "viewHolder.itemView");
            lcc.a(view);
            this.c.dispatchRemoveFinished(this.b);
            this.c.getRemoveAnimations().remove(this.b);
            this.c.dispatchFinishedWhenDone();
        }

        @Override
        public void onAnimationStart(Animator animator) {
            y45.j(animator, "animator");
            this.c.dispatchRemoveStarting(this.b);
            this.b.itemView.setTranslationZ(-1.0f);
        }
    }

    public static final class f {
        public RecyclerView.ViewHolder a;
        public int b;
        public int c;
        public int d;
        public int e;

        public f(RecyclerView.ViewHolder viewHolder, int i, int i2, int i3, int i4) {
            y45.j(viewHolder, "holder");
            this.a = viewHolder;
            this.b = i;
            this.c = i2;
            this.d = i3;
            this.e = i4;
        }

        public final int a() {
            return this.b;
        }

        public final int b() {
            return this.c;
        }

        public final RecyclerView.ViewHolder c() {
            return this.a;
        }

        public final int d() {
            return this.d;
        }

        public final int e() {
            return this.e;
        }
    }

    public static final class g extends a {
        public final b c;
        public final ViewPropertyAnimator d;
        public final View e;

        public g(b bVar, ViewPropertyAnimator viewPropertyAnimator, View view) {
            this.c = bVar;
            this.d = viewPropertyAnimator;
            this.e = view;
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            y45.j(animator, "animator");
            this.d.setListener(null);
            this.e.setAlpha(1.0f);
            this.e.setTranslationX(0.0f);
            this.e.setTranslationY(0.0f);
            BaseItemAnimator.this.dispatchChangeFinished(this.c.d(), true);
            if (this.c.d() != null) {
                ArrayList arrayList = BaseItemAnimator.this.changeAnimations;
                RecyclerView.ViewHolder viewHolderD = this.c.d();
                y45.g(viewHolderD);
                arrayList.remove(viewHolderD);
            }
            BaseItemAnimator.this.dispatchFinishedWhenDone();
        }

        @Override
        public void onAnimationStart(Animator animator) {
            y45.j(animator, "animator");
            BaseItemAnimator.this.dispatchChangeStarting(this.c.d(), true);
        }
    }

    public static final class h extends a {
        public final b c;
        public final ViewPropertyAnimator d;
        public final View e;

        public h(b bVar, ViewPropertyAnimator viewPropertyAnimator, View view) {
            this.c = bVar;
            this.d = viewPropertyAnimator;
            this.e = view;
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            y45.j(animator, "animator");
            this.d.setListener(null);
            this.e.setAlpha(1.0f);
            this.e.setTranslationX(0.0f);
            this.e.setTranslationY(0.0f);
            BaseItemAnimator.this.dispatchChangeFinished(this.c.c(), false);
            if (this.c.c() != null) {
                ArrayList arrayList = BaseItemAnimator.this.changeAnimations;
                RecyclerView.ViewHolder viewHolderC = this.c.c();
                y45.g(viewHolderC);
                arrayList.remove(viewHolderC);
            }
            BaseItemAnimator.this.dispatchFinishedWhenDone();
        }

        @Override
        public void onAnimationStart(Animator animator) {
            y45.j(animator, "animator");
            BaseItemAnimator.this.dispatchChangeStarting(this.c.c(), false);
        }
    }

    public static final class i extends a {
        public final RecyclerView.ViewHolder c;
        public final int d;
        public final View e;
        public final int f;
        public final ViewPropertyAnimator g;

        public i(RecyclerView.ViewHolder viewHolder, int i, View view, int i2, ViewPropertyAnimator viewPropertyAnimator) {
            this.c = viewHolder;
            this.d = i;
            this.e = view;
            this.f = i2;
            this.g = viewPropertyAnimator;
        }

        @Override
        public void onAnimationCancel(Animator animator) {
            y45.j(animator, "animator");
            if (this.d != 0) {
                this.e.setTranslationX(0.0f);
            }
            if (this.f != 0) {
                this.e.setTranslationY(0.0f);
            }
            BaseItemAnimator.this.w(false);
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            y45.j(animator, "animator");
            this.g.setListener(null);
            BaseItemAnimator.this.dispatchMoveFinished(this.c);
            BaseItemAnimator.this.moveAnimations.remove(this.c);
            BaseItemAnimator.this.dispatchFinishedWhenDone();
            BaseItemAnimator.this.w(false);
        }

        @Override
        public void onAnimationStart(Animator animator) {
            y45.j(animator, "animator");
            BaseItemAnimator.this.dispatchMoveStarting(this.c);
        }
    }

    public BaseItemAnimator() {
        setSupportsChangeAnimations(false);
    }

    private final void animateMoveImpl(RecyclerView.ViewHolder holder, int fromX, int fromY, int toX, int toY) {
        View view = holder.itemView;
        y45.i(view, "holder.itemView");
        int i2 = toX - fromX;
        int i3 = toY - fromY;
        if (i2 != 0) {
            view.animate().translationX(0.0f);
        }
        if (i3 != 0) {
            view.animate().translationY(0.0f);
        }
        this.moveAnimations.add(holder);
        ViewPropertyAnimator viewPropertyAnimatorAnimate = view.animate();
        viewPropertyAnimatorAnimate.setDuration(this.mIsLinearLayoutManager ? this.moveDurationSync : this.moveDurationSyncGrid).setListener(new i(holder, i2, view, i3, viewPropertyAnimatorAnimate)).setInterpolator(this.mIsLinearLayoutManager ? this.moveInterpolator : this.moveInterpolatorGrid).start();
    }

    private final void cancelAll(List viewHolders) {
        int size = viewHolders.size() - 1;
        if (size < 0) {
            return;
        }
        while (true) {
            int i2 = size - 1;
            ((RecyclerView.ViewHolder) viewHolders.get(size)).itemView.animate().cancel();
            if (i2 < 0) {
                return;
            } else {
                size = i2;
            }
        }
    }

    public final void dispatchFinishedWhenDone() {
        if (isRunning()) {
            return;
        }
        dispatchAnimationsFinished();
    }

    public static final void s(BaseItemAnimator baseItemAnimator, ArrayList arrayList) {
        y45.j(baseItemAnimator, "this$0");
        y45.j(arrayList, "$moves");
        if (baseItemAnimator.movesList.remove(arrayList)) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                f fVar = (f) it.next();
                baseItemAnimator.animateMoveImpl(fVar.c(), fVar.a(), fVar.b(), fVar.d(), fVar.e());
            }
            arrayList.clear();
        }
    }

    public static final void t(BaseItemAnimator baseItemAnimator, ArrayList arrayList) {
        y45.j(baseItemAnimator, "this$0");
        y45.j(arrayList, "$changes");
        if (baseItemAnimator.changesList.remove(arrayList)) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                b bVar = (b) it.next();
                y45.i(bVar, "change");
                baseItemAnimator.g(bVar);
            }
            arrayList.clear();
        }
    }

    public static final void u(BaseItemAnimator baseItemAnimator, ArrayList arrayList) {
        y45.j(baseItemAnimator, "this$0");
        y45.j(arrayList, "$additions");
        if (baseItemAnimator.additionsList.remove(arrayList)) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                RecyclerView.ViewHolder viewHolder = (RecyclerView.ViewHolder) it.next();
                y45.i(viewHolder, "holder");
                baseItemAnimator.h(viewHolder);
            }
            arrayList.clear();
        }
    }

    @Override
    public boolean animateAdd(RecyclerView.ViewHolder holder) {
        y45.j(holder, "holder");
        endAnimation(holder);
        o(holder);
        this.pendingAdditions.add(holder);
        return true;
    }

    public abstract void animateAddImpl(RecyclerView.ViewHolder holder);

    @Override
    public boolean animateChange(RecyclerView.ViewHolder oldHolder, RecyclerView.ViewHolder newHolder, int fromX, int fromY, int toX, int toY) {
        y45.j(oldHolder, "oldHolder");
        y45.j(newHolder, "newHolder");
        if (oldHolder == newHolder) {
            return animateMove(oldHolder, fromX, fromY, toX, toY);
        }
        float translationX = oldHolder.itemView.getTranslationX();
        float translationY = oldHolder.itemView.getTranslationY();
        float alpha = oldHolder.itemView.getAlpha();
        endAnimation(oldHolder);
        oldHolder.itemView.setTranslationX(translationX);
        oldHolder.itemView.setTranslationY(translationY);
        oldHolder.itemView.setAlpha(alpha);
        endAnimation(newHolder);
        newHolder.itemView.setTranslationX(-((int) ((toX - fromX) - translationX)));
        newHolder.itemView.setTranslationY(-((int) ((toY - fromY) - translationY)));
        newHolder.itemView.setAlpha(0.0f);
        this.pendingChanges.add(new b(oldHolder, newHolder, fromX, fromY, toX, toY));
        return true;
    }

    @Override
    public boolean animateMove(RecyclerView.ViewHolder holder, int fromX, int fromY, int toX, int toY) {
        y45.j(holder, "holder");
        View view = holder.itemView;
        y45.i(view, "holder.itemView");
        int translationX = fromX + ((int) holder.itemView.getTranslationX());
        int translationY = fromY + ((int) holder.itemView.getTranslationY());
        endAnimation(holder);
        int i2 = toX - translationX;
        int i3 = toY - translationY;
        if (i2 == 0 && i3 == 0) {
            dispatchMoveFinished(holder);
            return false;
        }
        if (i2 != 0) {
            view.setTranslationX(-i2);
        }
        if (i3 != 0) {
            view.setTranslationY(-i3);
        }
        this.pendingMoves.add(new f(holder, translationX, translationY, toX, toY));
        return true;
    }

    @Override
    public boolean animateRemove(RecyclerView.ViewHolder holder) {
        y45.j(holder, "holder");
        endAnimation(holder);
        q(holder);
        this.pendingRemovals.add(holder);
        return true;
    }

    public abstract void animateRemoveImpl(RecyclerView.ViewHolder holder);

    @Override
    public void endAnimation(RecyclerView.ViewHolder item) {
        y45.j(item, "item");
        View view = item.itemView;
        y45.i(view, "item.itemView");
        view.animate().cancel();
        int size = this.pendingMoves.size() - 1;
        if (size >= 0) {
            while (true) {
                int i2 = size - 1;
                Object obj = this.pendingMoves.get(size);
                y45.i(obj, "pendingMoves[i]");
                if (((f) obj).c() == item) {
                    view.setTranslationY(0.0f);
                    view.setTranslationX(0.0f);
                    dispatchMoveFinished(item);
                    this.pendingMoves.remove(size);
                }
                if (i2 < 0) {
                    break;
                } else {
                    size = i2;
                }
            }
        }
        endChangeAnimation(this.pendingChanges, item);
        if (this.pendingRemovals.remove(item)) {
            View view2 = item.itemView;
            y45.i(view2, "item.itemView");
            lcc.a(view2);
            dispatchRemoveFinished(item);
        }
        if (this.pendingAdditions.remove(item)) {
            View view3 = item.itemView;
            y45.i(view3, "item.itemView");
            lcc.a(view3);
            dispatchAddFinished(item);
        }
        int size2 = this.changesList.size() - 1;
        if (size2 >= 0) {
            while (true) {
                int i3 = size2 - 1;
                Object obj2 = this.changesList.get(size2);
                y45.i(obj2, "changesList[i]");
                ArrayList arrayList = (ArrayList) obj2;
                endChangeAnimation(arrayList, item);
                if (arrayList.isEmpty()) {
                    this.changesList.remove(size2);
                }
                if (i3 < 0) {
                    break;
                } else {
                    size2 = i3;
                }
            }
        }
        int size3 = this.movesList.size() - 1;
        if (size3 >= 0) {
            while (true) {
                int i4 = size3 - 1;
                Object obj3 = this.movesList.get(size3);
                y45.i(obj3, "movesList[i]");
                ArrayList arrayList2 = (ArrayList) obj3;
                int size4 = arrayList2.size() - 1;
                if (size4 >= 0) {
                    while (true) {
                        int i5 = size4 - 1;
                        Object obj4 = arrayList2.get(size4);
                        y45.i(obj4, "moves[j]");
                        if (((f) obj4).c() == item) {
                            view.setTranslationY(0.0f);
                            view.setTranslationX(0.0f);
                            dispatchMoveFinished(item);
                            arrayList2.remove(size4);
                            if (!arrayList2.isEmpty()) {
                                break;
                            }
                            this.movesList.remove(size3);
                            break;
                        }
                        if (i5 < 0) {
                            break;
                        } else {
                            size4 = i5;
                        }
                    }
                }
                if (i4 < 0) {
                    break;
                } else {
                    size3 = i4;
                }
            }
        }
        int size5 = this.additionsList.size() - 1;
        if (size5 >= 0) {
            while (true) {
                int i6 = size5 - 1;
                Object obj5 = this.additionsList.get(size5);
                y45.i(obj5, "additionsList[i]");
                ArrayList arrayList3 = (ArrayList) obj5;
                if (arrayList3.remove(item)) {
                    View view4 = item.itemView;
                    y45.i(view4, "item.itemView");
                    lcc.a(view4);
                    dispatchAddFinished(item);
                    if (arrayList3.isEmpty()) {
                        this.additionsList.remove(size5);
                    }
                }
                if (i6 < 0) {
                    break;
                } else {
                    size5 = i6;
                }
            }
        }
        this.removeAnimations.remove(item);
        this.addAnimations.remove(item);
        this.changeAnimations.remove(item);
        this.moveAnimations.remove(item);
        dispatchFinishedWhenDone();
    }

    @Override
    public void endAnimations() {
        int size = this.pendingMoves.size();
        while (true) {
            size--;
            if (-1 >= size) {
                break;
            }
            Object obj = this.pendingMoves.get(size);
            y45.i(obj, "pendingMoves[i]");
            f fVar = (f) obj;
            View view = fVar.c().itemView;
            y45.i(view, "item.holder.itemView");
            view.setTranslationY(0.0f);
            view.setTranslationX(0.0f);
            dispatchMoveFinished(fVar.c());
            this.pendingMoves.remove(size);
        }
        for (int size2 = this.pendingRemovals.size() - 1; -1 < size2; size2--) {
            Object obj2 = this.pendingRemovals.get(size2);
            y45.i(obj2, "pendingRemovals[i]");
            dispatchRemoveFinished((RecyclerView.ViewHolder) obj2);
            this.pendingRemovals.remove(size2);
        }
        int size3 = this.pendingAdditions.size();
        while (true) {
            size3--;
            if (-1 >= size3) {
                break;
            }
            Object obj3 = this.pendingAdditions.get(size3);
            y45.i(obj3, "pendingAdditions[i]");
            RecyclerView.ViewHolder viewHolder = (RecyclerView.ViewHolder) obj3;
            View view2 = viewHolder.itemView;
            y45.i(view2, "item.itemView");
            lcc.a(view2);
            dispatchAddFinished(viewHolder);
            this.pendingAdditions.remove(size3);
        }
        for (int size4 = this.pendingChanges.size() - 1; -1 < size4; size4--) {
            Object obj4 = this.pendingChanges.get(size4);
            y45.i(obj4, "pendingChanges[i]");
            j((b) obj4);
        }
        this.pendingChanges.clear();
        if (isRunning()) {
            for (int size5 = this.movesList.size() - 1; -1 < size5; size5--) {
                Object obj5 = this.movesList.get(size5);
                y45.i(obj5, "movesList[i]");
                ArrayList arrayList = (ArrayList) obj5;
                for (int size6 = arrayList.size() - 1; -1 < size6; size6--) {
                    Object obj6 = arrayList.get(size6);
                    y45.i(obj6, "moves[j]");
                    f fVar2 = (f) obj6;
                    View view3 = fVar2.c().itemView;
                    y45.i(view3, "item.itemView");
                    view3.setTranslationY(0.0f);
                    view3.setTranslationX(0.0f);
                    dispatchMoveFinished(fVar2.c());
                    arrayList.remove(size6);
                    if (arrayList.isEmpty()) {
                        this.movesList.remove(arrayList);
                    }
                }
            }
            for (int size7 = this.additionsList.size() - 1; -1 < size7; size7--) {
                Object obj7 = this.additionsList.get(size7);
                y45.i(obj7, "additionsList[i]");
                ArrayList arrayList2 = (ArrayList) obj7;
                for (int size8 = arrayList2.size() - 1; -1 < size8; size8--) {
                    Object obj8 = arrayList2.get(size8);
                    y45.i(obj8, "additions[j]");
                    RecyclerView.ViewHolder viewHolder2 = (RecyclerView.ViewHolder) obj8;
                    View view4 = viewHolder2.itemView;
                    y45.i(view4, "item.itemView");
                    view4.setAlpha(1.0f);
                    dispatchAddFinished(viewHolder2);
                    if (size8 < arrayList2.size()) {
                        arrayList2.remove(size8);
                    }
                    if (arrayList2.isEmpty()) {
                        this.additionsList.remove(arrayList2);
                    }
                }
            }
            for (int size9 = this.changesList.size() - 1; -1 < size9; size9--) {
                Object obj9 = this.changesList.get(size9);
                y45.i(obj9, "changesList[i]");
                ArrayList arrayList3 = (ArrayList) obj9;
                for (int size10 = arrayList3.size() - 1; -1 < size10; size10--) {
                    Object obj10 = arrayList3.get(size10);
                    y45.i(obj10, "changes[j]");
                    j((b) obj10);
                    if (arrayList3.isEmpty()) {
                        this.changesList.remove(arrayList3);
                    }
                }
            }
            cancelAll(this.removeAnimations);
            cancelAll(this.moveAnimations);
            cancelAll(this.addAnimations);
            cancelAll(this.changeAnimations);
            dispatchAnimationsFinished();
        }
    }

    public final void endChangeAnimation(List infoList, RecyclerView.ViewHolder item) {
        int size = infoList.size() - 1;
        if (size < 0) {
            return;
        }
        while (true) {
            int i2 = size - 1;
            b bVar = (b) infoList.get(size);
            if (k(bVar, item) && bVar.d() == null && bVar.c() == null) {
                infoList.remove(bVar);
            }
            if (i2 < 0) {
                return;
            } else {
                size = i2;
            }
        }
    }

    public final void g(b changeInfo) {
        RecyclerView.ViewHolder viewHolderD = changeInfo.d();
        View view = viewHolderD != null ? viewHolderD.itemView : null;
        RecyclerView.ViewHolder viewHolderC = changeInfo.c();
        View view2 = viewHolderC != null ? viewHolderC.itemView : null;
        if (view != null) {
            if (changeInfo.d() != null) {
                ArrayList arrayList = this.changeAnimations;
                RecyclerView.ViewHolder viewHolderD2 = changeInfo.d();
                y45.g(viewHolderD2);
                arrayList.add(viewHolderD2);
            }
            ViewPropertyAnimator duration = view.animate().setDuration(getChangeDuration());
            y45.i(duration, "view.animate().setDurati…ngeDuration\n            )");
            duration.translationX(changeInfo.e() - changeInfo.a());
            duration.translationY(changeInfo.f() - changeInfo.b());
            duration.alpha(0.0f).setListener(new g(changeInfo, duration, view)).start();
        }
        if (view2 != null) {
            if (changeInfo.c() != null) {
                ArrayList arrayList2 = this.changeAnimations;
                RecyclerView.ViewHolder viewHolderC2 = changeInfo.c();
                y45.g(viewHolderC2);
                arrayList2.add(viewHolderC2);
            }
            ViewPropertyAnimator viewPropertyAnimatorAnimate = view2.animate();
            viewPropertyAnimatorAnimate.translationX(0.0f).translationY(0.0f).setDuration(getChangeDuration()).alpha(1.0f).setListener(new h(changeInfo, viewPropertyAnimatorAnimate, view2)).start();
        }
    }

    public final void h(RecyclerView.ViewHolder holder) {
        animateAddImpl(holder);
        this.addAnimations.add(holder);
    }

    public final void i(RecyclerView.ViewHolder holder) {
        animateRemoveImpl(holder);
        this.removeAnimations.add(holder);
    }

    @Override
    public boolean isRunning() {
        return (this.pendingAdditions.isEmpty() && this.pendingChanges.isEmpty() && this.pendingMoves.isEmpty() && this.pendingRemovals.isEmpty() && this.moveAnimations.isEmpty() && this.removeAnimations.isEmpty() && this.addAnimations.isEmpty() && this.changeAnimations.isEmpty() && this.movesList.isEmpty() && this.additionsList.isEmpty() && this.changesList.isEmpty()) ? false : true;
    }

    public final void j(b changeInfo) {
        if (changeInfo.d() != null) {
            k(changeInfo, changeInfo.d());
        }
        if (changeInfo.c() != null) {
            k(changeInfo, changeInfo.c());
        }
    }

    public final boolean k(b changeInfo, RecyclerView.ViewHolder item) {
        boolean z = false;
        if (changeInfo.c() == item) {
            changeInfo.g(null);
        } else {
            if (changeInfo.d() != item) {
                return false;
            }
            changeInfo.h(null);
            z = true;
        }
        y45.g(item);
        item.itemView.setAlpha(1.0f);
        item.itemView.setTranslationX(0.0f);
        item.itemView.setTranslationY(0.0f);
        dispatchChangeFinished(item, z);
        return true;
    }

    public final ArrayList getAddAnimations() {
        return this.addAnimations;
    }

    public final long getDelayedSync() {
        return this.delayedSync;
    }

    public final ArrayList getRemoveAnimations() {
        return this.removeAnimations;
    }

    public final void o(RecyclerView.ViewHolder holder) {
        View view = holder.itemView;
        y45.i(view, "holder.itemView");
        lcc.a(view);
        p(holder);
    }

    public void p(RecyclerView.ViewHolder holder) {
        y45.j(holder, "holder");
    }

    public final void q(RecyclerView.ViewHolder holder) {
        View view = holder.itemView;
        y45.i(view, "holder.itemView");
        lcc.a(view);
        r(holder);
    }

    public void r(RecyclerView.ViewHolder holder) {
        y45.j(holder, "holder");
    }

    @Override
    public void runPendingAnimations() {
        boolean zIsEmpty = this.pendingRemovals.isEmpty();
        boolean zIsEmpty2 = this.pendingMoves.isEmpty();
        boolean zIsEmpty3 = this.pendingChanges.isEmpty();
        boolean zIsEmpty4 = this.pendingAdditions.isEmpty();
        if (zIsEmpty && zIsEmpty2 && zIsEmpty4 && zIsEmpty3) {
            return;
        }
        for (RecyclerView.ViewHolder viewHolder : this.pendingRemovals) {
            y45.i(viewHolder, "holder");
            i(viewHolder);
        }
        this.pendingRemovals.clear();
        if (!zIsEmpty2) {
            final ArrayList arrayList = new ArrayList(this.pendingMoves);
            this.movesList.add(arrayList);
            this.pendingMoves.clear();
            Runnable runnable = new Runnable() {
                @Override
                public final void run() {
                    BaseItemAnimator.s(this.b, arrayList);
                }
            };
            if (zIsEmpty) {
                runnable.run();
            } else {
                View view = ((f) arrayList.get(0)).c().itemView;
                y45.i(view, "moves[0].holder.itemView");
                view.postOnAnimationDelayed(runnable, this.delayedSync);
            }
        }
        if (!zIsEmpty3) {
            final ArrayList arrayList2 = new ArrayList(this.pendingChanges);
            this.changesList.add(arrayList2);
            this.pendingChanges.clear();
            Runnable runnable2 = new Runnable() {
                @Override
                public final void run() {
                    BaseItemAnimator.t(this.b, arrayList2);
                }
            };
            if (zIsEmpty) {
                runnable2.run();
            } else {
                RecyclerView.ViewHolder viewHolderD = ((b) arrayList2.get(0)).d();
                y45.g(viewHolderD);
                viewHolderD.itemView.postOnAnimationDelayed(runnable2, this.isMoveToTop ? this.delayedSync : 0L);
            }
        }
        if (zIsEmpty4) {
            return;
        }
        final ArrayList arrayList3 = new ArrayList(this.pendingAdditions);
        this.additionsList.add(arrayList3);
        this.pendingAdditions.clear();
        Runnable runnable3 = new Runnable() {
            @Override
            public final void run() {
                BaseItemAnimator.u(this.b, arrayList3);
            }
        };
        if (zIsEmpty && zIsEmpty2 && zIsEmpty3) {
            runnable3.run();
            return;
        }
        if (!zIsEmpty) {
            getRemoveDuration();
        }
        wn8.e(!zIsEmpty2 ? getMoveDuration() : 0L, !zIsEmpty3 ? getChangeDuration() : 0L);
        View view2 = ((RecyclerView.ViewHolder) arrayList3.get(0)).itemView;
        y45.i(view2, "additions[0].itemView");
        view2.postOnAnimationDelayed(runnable3, this.isMoveToTop ? this.delayedSync : 0L);
    }

    public final void v(boolean z) {
        this.mIsLinearLayoutManager = z;
    }

    public final void w(boolean z) {
        this.isMoveToTop = z;
    }

    public static final class b {
        public RecyclerView.ViewHolder a;
        public RecyclerView.ViewHolder b;
        public int c;
        public int d;
        public int e;
        public int f;

        public b(RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2) {
            this.a = viewHolder;
            this.b = viewHolder2;
        }

        public final int a() {
            return this.c;
        }

        public final int b() {
            return this.d;
        }

        public final RecyclerView.ViewHolder c() {
            return this.b;
        }

        public final RecyclerView.ViewHolder d() {
            return this.a;
        }

        public final int e() {
            return this.e;
        }

        public final int f() {
            return this.f;
        }

        public final void g(RecyclerView.ViewHolder viewHolder) {
            this.b = viewHolder;
        }

        public final void h(RecyclerView.ViewHolder viewHolder) {
            this.a = viewHolder;
        }

        public String toString() {
            return "ChangeInfo{oldHolder=" + this.a + ", newHolder=" + this.b + ", fromX=" + this.c + ", fromY=" + this.d + ", toX=" + this.e + ", toY=" + this.f + StringSubstitutor.DEFAULT_VAR_END;
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public b(RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2, int i, int i2, int i3, int i4) {
            this(viewHolder, viewHolder2);
            y45.j(viewHolder, "oldHolder");
            y45.j(viewHolder2, "newHolder");
            this.c = i;
            this.d = i2;
            this.e = i3;
            this.f = i4;
        }
    }
}
