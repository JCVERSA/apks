package com.transsion.ugcvideodetail.hepler;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.ugcvideodetail.viewmodel.UGCVideoDetailViewModel;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

public final class g {

    public static final g f54286a = new g();

    public static final class a implements bj.a {

        final Function1 f54287a;

        final UGCVideoDetailViewModel f54288b;

        final String f54289c;

        final String f54290d;

        final String f54291e;

        final String f54292f;

        final Boolean f54293g;

        a(Function1 function1, UGCVideoDetailViewModel uGCVideoDetailViewModel, String str, String str2, String str3, String str4, Boolean bool) {
            this.f54287a = function1;
            this.f54288b = uGCVideoDetailViewModel;
            this.f54289c = str;
            this.f54290d = str2;
            this.f54291e = str3;
            this.f54292f = str4;
            this.f54293g = bool;
        }

        @Override
        public void a(int i10, long j10, View view) {
            String ugcVideoId;
            Function1 function1 = this.f54287a;
            UGCVideoDetailViewModel uGCVideoDetailViewModel = this.f54288b;
            String str = this.f54289c;
            String str2 = this.f54290d;
            String str3 = this.f54291e;
            String str4 = this.f54292f;
            Boolean bool = this.f54293g;
            try {
                Result.Companion companion = Result.INSTANCE;
                UGCVideo uGCVideo = (UGCVideo) function1.invoke(Integer.valueOf(i10));
                if (uGCVideo != null && (ugcVideoId = uGCVideo.getUgcVideoId()) != null && !uGCVideoDetailViewModel.a0(ugcVideoId)) {
                    uGCVideoDetailViewModel.e0(ugcVideoId);
                    if (str != null) {
                        h.f54294a.g(str, uGCVideo, i10, j10, str2, str3, str4, bool);
                    }
                }
                Result.m453constructorimpl(Unit.f64096a);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m453constructorimpl(ResultKt.a(th2));
            }
        }
    }

    private g() {
    }

    public final bj.b a(RecyclerView recyclerView, UGCVideoDetailViewModel viewModel, String str, Function1 getItemAtPosition, String str2, String str3, String str4, Boolean bool) {
        Intrinsics.h(recyclerView, "recyclerView");
        Intrinsics.h(viewModel, "viewModel");
        Intrinsics.h(getItemAtPosition, "getItemAtPosition");
        bj.b bVar = new bj.b(0.6f, new a(getItemAtPosition, viewModel, str, str2, str3, str4, bool), false, 4, null);
        bVar.n(2);
        recyclerView.addOnScrollListener(bVar);
        return bVar;
    }

    public final void c(UGCVideo uGCVideo, int i10, String str, String str2, String str3, String str4) {
        if (uGCVideo == null || str == null) {
            return;
        }
        h.f54294a.f(str, uGCVideo, i10, str2, str3, str4);
    }
}
