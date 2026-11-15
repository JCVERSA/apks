package fp;

import android.view.View;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.room.R$id;

public final class i0 implements f4.a {

    private final View f60344a;

    public final View f60345b;

    public final RecyclerView f60346c;

    public final TextView f60347d;

    public final AppCompatTextView f60348e;

    public final AppCompatTextView f60349f;

    private i0(View view, View view2, RecyclerView recyclerView, TextView textView, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2) {
        this.f60344a = view;
        this.f60345b = view2;
        this.f60346c = recyclerView;
        this.f60347d = textView;
        this.f60348e = appCompatTextView;
        this.f60349f = appCompatTextView2;
    }

    public static i0 a(View view) {
        int i10 = R$id.all_bg;
        View viewA = f4.b.a(view, i10);
        if (viewA != null) {
            i10 = R$id.recyclerView;
            RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
            if (recyclerView != null) {
                i10 = R$id.tv_banner;
                TextView textView = (TextView) f4.b.a(view, i10);
                if (textView != null) {
                    i10 = R$id.tvMore;
                    AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                    if (appCompatTextView != null) {
                        i10 = R$id.tv_title;
                        AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                        if (appCompatTextView2 != null) {
                            return new i0(view, viewA, recyclerView, textView, appCompatTextView, appCompatTextView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public View getRoot() {
        return this.f60344a;
    }
}
