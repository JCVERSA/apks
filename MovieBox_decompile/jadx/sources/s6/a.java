package s6;

import android.view.View;
import android.view.ViewGroup;
import com.chad.library.adapter.base.loadmore.LoadMoreStatus;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import kotlin.jvm.internal.Intrinsics;

public abstract class a {

    public class C0880a {

        public static final int[] f71551a;

        static {
            int[] iArr = new int[LoadMoreStatus.values().length];
            try {
                iArr[LoadMoreStatus.Complete.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LoadMoreStatus.Loading.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[LoadMoreStatus.Fail.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[LoadMoreStatus.End.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            f71551a = iArr;
        }
    }

    private final void a(View view, boolean z10) {
        view.setVisibility(z10 ? 0 : 8);
    }

    public void convert(BaseViewHolder holder, int i10, LoadMoreStatus loadMoreStatus) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(loadMoreStatus, "loadMoreStatus");
        int i11 = C0880a.f71551a[loadMoreStatus.ordinal()];
        if (i11 == 1) {
            a(getLoadingView(holder), false);
            a(getLoadComplete(holder), true);
            a(getLoadFailView(holder), false);
            a(getLoadEndView(holder), false);
            return;
        }
        if (i11 == 2) {
            a(getLoadingView(holder), true);
            a(getLoadComplete(holder), false);
            a(getLoadFailView(holder), false);
            a(getLoadEndView(holder), false);
            return;
        }
        if (i11 == 3) {
            a(getLoadingView(holder), false);
            a(getLoadComplete(holder), false);
            a(getLoadFailView(holder), true);
            a(getLoadEndView(holder), false);
            return;
        }
        if (i11 != 4) {
            return;
        }
        a(getLoadingView(holder), false);
        a(getLoadComplete(holder), false);
        a(getLoadFailView(holder), false);
        a(getLoadEndView(holder), true);
    }

    public abstract View getLoadComplete(BaseViewHolder baseViewHolder);

    public abstract View getLoadEndView(BaseViewHolder baseViewHolder);

    public abstract View getLoadFailView(BaseViewHolder baseViewHolder);

    public abstract View getLoadingView(BaseViewHolder baseViewHolder);

    public abstract View getRootView(ViewGroup viewGroup);
}
