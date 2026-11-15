package com.yandex.div.core.view2.divs;

import android.content.Context;
import android.view.View;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div.core.DecodeBase64ImageTask;
import com.yandex.div.core.expression.variables.TwoWayVariableBinder;
import com.yandex.div.core.player.DivPlayerFactory;
import com.yandex.div.core.player.DivPlayerView;
import com.yandex.div.core.state.DivStatePath;
import com.yandex.div.core.view2.Div2View;
import com.yandex.div.core.view2.divs.widgets.DivVideoView;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivVideo;
import com.yandex.div2.DivVideoScale;
import defpackage.by4;
import defpackage.e74;
import defpackage.ku2;
import defpackage.lo2;
import defpackage.oj3;
import defpackage.te8;
import defpackage.vu2;
import defpackage.wu2;
import defpackage.y45;
import defpackage.zfb;
import java.util.List;
import java.util.concurrent.ExecutorService;

public final class DivVideoBinder extends wu2 {
    public final com.yandex.div.core.expression.variables.b b;
    public final DivActionBinder c;
    public final vu2 d;
    public final ExecutorService e;
    public final DivPlayerFactory f;

    public static final class a implements com.yandex.div.core.player.a.b {
        public final Div2View b;
        public final oj3 c;
        public final DivVideo d;
        public final View e;

        public a(Div2View div2View, oj3 oj3Var, DivVideo divVideo, View view) {
            this.b = div2View;
            this.c = oj3Var;
            this.d = divVideo;
            this.e = view;
        }
    }

    public static class b implements TwoWayVariableBinder.a {
        public final com.yandex.div.core.player.a a;

        public static final class a implements com.yandex.div.core.player.a.b {
            public final e74 a;

            public a(e74 e74Var) {
                this.a = e74Var;
            }
        }

        public b(com.yandex.div.core.player.a aVar) {
            this.a = aVar;
        }

        @Override
        public void b(e74 e74Var) {
            y45.j(e74Var, "valueUpdater");
            this.a.a(new a(e74Var));
        }

