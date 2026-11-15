package com.transsion.member.view;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.member.R$styleable;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b'\b\u0007\u0018\u0000 =2\u00020\u0001:\u0005!\u000b(&\u000fB'\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\nH\u0014¢\u0006\u0004\b\u0011\u0010\fJ\u0015\u0010\u0014\u001a\u00020\n2\u0006\u0010\u0013\u001a\u00020\u0012¢\u0006\u0004\b\u0014\u0010\u0015JE\u0010\u001c\u001a\u00020\n26\u0010\u001b\u001a2\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b\u0017\u0012\b\b\u0018\u0012\u0004\b\b(\u0019\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b\u0017\u0012\b\b\u0018\u0012\u0004\b\b(\u001a\u0012\u0004\u0012\u00020\n0\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u0015\u0010\u001e\u001a\u00020\n2\u0006\u0010\u0019\u001a\u00020\u0006¢\u0006\u0004\b\u001e\u0010\u001fJ\r\u0010 \u001a\u00020\n¢\u0006\u0004\b \u0010\fR\u0016\u0010#\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\"R\u0016\u0010$\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000b\u0010\"R\u0016\u0010%\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010\"R\u0016\u0010'\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010\"R\u0016\u0010)\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010\"R\u0016\u0010+\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010\"R\u0018\u0010.\u001a\u0004\u0018\u00010\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b,\u0010-RH\u00101\u001a4\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b\u0017\u0012\b\b\u0018\u0012\u0004\b\b(\u0019\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b\u0017\u0012\b\b\u0018\u0012\u0004\b\b(\u001a\u0012\u0004\u0012\u00020\n\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u00100R\u0016\u00103\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b2\u0010\"R\u0016\u00105\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b4\u0010\"R\u0016\u00107\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b6\u0010\"R\u0016\u0010:\u001a\u00020\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b8\u00109R\u0016\u0010<\u001a\u00020\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b;\u00109¨\u0006>"}, d2 = {"Lcom/transsion/member/view/CheckInView;", "Landroidx/recyclerview/widget/RecyclerView;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "()V", "", "dp", "c", "(F)I", "onFinishInflate", "Lcom/transsion/member/view/CheckInView$d;", "binder", "setDataViewBinder", "(Lcom/transsion/member/view/CheckInView$d;)V", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", RequestParameters.POSITION, NativeComponentConstants.KEY_COMPONENT_TYPE, ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "setItemClicker", "(Lkotlin/jvm/functions/Function2;)V", "notifyItemCheckInStateChange", "(I)V", "notifyAllChange", "a", "I", "unActiveItemLayoutId", "doneItemLayoutId", "activeItemLayoutId", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "unActiveEndLayoutId", "e", "doneEndLayoutId", "f", "activeEndLayoutId", "g", "Lcom/transsion/member/view/CheckInView$d;", "viewBinder", "h", "Lkotlin/jvm/functions/Function2;", "clickListener", "i", "maxLength", "j", "spanCount", CampaignEx.JSON_KEY_AD_K, "endSpanCount", "l", "F", "spaceV", "m", "spaceH", "Companion", "Member_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class CheckInView extends RecyclerView {
    public static final int TYPE_END_ACTIVE = 5;
    public static final int TYPE_END_DONE = 4;
    public static final int TYPE_END_UNACTIVE = 6;
    public static final int TYPE_ITEM_ACTIVE = 2;
    public static final int TYPE_ITEM_DONE = 1;
    public static final int TYPE_ITEM_UNACTIVE = 3;

    private int unActiveItemLayoutId;

    private int doneItemLayoutId;

    private int activeItemLayoutId;

    private int unActiveEndLayoutId;

    private int doneEndLayoutId;

    private int activeEndLayoutId;

    private d viewBinder;

    private Function2 clickListener;

    private int maxLength;

    private int spanCount;

    private int endSpanCount;

    private float spaceV;

    private float spaceH;
    public static final int $stable = 8;

    final class a extends RecyclerView.Adapter {
        public a() {
        }

        public static final void i(CheckInView checkInView, int i10, b bVar, View view) {
            Function2 function2 = checkInView.clickListener;
            if (function2 != null) {
                function2.invoke(Integer.valueOf(i10), Integer.valueOf(bVar.f()));
            }
        }

        @Override
        public int getItemCount() {
            return CheckInView.this.maxLength;
        }

        @Override
        public int getItemViewType(int i10) {
            d dVar = CheckInView.this.viewBinder;
            if (dVar != null) {
                return dVar.b(i10);
            }
            return 3;
        }

        @Override
        public void onBindViewHolder(final b holder, final int i10) {
            Intrinsics.h(holder, "holder");
            d dVar = CheckInView.this.viewBinder;
            if (dVar != null) {
                dVar.a(holder, i10);
            }
            View view = holder.itemView;
            final CheckInView checkInView = CheckInView.this;
            view.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    CheckInView.a.i(checkInView, i10, holder, view2);
                }
            });
        }

        @Override
        public b onCreateViewHolder(ViewGroup parent, int i10) {
            int i11;
            Intrinsics.h(parent, "parent");
            CheckInView checkInView = CheckInView.this;
            LayoutInflater layoutInflaterFrom = LayoutInflater.from(checkInView.getContext());
            switch (i10) {
                case 1:
                    i11 = CheckInView.this.doneItemLayoutId;
                    break;
                case 2:
                    i11 = CheckInView.this.activeItemLayoutId;
                    break;
                case 3:
                    i11 = CheckInView.this.unActiveItemLayoutId;
                    break;
                case 4:
                    i11 = CheckInView.this.doneEndLayoutId;
                    break;
                case 5:
                    i11 = CheckInView.this.activeEndLayoutId;
                    break;
                case 6:
                    i11 = CheckInView.this.unActiveEndLayoutId;
                    break;
                default:
                    i11 = CheckInView.this.unActiveItemLayoutId;
                    break;
            }
            View viewInflate = layoutInflaterFrom.inflate(i11, parent, false);
            Intrinsics.g(viewInflate, "inflate(...)");
            return new b(checkInView, viewInflate, i10);
        }
    }

    public final class b extends RecyclerView.a0 {

        private final int f45145a;

        final CheckInView f45146b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(CheckInView checkInView, View itemView, int i10) {
            super(itemView);
            Intrinsics.h(itemView, "itemView");
            this.f45146b = checkInView;
            this.f45145a = i10;
        }

        public final int f() {
            return this.f45145a;
        }
    }

    public interface d {
        void a(b bVar, int i10);

        int b(int i10);
    }

    public final class e extends RecyclerView.l {

        private final int f45147a;

        private final int f45148b;

        private final int f45149c;

        public e(int i10, int i11, int i12) {
            this.f45147a = i10;
            this.f45148b = i11;
            this.f45149c = i12;
        }

        @Override
        public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.x state) {
            Intrinsics.h(outRect, "outRect");
            Intrinsics.h(view, "view");
            Intrinsics.h(parent, "parent");
            Intrinsics.h(state, "state");
            int childAdapterPosition = parent.getChildAdapterPosition(view);
            int i10 = this.f45147a;
            int i11 = childAdapterPosition % i10;
            int i12 = this.f45148b;
            outRect.left = (i11 * i12) / i10;
            outRect.right = i12 - (((i11 + 1) * i12) / i10);
            if (childAdapterPosition >= i10) {
                outRect.top = this.f45149c;
            }
        }
    }

    public static final class f extends GridLayoutManager.c {

        final GridLayoutManager f45152f;

        f(GridLayoutManager gridLayoutManager) {
            this.f45152f = gridLayoutManager;
        }

        @Override
        public int f(int i10) {
            RecyclerView.m layoutManager = CheckInView.this.getLayoutManager();
            return i10 == (layoutManager != null ? layoutManager.getItemCount() : this.f45152f.U()) - 1 ? 2 : 1;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public CheckInView(Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.h(context, "context");
    }

    private final void b() {
        View childAt;
        RecyclerView.m layoutManager = getLayoutManager();
        int measuredHeight = 0;
        if (layoutManager != null && (childAt = layoutManager.getChildAt(0)) != null) {
            measuredHeight = childAt.getMeasuredHeight();
        }
        int paddingTop = (measuredHeight * ((this.maxLength / this.spanCount) + 1)) + getPaddingTop() + getPaddingBottom();
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        layoutParams.height = paddingTop;
        setLayoutParams(layoutParams);
    }

    private final int c(float dp2) {
        return (int) ((dp2 * getContext().getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static final void d(CheckInView checkInView) {
        GridLayoutManager gridLayoutManager = new GridLayoutManager(checkInView.getContext(), checkInView.spanCount);
        gridLayoutManager.d0(checkInView.new f(gridLayoutManager));
        checkInView.setLayoutManager(gridLayoutManager);
        checkInView.setAdapter(checkInView.new a());
        checkInView.addItemDecoration(checkInView.new e(checkInView.spanCount, checkInView.c(8.0f), checkInView.c(12.0f)));
        checkInView.b();
    }

    public final void notifyAllChange() {
        RecyclerView.Adapter adapter = getAdapter();
        if (adapter != null) {
            adapter.notifyDataSetChanged();
        }
    }

    public final void notifyItemCheckInStateChange(int position) {
        RecyclerView.Adapter adapter = getAdapter();
        if (adapter != null) {
            adapter.notifyItemChanged(position);
        }
    }

    @Override
    protected void onFinishInflate() {
        super.onFinishInflate();
        post(new Runnable() {
            @Override
            public final void run() {
                CheckInView.d(this.f45176a);
            }
        });
    }

    public final void setDataViewBinder(d binder) {
        Intrinsics.h(binder, "binder");
        this.viewBinder = binder;
    }

    public final void setItemClicker(Function2<? super Integer, ? super Integer, Unit> listener) {
        Intrinsics.h(listener, "listener");
        this.clickListener = listener;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public CheckInView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.h(context, "context");
    }

    public CheckInView(Context context, AttributeSet attributeSet, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i11 & 2) != 0 ? null : attributeSet, (i11 & 4) != 0 ? 0 : i10);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public CheckInView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.h(context, "context");
        this.spanCount = 4;
        this.endSpanCount = 2;
        this.spaceV = 12.0f;
        this.spaceH = 8.0f;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.CheckInView);
        Intrinsics.g(typedArrayObtainStyledAttributes, "obtainStyledAttributes(...)");
        this.maxLength = typedArrayObtainStyledAttributes.getInt(R$styleable.CheckInView_civ_length, 7);
        this.spanCount = typedArrayObtainStyledAttributes.getInt(R$styleable.CheckInView_civ_spanCount, 4);
        this.endSpanCount = typedArrayObtainStyledAttributes.getInt(R$styleable.CheckInView_civ_endSpanCount, 2);
        this.spaceV = typedArrayObtainStyledAttributes.getFloat(R$styleable.CheckInView_civ_verticalSpace, 12.0f);
        this.spaceH = typedArrayObtainStyledAttributes.getFloat(R$styleable.CheckInView_civ_horizontalSpace, 8.0f);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(R$styleable.CheckInView_civ_unActiveItemLayout, R.layout.select_dialog_item);
        this.unActiveItemLayoutId = resourceId;
        this.doneItemLayoutId = typedArrayObtainStyledAttributes.getResourceId(R$styleable.CheckInView_civ_doneItemLayout, resourceId);
        this.activeItemLayoutId = typedArrayObtainStyledAttributes.getResourceId(R$styleable.CheckInView_civ_activeItemLayout, this.unActiveItemLayoutId);
        int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(R$styleable.CheckInView_civ_unActiveEndLayout, R.layout.select_dialog_item);
        this.unActiveEndLayoutId = resourceId2;
        this.doneEndLayoutId = typedArrayObtainStyledAttributes.getResourceId(R$styleable.CheckInView_civ_doneEndLayout, resourceId2);
        this.activeEndLayoutId = typedArrayObtainStyledAttributes.getResourceId(R$styleable.CheckInView_civ_activeEndLayout, this.unActiveEndLayoutId);
        typedArrayObtainStyledAttributes.recycle();
        setWillNotDraw(false);
    }
}
