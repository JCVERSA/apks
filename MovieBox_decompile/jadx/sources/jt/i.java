package jt;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.Group;
import com.noober.background.view.BLTextView;
import com.tn.lib.view.SecondariesSeekBar;
import com.tn.lib.view.SwitchButton;
import com.transsion.subtitle.R$id;
import com.transsion.subtitle.R$layout;
import com.warkiz.widget.IndicatorSeekBar;

public final class i implements f4.a {
    public final AppCompatTextView A;
    public final AppCompatTextView B;
    public final AppCompatTextView C;
    public final AppCompatTextView D;
    public final AppCompatTextView E;
    public final BLTextView F;
    public final AppCompatTextView G;
    public final AppCompatTextView H;

    private final View f63312a;

    public final Group f63313b;

    public final AppCompatImageView f63314c;

    public final AppCompatImageView f63315d;

    public final AppCompatImageView f63316e;

    public final AppCompatImageView f63317f;

    public final AppCompatImageView f63318g;

    public final AppCompatImageView f63319h;

    public final AppCompatImageView f63320i;

    public final SecondariesSeekBar f63321j;

    public final SecondariesSeekBar f63322k;

    public final RadioButton f63323l;

    public final RadioButton f63324m;

    public final RadioButton f63325n;

    public final RadioButton f63326o;

    public final RadioButton f63327p;

    public final RadioButton f63328q;

    public final RadioButton f63329r;

    public final RadioButton f63330s;

    public final RadioGroup f63331t;

    public final RadioGroup f63332u;

    public final IndicatorSeekBar f63333v;

    public final SecondariesSeekBar f63334w;

    public final IndicatorSeekBar f63335x;

    public final SwitchButton f63336y;

    public final SwitchButton f63337z;

    private i(View view, Group group, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, AppCompatImageView appCompatImageView3, AppCompatImageView appCompatImageView4, AppCompatImageView appCompatImageView5, AppCompatImageView appCompatImageView6, AppCompatImageView appCompatImageView7, SecondariesSeekBar secondariesSeekBar, SecondariesSeekBar secondariesSeekBar2, RadioButton radioButton, RadioButton radioButton2, RadioButton radioButton3, RadioButton radioButton4, RadioButton radioButton5, RadioButton radioButton6, RadioButton radioButton7, RadioButton radioButton8, RadioGroup radioGroup, RadioGroup radioGroup2, IndicatorSeekBar indicatorSeekBar, SecondariesSeekBar secondariesSeekBar3, IndicatorSeekBar indicatorSeekBar2, SwitchButton switchButton, SwitchButton switchButton2, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4, AppCompatTextView appCompatTextView5, BLTextView bLTextView, AppCompatTextView appCompatTextView6, AppCompatTextView appCompatTextView7) {
        this.f63312a = view;
        this.f63313b = group;
        this.f63314c = appCompatImageView;
        this.f63315d = appCompatImageView2;
        this.f63316e = appCompatImageView3;
        this.f63317f = appCompatImageView4;
        this.f63318g = appCompatImageView5;
        this.f63319h = appCompatImageView6;
        this.f63320i = appCompatImageView7;
        this.f63321j = secondariesSeekBar;
        this.f63322k = secondariesSeekBar2;
        this.f63323l = radioButton;
        this.f63324m = radioButton2;
        this.f63325n = radioButton3;
        this.f63326o = radioButton4;
        this.f63327p = radioButton5;
        this.f63328q = radioButton6;
        this.f63329r = radioButton7;
        this.f63330s = radioButton8;
        this.f63331t = radioGroup;
        this.f63332u = radioGroup2;
        this.f63333v = indicatorSeekBar;
        this.f63334w = secondariesSeekBar3;
        this.f63335x = indicatorSeekBar2;
        this.f63336y = switchButton;
        this.f63337z = switchButton2;
        this.A = appCompatTextView;
        this.B = appCompatTextView2;
        this.C = appCompatTextView3;
        this.D = appCompatTextView4;
        this.E = appCompatTextView5;
        this.F = bLTextView;
        this.G = appCompatTextView6;
        this.H = appCompatTextView7;
    }

