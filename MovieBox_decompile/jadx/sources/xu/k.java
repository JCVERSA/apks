package xu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.tn.lib.view.TitleLayout;
import com.transsion.usercenter.ProfileSettingTitleLayout;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;

public final class k implements f4.a {

    private final ConstraintLayout f75638a;

    public final ImageView f75639b;

    public final ImageView f75640c;

    public final ProfileSettingTitleLayout f75641d;

    public final ProfileSettingTitleLayout f75642e;

    public final TitleLayout f75643f;

    public final ProfileSettingTitleLayout f75644g;

    public final TextView f75645h;

    private k(ConstraintLayout constraintLayout, ImageView imageView, ImageView imageView2, ProfileSettingTitleLayout profileSettingTitleLayout, ProfileSettingTitleLayout profileSettingTitleLayout2, TitleLayout titleLayout, ProfileSettingTitleLayout profileSettingTitleLayout3, TextView textView) {
        this.f75638a = constraintLayout;
        this.f75639b = imageView;
        this.f75640c = imageView2;
        this.f75641d = profileSettingTitleLayout;
        this.f75642e = profileSettingTitleLayout2;
        this.f75643f = titleLayout;
        this.f75644g = profileSettingTitleLayout3;
        this.f75645h = textView;
    }

    public static k a(View view) {
        int i10 = R$id.ivAvatar;
        ImageView imageView = (ImageView) f4.b.a(view, i10);
        if (imageView != null) {
            i10 = R$id.ivRight;
            ImageView imageView2 = (ImageView) f4.b.a(view, i10);
            if (imageView2 != null) {
                i10 = R$id.titleBirth;
                ProfileSettingTitleLayout profileSettingTitleLayout = (ProfileSettingTitleLayout) f4.b.a(view, i10);
                if (profileSettingTitleLayout != null) {
                    i10 = R$id.titleGender;
                    ProfileSettingTitleLayout profileSettingTitleLayout2 = (ProfileSettingTitleLayout) f4.b.a(view, i10);
                    if (profileSettingTitleLayout2 != null) {
                        i10 = R$id.titleLayout;
                        TitleLayout titleLayout = (TitleLayout) f4.b.a(view, i10);
                        if (titleLayout != null) {
                            i10 = R$id.titleRegion;
                            ProfileSettingTitleLayout profileSettingTitleLayout3 = (ProfileSettingTitleLayout) f4.b.a(view, i10);
                            if (profileSettingTitleLayout3 != null) {
                                i10 = R$id.tvNickName;
                                TextView textView = (TextView) f4.b.a(view, i10);
                                if (textView != null) {
                                    return new k((ConstraintLayout) view, imageView, imageView2, profileSettingTitleLayout, profileSettingTitleLayout2, titleLayout, profileSettingTitleLayout3, textView);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static k c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static k d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_profile_edit, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f75638a;
    }
}
