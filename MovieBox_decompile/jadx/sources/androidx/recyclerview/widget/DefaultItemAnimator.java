package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.annotation.NonNull;
import androidx.core.view.ViewCompat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class DefaultItemAnimator extends q {
    private static final boolean DEBUG = false;
    private static TimeInterpolator sDefaultInterpolator;
    private ArrayList<RecyclerView.a0> mPendingRemovals = new ArrayList<>();
    private ArrayList<RecyclerView.a0> mPendingAdditions = new ArrayList<>();
    private ArrayList<g> mPendingMoves = new ArrayList<>();
    private ArrayList<f> mPendingChanges = new ArrayList<>();
    ArrayList<ArrayList<RecyclerView.a0>> mAdditionsList = new ArrayList<>();
    ArrayList<ArrayList<g>> mMovesList = new ArrayList<>();
    ArrayList<ArrayList<f>> mChangesList = new ArrayList<>();
    ArrayList<RecyclerView.a0> mAddAnimations = new ArrayList<>();
    ArrayList<RecyclerView.a0> mMoveAnimations = new ArrayList<>();
    ArrayList<RecyclerView.a0> mRemoveAnimations = new ArrayList<>();
    ArrayList<RecyclerView.a0> mChangeAnimations = new ArrayList<>();

    class a extends AnimatorListenerAdapter {

        final RecyclerView.a0 f13781a;

        final ViewPropertyAnimator f13782b;

        final View f13783c;

        a(RecyclerView.a0 a0Var, ViewPropertyAnimator viewPropertyAnimator, View view) {
            this.f13781a = a0Var;
            this.f13782b = viewPropertyAnimator;
            this.f13783c = view;
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            this.f13782b.setListener(null);
            this.f13783c.setAlpha(1.0f);
            DefaultItemAnimator.this.dispatchRemoveFinished(this.f13781a);
            DefaultItemAnimator.this.mRemoveAnimations.remove(this.f13781a);
            DefaultItemAnimator.this.dispatchFinishedWhenDone();
        }

        @Override
        public void onAnimationStart(Animator animator) {
            DefaultItemAnimator.this.dispatchRemoveStarting(this.f13781a);
        }
    }

    class b extends AnimatorListenerAdapter {

        final RecyclerView.a0 f13785a;

        final View f13786b;

        final ViewPropertyAnimator f13787c;

        b(RecyclerView.a0 a0Var, View view, ViewPropertyAnimator viewPropertyAnimator) {
            this.f13785a = a0Var;
            this.f13786b = view;
            this.f13787c = viewPropertyAnimator;
        }

        @Override
        public void onAnimationCancel(Animator animator) {
            this.f13786b.setAlpha(1.0f);
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            this.f13787c.setListener(null);
            DefaultItemAnimator.this.dispatchAddFinished(this.f13785a);
            DefaultItemAnimator.this.mAddAnimations.remove(this.f13785a);
            DefaultItemAnimator.this.dispatchFinishedWhenDone();
        }

        @Override
        public void onAnimationStart(Animator animator) {
            DefaultItemAnimator.this.dispatchAddStarting(this.f13785a);
        }
    }

    class c extends AnimatorListenerAdapter {

        final RecyclerView.a0 f13789a;

        final int f13790b;

        final View f13791c;

        final int f13792d;

        final ViewPropertyAnimator f13793e;

        c(RecyclerView.a0 a0Var, int i10, View view, int i11, ViewPropertyAnimator viewPropertyAnimator) {
            this.f13789a = a0Var;
            this.f13790b = i10;
            this.f13791c = view;
            this.f13792d = i11;
            this.f13793e = viewPropertyAnimator;
        }

        @Override
        public void onAnimationCancel(Animator animator) {
            if (this.f13790b != 0) {
                this.f13791c.setTranslationX(0.0f);
            }
            if (this.f13792d != 0) {
                this.f13791c.setTranslationY(0.0f);
            }
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            this.f13793e.setListener(null);
            DefaultItemAnimator.this.dispatchMoveFinished(this.f13789a);
            DefaultItemAnimator.this.mMoveAnimations.remove(this.f13789a);
            DefaultItemAnimator.this.dispatchFinishedWhenDone();
        }

        @Override
        public void onAnimationStart(Animator animator) {
            DefaultItemAnimator.this.dispatchMoveStarting(this.f13789a);
        }
    }

    class d extends AnimatorListenerAdapter {

        final f f13795a;

        final ViewPropertyAnimator f13796b;

        final View f13797c;

        d(f fVar, ViewPropertyAnimator viewPropertyAnimator, View view) {
            this.f13795a = fVar;
            this.f13796b = viewPropertyAnimator;
            this.f13797c = view;
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            this.f13796b.setListener(null);
            this.f13797c.setAlpha(1.0f);
            this.f13797c.setTranslationX(0.0f);
            this.f13797c.setTranslationY(0.0f);
            DefaultItemAnimator.this.dispatchChangeFinished(this.f13795a.f13803a, true);
            DefaultItemAnimator.this.mChangeAnimations.remove(this.f13795a.f13803a);
            DefaultItemAnimator.this.dispatchFinishedWhenDone();
        }

        @Override
        public void onAnimationStart(Animator animator) {
            DefaultItemAnimator.this.dispatchChangeStarting(this.f13795a.f13803a, true);
        }
    }

    class e extends AnimatorListenerAdapter {

        final f f13799a;

        final ViewPropertyAnimator f13800b;

        final View f13801c;

        e(f fVar, ViewPropertyAnimator viewPropertyAnimator, View view) {
            this.f13799a = fVar;
            this.f13800b = viewPropertyAnimator;
            this.f13801c = view;
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            this.f13800b.setListener(null);
            this.f13801c.setAlpha(1.0f);
            this.f13801c.setTranslationX(0.0f);
            this.f13801c.setTranslationY(0.0f);
            DefaultItemAnimator.this.dispatchChangeFinished(this.f13799a.f13804b, false);
            DefaultItemAnimator.this.mChangeAnimations.remove(this.f13799a.f13804b);
            DefaultItemAnimator.this.dispatchFinishedWhenDone();
        }

        @Override
        public void onAnimationStart(Animator animator) {
            DefaultItemAnimator.this.dispatchChangeStarting(this.f13799a.f13804b, false);
        }
    }

    private static class g {

        public RecyclerView.a0 f13809a;

        public int f13810b;

        public int f13811c;

        public int f13812d;

        public int f13813e;

        g(RecyclerView.a0 a0Var, int i10, int i11, int i12, int i13) {
            this.f13809a = a0Var;
            this.f13810b = i10;
            this.f13811c = i11;
            this.f13812d = i12;
            this.f13813e = i13;
        }
    }

    private void a(RecyclerView.a0 a0Var) {
        View view = a0Var.itemView;
        ViewPropertyAnimator viewPropertyAnimatorAnimate = view.animate();
        this.mRemoveAnimations.add(a0Var);
        viewPropertyAnimatorAnimate.setDuration(getRemoveDuration()).alpha(0.0f).setListener(new a(a0Var, viewPropertyAnimatorAnimate, view)).start();
    }

    private void b(List list, RecyclerView.a0 a0Var) {
        for (int size = list.size() - 1; size >= 0; size--) {
            f fVar = (f) list.get(size);
            if (d(fVar, a0Var) && fVar.f13803a == null && fVar.f13804b == null) {
                list.remove(fVar);
            }
        }
    }

    private void c(f fVar) {
        RecyclerView.a0 a0Var = fVar.f13803a;
        if (a0Var != null) {
            d(fVar, a0Var);
        }
        RecyclerView.a0 a0Var2 = fVar.f13804b;
        if (a0Var2 != null) {
            d(fVar, a0Var2);
        }
    }

    private boolean d(f fVar, RecyclerView.a0 a0Var) {
        boolean z10 = false;
        if (fVar.f13804b == a0Var) {
            fVar.f13804b = null;
        } else {
            if (fVar.f13803a != a0Var) {
                return false;
            }
            fVar.f13803a = null;
            z10 = true;
        }
        a0Var.itemView.setAlpha(1.0f);
        a0Var.itemView.setTranslationX(0.0f);
        a0Var.itemView.setTranslationY(0.0f);
        dispatchChangeFinished(a0Var, z10);
        return true;
    }

    private void e(RecyclerView.a0 a0Var) {
        if (sDefaultInterpolator == null) {
            sDefaultInterpolator = new ValueAnimator().getInterpolator();
        }
        a0Var.itemView.animate().setInterpolator(sDefaultInterpolator);
        endAnimation(a0Var);
    }

    @Override
    public boolean animateAdd(RecyclerView.a0 a0Var) {
        e(a0Var);
        a0Var.itemView.setAlpha(0.0f);
        this.mPendingAdditions.add(a0Var);
        return true;
    }

    void animateAddImpl(RecyclerView.a0 a0Var) {
        View view = a0Var.itemView;
        ViewPropertyAnimator viewPropertyAnimatorAnimate = view.animate();
        this.mAddAnimations.add(a0Var);
        viewPropertyAnimatorAnimate.alpha(1.0f).setDuration(getAddDuration()).setListener(new b(a0Var, view, viewPropertyAnimatorAnimate)).start();
    }

    @Override
    @SuppressLint({"UnknownNullness"})
    public boolean animateChange(RecyclerView.a0 a0Var, RecyclerView.a0 a0Var2, int i10, int i11, int i12, int i13) {
        if (a0Var == a0Var2) {
            return animateMove(a0Var, i10, i11, i12, i13);
        }
        float translationX = a0Var.itemView.getTranslationX();
        float translationY = a0Var.itemView.getTranslationY();
        float alpha = a0Var.itemView.getAlpha();
        e(a0Var);
        int i14 = (int) ((i12 - i10) - translationX);
        int i15 = (int) ((i13 - i11) - translationY);
        a0Var.itemView.setTranslationX(translationX);
        a0Var.itemView.setTranslationY(translationY);
        a0Var.itemView.setAlpha(alpha);
        if (a0Var2 != null) {
            e(a0Var2);
            a0Var2.itemView.setTranslationX(-i14);
            a0Var2.itemView.setTranslationY(-i15);
            a0Var2.itemView.setAlpha(0.0f);
        }
        this.mPendingChanges.add(new f(a0Var, a0Var2, i10, i11, i12, i13));
        return true;
    }

    void animateChangeImpl(f fVar) {
        RecyclerView.a0 a0Var = fVar.f13803a;
        View view = a0Var == null ? null : a0Var.itemView;
        RecyclerView.a0 a0Var2 = fVar.f13804b;
        View view2 = a0Var2 != null ? a0Var2.itemView : null;
        if (view != null) {
            ViewPropertyAnimator duration = view.animate().setDuration(getChangeDuration());
            this.mChangeAnimations.add(fVar.f13803a);
            duration.translationX(fVar.f13807e - fVar.f13805c);
            duration.translationY(fVar.f13808f - fVar.f13806d);
            duration.alpha(0.0f).setListener(new d(fVar, duration, view)).start();
        }
        if (view2 != null) {
            ViewPropertyAnimator viewPropertyAnimatorAnimate = view2.animate();
            this.mChangeAnimations.add(fVar.f13804b);
            viewPropertyAnimatorAnimate.translationX(0.0f).translationY(0.0f).setDuration(getChangeDuration()).alpha(1.0f).setListener(new e(fVar, viewPropertyAnimatorAnimate, view2)).start();
        }
    }

    @Override
    @SuppressLint({"UnknownNullness"})
    public boolean animateMove(RecyclerView.a0 a0Var, int i10, int i11, int i12, int i13) {
        View view = a0Var.itemView;
        int translationX = i10 + ((int) view.getTranslationX());
        int translationY = i11 + ((int) a0Var.itemView.getTranslationY());
        e(a0Var);
        int i14 = i12 - translationX;
        int i15 = i13 - translationY;
        if (i14 == 0 && i15 == 0) {
            dispatchMoveFinished(a0Var);
            return false;
        }
        if (i14 != 0) {
            view.setTranslationX(-i14);
        }
        if (i15 != 0) {
            view.setTranslationY(-i15);
        }
        this.mPendingMoves.add(new g(a0Var, translationX, translationY, i12, i13));
        return true;
    }

    void animateMoveImpl(RecyclerView.a0 a0Var, int i10, int i11, int i12, int i13) {
        View view = a0Var.itemView;
        int i14 = i12 - i10;
        int i15 = i13 - i11;
        if (i14 != 0) {
            view.animate().translationX(0.0f);
        }
        if (i15 != 0) {
            view.animate().translationY(0.0f);
        }
        ViewPropertyAnimator viewPropertyAnimatorAnimate = view.animate();
        this.mMoveAnimations.add(a0Var);
        viewPropertyAnimatorAnimate.setDuration(getMoveDuration()).setListener(new c(a0Var, i14, view, i15, viewPropertyAnimatorAnimate)).start();
    }

    @Override
    @SuppressLint({"UnknownNullness"})
    public boolean animateRemove(RecyclerView.a0 a0Var) {
        e(a0Var);
        this.mPendingRemovals.add(a0Var);
        return true;
    }

    @Override
    public boolean canReuseUpdatedViewHolder(@NonNull RecyclerView.a0 a0Var, @NonNull List<Object> list) {
        return !list.isEmpty() || super.canReuseUpdatedViewHolder(a0Var, list);
    }

    void cancelAll(List<RecyclerView.a0> list) {
        for (int size = list.size() - 1; size >= 0; size--) {
            list.get(size).itemView.animate().cancel();
        }
    }

    void dispatchFinishedWhenDone() {
        if (isRunning()) {
            return;
        }
        dispatchAnimationsFinished();
    }

    @Override
    public void endAnimation(RecyclerView.a0 a0Var) {
        View view = a0Var.itemView;
        view.animate().cancel();
        int size = this.mPendingMoves.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            if (this.mPendingMoves.get(size).f13809a == a0Var) {
                view.setTranslationY(0.0f);
                view.setTranslationX(0.0f);
                dispatchMoveFinished(a0Var);
                this.mPendingMoves.remove(size);
            }
        }
        b(this.mPendingChanges, a0Var);
        if (this.mPendingRemovals.remove(a0Var)) {
            view.setAlpha(1.0f);
            dispatchRemoveFinished(a0Var);
        }
        if (this.mPendingAdditions.remove(a0Var)) {
            view.setAlpha(1.0f);
            dispatchAddFinished(a0Var);
        }
        for (int size2 = this.mChangesList.size() - 1; size2 >= 0; size2--) {
            ArrayList<f> arrayList = this.mChangesList.get(size2);
            b(arrayList, a0Var);
            if (arrayList.isEmpty()) {
                this.mChangesList.remove(size2);
            }
        }
        for (int size3 = this.mMovesList.size() - 1; size3 >= 0; size3--) {
            ArrayList<g> arrayList2 = this.mMovesList.get(size3);
            for (int size4 = arrayList2.size() - 1; size4 >= 0; size4--) {
                if (arrayList2.get(size4).f13809a == a0Var) {
                    view.setTranslationY(0.0f);
                    view.setTranslationX(0.0f);
                    dispatchMoveFinished(a0Var);
                    arrayList2.remove(size4);
                    if (!arrayList2.isEmpty()) {
                        break;
                    }
                    this.mMovesList.remove(size3);
                    break;
                }
            }
        }
        for (int size5 = this.mAdditionsList.size() - 1; size5 >= 0; size5--) {
            ArrayList<RecyclerView.a0> arrayList3 = this.mAdditionsList.get(size5);
            if (arrayList3.remove(a0Var)) {
                view.setAlpha(1.0f);
                dispatchAddFinished(a0Var);
                if (arrayList3.isEmpty()) {
                    this.mAdditionsList.remove(size5);
                }
            }
        }
        this.mRemoveAnimations.remove(a0Var);
        this.mAddAnimations.remove(a0Var);
        this.mChangeAnimations.remove(a0Var);
        this.mMoveAnimations.remove(a0Var);
        dispatchFinishedWhenDone();
    }

    @Override
    public void endAnimations() {
        int size = this.mPendingMoves.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            g gVar = this.mPendingMoves.get(size);
            View view = gVar.f13809a.itemView;
            view.setTranslationY(0.0f);
            view.setTranslationX(0.0f);
            dispatchMoveFinished(gVar.f13809a);
            this.mPendingMoves.remove(size);
        }
        for (int size2 = this.mPendingRemovals.size() - 1; size2 >= 0; size2--) {
            dispatchRemoveFinished(this.mPendingRemovals.get(size2));
            this.mPendingRemovals.remove(size2);
        }
        int size3 = this.mPendingAdditions.size();
        while (true) {
            size3--;
            if (size3 < 0) {
                break;
            }
            RecyclerView.a0 a0Var = this.mPendingAdditions.get(size3);
            a0Var.itemView.setAlpha(1.0f);
            dispatchAddFinished(a0Var);
            this.mPendingAdditions.remove(size3);
        }
        for (int size4 = this.mPendingChanges.size() - 1; size4 >= 0; size4--) {
            c(this.mPendingChanges.get(size4));
        }
        this.mPendingChanges.clear();
        if (isRunning()) {
            for (int size5 = this.mMovesList.size() - 1; size5 >= 0; size5--) {
                ArrayList<g> arrayList = this.mMovesList.get(size5);
                for (int size6 = arrayList.size() - 1; size6 >= 0; size6--) {
                    g gVar2 = arrayList.get(size6);
                    View view2 = gVar2.f13809a.itemView;
                    view2.setTranslationY(0.0f);
                    view2.setTranslationX(0.0f);
                    dispatchMoveFinished(gVar2.f13809a);
                    arrayList.remove(size6);
                    if (arrayList.isEmpty()) {
                        this.mMovesList.remove(arrayList);
                    }
                }
            }
            for (int size7 = this.mAdditionsList.size() - 1; size7 >= 0; size7--) {
                ArrayList<RecyclerView.a0> arrayList2 = this.mAdditionsList.get(size7);
                for (int size8 = arrayList2.size() - 1; size8 >= 0; size8--) {
                    RecyclerView.a0 a0Var2 = arrayList2.get(size8);
                    a0Var2.itemView.setAlpha(1.0f);
                    dispatchAddFinished(a0Var2);
                    arrayList2.remove(size8);
                    if (arrayList2.isEmpty()) {
                        this.mAdditionsList.remove(arrayList2);
                    }
                }
            }
            for (int size9 = this.mChangesList.size() - 1; size9 >= 0; size9--) {
                ArrayList<f> arrayList3 = this.mChangesList.get(size9);
                for (int size10 = arrayList3.size() - 1; size10 >= 0; size10--) {
                    c(arrayList3.get(size10));
                    if (arrayList3.isEmpty()) {
                        this.mChangesList.remove(arrayList3);
                    }
                }
            }
            cancelAll(this.mRemoveAnimations);
            cancelAll(this.mMoveAnimations);
            cancelAll(this.mAddAnimations);
            cancelAll(this.mChangeAnimations);
            dispatchAnimationsFinished();
        }
    }

    @Override
    public boolean isRunning() {
        return (this.mPendingAdditions.isEmpty() && this.mPendingChanges.isEmpty() && this.mPendingMoves.isEmpty() && this.mPendingRemovals.isEmpty() && this.mMoveAnimations.isEmpty() && this.mRemoveAnimations.isEmpty() && this.mAddAnimations.isEmpty() && this.mChangeAnimations.isEmpty() && this.mMovesList.isEmpty() && this.mAdditionsList.isEmpty() && this.mChangesList.isEmpty()) ? false : true;
    }

    @Override
    public void runPendingAnimations() {
        boolean zIsEmpty = this.mPendingRemovals.isEmpty();
        boolean zIsEmpty2 = this.mPendingMoves.isEmpty();
        boolean zIsEmpty3 = this.mPendingChanges.isEmpty();
        boolean zIsEmpty4 = this.mPendingAdditions.isEmpty();
        if (zIsEmpty && zIsEmpty2 && zIsEmpty4 && zIsEmpty3) {
            return;
        }
        Iterator<RecyclerView.a0> it = this.mPendingRemovals.iterator();
        while (it.hasNext()) {
            a(it.next());
        }
        this.mPendingRemovals.clear();
        if (!zIsEmpty2) {
            final ArrayList<g> arrayList = new ArrayList<>();
            arrayList.addAll(this.mPendingMoves);
            this.mMovesList.add(arrayList);
            this.mPendingMoves.clear();
            Runnable runnable = new Runnable() {
                @Override
                public void run() {
                    for (g gVar : arrayList) {
                        DefaultItemAnimator.this.animateMoveImpl(gVar.f13809a, gVar.f13810b, gVar.f13811c, gVar.f13812d, gVar.f13813e);
                    }
                    arrayList.clear();
                    DefaultItemAnimator.this.mMovesList.remove(arrayList);
                }
            };
            if (zIsEmpty) {
                runnable.run();
            } else {
                ViewCompat.postOnAnimationDelayed(arrayList.get(0).f13809a.itemView, runnable, getRemoveDuration());
            }
        }
        if (!zIsEmpty3) {
            final ArrayList<f> arrayList2 = new ArrayList<>();
            arrayList2.addAll(this.mPendingChanges);
            this.mChangesList.add(arrayList2);
            this.mPendingChanges.clear();
            Runnable runnable2 = new Runnable() {
                @Override
                public void run() {
                    Iterator it2 = arrayList2.iterator();
                    while (it2.hasNext()) {
                        DefaultItemAnimator.this.animateChangeImpl((f) it2.next());
                    }
                    arrayList2.clear();
                    DefaultItemAnimator.this.mChangesList.remove(arrayList2);
                }
            };
            if (zIsEmpty) {
                runnable2.run();
            } else {
                ViewCompat.postOnAnimationDelayed(arrayList2.get(0).f13803a.itemView, runnable2, getRemoveDuration());
            }
        }
        if (zIsEmpty4) {
            return;
        }
        final ArrayList<RecyclerView.a0> arrayList3 = new ArrayList<>();
        arrayList3.addAll(this.mPendingAdditions);
        this.mAdditionsList.add(arrayList3);
        this.mPendingAdditions.clear();
        Runnable runnable3 = new Runnable() {
            @Override
            public void run() {
                Iterator it2 = arrayList3.iterator();
                while (it2.hasNext()) {
                    DefaultItemAnimator.this.animateAddImpl((RecyclerView.a0) it2.next());
                }
                arrayList3.clear();
                DefaultItemAnimator.this.mAdditionsList.remove(arrayList3);
            }
        };
        if (zIsEmpty && zIsEmpty2 && zIsEmpty3) {
            runnable3.run();
        } else {
            ViewCompat.postOnAnimationDelayed(arrayList3.get(0).itemView, runnable3, (!zIsEmpty ? getRemoveDuration() : 0L) + Math.max(!zIsEmpty2 ? getMoveDuration() : 0L, zIsEmpty3 ? 0L : getChangeDuration()));
        }
    }

    private static class f {

        public RecyclerView.a0 f13803a;

        public RecyclerView.a0 f13804b;

        public int f13805c;

        public int f13806d;

        public int f13807e;

        public int f13808f;

        private f(RecyclerView.a0 a0Var, RecyclerView.a0 a0Var2) {
            this.f13803a = a0Var;
            this.f13804b = a0Var2;
        }

        public String toString() {
            return "ChangeInfo{oldHolder=" + this.f13803a + ", newHolder=" + this.f13804b + ", fromX=" + this.f13805c + ", fromY=" + this.f13806d + ", toX=" + this.f13807e + ", toY=" + this.f13808f + '}';
        }

        f(RecyclerView.a0 a0Var, RecyclerView.a0 a0Var2, int i10, int i11, int i12, int i13) {
            this(a0Var, a0Var2);
            this.f13805c = i10;
            this.f13806d = i11;
            this.f13807e = i12;
            this.f13808f = i13;
        }
    }
}
