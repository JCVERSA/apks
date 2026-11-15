package androidx.compose.ui.node;

import android.view.View;
import androidx.compose.ui.graphics.a4;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.modifier.ModifierLocalManager;
import androidx.compose.ui.platform.g2;
import androidx.compose.ui.platform.h2;
import androidx.compose.ui.platform.o2;
import androidx.compose.ui.platform.v2;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

public interface y0 extends androidx.compose.ui.input.pointer.i0 {

    public static final a f5152d1 = a.f5153a;

    public static final class a {

        static final a f5153a = new a();

        private static boolean f5154b;

        private a() {
        }

        public final boolean a() {
            return f5154b;
        }
    }

    public interface b {
        void f();
    }

    long mo142calculatePositionInWindowMKHz9U(long j10);

    w0 createLayer(Function2 function2, Function0 function0, GraphicsLayer graphicsLayer);

    void forceMeasureTheSubtree(LayoutNode layoutNode, boolean z10);

    androidx.compose.ui.platform.h getAccessibilityManager();

    x.g getAutofill();

    x.w getAutofillTree();

    androidx.compose.ui.platform.q0 getClipboardManager();

    CoroutineContext getCoroutineContext();

    o0.e getDensity();

    androidx.compose.ui.draganddrop.c getDragAndDropManager();

    androidx.compose.ui.focus.i getFocusOwner();

    androidx.compose.ui.text.font.h.b getFontFamilyResolver();

    androidx.compose.ui.text.font.g getFontLoader();

    a4 getGraphicsContext();

    b0.a getHapticFeedBack();

    c0.b getInputModeManager();

    LayoutDirection getLayoutDirection();

    ModifierLocalManager getModifierLocalManager();

    androidx.compose.ui.layout.g0.a getPlacementScope();

    androidx.compose.ui.input.pointer.t getPointerIconService();

    LayoutNode getRoot();

    d0 getSharedDrawScope();

    boolean getShowLayoutBounds();

    OwnerSnapshotObserver getSnapshotObserver();

    g2 getSoftwareKeyboardController();

    androidx.compose.ui.text.input.e0 getTextInputService();

    h2 getTextToolbar();

    o2 getViewConfiguration();

    v2 getWindowInfo();

    void measureAndLayout(boolean z10);

    void mo143measureAndLayout0kLqBqw(LayoutNode layoutNode, long j10);

    void onAttach(LayoutNode layoutNode);

    void onDetach(LayoutNode layoutNode);

    void onEndApplyChanges();

    void onInteropViewLayoutChange(View view);

    void onLayoutChange(LayoutNode layoutNode);

    void onRequestMeasure(LayoutNode layoutNode, boolean z10, boolean z11, boolean z12);

    void onRequestRelayout(LayoutNode layoutNode, boolean z10, boolean z11);

    void onSemanticsChange();

    void registerOnEndApplyChangesListener(Function0 function0);

    void requestOnPositionedCallback(LayoutNode layoutNode);

    void setShowLayoutBounds(boolean z10);
}
