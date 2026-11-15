package com.transsion.widgetsbottomsheet.bottomsheet;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.WindowManager;
import android.widget.FrameLayout;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.transsion.widgetsbottomsheet.R;
import com.transsion.widgetsbottomsheet.bottomsheet.OSBottomSheetContainer;
import defpackage.c74;
import defpackage.olb;
import defpackage.y45;
import defpackage.yi5;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.b;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 (2\u00020\u0001:\u0001)B1\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\nJ\u001f\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\rH\u0014¢\u0006\u0004\b\u0010\u0010\u0011J\u0015\u0010\u0014\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\u0012¢\u0006\u0004\b\u0014\u0010\u0015R\u0016\u0010\u0018\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u001b\u0010\u001e\u001a\u00020\u00198BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001dR\u001b\u0010#\u001a\u00020\u001f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b \u0010\u001b\u001a\u0004\b!\u0010\"R\u0018\u0010'\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010&¨\u0006*"}, d2 = {"Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetContainer;", "Landroid/widget/FrameLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "defStyleRes", MethodDecl.initName, "(Landroid/content/Context;Landroid/util/AttributeSet;II)V", "widthMeasureSpec", "heightMeasureSpec", "Lzfb;", "onMeasure", "(II)V", "onFinishInflate", "()V", "", "canceledOnTouchOutside", "setCanceledOnTouchOutside", "(Z)V", "b", "Z", "mCanceledOnTouchOutside", "Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;", "c", "Lyi5;", "getMDragPanel", "()Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;", "mDragPanel", "Landroid/view/View;", "d", "getMOutsidePanel", "()Landroid/view/View;", "mOutsidePanel", "Landroid/view/WindowManager;", "e", "Landroid/view/WindowManager;", "mWindowManager", "Companion", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "widgetsbottomsheet_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class OSBottomSheetContainer extends FrameLayout {

    public boolean mCanceledOnTouchOutside;

    public final yi5 mDragPanel;

    public final yi5 mOutsidePanel;

    public WindowManager mWindowManager;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public OSBottomSheetContainer(Context context) {
        this(context, null, 0, 0, 14, null);
        y45.j(context, "context");
    }

    public static final void b(OSBottomSheetContainer oSBottomSheetContainer, View view) {
        y45.j(oSBottomSheetContainer, "this$0");
        if (oSBottomSheetContainer.mCanceledOnTouchOutside) {
            oSBottomSheetContainer.getMDragPanel().animateDismiss();
        }
    }

    private final OSBottomSheetPanel getMDragPanel() {
        Object value = this.mDragPanel.getValue();
        y45.i(value, "<get-mDragPanel>(...)");
        return (OSBottomSheetPanel) value;
    }

    private final View getMOutsidePanel() {
        Object value = this.mOutsidePanel.getValue();
        y45.i(value, "<get-mOutsidePanel>(...)");
        return (View) value;
    }

    @Override
    public void onFinishInflate() {
        super.onFinishInflate();
        getMDragPanel().setOutsideView(getMOutsidePanel());
        getMOutsidePanel().setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                OSBottomSheetContainer.b(this.b, view);
            }
        });
    }

    @Override
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int dimensionPixelSize;
        int size = View.MeasureSpec.getSize(heightMeasureSpec);
        if (olb.Z(getContext())) {
            dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.os_ultra_small_bottom_sheet_pull_rect);
        } else {
            dimensionPixelSize = (olb.i0(getContext(), this.mWindowManager) || (olb.g0(getContext()) && (olb.k0(getContext()) || olb.Q(getContext())))) ? 0 : getResources().getDimensionPixelSize(R.dimen.os_bottom_sheet_pull_rect);
        }
        super.onMeasure(widthMeasureSpec, View.MeasureSpec.makeMeasureSpec(size + dimensionPixelSize, View.MeasureSpec.getMode(heightMeasureSpec)));
    }

    public final void setCanceledOnTouchOutside(boolean canceledOnTouchOutside) {
        this.mCanceledOnTouchOutside = canceledOnTouchOutside;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public OSBottomSheetContainer(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 0, 12, null);
        y45.j(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public OSBottomSheetContainer(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0, 8, null);
        y45.j(context, "context");
    }

    public OSBottomSheetContainer(Context context, AttributeSet attributeSet, int i, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i3 & 2) != 0 ? null : attributeSet, (i3 & 4) != 0 ? 0 : i, (i3 & 8) != 0 ? 0 : i2);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OSBottomSheetContainer(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        y45.j(context, "context");
        this.mCanceledOnTouchOutside = true;
        this.mDragPanel = b.a(new c74() {
            {
                super(0);
            }

            @Override
            public final OSBottomSheetPanel invoke() {
                return (OSBottomSheetPanel) this.this$0.findViewById(R.id.drag_panel);
            }
        });
        this.mOutsidePanel = b.a(new c74() {
            {
                super(0);
            }

            @Override
            public final View invoke() {
                return this.this$0.findViewById(R.id.touch_outside);
            }
        });
        Object systemService = context.getSystemService("window");
        this.mWindowManager = systemService instanceof WindowManager ? (WindowManager) systemService : null;
    }
}
