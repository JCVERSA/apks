package com.transsion.onlinevideo.tiktok;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import androidx.exifinterface.media.ExifInterface;
import androidx.fragment.app.Fragment;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.p003activity.result.ActivityResultCaller;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import androidx.viewpager2.widget.ViewPager2;
import com.lzy.okgo.cookie.SerializableCookie;
import com.transsion.dbdata.beans.onlinevideo.tiktok.ArticleData;
import com.transsion.onlinevideo.tiktok.TiktokVideoPagerAdapter;
import com.transsion.onlinevideo.tiktok.ad.AdSlotRemoveReason;
import defpackage.aja;
import defpackage.c74;
import defpackage.dja;
import defpackage.e74;
import defpackage.hg;
import defpackage.i81;
import defpackage.rka;
import defpackage.wn8;
import defpackage.y45;
import defpackage.yia;
import defpackage.zfb;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000®\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u0007\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u0000 \u009e\u00012\u00020\u00012\u00020\u00022\u00020\u0003:\u0004\u009f\u0001 \u0001B+\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0010\b\u0002\u0010\b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0006\u0012\b\b\u0002\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u0010\u001a\u00020\u000f2\b\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\u0010\u0010\u0011J\u0015\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u0012¢\u0006\u0004\b\u0014\u0010\u0015J\r\u0010\u0016\u001a\u00020\u000f¢\u0006\u0004\b\u0016\u0010\u0017J\u001d\u0010\u001a\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0019\u001a\u00020\u0018¢\u0006\u0004\b\u001a\u0010\u001bJ\r\u0010\u001c\u001a\u00020\u000f¢\u0006\u0004\b\u001c\u0010\u0017J\r\u0010\u001d\u001a\u00020\u000f¢\u0006\u0004\b\u001d\u0010\u0017J\r\u0010\u001e\u001a\u00020\u000f¢\u0006\u0004\b\u001e\u0010\u0017J\r\u0010\u001f\u001a\u00020\u000f¢\u0006\u0004\b\u001f\u0010\u0017J\u0017\u0010\"\u001a\u0004\u0018\u00010!2\u0006\u0010 \u001a\u00020\u0012¢\u0006\u0004\b\"\u0010#J\u0017\u0010$\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b$\u0010%J\u000f\u0010&\u001a\u00020\u0012H\u0016¢\u0006\u0004\b&\u0010'J\u0017\u0010)\u001a\u00020(2\u0006\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b)\u0010*J\u0017\u0010,\u001a\u00020\u00182\u0006\u0010+\u001a\u00020(H\u0016¢\u0006\u0004\b,\u0010-J\u0015\u0010.\u001a\u00020\u00122\u0006\u0010 \u001a\u00020\u0012¢\u0006\u0004\b.\u0010/J\u001d\u00103\u001a\u00020\u000f2\u000e\u00102\u001a\n\u0012\u0004\u0012\u000201\u0018\u000100¢\u0006\u0004\b3\u00104J\u001d\u00105\u001a\u00020\u000f2\u000e\u00102\u001a\n\u0012\u0004\u0012\u000201\u0018\u000100¢\u0006\u0004\b5\u00104J\u0013\u00106\u001a\b\u0012\u0004\u0012\u00020100¢\u0006\u0004\b6\u00107J\u0017\u00108\u001a\u0004\u0018\u0001012\u0006\u0010 \u001a\u00020\u0012¢\u0006\u0004\b8\u00109J\u001d\u0010=\u001a\u00020\u000f2\u0006\u0010;\u001a\u00020:2\u0006\u0010<\u001a\u00020\u0012¢\u0006\u0004\b=\u0010>J\u0017\u0010?\u001a\u00020\u000f2\u0006\u0010 \u001a\u00020\u0012H\u0016¢\u0006\u0004\b?\u0010\u0015J\u000f\u0010@\u001a\u00020\u0018H\u0016¢\u0006\u0004\b@\u0010AJ\u001d\u0010C\u001a\u00020\u000f2\f\u0010B\u001a\b\u0012\u0004\u0012\u00020\u000f0\u0006H\u0016¢\u0006\u0004\bC\u0010DJ\u001f\u0010G\u001a\u00020\u000f2\u0006\u0010 \u001a\u00020\u00122\u0006\u0010F\u001a\u00020EH\u0016¢\u0006\u0004\bG\u0010HJ%\u0010J\u001a\u00020\u000f2\f\u0010I\u001a\b\u0012\u0004\u0012\u00020\u0012002\u0006\u0010F\u001a\u00020EH\u0016¢\u0006\u0004\bJ\u0010KJ\u0019\u0010M\u001a\u0004\u0018\u00010L2\u0006\u0010 \u001a\u00020\u0012H\u0016¢\u0006\u0004\bM\u0010NJ\u001f\u0010P\u001a\u00020\u00182\u0006\u0010 \u001a\u00020\u00122\u0006\u0010O\u001a\u00020LH\u0016¢\u0006\u0004\bP\u0010QJ\u001f\u0010R\u001a\u00020\u000f2\u0006\u0010 \u001a\u00020\u00122\u0006\u0010F\u001a\u00020EH\u0016¢\u0006\u0004\bR\u0010HJ\u0017\u0010S\u001a\u00020\u000f2\u0006\u0010 \u001a\u00020\u0012H\u0016¢\u0006\u0004\bS\u0010\u0015J\r\u0010T\u001a\u00020\u000f¢\u0006\u0004\bT\u0010\u0017J\u0011\u0010U\u001a\u0004\u0018\u00010\u0012H\u0002¢\u0006\u0004\bU\u0010VJ\u0019\u0010X\u001a\u0004\u0018\u00010W2\u0006\u0010 \u001a\u00020\u0012H\u0002¢\u0006\u0004\bX\u0010YJ\u0017\u0010[\u001a\u00020\u000f2\u0006\u0010Z\u001a\u00020\u0012H\u0002¢\u0006\u0004\b[\u0010\u0015J\u0017\u0010\\\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\\\u0010\u0015J\u0017\u0010]\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u0012H\u0002¢\u0006\u0004\b]\u0010\u0015J\u0017\u0010^\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u0012H\u0002¢\u0006\u0004\b^\u0010\u0015J\u0017\u0010_\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u0012H\u0002¢\u0006\u0004\b_\u0010\u0015J\u0017\u0010a\u001a\u00020(2\u0006\u0010`\u001a\u00020\u0012H\u0002¢\u0006\u0004\ba\u0010*J\u000f\u0010b\u001a\u00020\u000fH\u0002¢\u0006\u0004\bb\u0010\u0017J\u001d\u0010d\u001a\u00020\u000f2\f\u0010c\u001a\b\u0012\u0004\u0012\u00020\u000f0\u0006H\u0002¢\u0006\u0004\bd\u0010DJ\u000f\u0010e\u001a\u00020\u000fH\u0002¢\u0006\u0004\be\u0010\u0017J\u001f\u0010g\u001a\u00020\u000f2\u000e\b\u0002\u0010f\u001a\b\u0012\u0004\u0012\u00020\u000f0\u0006H\u0002¢\u0006\u0004\bg\u0010DJ\u001f\u0010h\u001a\u00020\u000f2\u000e\b\u0002\u0010f\u001a\b\u0012\u0004\u0012\u00020\u000f0\u0006H\u0002¢\u0006\u0004\bh\u0010DJ\u000f\u0010i\u001a\u00020\u000fH\u0002¢\u0006\u0004\bi\u0010\u0017J\u0011\u0010k\u001a\u0004\u0018\u00010jH\u0002¢\u0006\u0004\bk\u0010lJ\u000f\u0010m\u001a\u00020\u000fH\u0002¢\u0006\u0004\bm\u0010\u0017J/\u0010o\u001a\u00020\u000f2\f\u0010B\u001a\b\u0012\u0004\u0012\u00020\u000f0\u00062\u0010\b\u0002\u0010n\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u0006H\u0002¢\u0006\u0004\bo\u0010pJ'\u0010s\u001a\u00020\u000f2\u0006\u0010r\u001a\u00020q2\u000e\u0010n\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u0006H\u0002¢\u0006\u0004\bs\u0010tJ\u0017\u0010u\u001a\u00020\u00182\u0006\u0010r\u001a\u00020qH\u0002¢\u0006\u0004\bu\u0010vJ\u0011\u0010w\u001a\u0004\u0018\u00010qH\u0002¢\u0006\u0004\bw\u0010xR\u001c\u0010\b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bP\u0010yR\u0014\u0010\n\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bS\u0010zR\u0014\u0010|\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b?\u0010{R&\u0010\u0081\u0001\u001a\u0012\u0012\u0004\u0012\u0002010}j\b\u0012\u0004\u0012\u000201`~8\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b\u007f\u0010\u0080\u0001R\u0019\u0010\u0084\u0001\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0082\u0001\u0010\u0083\u0001R\u0019\u0010\u0086\u0001\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0085\u0001\u0010\u0083\u0001R\u0019\u0010\u0088\u0001\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0087\u0001\u0010\u0083\u0001R\u001b\u0010\u008b\u0001\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0089\u0001\u0010\u008a\u0001R\u0018\u0010\u008d\u0001\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u008c\u0001\u0010dR\u0019\u0010\u008f\u0001\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008e\u0001\u0010\u0083\u0001R\u0019\u0010\u0091\u0001\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0090\u0001\u0010\u0083\u0001R\u001c\u0010\u0095\u0001\u001a\u0005\u0018\u00010\u0092\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0093\u0001\u0010\u0094\u0001R$\u0010\u0099\u0001\u001a\u000f\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000f0\u00060\u0096\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0097\u0001\u0010\u0098\u0001R\u0018\u0010\u009b\u0001\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u009a\u0001\u0010dR\u0013\u0010\u009d\u0001\u001a\u00020\u00128F¢\u0006\u0007\u001a\u0005\b\u009c\u0001\u0010'¨\u0006¡\u0001"}, d2 = {"Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;", "Landroidx/viewpager2/adapter/FragmentStateAdapter;", "Ldja$a;", "Laja;", "Landroidx/fragment/app/Fragment;", SerializableCookie.HOST, "Lkotlin/Function0;", "Landroidx/viewpager2/widget/ViewPager2;", "viewPagerProvider", "Ldja;", "feedAdController", MethodDecl.initName, "(Landroidx/fragment/app/Fragment;Lc74;Ldja;)V", "Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter$c;", "listener", "Lzfb;", "setOnPagePlayListener", "(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter$c;)V", "", "position", "r0", "(I)V", "t0", "()V", "", "force", "s0", "(IZ)V", "g0", "u0", "C0", "v0", "globalPosition", "Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;", "c0", "(I)Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;", "createFragment", "(I)Landroidx/fragment/app/Fragment;", "getItemCount", "()I", "", "getItemId", "(I)J", "itemId", "containsItem", "(J)Z", "f0", "(I)I", "", "Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;", "dataList", "N0", "(Ljava/util/List;)V", "J", "O0", "()Ljava/util/List;", "d0", "(I)Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;", "Landroid/content/Context;", "context", "videoGlobalPosition", "w0", "(Landroid/content/Context;I)V", "q", "M", "()Z", "action", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "(Lc74;)V", "Lcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;", "reason", "f", "(ILcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;)V", "removedPositions", "e", "(Ljava/util/List;Lcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;)V", "Lrka;", CmcdData.OBJECT_TYPE_MANIFEST, "(I)Lrka;", "prefetched", "o", "(ILrka;)Z", "n", TtmlNode.TAG_P, "U", "B0", "()Ljava/lang/Integer;", "Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment;", "a0", "(I)Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment;", "videoGlobalPos", "R0", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "S0", "X", "U0", "videoIndex", "W0", "k0", "mutation", "Z", "x0", "onHostNotified", "h0", "O", "P0", "Lyia;", "A0", "()Lyia;", "I0", TtmlNode.ANNOTATION_POSITION_AFTER, "E0", "(Lc74;Lc74;)V", "Landroidx/recyclerview/widget/RecyclerView;", "recycler", "K0", "(Landroidx/recyclerview/widget/RecyclerView;Lc74;)V", "N", "(Landroidx/recyclerview/widget/RecyclerView;)Z", "b0", "()Landroidx/recyclerview/widget/RecyclerView;", "Lc74;", "Ldja;", "Landroidx/fragment/app/Fragment;", "hostFragment", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "r", "Ljava/util/ArrayList;", "videoDataList", "s", "I", "currentPlayPosition", "t", "cachePosition", "u", "cacheAdPosition", "v", "Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter$c;", "pagePlayListener", "w", "isMutatingAdSlots", "x", "pendingSelectPosition", "y", "pendingVideoSelectPosition", "Ljava/lang/Runnable;", "z", "Ljava/lang/Runnable;", "pendingSelectVideoRunnable", "Lhg;", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "Lhg;", "pendingAdMutations", "B", "skipNudgeOnNextAdSync", "e0", "videoCount", "C", "b", "c", "onlinevideo_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class TiktokVideoPagerAdapter extends FragmentStateAdapter implements dja.a, aja {

    public static final Companion INSTANCE = new Companion(null);

    public final hg pendingAdMutations;

    public boolean skipNudgeOnNextAdSync;

    public final c74 viewPagerProvider;

    public final dja feedAdController;

    public final Fragment hostFragment;

    public final ArrayList videoDataList;

    public int currentPlayPosition;

    public int cachePosition;

    public int cacheAdPosition;

    public c pagePlayListener;

    public boolean isMutatingAdSlots;

    public int pendingSelectPosition;

    public int pendingVideoSelectPosition;

    public Runnable pendingSelectVideoRunnable;

    public static final class a implements c74 {
        public static final a b = new a();

        @Override
        public final Void invoke() {
            return null;
        }
    }

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final long c(int i) {
            return -(((long) i) + 1000000);
        }

        public final int d(long j) {
            return (int) ((-j) - 1000000);
        }

        public Companion() {
        }
    }

    public interface c {
        void a(int i);

        void b(int i);

        boolean c();
    }

    public TiktokVideoPagerAdapter(Fragment fragment, c74 c74Var, dja djaVar, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(fragment, (i & 2) != 0 ? a.b : c74Var, (i & 4) != 0 ? new dja(null, 1, null) : djaVar);
    }

    public static final void D0(TiktokVideoPagerAdapter tiktokVideoPagerAdapter, c74 c74Var) {
        tiktokVideoPagerAdapter.a(c74Var);
    }

    public static void F0(TiktokVideoPagerAdapter tiktokVideoPagerAdapter, c74 c74Var, c74 c74Var2, int i, Object obj) {
        if ((i & 2) != 0) {
            c74Var2 = null;
        }
        tiktokVideoPagerAdapter.E0(c74Var, c74Var2);
    }

    public static final void G0(TiktokVideoPagerAdapter tiktokVideoPagerAdapter, c74 c74Var, c74 c74Var2) {
        tiktokVideoPagerAdapter.E0(c74Var, c74Var2);
    }

    public static final void H0(TiktokVideoPagerAdapter tiktokVideoPagerAdapter, c74 c74Var, c74 c74Var2) {
        tiktokVideoPagerAdapter.E0(c74Var, c74Var2);
    }

    private final void I0() {
        F0(this, new c74() {
            @Override
            public final Object invoke() {
                return TiktokVideoPagerAdapter.J0(this.b);
            }
        }, null, 2, null);
    }

    public static final zfb J0(TiktokVideoPagerAdapter tiktokVideoPagerAdapter) {
        tiktokVideoPagerAdapter.notifyDataSetChanged();
        return zfb.a;
    }

    public static final zfb K(final TiktokVideoPagerAdapter tiktokVideoPagerAdapter, final List list) {
        if (tiktokVideoPagerAdapter.isMutatingAdSlots) {
            View view = tiktokVideoPagerAdapter.hostFragment.getView();
            if (view != null) {
                view.post(new Runnable() {
                    @Override
                    public final void run() {
                        TiktokVideoPagerAdapter.L(this.b, list);
                    }
                });
            }
            return zfb.a;
        }
        int itemCount = tiktokVideoPagerAdapter.getItemCount();
        tiktokVideoPagerAdapter.videoDataList.addAll(list);
        int itemCount2 = tiktokVideoPagerAdapter.getItemCount() - itemCount;
        if (itemCount2 > 0) {
            tiktokVideoPagerAdapter.notifyItemRangeInserted(itemCount, itemCount2);
        }
        tiktokVideoPagerAdapter.k0();
        return zfb.a;
    }

    public static final void L(TiktokVideoPagerAdapter tiktokVideoPagerAdapter, List list) {
        tiktokVideoPagerAdapter.J(list);
    }

    public static final void L0(final TiktokVideoPagerAdapter tiktokVideoPagerAdapter, final RecyclerView recyclerView, final c74 c74Var) {
        if (tiktokVideoPagerAdapter.N(recyclerView)) {
            c74Var.invoke();
        } else {
            recyclerView.post(new Runnable() {
                @Override
                public final void run() {
                    TiktokVideoPagerAdapter.M0(this.b, recyclerView, c74Var);
                }
            });
        }
    }

    public static final void M0(TiktokVideoPagerAdapter tiktokVideoPagerAdapter, RecyclerView recyclerView, c74 c74Var) {
        tiktokVideoPagerAdapter.K0(recyclerView, c74Var);
    }

    public static void P(TiktokVideoPagerAdapter tiktokVideoPagerAdapter, c74 c74Var, int i, Object obj) {
        if ((i & 1) != 0) {
            c74Var = new c74() {
                @Override
                public final Object invoke() {
                    return TiktokVideoPagerAdapter.Q();
                }
            };
        }
        tiktokVideoPagerAdapter.O(c74Var);
    }

    public static final zfb Q() {
        return zfb.a;
    }

    public static final void Q0(TiktokVideoPagerAdapter tiktokVideoPagerAdapter, ViewPager2 viewPager2, int i) {
        if (tiktokVideoPagerAdapter.hostFragment.isAdded()) {
            viewPager2.setCurrentItem(wn8.k(i, 0, tiktokVideoPagerAdapter.getItemCount() - 1), false);
            tiktokVideoPagerAdapter.s0(i, true);
        }
    }

    public static final void R(c74 c74Var, TiktokVideoPagerAdapter tiktokVideoPagerAdapter) {
        c74Var.invoke();
        tiktokVideoPagerAdapter.isMutatingAdSlots = false;
        tiktokVideoPagerAdapter.P0();
        int i = tiktokVideoPagerAdapter.pendingSelectPosition;
        tiktokVideoPagerAdapter.pendingSelectPosition = -1;
        if (i >= 0 && i < tiktokVideoPagerAdapter.getItemCount() && i != tiktokVideoPagerAdapter.currentPlayPosition) {
            tiktokVideoPagerAdapter.s0(i, true);
        }
        tiktokVideoPagerAdapter.x0();
    }

    public static final void S(TiktokVideoPagerAdapter tiktokVideoPagerAdapter, int i) {
        if (tiktokVideoPagerAdapter.hostFragment.isAdded()) {
            tiktokVideoPagerAdapter.S0(i);
        }
    }

    public static final zfb T(TiktokVideoPagerAdapter tiktokVideoPagerAdapter, int i) {
        if (i == tiktokVideoPagerAdapter.cachePosition || i == tiktokVideoPagerAdapter.currentPlayPosition) {
            tiktokVideoPagerAdapter.U0(i);
        }
        return zfb.a;
    }

    public static final void T0(TiktokVideoPagerAdapter tiktokVideoPagerAdapter, int i) {
        if (tiktokVideoPagerAdapter.hostFragment.isAdded() && i == tiktokVideoPagerAdapter.currentPlayPosition) {
            if (!tiktokVideoPagerAdapter.feedAdController.u(i)) {
                tiktokVideoPagerAdapter.X(i);
                tiktokVideoPagerAdapter.cacheAdPosition = -1;
                return;
            }
            TiktokAdItemFragment tiktokAdItemFragmentA0 = tiktokVideoPagerAdapter.a0(i);
            if (tiktokAdItemFragmentA0 != null && tiktokAdItemFragmentA0.P()) {
                tiktokAdItemFragmentA0.h0(i);
                tiktokAdItemFragmentA0.U();
                tiktokVideoPagerAdapter.cacheAdPosition = -1;
                Log.d("TiktokVideoPagerAdapter", "tryDispatchCachedAdSelect ok (local prefetched): " + i);
                return;
            }
            if (!tiktokVideoPagerAdapter.feedAdController.y(i)) {
                if (!tiktokVideoPagerAdapter.feedAdController.u(i)) {
                    tiktokVideoPagerAdapter.X(i);
                }
                tiktokVideoPagerAdapter.cacheAdPosition = -1;
            } else {
                if (tiktokAdItemFragmentA0 == null) {
                    return;
                }
                tiktokAdItemFragmentA0.h0(i);
                tiktokAdItemFragmentA0.U();
                tiktokVideoPagerAdapter.cacheAdPosition = -1;
                Log.d("TiktokVideoPagerAdapter", "tryDispatchCachedAdSelect ok: " + i);
            }
        }
    }

    public static final void V0(TiktokVideoPagerAdapter tiktokVideoPagerAdapter, int i) {
        if (tiktokVideoPagerAdapter.hostFragment.isAdded()) {
            c cVar = tiktokVideoPagerAdapter.pagePlayListener;
            if (cVar == null || cVar == null || cVar.c()) {
                TiktokVideoItemFragment tiktokVideoItemFragmentC0 = tiktokVideoPagerAdapter.c0(i);
                if (tiktokVideoItemFragmentC0 != null) {
                    tiktokVideoItemFragmentC0.I2(i);
                    tiktokVideoItemFragmentC0.onSelectInViewPage();
                }
                tiktokVideoPagerAdapter.cachePosition = -1;
            }
        }
    }

    public static final void W(TiktokVideoPagerAdapter tiktokVideoPagerAdapter, int i) {
        if (tiktokVideoPagerAdapter.hostFragment.isAdded() && i == tiktokVideoPagerAdapter.currentPlayPosition) {
            if (!tiktokVideoPagerAdapter.feedAdController.u(i)) {
                tiktokVideoPagerAdapter.X(i);
                return;
            }
            TiktokAdItemFragment tiktokAdItemFragmentA0 = tiktokVideoPagerAdapter.a0(i);
            if (tiktokAdItemFragmentA0 != null && tiktokAdItemFragmentA0.P()) {
                tiktokAdItemFragmentA0.h0(i);
                tiktokAdItemFragmentA0.U();
                tiktokVideoPagerAdapter.cacheAdPosition = -1;
                Log.d("TiktokVideoPagerAdapter", "dispatchSelectAdPage ok (local prefetched): " + i);
                return;
            }
            if (!tiktokVideoPagerAdapter.feedAdController.y(i)) {
                if (tiktokVideoPagerAdapter.feedAdController.u(i)) {
                    return;
                }
                tiktokVideoPagerAdapter.X(i);
            } else {
                if (tiktokAdItemFragmentA0 == null) {
                    tiktokVideoPagerAdapter.cacheAdPosition = i;
                    Log.d("TiktokVideoPagerAdapter", "dispatchSelectAdPage deferred: " + i);
                    return;
                }
                tiktokAdItemFragmentA0.h0(i);
                tiktokAdItemFragmentA0.U();
                tiktokVideoPagerAdapter.cacheAdPosition = -1;
                Log.d("TiktokVideoPagerAdapter", "dispatchSelectAdPage ok: " + i);
            }
        }
    }

    public static final void Y(TiktokVideoPagerAdapter tiktokVideoPagerAdapter, int i) {
        tiktokVideoPagerAdapter.pendingSelectVideoRunnable = null;
        tiktokVideoPagerAdapter.pendingVideoSelectPosition = -1;
        if (tiktokVideoPagerAdapter.hostFragment.isAdded()) {
            TiktokVideoItemFragment tiktokVideoItemFragmentC0 = tiktokVideoPagerAdapter.c0(i);
            if (tiktokVideoItemFragmentC0 == null) {
                tiktokVideoPagerAdapter.cachePosition = i;
                Log.d("TiktokVideoPagerAdapter", "dispatchSelectVideoPage deferred: " + i);
                return;
            }
            tiktokVideoItemFragmentC0.I2(i);
            tiktokVideoItemFragmentC0.onSelectInViewPage();
            tiktokVideoPagerAdapter.cachePosition = -1;
            Log.d("TiktokVideoPagerAdapter", "dispatchSelectVideoPage ok: " + i);
        }
    }

    public static final zfb i0(TiktokVideoPagerAdapter tiktokVideoPagerAdapter) {
        tiktokVideoPagerAdapter.notifyDataSetChanged();
        return zfb.a;
    }

    public static final zfb j0(TiktokVideoPagerAdapter tiktokVideoPagerAdapter, c74 c74Var) {
        tiktokVideoPagerAdapter.O(c74Var);
        return zfb.a;
    }

    public static final zfb l0(final TiktokVideoPagerAdapter tiktokVideoPagerAdapter, final int i) {
        int i2 = tiktokVideoPagerAdapter.currentPlayPosition;
        tiktokVideoPagerAdapter.skipNudgeOnNextAdSync = i > i2;
        if (i <= i2 && i2 >= 0) {
            tiktokVideoPagerAdapter.currentPlayPosition = i2 + 1;
        }
        int i3 = tiktokVideoPagerAdapter.cachePosition;
        if (i3 >= i && i3 >= 0) {
            tiktokVideoPagerAdapter.cachePosition = i3 + 1;
        }
        int i4 = tiktokVideoPagerAdapter.cacheAdPosition;
        if (i4 >= i && i4 >= 0) {
            tiktokVideoPagerAdapter.cacheAdPosition = i4 + 1;
        }
        tiktokVideoPagerAdapter.h0(new c74() {
            @Override
            public final Object invoke() {
                return TiktokVideoPagerAdapter.m0(i, tiktokVideoPagerAdapter);
            }
        });
        return zfb.a;
    }

    public static final zfb m0(int i, TiktokVideoPagerAdapter tiktokVideoPagerAdapter) {
        Log.d("TiktokVideoPagerAdapter", "onAdSlotInserted " + i + " itemCount=" + tiktokVideoPagerAdapter.getItemCount());
        return zfb.a;
    }

    public static final zfb n0(final TiktokVideoPagerAdapter tiktokVideoPagerAdapter, final int i, final AdSlotRemoveReason adSlotRemoveReason) {
        tiktokVideoPagerAdapter.skipNudgeOnNextAdSync = false;
        int itemCount = tiktokVideoPagerAdapter.getItemCount();
        if (i > itemCount) {
            Log.w("TiktokVideoPagerAdapter", "onAdSlotRemoved skip invalid pos=" + i + " count=" + itemCount);
            P(tiktokVideoPagerAdapter, null, 1, null);
            return zfb.a;
        }
        int i2 = tiktokVideoPagerAdapter.currentPlayPosition;
        if (i < i2) {
            tiktokVideoPagerAdapter.currentPlayPosition = i2 - 1;
        }
        int i3 = tiktokVideoPagerAdapter.cachePosition;
        if (i == i3) {
            tiktokVideoPagerAdapter.cachePosition = -1;
        } else if (i < i3) {
            tiktokVideoPagerAdapter.cachePosition = i3 - 1;
        }
        tiktokVideoPagerAdapter.h0(new c74() {
            @Override
            public final Object invoke() {
                return TiktokVideoPagerAdapter.o0(this.b, i, adSlotRemoveReason);
            }
        });
        return zfb.a;
    }

    public static final zfb o0(TiktokVideoPagerAdapter tiktokVideoPagerAdapter, int i, AdSlotRemoveReason adSlotRemoveReason) {
        yia yiaVarA0 = tiktokVideoPagerAdapter.A0();
        if (yiaVarA0 != null) {
            yiaVarA0.f(i, adSlotRemoveReason);
        }
        Log.d("TiktokVideoPagerAdapter", "onAdSlotRemoved " + i + " reason=" + adSlotRemoveReason + " itemCount=" + tiktokVideoPagerAdapter.getItemCount());
        return zfb.a;
    }

    public static final zfb p0(final TiktokVideoPagerAdapter tiktokVideoPagerAdapter, final List list, final AdSlotRemoveReason adSlotRemoveReason) {
        tiktokVideoPagerAdapter.skipNudgeOnNextAdSync = false;
        int i = tiktokVideoPagerAdapter.currentPlayPosition;
        int i2 = tiktokVideoPagerAdapter.cachePosition;
        Iterator it = i81.R0(list).iterator();
        while (it.hasNext()) {
            int iIntValue = ((Number) it.next()).intValue();
            if (iIntValue >= 0) {
                if (iIntValue < i) {
                    i--;
                }
                if (iIntValue == i2) {
                    i2 = -1;
                } else if (iIntValue < i2) {
                    i2--;
                }
            }
        }
        tiktokVideoPagerAdapter.currentPlayPosition = i;
        tiktokVideoPagerAdapter.cachePosition = i2;
        tiktokVideoPagerAdapter.h0(new c74() {
            @Override
            public final Object invoke() {
                return TiktokVideoPagerAdapter.q0(this.b, list, adSlotRemoveReason);
            }
        });
        return zfb.a;
    }

    public static final zfb q0(TiktokVideoPagerAdapter tiktokVideoPagerAdapter, List list, AdSlotRemoveReason adSlotRemoveReason) {
        yia yiaVarA0 = tiktokVideoPagerAdapter.A0();
        if (yiaVarA0 != null) {
            yiaVarA0.e(list, adSlotRemoveReason);
        }
        Log.d("TiktokVideoPagerAdapter", "onAdSlotsBatchRemoved count=" + list.size() + " reason=" + adSlotRemoveReason + " itemCount=" + tiktokVideoPagerAdapter.getItemCount());
        return zfb.a;
    }

    public static final void y0(final TiktokVideoPagerAdapter tiktokVideoPagerAdapter, final int i, final AdSlotRemoveReason adSlotRemoveReason) {
        if (tiktokVideoPagerAdapter.M()) {
            tiktokVideoPagerAdapter.feedAdController.n(i, adSlotRemoveReason);
            return;
        }
        View view = tiktokVideoPagerAdapter.hostFragment.getView();
        if (view != null) {
            view.post(new Runnable() {
                @Override
                public final void run() {
                    TiktokVideoPagerAdapter.z0(this.b, i, adSlotRemoveReason);
                }
            });
        }
    }

    public static final void z0(TiktokVideoPagerAdapter tiktokVideoPagerAdapter, int i, AdSlotRemoveReason adSlotRemoveReason) {
        tiktokVideoPagerAdapter.n(i, adSlotRemoveReason);
    }

    public final yia A0() {
        ActivityResultCaller activityResultCaller = this.hostFragment;
        if (activityResultCaller instanceof yia) {
            return (yia) activityResultCaller;
        }
        return null;
    }

    public final Integer B0() {
        int currentItem;
        int itemCount = getItemCount();
        int i = this.currentPlayPosition;
        if (i >= 0 && i < itemCount) {
            return Integer.valueOf(i);
        }
        ViewPager2 viewPager2 = (ViewPager2) this.viewPagerProvider.invoke();
        if (viewPager2 == null || (currentItem = viewPager2.getCurrentItem()) < 0 || currentItem >= getItemCount()) {
            return null;
        }
        return Integer.valueOf(currentItem);
    }

    public final void C0() {
        int iIntValue;
        if (this.hostFragment.isAdded()) {
            c cVar = this.pagePlayListener;
            if (cVar != null && !cVar.c()) {
                Log.d("TiktokVideoPagerAdapter", "resumeCurrentPage skipped: playback not allowed");
                return;
            }
            Integer numB0 = B0();
            if (numB0 == null || (iIntValue = numB0.intValue()) < 0 || iIntValue >= getItemCount()) {
                return;
            }
            this.currentPlayPosition = iIntValue;
            if (this.feedAdController.u(iIntValue)) {
                V(iIntValue);
                return;
            }
            TiktokVideoItemFragment tiktokVideoItemFragmentC0 = c0(iIntValue);
            if (tiktokVideoItemFragmentC0 == null || !tiktokVideoItemFragmentC0.getMIsCurrentPage()) {
                s0(iIntValue, true);
                return;
            }
            Log.d("TiktokVideoPagerAdapter", "resumeCurrentPage via resumePlaybackOnVisible: " + iIntValue + ", initialized=" + tiktokVideoItemFragmentC0.getMPlayerInitialized());
            tiktokVideoItemFragmentC0.k2();
        }
    }

    public final void E0(final c74 action, final c74 after) {
        RecyclerView recyclerViewB0 = b0();
        if (recyclerViewB0 != null) {
            if (!N(recyclerViewB0)) {
                recyclerViewB0.post(new Runnable() {
                    @Override
                    public final void run() {
                        TiktokVideoPagerAdapter.G0(this.b, action, after);
                    }
                });
                return;
            } else {
                action.invoke();
                K0(recyclerViewB0, after);
                return;
            }
        }
        View view = this.hostFragment.getView();
        if (view != null) {
            view.post(new Runnable() {
                @Override
                public final void run() {
                    TiktokVideoPagerAdapter.H0(this.b, action, after);
                }
            });
            return;
        }
        action.invoke();
        if (after != null) {
            after.invoke();
        }
    }

    public final void J(final List dataList) {
        List list = dataList;
        if (list == null || list.isEmpty()) {
            return;
        }
        F0(this, new c74() {
            @Override
            public final Object invoke() {
                return TiktokVideoPagerAdapter.K(this.b, dataList);
            }
        }, null, 2, null);
    }

    public final void K0(final RecyclerView recycler, final c74 after) {
        if (after == null) {
            return;
        }
        recycler.post(new Runnable() {
            @Override
            public final void run() {
                TiktokVideoPagerAdapter.L0(this.b, recycler, after);
            }
        });
    }

    public boolean M() {
        if (this.isMutatingAdSlots) {
            return false;
        }
        RecyclerView recyclerViewB0 = b0();
        if (recyclerViewB0 == null) {
            return true;
        }
        return N(recyclerViewB0);
    }

    public final boolean N(RecyclerView recycler) {
        return !recycler.isComputingLayout() && recycler.getScrollState() == 0;
    }

    public final void N0(List dataList) {
        this.videoDataList.clear();
        if (dataList != null) {
            this.videoDataList.addAll(dataList);
        }
        this.currentPlayPosition = -1;
        this.cachePosition = -1;
        this.feedAdController.B();
        I0();
        k0();
    }

    public final void O(final c74 onHostNotified) {
        Runnable runnable = new Runnable() {
            @Override
            public final void run() {
                TiktokVideoPagerAdapter.R(onHostNotified, this);
            }
        };
        View view = this.hostFragment.getView();
        if (view != null) {
            view.post(runnable);
        } else {
            runnable.run();
        }
    }

    public final List O0() {
        return new ArrayList(this.videoDataList);
    }

    public final void P0() {
        int itemCount;
        final ViewPager2 viewPager2 = (ViewPager2) this.viewPagerProvider.invoke();
        if (viewPager2 != null && (itemCount = getItemCount()) > 0) {
            final int iK = this.currentPlayPosition;
            if (iK < 0 || iK >= itemCount) {
                iK = wn8.k(viewPager2.getCurrentItem(), 0, itemCount - 1);
            }
            if (viewPager2.getCurrentItem() != iK) {
                this.skipNudgeOnNextAdSync = false;
                viewPager2.setCurrentItem(iK, false);
                s0(iK, true);
            } else {
                if (!this.skipNudgeOnNextAdSync) {
                    int iD = wn8.d(iK - 1, 0);
                    if (iD != iK) {
                        viewPager2.setCurrentItem(iD, false);
                    }
                    viewPager2.post(new Runnable() {
                        @Override
                        public final void run() {
                            TiktokVideoPagerAdapter.Q0(this.b, viewPager2, iK);
                        }
                    });
                    return;
                }
                this.skipNudgeOnNextAdSync = false;
                Log.d("TiktokVideoPagerAdapter", "syncViewPagerAfterAdMutation: insert ahead, skip nudge target=" + iK);
            }
        }
    }

    public final void R0(int videoGlobalPos) {
        Context context;
        int iF0;
        if (this.hostFragment.isAdded() && (context = this.hostFragment.getContext()) != null && (iF0 = f0(videoGlobalPos)) >= 0) {
            this.feedAdController.A(context, iF0, this.videoDataList.size(), getItemCount());
        }
    }

    public final void S0(final int position) {
        View view;
        if (this.cacheAdPosition == position && (view = this.hostFragment.getView()) != null) {
            view.post(new Runnable() {
                @Override
                public final void run() {
                    TiktokVideoPagerAdapter.T0(this.b, position);
                }
            });
        }
    }

    public final void U() {
        this.videoDataList.clear();
        this.currentPlayPosition = -1;
        this.cachePosition = -1;
        this.cacheAdPosition = -1;
        this.pendingSelectPosition = -1;
        this.pendingAdMutations.clear();
        this.pagePlayListener = null;
        this.feedAdController.l();
    }

    public final void U0(final int position) {
        View view;
        if (this.cachePosition == position && (view = this.hostFragment.getView()) != null) {
            view.post(new Runnable() {
                @Override
                public final void run() {
                    TiktokVideoPagerAdapter.V0(this.b, position);
                }
            });
        }
    }

    public final void V(final int position) {
        Runnable runnable = new Runnable() {
            @Override
            public final void run() {
                TiktokVideoPagerAdapter.W(this.b, position);
            }
        };
        View view = this.hostFragment.getView();
        if (view != null) {
            view.post(runnable);
        } else {
            runnable.run();
        }
    }

    public final long W0(int videoIndex) {
        if (videoIndex < 0 || videoIndex >= this.videoDataList.size()) {
            return videoIndex;
        }
        String docId = ((ArticleData) this.videoDataList.get(videoIndex)).getDocId();
        return (docId == null || docId.length() == 0) ? videoIndex : docId.hashCode();
    }

    public final void X(final int position) {
        if (this.pendingVideoSelectPosition == position) {
            Log.d("TiktokVideoPagerAdapter", "dispatchSelectVideoPage coalesced: " + position);
            return;
        }
        this.pendingVideoSelectPosition = position;
        View view = this.hostFragment.getView();
        Runnable runnable = this.pendingSelectVideoRunnable;
        if (runnable != null && view != null) {
            view.removeCallbacks(runnable);
        }
        Runnable runnable2 = new Runnable() {
            @Override
            public final void run() {
                TiktokVideoPagerAdapter.Y(this.b, position);
            }
        };
        this.pendingSelectVideoRunnable = runnable2;
        if (view != null) {
            view.post(runnable2);
        } else {
            runnable2.run();
        }
    }

    public final void Z(c74 mutation) {
        this.pendingAdMutations.addLast(mutation);
        x0();
    }

    @Override
    public void a(final c74 action) {
        y45.j(action, "action");
        if (M()) {
            F0(this, action, null, 2, null);
            return;
        }
        View view = this.hostFragment.getView();
        if (view != null) {
            view.post(new Runnable() {
                @Override
                public final void run() {
                    TiktokVideoPagerAdapter.D0(this.b, action);
                }
            });
        }
    }

    public final TiktokAdItemFragment a0(int globalPosition) {
        if (!this.hostFragment.isAdded()) {
            return null;
        }
        long itemId = getItemId(globalPosition);
        Fragment fragmentFindFragmentByTag = this.hostFragment.getChildFragmentManager().findFragmentByTag("f" + itemId);
        if (fragmentFindFragmentByTag instanceof TiktokAdItemFragment) {
            return (TiktokAdItemFragment) fragmentFindFragmentByTag;
        }
        for (Fragment fragment : this.hostFragment.getChildFragmentManager().getFragments()) {
            if (fragment instanceof TiktokAdItemFragment) {
                TiktokAdItemFragment tiktokAdItemFragment = (TiktokAdItemFragment) fragment;
                Bundle arguments = tiktokAdItemFragment.getArguments();
                if ((arguments != null ? arguments.getInt("position", -1) : -1) == globalPosition) {
                    return tiktokAdItemFragment;
                }
            }
        }
        return null;
    }

    public final RecyclerView b0() {
        ViewPager2 viewPager2 = (ViewPager2) this.viewPagerProvider.invoke();
        if (viewPager2 == null) {
            return null;
        }
        View childAt = viewPager2.getChildAt(0);
        if (childAt instanceof RecyclerView) {
            return (RecyclerView) childAt;
        }
        return null;
    }

    public final TiktokVideoItemFragment c0(int globalPosition) {
        if (globalPosition < 0 || this.feedAdController.u(globalPosition) || !this.hostFragment.isAdded()) {
            return null;
        }
        long itemId = getItemId(globalPosition);
        Fragment fragmentFindFragmentByTag = this.hostFragment.getChildFragmentManager().findFragmentByTag("f" + itemId);
        if (fragmentFindFragmentByTag instanceof TiktokVideoItemFragment) {
            return (TiktokVideoItemFragment) fragmentFindFragmentByTag;
        }
        for (Fragment fragment : this.hostFragment.getChildFragmentManager().getFragments()) {
            if (fragment instanceof TiktokVideoItemFragment) {
                TiktokVideoItemFragment tiktokVideoItemFragment = (TiktokVideoItemFragment) fragment;
                Bundle arguments = tiktokVideoItemFragment.getArguments();
                if ((arguments != null ? arguments.getInt("position", -1) : -1) == globalPosition) {
                    return tiktokVideoItemFragment;
                }
            }
        }
        return null;
    }

    @Override
    public boolean containsItem(long itemId) {
        if (itemId <= -1000000) {
            return this.feedAdController.s(INSTANCE.d(itemId));
        }
        int size = this.videoDataList.size();
        for (int i = 0; i < size; i++) {
            if (W0(i) == itemId) {
                return true;
            }
        }
        return false;
    }

    @Override
    public Fragment createFragment(final int position) {
        View view;
        if (this.feedAdController.u(position)) {
            Log.d("TiktokVideoPagerAdapter", "createFragment AD position: " + position);
            TiktokAdItemFragment tiktokAdItemFragmentA = TiktokAdItemFragment.INSTANCE.a(position);
            tiktokAdItemFragmentA.d0(this.feedAdController);
            if ((position == this.cacheAdPosition || position == this.currentPlayPosition) && (view = this.hostFragment.getView()) != null) {
                view.post(new Runnable() {
                    @Override
                    public final void run() {
                        TiktokVideoPagerAdapter.S(this.b, position);
                    }
                });
            }
            return tiktokAdItemFragmentA;
        }
        int iF0 = f0(position);
        Log.d("TiktokVideoPagerAdapter", "createFragment VIDEO position=" + position + " videoIndex=" + iF0);
        TiktokVideoItemFragment tiktokVideoItemFragmentA = TiktokVideoItemFragment.INSTANCE.a(position);
        if (iF0 >= 0 && iF0 < this.videoDataList.size()) {
            tiktokVideoItemFragmentA.x2((ArticleData) this.videoDataList.get(iF0));
        }
        tiktokVideoItemFragmentA.A2(new e74() {
            @Override
            public final Object invoke(Object obj) {
                return TiktokVideoPagerAdapter.T(this.b, ((Integer) obj).intValue());
            }
        });
        return tiktokVideoItemFragmentA;
    }

    public final ArticleData d0(int globalPosition) {
        int iF0 = f0(globalPosition);
        if (iF0 < 0 || iF0 >= this.videoDataList.size()) {
            return null;
        }
        return (ArticleData) this.videoDataList.get(iF0);
    }

    @Override
    public void e(final List removedPositions, final AdSlotRemoveReason reason) {
        y45.j(removedPositions, "removedPositions");
        y45.j(reason, "reason");
        if (removedPositions.isEmpty()) {
            return;
        }
        Z(new c74() {
            @Override
            public final Object invoke() {
                return TiktokVideoPagerAdapter.p0(this.b, removedPositions, reason);
            }
        });
    }

    public final int e0() {
        return this.videoDataList.size();
    }

    @Override
    public void f(final int globalPosition, final AdSlotRemoveReason reason) {
        y45.j(reason, "reason");
        if (globalPosition < 0) {
            return;
        }
        Z(new c74() {
            @Override
            public final Object invoke() {
                return TiktokVideoPagerAdapter.n0(this.b, globalPosition, reason);
            }
        });
    }

    public final int f0(int globalPosition) {
        if (this.feedAdController.u(globalPosition)) {
            return -1;
        }
        return globalPosition - this.feedAdController.k(globalPosition);
    }

    public final void g0() {
        TiktokVideoItemFragment tiktokVideoItemFragmentC0;
        Integer numB0 = B0();
        if (numB0 != null) {
            int iIntValue = numB0.intValue();
            if (this.feedAdController.u(iIntValue) || (tiktokVideoItemFragmentC0 = c0(iIntValue)) == null) {
                return;
            }
            tiktokVideoItemFragmentC0.B1();
        }
    }

    @Override
    public int getItemCount() {
        return this.feedAdController.j(this.videoDataList.size());
    }

    @Override
    public long getItemId(int position) {
        if (position < 0 || position >= getItemCount()) {
            return position;
        }
        if (!this.feedAdController.u(position)) {
            return W0(f0(position));
        }
        Integer numX = this.feedAdController.x(position);
        return numX != null ? INSTANCE.c(numX.intValue()) : position;
    }

    public final void h0(final c74 onHostNotified) {
        E0(new c74() {
            @Override
            public final Object invoke() {
                return TiktokVideoPagerAdapter.i0(this.b);
            }
        }, new c74() {
            @Override
            public final Object invoke() {
                return TiktokVideoPagerAdapter.j0(this.b, onHostNotified);
            }
        });
    }

    public final void k0() {
        Context context;
        if (this.hostFragment.isAdded() && (context = this.hostFragment.getContext()) != null) {
            this.feedAdController.z(context, this.videoDataList.size(), getItemCount());
        }
    }

    @Override
    public rka m(int globalPosition) {
        return this.feedAdController.m(globalPosition);
    }

    @Override
    public void n(final int globalPosition, final AdSlotRemoveReason reason) {
        y45.j(reason, "reason");
        Runnable runnable = new Runnable() {
            @Override
            public final void run() {
                TiktokVideoPagerAdapter.y0(this.b, globalPosition, reason);
            }
        };
        View view = this.hostFragment.getView();
        if (view != null) {
            view.post(runnable);
        } else {
            runnable.run();
        }
    }

    @Override
    public boolean o(int globalPosition, rka prefetched) {
        y45.j(prefetched, "prefetched");
        return this.feedAdController.o(globalPosition, prefetched);
    }

    @Override
    public void p(int globalPosition) {
        this.feedAdController.p(globalPosition);
    }

    @Override
    public void q(final int globalPosition) {
        if (globalPosition < 0) {
            return;
        }
        Z(new c74() {
            @Override
            public final Object invoke() {
                return TiktokVideoPagerAdapter.l0(this.b, globalPosition);
            }
        });
    }

    public final void r0(int position) {
        s0(position, false);
    }

    public final void s0(int position, boolean force) {
        Log.i("TiktokVideoPagerAdapter", "onPageSelected: " + position + " force=" + force);
        if (this.isMutatingAdSlots) {
            this.pendingSelectPosition = position;
            return;
        }
        if (position < 0 || position >= getItemCount()) {
            return;
        }
        c cVar = this.pagePlayListener;
        if (cVar != null && !cVar.c()) {
            Log.d("TiktokVideoPagerAdapter", "onPageSelected skipped: playback not allowed");
            return;
        }
        if (force && position == this.currentPlayPosition && !this.feedAdController.u(position)) {
            if (this.pendingVideoSelectPosition == position) {
                Log.d("TiktokVideoPagerAdapter", "onPageSelected force deduped: dispatch pending " + position);
                return;
            }
            TiktokVideoItemFragment tiktokVideoItemFragmentC0 = c0(position);
            if (tiktokVideoItemFragmentC0 != null && tiktokVideoItemFragmentC0.getMIsCurrentPage() && tiktokVideoItemFragmentC0.getMPlayerInitialized()) {
                Log.d("TiktokVideoPagerAdapter", "onPageSelected force same page, resume scroll: " + position);
                tiktokVideoItemFragmentC0.h2();
                return;
            }
        }
        if (position == this.currentPlayPosition && !force) {
            if (this.feedAdController.u(position)) {
                TiktokAdItemFragment tiktokAdItemFragmentA0 = a0(position);
                if (tiktokAdItemFragmentA0 == null || !tiktokAdItemFragmentA0.Q()) {
                    V(position);
                    return;
                }
                return;
            }
            TiktokVideoItemFragment tiktokVideoItemFragmentC1 = c0(position);
            if (this.cachePosition < 0 && tiktokVideoItemFragmentC1 != null && tiktokVideoItemFragmentC1.getMPlayerInitialized() && tiktokVideoItemFragmentC1.getMIsCurrentPage()) {
                Log.d("TiktokVideoPagerAdapter", "onPageSelected deduped: " + position);
                return;
            }
        }
        int i = this.currentPlayPosition;
        if (i >= 0 && i != position) {
            if (this.feedAdController.u(i)) {
                TiktokAdItemFragment tiktokAdItemFragmentA1 = a0(this.currentPlayPosition);
                if (tiktokAdItemFragmentA1 != null) {
                    tiktokAdItemFragmentA1.V();
                }
            } else {
                TiktokVideoItemFragment tiktokVideoItemFragmentC2 = c0(this.currentPlayPosition);
                if (tiktokVideoItemFragmentC2 != null) {
                    tiktokVideoItemFragmentC2.onUnSelectInViewPage();
                }
            }
        }
        this.currentPlayPosition = position;
        this.cachePosition = -1;
        this.cacheAdPosition = -1;
        if (this.feedAdController.u(position)) {
            if (cVar != null) {
                cVar.a(position);
            }
            V(position);
        } else {
            if (cVar != null) {
                cVar.a(position);
            }
            if (cVar != null) {
                cVar.b(position);
            }
            X(position);
            R0(position);
        }
    }

    public final void setOnPagePlayListener(c listener) {
        this.pagePlayListener = listener;
    }

    public final void t0() {
        ViewPager2 viewPager2;
        if (this.isMutatingAdSlots || (viewPager2 = (ViewPager2) this.viewPagerProvider.invoke()) == null) {
            return;
        }
        int currentItem = viewPager2.getCurrentItem();
        if (this.feedAdController.u(currentItem) && currentItem == this.currentPlayPosition) {
            TiktokAdItemFragment tiktokAdItemFragmentA0 = a0(currentItem);
            if (tiktokAdItemFragmentA0 != null && tiktokAdItemFragmentA0.getMRemoveRequested()) {
                Log.d("TiktokVideoPagerAdapter", "onViewPagerScrollIdle: ad removal pending, skip " + currentItem);
                return;
            }
            if (tiktokAdItemFragmentA0 != null && tiktokAdItemFragmentA0.Q()) {
                Log.d("TiktokVideoPagerAdapter", "onViewPagerScrollIdle: ad already selected and bound, skip " + currentItem);
                return;
            }
            Log.d("TiktokVideoPagerAdapter", "onViewPagerScrollIdle: ad selected but not bound, retry " + currentItem);
        }
        s0(currentItem, true);
    }

    public final void u0() {
        Integer numB0 = B0();
        if (numB0 != null) {
            int iIntValue = numB0.intValue();
            if (this.feedAdController.u(iIntValue)) {
                return;
            }
            this.currentPlayPosition = iIntValue;
            TiktokVideoItemFragment tiktokVideoItemFragmentC0 = c0(iIntValue);
            if (tiktokVideoItemFragmentC0 != null) {
                tiktokVideoItemFragmentC0.L1();
            }
        }
    }

    public final void v0() {
        TiktokVideoItemFragment tiktokVideoItemFragmentC0;
        int i = this.currentPlayPosition;
        if (i < 0 || this.feedAdController.u(i) || (tiktokVideoItemFragmentC0 = c0(this.currentPlayPosition)) == null) {
            return;
        }
        tiktokVideoItemFragmentC0.P1();
    }

    public final void w0(Context context, int videoGlobalPosition) {
        y45.j(context, "context");
        int iF0 = f0(videoGlobalPosition);
        if (iF0 < 0) {
            return;
        }
        this.feedAdController.A(context, iF0, this.videoDataList.size(), getItemCount());
    }

    public final void x0() {
        if (this.isMutatingAdSlots || this.pendingAdMutations.isEmpty()) {
            return;
        }
        this.isMutatingAdSlots = true;
        ((c74) this.pendingAdMutations.removeFirst()).invoke();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TiktokVideoPagerAdapter(Fragment fragment, c74 c74Var, dja djaVar) {
        super(fragment);
        y45.j(fragment, SerializableCookie.HOST);
        y45.j(c74Var, "viewPagerProvider");
        y45.j(djaVar, "feedAdController");
        this.viewPagerProvider = c74Var;
        this.feedAdController = djaVar;
        this.hostFragment = fragment;
        this.videoDataList = new ArrayList();
        this.currentPlayPosition = -1;
        this.cachePosition = -1;
        this.cacheAdPosition = -1;
        this.pendingSelectPosition = -1;
        this.pendingVideoSelectPosition = -1;
        this.pendingAdMutations = new hg();
        djaVar.I(this);
    }
}
