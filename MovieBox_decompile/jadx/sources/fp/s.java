package fp;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewpager2.widget.ViewPager2;
import com.transsion.room.R$id;
import com.transsion.room.R$layout;
import net.lucode.hackware.magicindicator.MagicIndicator;

public final class s implements f4.a {

    private final ConstraintLayout f60433a;

    public final ConstraintLayout f60434b;

    public final AppCompatImageView f60435c;

    public final ImageView f60436d;

    public final MagicIndicator f60437e;

    public final ViewPager2 f60438f;

    private s(ConstraintLayout constraintLayout, ConstraintLayout constraintLayout2, AppCompatImageView appCompatImageView, ImageView imageView, MagicIndicator magicIndicator, ViewPager2 viewPager2) {
        this.f60433a = constraintLayout;
        this.f60434b = constraintLayout2;
        this.f60435c = appCompatImageView;
        this.f60436d = imageView;
        this.f60437e = magicIndicator;
        this.f60438f = viewPager2;
    }

    public static s a(View view) {
        ConstraintLayout constraintLayout = (ConstraintLayout) view;
        int i10 = R$id.iv_back;
        AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
        if (appCompatImageView != null) {
            i10 = R$id.iv_top_bg;
            ImageView imageView = (ImageView) f4.b.a(view, i10);
            if (imageView != null) {
                i10 = R$id.magic_indicator;
                MagicIndicator magicIndicator = (MagicIndicator) f4.b.a(view, i10);
                if (magicIndicator != null) {
                    i10 = R$id.view_pager;
                    ViewPager2 viewPager2 = (ViewPager2) f4.b.a(view, i10);
                    if (viewPager2 != null) {
                        return new s(constraintLayout, constraintLayout, appCompatImageView, imageView, magicIndicator, viewPager2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static s c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static s d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_room_list_main, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f60433a;
    }
}