        @Override
        public void a(Long l) {
            if (l != null) {
                this.a.b(l.longValue());
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DivVideoBinder(DivBaseBinder divBaseBinder, com.yandex.div.core.expression.variables.b bVar, DivActionBinder divActionBinder, vu2 vu2Var, ExecutorService executorService, DivPlayerFactory divPlayerFactory) {
        super(divBaseBinder);
        y45.j(divBaseBinder, "baseBinder");
        y45.j(bVar, "variableBinder");
        y45.j(divActionBinder, "divActionBinder");
        y45.j(vu2Var, "videoViewMapper");
        y45.j(executorService, "executorService");
        y45.j(divPlayerFactory, "playerFactory");
        this.b = bVar;
        this.c = divActionBinder;
        this.d = vu2Var;
        this.e = executorService;
        this.f = divPlayerFactory;
    }

    public final void f(DivVideo divVideo, oj3 oj3Var, e74 e74Var) {
        Expression expression = divVideo.B;
        String str = expression != null ? (String) expression.b(oj3Var) : null;
        if (str == null) {
            e74Var.invoke(null);
        } else {
            this.e.submit(new DecodeBase64ImageTask(str, false, e74Var));
        }
    }

    @Override
    public void b(DivVideoView divVideoView, com.yandex.div.core.view2.a aVar, DivVideo divVideo, DivVideo divVideo2, DivStatePath divStatePath) {
        te8 te8Var;
        final DivPlayerView divPlayerView;
        final te8 te8Var2;
        y45.j(divVideoView, "<this>");
        y45.j(aVar, "bindingContext");
        y45.j(divVideo, TtmlNode.TAG_DIV);
        y45.j(divStatePath, "path");
        oj3 oj3VarB = aVar.b();
        List listA = ku2.a(divVideo, oj3VarB);
        lo2 lo2Var = new lo2(((Boolean) divVideo.g.b(oj3VarB)).booleanValue(), ((Boolean) divVideo.w.b(oj3VarB)).booleanValue(), ((Boolean) divVideo.C.b(oj3VarB)).booleanValue(), divVideo.z);
        DivPlayerView playerView = divVideoView.getPlayerView();
        int childCount = divVideoView.getChildCount();
        int i = 0;
        while (true) {
            if (i >= childCount) {
                te8Var = null;
                break;
            }
            View childAt = divVideoView.getChildAt(i);
            if (childAt instanceof te8) {
                te8Var = (te8) childAt;
                break;
            }
            i++;
        }
        if (playerView == null) {
            DivPlayerFactory divPlayerFactory = this.f;
            Context context = divVideoView.getContext();
            y45.i(context, "context");
            DivPlayerView divPlayerViewB = divPlayerFactory.b(context);
            divPlayerViewB.setVisibility(4);
            divPlayerView = divPlayerViewB;
        } else {
            divPlayerView = playerView;
        }
        if (te8Var == null) {
            Context context2 = divVideoView.getContext();
            y45.i(context2, "context");
            te8Var2 = new te8(context2);
        } else {
            te8Var2 = te8Var;
        }
        f(divVideo, oj3VarB, new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((by4) obj);
                return zfb.a;
            }

            public final void invoke(by4 by4Var) {
                if (by4Var != null) {
                    te8 te8Var3 = te8Var2;
                    te8Var3.setVisibility(0);
                    if (by4Var instanceof by4.b) {
                        te8Var3.setImageDrawable(((by4.b) by4Var).f());
                    } else if (by4Var instanceof by4.a) {
                        te8Var3.setImageBitmap(((by4.a) by4Var).f());
                    }
                }
                divPlayerView.setVisibility(0);
            }
        });
        com.yandex.div.core.player.a aVarC = this.f.c(listA, lo2Var);
        aVarC.a(h(aVar, divVideo, te8Var2));
        divPlayerView.attach(aVarC);
        i(divVideoView, divVideo, aVar, aVarC, divStatePath);
        j(divVideoView, divVideo, oj3VarB, aVarC);
        k(divVideoView, divVideo, oj3VarB, divPlayerView, te8Var2);
        if (te8Var == null && playerView == null) {
            divVideoView.removeAllViews();
            divVideoView.addView(divPlayerView);
            divVideoView.addView(te8Var2);
        }
        this.d.a(divVideoView, divVideo);
        BaseDivViewExtensionsKt.A(divVideoView, divVideo.f, divVideo2 != null ? divVideo2.f : null, oj3VarB);
    }

    public final com.yandex.div.core.player.a.b h(com.yandex.div.core.view2.a aVar, DivVideo divVideo, View view) {
        return new a(aVar.a(), aVar.b(), divVideo, view);
    }

    public final void i(DivVideoView divVideoView, DivVideo divVideo, com.yandex.div.core.view2.a aVar, com.yandex.div.core.player.a aVar2, DivStatePath divStatePath) {
        String str = divVideo.m;
        if (str == null) {
            return;
        }
        divVideoView.addSubscription(this.b.a(aVar, str, new b(aVar2), divStatePath));
    }

    public final void j(DivVideoView divVideoView, DivVideo divVideo, oj3 oj3Var, final com.yandex.div.core.player.a aVar) {
        divVideoView.addSubscription(divVideo.w.f(oj3Var, new e74() {
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke(((Boolean) obj).booleanValue());
                return zfb.a;
            }

            public final void invoke(boolean z) {
                aVar.setMuted(z);
            }
        }));
    }

    public final void k(DivVideoView divVideoView, DivVideo divVideo, oj3 oj3Var, final DivPlayerView divPlayerView, final te8 te8Var) {
        divVideoView.addSubscription(divVideo.G.f(oj3Var, new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((DivVideoScale) obj);
                return zfb.a;
            }

            public final void invoke(DivVideoScale divVideoScale) {
                y45.j(divVideoScale, "it");
                divPlayerView.setScale(divVideoScale);
                te8Var.a(divVideoScale);
            }
        }));
    }
}
