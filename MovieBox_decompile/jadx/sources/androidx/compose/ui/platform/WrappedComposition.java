package androidx.compose.ui.platform;

import android.view.View;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.tooling.InspectionTablesKt;
import androidx.compose.ui.R$id;
import androidx.p009lifecycle.Lifecycle;
import java.util.Set;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.TypeIntrinsics;

final class WrappedComposition implements androidx.compose.runtime.l, androidx.p009lifecycle.r {

    private final AndroidComposeView f5413a;

    private final androidx.compose.runtime.l f5414b;

    private boolean f5415c;

    private Lifecycle f5416d;

    private Function2 f5417e = ComposableSingletons$Wrapper_androidKt.f5299a.a();

    public WrappedComposition(AndroidComposeView androidComposeView, androidx.compose.runtime.l lVar) {
        this.f5413a = androidComposeView;
        this.f5414b = lVar;
    }

    @Override
    public void d(final Function2 function2) {
        this.f5413a.setOnViewTreeOwnersAvailable(new Function1<AndroidComposeView.b, Unit>() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((AndroidComposeView.b) obj);
                return Unit.f64096a;
            }

            public final void invoke(AndroidComposeView.b bVar) {
                if (this.this$0.f5415c) {
                    return;
                }
                Lifecycle lifecycle = bVar.a().getLifecycle();
                this.this$0.f5417e = function2;
                if (this.this$0.f5416d == null) {
                    this.this$0.f5416d = lifecycle;
                    lifecycle.a(this.this$0);
                } else if (lifecycle.b().isAtLeast(Lifecycle.State.CREATED)) {
                    androidx.compose.runtime.l lVarX = this.this$0.x();
                    final WrappedComposition wrappedComposition = this.this$0;
                    final Function2<androidx.compose.runtime.i, Integer, Unit> function3 = function2;
                    lVarX.d(androidx.compose.runtime.internal.b.b(-2000640158, true, new Function2<androidx.compose.runtime.i, Integer, Unit>() {
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        /* JADX WARN: Multi-variable type inference failed */
                        {
                            super(2);
                        }

                        @Override
                        public Object invoke(Object obj, Object obj2) {
                            invoke((androidx.compose.runtime.i) obj, ((Number) obj2).intValue());
                            return Unit.f64096a;
                        }

                        public final void invoke(androidx.compose.runtime.i iVar, int i10) {
                            if ((i10 & 3) == 2 && iVar.h()) {
                                iVar.G();
                                return;
                            }
                            if (androidx.compose.runtime.k.H()) {
                                androidx.compose.runtime.k.Q(-2000640158, i10, -1, "androidx.compose.ui.platform.WrappedComposition.setContent.<anonymous>.<anonymous> (Wrapper.android.kt:134)");
                            }
                            Object tag = wrappedComposition.y().getTag(R$id.inspection_slot_table_set);
                            Set set = TypeIntrinsics.n(tag) ? (Set) tag : null;
                            if (set == null) {
                                Object parent = wrappedComposition.y().getParent();
                                View view = parent instanceof View ? (View) parent : null;
                                Object tag2 = view != null ? view.getTag(R$id.inspection_slot_table_set) : null;
                                set = TypeIntrinsics.n(tag2) ? (Set) tag2 : null;
                            }
                            if (set != null) {
                                set.add(iVar.z());
                                iVar.u();
                            }
                            AndroidComposeView androidComposeViewY = wrappedComposition.y();
                            boolean zA = iVar.A(wrappedComposition);
                            WrappedComposition wrappedComposition2 = wrappedComposition;
                            Object objY = iVar.y();
                            if (zA || objY == androidx.compose.runtime.i.f3427a.a()) {
                                objY = new WrappedComposition$setContent$1$1$1$1(wrappedComposition2, null);
                                iVar.p(objY);
                            }
                            androidx.compose.runtime.g0.d(androidComposeViewY, (Function2) objY, iVar, 0);
                            AndroidComposeView androidComposeViewY2 = wrappedComposition.y();
                            boolean zA2 = iVar.A(wrappedComposition);
                            WrappedComposition wrappedComposition3 = wrappedComposition;
                            Object objY2 = iVar.y();
                            if (zA2 || objY2 == androidx.compose.runtime.i.f3427a.a()) {
                                objY2 = new WrappedComposition$setContent$1$1$2$1(wrappedComposition3, null);
                                iVar.p(objY2);
                            }
                            androidx.compose.runtime.g0.d(androidComposeViewY2, (Function2) objY2, iVar, 0);
                            androidx.compose.runtime.t1 t1VarD = InspectionTablesKt.a().d(set);
                            final WrappedComposition wrappedComposition4 = wrappedComposition;
                            final Function2<androidx.compose.runtime.i, Integer, Unit> function4 = function3;
                            CompositionLocalKt.a(t1VarD, androidx.compose.runtime.internal.b.d(-1193460702, true, new Function2<androidx.compose.runtime.i, Integer, Unit>() {
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                /* JADX WARN: Multi-variable type inference failed */
                                {
                                    super(2);
                                }

                                @Override
                                public Object invoke(Object obj, Object obj2) {
                                    invoke((androidx.compose.runtime.i) obj, ((Number) obj2).intValue());
                                    return Unit.f64096a;
                                }

                                public final void invoke(androidx.compose.runtime.i iVar2, int i11) {
                                    if ((i11 & 3) == 2 && iVar2.h()) {
                                        iVar2.G();
                                        return;
                                    }
                                    if (androidx.compose.runtime.k.H()) {
                                        androidx.compose.runtime.k.Q(-1193460702, i11, -1, "androidx.compose.ui.platform.WrappedComposition.setContent.<anonymous>.<anonymous>.<anonymous> (Wrapper.android.kt:154)");
                                    }
                                    AndroidCompositionLocals_androidKt.a(wrappedComposition4.y(), function4, iVar2, 0);
                                    if (androidx.compose.runtime.k.H()) {
                                        androidx.compose.runtime.k.P();
                                    }
                                }
                            }, iVar, 54), iVar, androidx.compose.runtime.t1.f3732i | 48);
                            if (androidx.compose.runtime.k.H()) {
                                androidx.compose.runtime.k.P();
                            }
                        }
                    }));
                }
            }
        });
    }

    @Override
    public void dispose() {
        if (!this.f5415c) {
            this.f5415c = true;
            this.f5413a.getView().setTag(R$id.wrapped_composition_tag, null);
            Lifecycle lifecycle = this.f5416d;
            if (lifecycle != null) {
                lifecycle.d(this);
            }
        }
        this.f5414b.dispose();
    }

    @Override
    public void onStateChanged(androidx.p009lifecycle.u uVar, Lifecycle.Event event) {
        if (event == Lifecycle.Event.ON_DESTROY) {
            dispose();
        } else {
            if (event != Lifecycle.Event.ON_CREATE || this.f5415c) {
                return;
            }
            d(this.f5417e);
        }
    }

    public final androidx.compose.runtime.l x() {
        return this.f5414b;
    }

    public final AndroidComposeView y() {
        return this.f5413a;
    }
}
