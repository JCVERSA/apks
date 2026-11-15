package xu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatImageButton;
import androidx.appcompat.widget.AppCompatTextView;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;

public final class e implements f4.a {

    private final LinearLayout f75535a;

    public final AppCompatImageButton f75536b;

    public final AppCompatTextView f75537c;

    public final AppCompatTextView f75538d;

    public final AppCompatTextView f75539e;

    public final AppCompatTextView f75540f;

    public final AppCompatTextView f75541g;

    public final AppCompatTextView f75542h;

    public final AppCompatTextView f75543i;

    public final AppCompatTextView f75544j;

    public final AppCompatTextView f75545k;

    public final AppCompatTextView f75546l;

    public final AppCompatTextView f75547m;

    public final AppCompatTextView f75548n;

    public final AppCompatTextView f75549o;

    public final AppCompatTextView f75550p;

    public final AppCompatTextView f75551q;

    public final AppCompatTextView f75552r;

    public final AppCompatTextView f75553s;

    private e(LinearLayout linearLayout, AppCompatImageButton appCompatImageButton, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4, AppCompatTextView appCompatTextView5, AppCompatTextView appCompatTextView6, AppCompatTextView appCompatTextView7, AppCompatTextView appCompatTextView8, AppCompatTextView appCompatTextView9, AppCompatTextView appCompatTextView10, AppCompatTextView appCompatTextView11, AppCompatTextView appCompatTextView12, AppCompatTextView appCompatTextView13, AppCompatTextView appCompatTextView14, AppCompatTextView appCompatTextView15, AppCompatTextView appCompatTextView16, AppCompatTextView appCompatTextView17) {
        this.f75535a = linearLayout;
        this.f75536b = appCompatImageButton;
        this.f75537c = appCompatTextView;
        this.f75538d = appCompatTextView2;
        this.f75539e = appCompatTextView3;
        this.f75540f = appCompatTextView4;
        this.f75541g = appCompatTextView5;
        this.f75542h = appCompatTextView6;
        this.f75543i = appCompatTextView7;
        this.f75544j = appCompatTextView8;
        this.f75545k = appCompatTextView9;
        this.f75546l = appCompatTextView10;
        this.f75547m = appCompatTextView11;
        this.f75548n = appCompatTextView12;
        this.f75549o = appCompatTextView13;
        this.f75550p = appCompatTextView14;
        this.f75551q = appCompatTextView15;
        this.f75552r = appCompatTextView16;
        this.f75553s = appCompatTextView17;
    }

    public static e a(View view) {
        int i10 = R$id.btn_back;
        AppCompatImageButton appCompatImageButton = (AppCompatImageButton) f4.b.a(view, i10);
        if (appCompatImageButton != null) {
            i10 = R$id.tv_app_info;
            AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
            if (appCompatTextView != null) {
                i10 = R$id.tvChannel;
                AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                if (appCompatTextView2 != null) {
                    i10 = R$id.tv_content_mode;
                    AppCompatTextView appCompatTextView3 = (AppCompatTextView) f4.b.a(view, i10);
                    if (appCompatTextView3 != null) {
                        i10 = R$id.tvDebugJS;
                        AppCompatTextView appCompatTextView4 = (AppCompatTextView) f4.b.a(view, i10);
                        if (appCompatTextView4 != null) {
                            i10 = R$id.tv_fps_switch;
                            AppCompatTextView appCompatTextView5 = (AppCompatTextView) f4.b.a(view, i10);
                            if (appCompatTextView5 != null) {
                                i10 = R$id.tvHttpHost;
                                AppCompatTextView appCompatTextView6 = (AppCompatTextView) f4.b.a(view, i10);
                                if (appCompatTextView6 != null) {
                                    i10 = R$id.tvIso;
                                    AppCompatTextView appCompatTextView7 = (AppCompatTextView) f4.b.a(view, i10);
                                    if (appCompatTextView7 != null) {
                                        i10 = R$id.tvKillApp;
                                        AppCompatTextView appCompatTextView8 = (AppCompatTextView) f4.b.a(view, i10);
                                        if (appCompatTextView8 != null) {
                                            i10 = R$id.tv_lane;
                                            AppCompatTextView appCompatTextView9 = (AppCompatTextView) f4.b.a(view, i10);
                                            if (appCompatTextView9 != null) {
                                                i10 = R$id.tv_location_mock;
                                                AppCompatTextView appCompatTextView10 = (AppCompatTextView) f4.b.a(view, i10);
                                                if (appCompatTextView10 != null) {
                                                    i10 = R$id.tvMiniAppSDKTest;
                                                    AppCompatTextView appCompatTextView11 = (AppCompatTextView) f4.b.a(view, i10);
                                                    if (appCompatTextView11 != null) {
                                                        i10 = R$id.tvNotification;
                                                        AppCompatTextView appCompatTextView12 = (AppCompatTextView) f4.b.a(view, i10);
                                                        if (appCompatTextView12 != null) {
                                                            i10 = R$id.tv_select_brand;
                                                            AppCompatTextView appCompatTextView13 = (AppCompatTextView) f4.b.a(view, i10);
                                                            if (appCompatTextView13 != null) {
                                                                i10 = R$id.tvStreaming;
                                                                AppCompatTextView appCompatTextView14 = (AppCompatTextView) f4.b.a(view, i10);
                                                                if (appCompatTextView14 != null) {
                                                                    i10 = R$id.tvTestAd;
                                                                    AppCompatTextView appCompatTextView15 = (AppCompatTextView) f4.b.a(view, i10);
                                                                    if (appCompatTextView15 != null) {
                                                                        i10 = R$id.tvWebTest;
                                                                        AppCompatTextView appCompatTextView16 = (AppCompatTextView) f4.b.a(view, i10);
                                                                        if (appCompatTextView16 != null) {
                                                                            i10 = R$id.tvWidget;
                                                                            AppCompatTextView appCompatTextView17 = (AppCompatTextView) f4.b.a(view, i10);
                                                                            if (appCompatTextView17 != null) {
                                                                                return new e((LinearLayout) view, appCompatImageButton, appCompatTextView, appCompatTextView2, appCompatTextView3, appCompatTextView4, appCompatTextView5, appCompatTextView6, appCompatTextView7, appCompatTextView8, appCompatTextView9, appCompatTextView10, appCompatTextView11, appCompatTextView12, appCompatTextView13, appCompatTextView14, appCompatTextView15, appCompatTextView16, appCompatTextView17);
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static e c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static e d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_laboratory, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public LinearLayout getRoot() {
        return this.f75535a;
    }
}