    public static i a(View view) {
        int i10 = R$id.group_background;
        Group group = (Group) f4.b.a(view, i10);
        if (group != null) {
            i10 = R$id.ivBack;
            AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
            if (appCompatImageView != null) {
                i10 = R$id.iv_background_add;
                AppCompatImageView appCompatImageView2 = (AppCompatImageView) f4.b.a(view, i10);
                if (appCompatImageView2 != null) {
                    i10 = R$id.iv_background_minus;
                    AppCompatImageView appCompatImageView3 = (AppCompatImageView) f4.b.a(view, i10);
                    if (appCompatImageView3 != null) {
                        i10 = R$id.iv_font_size_add;
                        AppCompatImageView appCompatImageView4 = (AppCompatImageView) f4.b.a(view, i10);
                        if (appCompatImageView4 != null) {
                            i10 = R$id.iv_font_size_minus;
                            AppCompatImageView appCompatImageView5 = (AppCompatImageView) f4.b.a(view, i10);
                            if (appCompatImageView5 != null) {
                                i10 = R$id.iv_position_down;
                                AppCompatImageView appCompatImageView6 = (AppCompatImageView) f4.b.a(view, i10);
                                if (appCompatImageView6 != null) {
                                    i10 = R$id.iv_position_up;
                                    AppCompatImageView appCompatImageView7 = (AppCompatImageView) f4.b.a(view, i10);
                                    if (appCompatImageView7 != null) {
                                        i10 = R$id.progress_bar_background;
                                        SecondariesSeekBar secondariesSeekBar = (SecondariesSeekBar) f4.b.a(view, i10);
                                        if (secondariesSeekBar != null) {
                                            i10 = R$id.progress_bar_font_size;
                                            SecondariesSeekBar secondariesSeekBar2 = (SecondariesSeekBar) f4.b.a(view, i10);
                                            if (secondariesSeekBar2 != null) {
                                                i10 = R$id.rb_background_black;
                                                RadioButton radioButton = (RadioButton) f4.b.a(view, i10);
                                                if (radioButton != null) {
                                                    i10 = R$id.rb_background_green;
                                                    RadioButton radioButton2 = (RadioButton) f4.b.a(view, i10);
                                                    if (radioButton2 != null) {
                                                        i10 = R$id.rb_background_white;
                                                        RadioButton radioButton3 = (RadioButton) f4.b.a(view, i10);
                                                        if (radioButton3 != null) {
                                                            i10 = R$id.rb_background_yellor;
                                                            RadioButton radioButton4 = (RadioButton) f4.b.a(view, i10);
                                                            if (radioButton4 != null) {
                                                                i10 = R$id.rb_font_color_black;
                                                                RadioButton radioButton5 = (RadioButton) f4.b.a(view, i10);
                                                                if (radioButton5 != null) {
                                                                    i10 = R$id.rb_font_color_green;
                                                                    RadioButton radioButton6 = (RadioButton) f4.b.a(view, i10);
                                                                    if (radioButton6 != null) {
                                                                        i10 = R$id.rb_font_color_white;
                                                                        RadioButton radioButton7 = (RadioButton) f4.b.a(view, i10);
                                                                        if (radioButton7 != null) {
                                                                            i10 = R$id.rb_font_color_yellor;
                                                                            RadioButton radioButton8 = (RadioButton) f4.b.a(view, i10);
                                                                            if (radioButton8 != null) {
                                                                                i10 = R$id.rg_background;
                                                                                RadioGroup radioGroup = (RadioGroup) f4.b.a(view, i10);
                                                                                if (radioGroup != null) {
                                                                                    i10 = R$id.rg_font_color;
                                                                                    RadioGroup radioGroup2 = (RadioGroup) f4.b.a(view, i10);
                                                                                    if (radioGroup2 != null) {
                                                                                        i10 = R$id.seek_bar_font_size;
                                                                                        IndicatorSeekBar indicatorSeekBar = (IndicatorSeekBar) f4.b.a(view, i10);
                                                                                        if (indicatorSeekBar != null) {
                                                                                            i10 = R$id.seek_bar_position;
                                                                                            SecondariesSeekBar secondariesSeekBar3 = (SecondariesSeekBar) f4.b.a(view, i10);
                                                                                            if (secondariesSeekBar3 != null) {
                                                                                                i10 = R$id.seek_bart_background;
                                                                                                IndicatorSeekBar indicatorSeekBar2 = (IndicatorSeekBar) f4.b.a(view, i10);
                                                                                                if (indicatorSeekBar2 != null) {
                                                                                                    i10 = R$id.switch_background;
                                                                                                    SwitchButton switchButton = (SwitchButton) f4.b.a(view, i10);
                                                                                                    if (switchButton != null) {
                                                                                                        i10 = R$id.switch_shadow;
                                                                                                        SwitchButton switchButton2 = (SwitchButton) f4.b.a(view, i10);
                                                                                                        if (switchButton2 != null) {
                                                                                                            i10 = R$id.tv_background_opacity_title;
                                                                                                            AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                                                                                                            if (appCompatTextView != null) {
                                                                                                                i10 = R$id.tv_background_title;
                                                                                                                AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                                                                                                                if (appCompatTextView2 != null) {
                                                                                                                    i10 = R$id.tvFontColorTitle;
                                                                                                                    AppCompatTextView appCompatTextView3 = (AppCompatTextView) f4.b.a(view, i10);
                                                                                                                    if (appCompatTextView3 != null) {
                                                                                                                        i10 = R$id.tv_font_size_title;
                                                                                                                        AppCompatTextView appCompatTextView4 = (AppCompatTextView) f4.b.a(view, i10);
                                                                                                                        if (appCompatTextView4 != null) {
                                                                                                                            i10 = R$id.tv_position_title;
                                                                                                                            AppCompatTextView appCompatTextView5 = (AppCompatTextView) f4.b.a(view, i10);
                                                                                                                            if (appCompatTextView5 != null) {
                                                                                                                                i10 = R$id.tv_reset;
                                                                                                                                BLTextView bLTextView = (BLTextView) f4.b.a(view, i10);
                                                                                                                                if (bLTextView != null) {
                                                                                                                                    i10 = R$id.tv_shadow_title;
                                                                                                                                    AppCompatTextView appCompatTextView6 = (AppCompatTextView) f4.b.a(view, i10);
                                                                                                                                    if (appCompatTextView6 != null) {
                                                                                                                                        i10 = R$id.tvStyle;
                                                                                                                                        AppCompatTextView appCompatTextView7 = (AppCompatTextView) f4.b.a(view, i10);
                                                                                                                                        if (appCompatTextView7 != null) {
                                                                                                                                            return new i(view, group, appCompatImageView, appCompatImageView2, appCompatImageView3, appCompatImageView4, appCompatImageView5, appCompatImageView6, appCompatImageView7, secondariesSeekBar, secondariesSeekBar2, radioButton, radioButton2, radioButton3, radioButton4, radioButton5, radioButton6, radioButton7, radioButton8, radioGroup, radioGroup2, indicatorSeekBar, secondariesSeekBar3, indicatorSeekBar2, switchButton, switchButton2, appCompatTextView, appCompatTextView2, appCompatTextView3, appCompatTextView4, appCompatTextView5, bLTextView, appCompatTextView6, appCompatTextView7);
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

    public static i b(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        if (viewGroup == null) {
            throw new NullPointerException("parent");
        }
        layoutInflater.inflate(R$layout.layout_subtitle_options, viewGroup);
        return a(viewGroup);
    }

    @Override
    public View getRoot() {
        return this.f63312a;
    }
}
