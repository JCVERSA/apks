package androidx.compose.ui.text.input;

import android.view.Choreographer;
import android.view.KeyEvent;
import android.view.View;
import android.view.inputmethod.BaseInputConnection;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class TextInputServiceAndroid implements y {

    private final View f5897a;

    private final r f5898b;

    private final Executor f5899c;

    private boolean f5900d;

    private Function1 f5901e;

    private Function1 f5902f;

    private TextFieldValue f5903g;

    private p f5904h;

    private List f5905i;

    private final Lazy f5906j;

    private final CursorAnchorInfoController f5907k;

    private final androidx.compose.runtime.collection.b f5908l;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0082\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Landroidx/compose/ui/text/input/TextInputServiceAndroid$TextInputCommand;", "", "(Ljava/lang/String;I)V", "StartInput", "StopInput", "ShowKeyboard", "HideKeyboard", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    private enum TextInputCommand {
        StartInput,
        StopInput,
        ShowKeyboard,
        HideKeyboard
    }

    public static final class a implements q {
        a() {
        }

        @Override
        public void a(KeyEvent keyEvent) {
            TextInputServiceAndroid.this.g().sendKeyEvent(keyEvent);
        }

        @Override
        public void b(z zVar) {
            int size = TextInputServiceAndroid.this.f5905i.size();
            for (int i10 = 0; i10 < size; i10++) {
                if (Intrinsics.c(((WeakReference) TextInputServiceAndroid.this.f5905i.get(i10)).get(), zVar)) {
                    TextInputServiceAndroid.this.f5905i.remove(i10);
                    return;
                }
            }
        }

        @Override
        public void c(boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15) {
            TextInputServiceAndroid.this.f5907k.a(z10, z11, z12, z13, z14, z15);
        }

        @Override
        public void d(int i10) {
            TextInputServiceAndroid.this.f5902f.invoke(o.i(i10));
        }

        @Override
        public void e(List list) {
            TextInputServiceAndroid.this.f5901e.invoke(list);
        }
    }

    public TextInputServiceAndroid(View view, androidx.compose.ui.input.pointer.i0 i0Var, r rVar, Executor executor) {
        this.f5897a = view;
        this.f5898b = rVar;
        this.f5899c = executor;
        this.f5901e = new Function1<List<? extends m>, Unit>() {
            public final void invoke(List<? extends m> list) {
            }

            @Override
            public Object invoke(Object obj) {
                invoke((List<? extends m>) obj);
                return Unit.f64096a;
            }
        };
        this.f5902f = new Function1<o, Unit>() {
            @Override
            public Object invoke(Object obj) {
                m178invokeKlQnJC8(((o) obj).o());
                return Unit.f64096a;
            }

            public final void m178invokeKlQnJC8(int i10) {
            }
        };
        this.f5903g = new TextFieldValue("", androidx.compose.ui.text.b0.f5774b.a(), (androidx.compose.ui.text.b0) null, 4, (DefaultConstructorMarker) null);
        this.f5904h = p.f5942h.a();
        this.f5905i = new ArrayList();
        this.f5906j = LazyKt.a(LazyThreadSafetyMode.NONE, new Function0<BaseInputConnection>() {
            {
                super(0);
            }

            @Override
            public final BaseInputConnection invoke() {
                return new BaseInputConnection(this.this$0.h(), false);
            }
        });
        this.f5907k = new CursorAnchorInfoController(i0Var, rVar);
        this.f5908l = new androidx.compose.runtime.collection.b(new TextInputCommand[16], 0);
    }

    public final BaseInputConnection g() {
        return (BaseInputConnection) this.f5906j.getValue();
    }

    public final InputConnection f(EditorInfo editorInfo) {
        if (!this.f5900d) {
            return null;
        }
        h0.h(editorInfo, this.f5904h, this.f5903g);
        h0.i(editorInfo);
        z zVar = new z(this.f5903g, new a(), this.f5904h.b());
        this.f5905i.add(new WeakReference(zVar));
        return zVar;
    }

    public final View h() {
        return this.f5897a;
    }

    public final boolean i() {
        return this.f5900d;
    }

    public TextInputServiceAndroid(View view, androidx.compose.ui.input.pointer.i0 i0Var, r rVar, Executor executor, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(view, i0Var, rVar, (i10 & 8) != 0 ? h0.d(Choreographer.getInstance()) : executor);
    }

    public TextInputServiceAndroid(View view, androidx.compose.ui.input.pointer.i0 i0Var) {
        this(view, i0Var, new InputMethodManagerImpl(view), null, 8, null);
    }
}
