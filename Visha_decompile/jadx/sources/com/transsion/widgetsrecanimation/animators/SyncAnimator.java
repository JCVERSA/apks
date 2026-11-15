package com.transsion.widgetsrecanimation.animators;

import android.view.ViewPropertyAnimator;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.recyclerview.widget.RecyclerView;
import defpackage.l97;
import defpackage.m97;
import defpackage.o97;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0016\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000fB\t\b\u0016¢\u0006\u0004\b\u0002\u0010\u0003B\u0011\b\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0002\u0010\u0006J\u0017\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007H\u0014¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\f\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007H\u0014¢\u0006\u0004\b\f\u0010\u000bJ\u0017\u0010\r\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007H\u0014¢\u0006\u0004\b\r\u0010\u000b¨\u0006\u0010"}, d2 = {"Lcom/transsion/widgetsrecanimation/animators/SyncAnimator;", "Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;", MethodDecl.initName, "()V", "", "isLinearLayoutManager", "(Z)V", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "holder", "Lzfb;", "animateRemoveImpl", "(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V", TtmlNode.TAG_P, "animateAddImpl", "t", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "widgetsrecanimation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public class SyncAnimator extends BaseItemAnimator {
    public SyncAnimator() {
    }

    @Override
    public void animateAddImpl(RecyclerView.ViewHolder holder) {
        y45.j(holder, "holder");
        ViewPropertyAnimator viewPropertyAnimatorAnimate = holder.itemView.animate();
        viewPropertyAnimatorAnimate.alpha(1.0f).setDuration(200L).setInterpolator(new o97());
        viewPropertyAnimatorAnimate.scaleX(1.0f).setDuration(400L).setInterpolator(new m97());
        viewPropertyAnimatorAnimate.scaleY(1.0f).setDuration(400L).setInterpolator(new m97());
        viewPropertyAnimatorAnimate.setListener(new BaseItemAnimator.d(this, holder));
        viewPropertyAnimatorAnimate.setStartDelay(getDelayedSync());
        viewPropertyAnimatorAnimate.start();
    }

    @Override
    public void animateRemoveImpl(RecyclerView.ViewHolder holder) {
        y45.j(holder, "holder");
        ViewPropertyAnimator viewPropertyAnimatorAnimate = holder.itemView.animate();
        viewPropertyAnimatorAnimate.scaleX(0.6f).setDuration(200L).setInterpolator(new l97());
        viewPropertyAnimatorAnimate.scaleY(0.6f).setDuration(200L).setInterpolator(new l97());
        viewPropertyAnimatorAnimate.alpha(0.0f).setDuration(200L).setInterpolator(new o97());
        viewPropertyAnimatorAnimate.setListener(new BaseItemAnimator.e(this, holder));
        viewPropertyAnimatorAnimate.start();
    }

    @Override
    public void p(RecyclerView.ViewHolder holder) {
        y45.j(holder, "holder");
        holder.itemView.setScaleX(0.6f);
        holder.itemView.setScaleY(0.6f);
        holder.itemView.setAlpha(0.0f);
    }

    public SyncAnimator(boolean z) {
        v(z);
    }
}
