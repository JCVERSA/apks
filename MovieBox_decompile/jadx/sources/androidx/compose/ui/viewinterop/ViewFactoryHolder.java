package androidx.compose.ui.viewinterop;

import android.content.Context;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.View;
import androidx.compose.runtime.m;
import androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher;
import androidx.compose.ui.node.y0;
import androidx.compose.ui.platform.AbstractComposeView;
import androidx.compose.ui.platform.r2;
import androidx.compose.ui.platform.s2;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\r\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0019\b\u0000\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\u00020\u00032\u00020\u0004BI\b\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\t\u001a\u00028\u0000\u0012\b\b\u0002\u0010\u000b\u001a\u00020\n\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010¢\u0006\u0004\b\u0012\u0010\u0013BK\b\u0016\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0012\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00028\u00000\u0014\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010¢\u0006\u0004\b\u0012\u0010\u0016J\u000f\u0010\u0018\u001a\u00020\u0017H\u0002¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u0017H\u0002¢\u0006\u0004\b\u001a\u0010\u0019R\u0014\u0010\t\u001a\u00028\u00008\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0017\u0010\u000b\u001a\u00020\n8\u0006¢\u0006\f\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 R\u0016\u0010\r\u001a\u0004\u0018\u00010\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u0010\"R\u0014\u0010\u000f\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010$R\u0014\u0010(\u001a\u00020%8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b&\u0010'R(\u0010/\u001a\u0004\u0018\u00010)2\b\u0010*\u001a\u0004\u0018\u00010)8\u0002@BX\u0082\u000e¢\u0006\f\n\u0004\b+\u0010,\"\u0004\b-\u0010.RB\u00106\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00170\u00142\u0012\u0010*\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00170\u00148\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b0\u00101\u001a\u0004\b2\u00103\"\u0004\b4\u00105RB\u0010:\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00170\u00142\u0012\u0010*\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00170\u00148\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b7\u00101\u001a\u0004\b8\u00103\"\u0004\b9\u00105RB\u0010>\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00170\u00142\u0012\u0010*\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00170\u00148\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b;\u00101\u001a\u0004\b<\u00103\"\u0004\b=\u00105R\u0014\u0010A\u001a\u00020\u00018VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b?\u0010@¨\u0006B"}, d2 = {"Landroidx/compose/ui/viewinterop/ViewFactoryHolder;", "Landroid/view/View;", "T", "Landroidx/compose/ui/viewinterop/AndroidViewHolder;", "Landroidx/compose/ui/platform/s2;", "Landroid/content/Context;", "context", "Landroidx/compose/runtime/m;", "parentContext", "typedView", "Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;", "dispatcher", "Landroidx/compose/runtime/saveable/b;", "saveStateRegistry", "", "compositeKeyHash", "Landroidx/compose/ui/node/y0;", "owner", "<init>", "(Landroid/content/Context;Landroidx/compose/runtime/m;Landroid/view/View;Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;Landroidx/compose/runtime/saveable/b;ILandroidx/compose/ui/node/y0;)V", "Lkotlin/Function1;", "factory", "(Landroid/content/Context;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/m;Landroidx/compose/runtime/saveable/b;ILandroidx/compose/ui/node/y0;)V", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "()V", "e", "y", "Landroid/view/View;", "z", "Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;", "getDispatcher", "()Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;", "A", "Landroidx/compose/runtime/saveable/b;", "B", "I", "", "C", "Ljava/lang/String;", "saveStateKey", "Landroidx/compose/runtime/saveable/b$a;", AppMeasurementSdk.ConditionalUserProperty.VALUE, "D", "Landroidx/compose/runtime/saveable/b$a;", "setSavableRegistryEntry", "(Landroidx/compose/runtime/saveable/b$a;)V", "savableRegistryEntry", "E", "Lkotlin/jvm/functions/Function1;", "getUpdateBlock", "()Lkotlin/jvm/functions/Function1;", "setUpdateBlock", "(Lkotlin/jvm/functions/Function1;)V", "updateBlock", "F", "getResetBlock", "setResetBlock", "resetBlock", "G", "getReleaseBlock", "setReleaseBlock", "releaseBlock", "getViewRoot", "()Landroid/view/View;", "viewRoot", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class ViewFactoryHolder<T extends View> extends AndroidViewHolder implements s2 {
    public static final int $stable = 8;

    private final androidx.compose.runtime.saveable.b saveStateRegistry;

    private final int compositeKeyHash;

    private final String saveStateKey;

    private androidx.compose.runtime.saveable.b.a savableRegistryEntry;

    private Function1 updateBlock;

    private Function1 resetBlock;

    private Function1 releaseBlock;

    private final View typedView;

    private final NestedScrollDispatcher dispatcher;

    ViewFactoryHolder(Context context, m mVar, View view, NestedScrollDispatcher nestedScrollDispatcher, androidx.compose.runtime.saveable.b bVar, int i10, y0 y0Var, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i11 & 2) != 0 ? null : mVar, view, (i11 & 8) != 0 ? new NestedScrollDispatcher() : nestedScrollDispatcher, bVar, i10, y0Var);
    }

    private final void d() {
        androidx.compose.runtime.saveable.b bVar = this.saveStateRegistry;
        if (bVar != null) {
            setSavableRegistryEntry(bVar.b(this.saveStateKey, new Function0<Object>(this) {
                final ViewFactoryHolder<T> this$0;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                    this.this$0 = this;
                }

                @Override
                public final Object invoke() {
                    SparseArray<Parcelable> sparseArray = new SparseArray<>();
                    ((ViewFactoryHolder) this.this$0).typedView.saveHierarchyState(sparseArray);
                    return sparseArray;
                }
            }));
        }
    }

    public final void e() {
        setSavableRegistryEntry(null);
    }

    private final void setSavableRegistryEntry(androidx.compose.runtime.saveable.b.a aVar) {
        androidx.compose.runtime.saveable.b.a aVar2 = this.savableRegistryEntry;
        if (aVar2 != null) {
            aVar2.unregister();
        }
        this.savableRegistryEntry = aVar;
    }

    public final NestedScrollDispatcher getDispatcher() {
        return this.dispatcher;
    }

    public final Function1<T, Unit> getReleaseBlock() {
        return this.releaseBlock;
    }

    public final Function1<T, Unit> getResetBlock() {
        return this.resetBlock;
    }

    public AbstractComposeView getSubCompositionView() {
        return r2.a(this);
    }

    public final Function1<T, Unit> getUpdateBlock() {
        return this.updateBlock;
    }

    public final void setReleaseBlock(Function1<? super T, Unit> function1) {
        this.releaseBlock = function1;
        setRelease(new Function0<Unit>(this) {
            final ViewFactoryHolder<T> this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
                this.this$0 = this;
            }

            @Override
            public Object invoke() {
                m185invoke();
                return Unit.f64096a;
            }

            public final void m185invoke() {
                this.this$0.getReleaseBlock().invoke(((ViewFactoryHolder) this.this$0).typedView);
                this.this$0.e();
            }
        });
    }

    public final void setResetBlock(Function1<? super T, Unit> function1) {
        this.resetBlock = function1;
        setReset(new Function0<Unit>(this) {
            final ViewFactoryHolder<T> this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
                this.this$0 = this;
            }

            @Override
            public Object invoke() {
                m186invoke();
                return Unit.f64096a;
            }

            public final void m186invoke() {
                this.this$0.getResetBlock().invoke(((ViewFactoryHolder) this.this$0).typedView);
            }
        });
    }

    public final void setUpdateBlock(Function1<? super T, Unit> function1) {
        this.updateBlock = function1;
        setUpdate(new Function0<Unit>(this) {
            final ViewFactoryHolder<T> this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
                this.this$0 = this;
            }

            @Override
            public Object invoke() {
                m187invoke();
                return Unit.f64096a;
            }

            public final void m187invoke() {
                this.this$0.getUpdateBlock().invoke(((ViewFactoryHolder) this.this$0).typedView);
            }
        });
    }

    private ViewFactoryHolder(Context context, m mVar, View view, NestedScrollDispatcher nestedScrollDispatcher, androidx.compose.runtime.saveable.b bVar, int i10, y0 y0Var) {
        super(context, mVar, i10, nestedScrollDispatcher, view, y0Var);
        this.typedView = view;
        this.dispatcher = nestedScrollDispatcher;
        this.saveStateRegistry = bVar;
        this.compositeKeyHash = i10;
        setClipChildren(false);
        String strValueOf = String.valueOf(i10);
        this.saveStateKey = strValueOf;
        Object objF = bVar != null ? bVar.f(strValueOf) : null;
        SparseArray<Parcelable> sparseArray = objF instanceof SparseArray ? (SparseArray) objF : null;
        if (sparseArray != null) {
            view.restoreHierarchyState(sparseArray);
        }
        d();
        this.updateBlock = AndroidView_androidKt.a();
        this.resetBlock = AndroidView_androidKt.a();
        this.releaseBlock = AndroidView_androidKt.a();
    }

    public ViewFactoryHolder(Context context, Function1 function1, m mVar, androidx.compose.runtime.saveable.b bVar, int i10, y0 y0Var, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, function1, (i11 & 4) != 0 ? null : mVar, bVar, i10, y0Var);
    }

    public ViewFactoryHolder(Context context, Function1<? super Context, ? extends T> function1, m mVar, androidx.compose.runtime.saveable.b bVar, int i10, y0 y0Var) {
        this(context, mVar, (View) function1.invoke(context), null, bVar, i10, y0Var, 8, null);
    }

    public View getViewRoot() {
        return this;
    }
}
