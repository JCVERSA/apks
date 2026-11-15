package androidx.appcompat.widget;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import androidx.appcompat.R$attr;
import androidx.appcompat.R$color;
import androidx.appcompat.R$dimen;
import androidx.appcompat.R$drawable;

public final class f {

    private static final PorterDuff.Mode f1698b = PorterDuff.Mode.SRC_IN;

    private static f f1699c;

    private b0 f1700a;

    class a implements b0.f {

        private final int[] f1701a = {R$drawable.abc_textfield_search_default_mtrl_alpha, R$drawable.abc_textfield_default_mtrl_alpha, R$drawable.abc_ab_share_pack_mtrl_alpha};

        private final int[] f1702b = {R$drawable.abc_ic_commit_search_api_mtrl_alpha, R$drawable.abc_seekbar_tick_mark_material, R$drawable.abc_ic_menu_share_mtrl_alpha, R$drawable.abc_ic_menu_copy_mtrl_am_alpha, R$drawable.abc_ic_menu_cut_mtrl_alpha, R$drawable.abc_ic_menu_selectall_mtrl_alpha, R$drawable.abc_ic_menu_paste_mtrl_am_alpha};

        private final int[] f1703c = {R$drawable.abc_textfield_activated_mtrl_alpha, R$drawable.abc_textfield_search_activated_mtrl_alpha, R$drawable.abc_cab_background_top_mtrl_alpha, R$drawable.abc_text_cursor_material, R$drawable.abc_text_select_handle_left_mtrl, R$drawable.abc_text_select_handle_middle_mtrl, R$drawable.abc_text_select_handle_right_mtrl};

        private final int[] f1704d = {R$drawable.abc_popup_background_mtrl_mult, R$drawable.abc_cab_background_internal_bg, R$drawable.abc_menu_hardkey_panel_mtrl_mult};

        private final int[] f1705e = {R$drawable.abc_tab_indicator_material, R$drawable.abc_textfield_search_material};

        private final int[] f1706f = {R$drawable.abc_btn_check_material, R$drawable.abc_btn_radio_material, R$drawable.abc_btn_check_material_anim, R$drawable.abc_btn_radio_material_anim};

        a() {
        }

        private boolean f(int[] iArr, int i10) {
            for (int i11 : iArr) {
                if (i11 == i10) {
                    return true;
                }
            }
            return false;
        }

        private ColorStateList g(Context context) {
            return h(context, 0);
        }

        private ColorStateList h(Context context, int i10) {
            int iC = f0.c(context, R$attr.colorControlHighlight);
            return new ColorStateList(new int[][]{f0.f1708b, f0.f1711e, f0.f1709c, f0.f1715i}, new int[]{f0.b(context, R$attr.colorButtonNormal), z0.b.k(iC, i10), z0.b.k(iC, i10), i10});
        }

        private ColorStateList i(Context context) {
            return h(context, f0.c(context, R$attr.colorAccent));
        }

        private ColorStateList j(Context context) {
            return h(context, f0.c(context, R$attr.colorButtonNormal));
        }

        private ColorStateList k(Context context) {
            int[][] iArr = new int[3][];
            int[] iArr2 = new int[3];
            ColorStateList colorStateListE = f0.e(context, R$attr.colorSwitchThumbNormal);
            if (colorStateListE == null || !colorStateListE.isStateful()) {
                iArr[0] = f0.f1708b;
                iArr2[0] = f0.b(context, R$attr.colorSwitchThumbNormal);
                iArr[1] = f0.f1712f;
                iArr2[1] = f0.c(context, R$attr.colorControlActivated);
                iArr[2] = f0.f1715i;
                iArr2[2] = f0.c(context, R$attr.colorSwitchThumbNormal);
            } else {
                int[] iArr3 = f0.f1708b;
                iArr[0] = iArr3;
                iArr2[0] = colorStateListE.getColorForState(iArr3, 0);
                iArr[1] = f0.f1712f;
                iArr2[1] = f0.c(context, R$attr.colorControlActivated);
                iArr[2] = f0.f1715i;
                iArr2[2] = colorStateListE.getDefaultColor();
            }
            return new ColorStateList(iArr, iArr2);
        }

        private LayerDrawable l(b0 b0Var, Context context, int i10) {
            BitmapDrawable bitmapDrawable;
            BitmapDrawable bitmapDrawable2;
            BitmapDrawable bitmapDrawable3;
            int dimensionPixelSize = context.getResources().getDimensionPixelSize(i10);
            Drawable drawableJ = b0Var.j(context, R$drawable.abc_star_black_48dp);
            Drawable drawableJ2 = b0Var.j(context, R$drawable.abc_star_half_black_48dp);
            if ((drawableJ instanceof BitmapDrawable) && drawableJ.getIntrinsicWidth() == dimensionPixelSize && drawableJ.getIntrinsicHeight() == dimensionPixelSize) {
                bitmapDrawable = (BitmapDrawable) drawableJ;
                bitmapDrawable2 = new BitmapDrawable(bitmapDrawable.getBitmap());
            } else {
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(dimensionPixelSize, dimensionPixelSize, Bitmap.Config.ARGB_8888);
                Canvas canvas = new Canvas(bitmapCreateBitmap);
                drawableJ.setBounds(0, 0, dimensionPixelSize, dimensionPixelSize);
                drawableJ.draw(canvas);
                bitmapDrawable = new BitmapDrawable(bitmapCreateBitmap);
                bitmapDrawable2 = new BitmapDrawable(bitmapCreateBitmap);
            }
            bitmapDrawable2.setTileModeX(Shader.TileMode.REPEAT);
            if ((drawableJ2 instanceof BitmapDrawable) && drawableJ2.getIntrinsicWidth() == dimensionPixelSize && drawableJ2.getIntrinsicHeight() == dimensionPixelSize) {
                bitmapDrawable3 = (BitmapDrawable) drawableJ2;
            } else {
                Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(dimensionPixelSize, dimensionPixelSize, Bitmap.Config.ARGB_8888);
                Canvas canvas2 = new Canvas(bitmapCreateBitmap2);
                drawableJ2.setBounds(0, 0, dimensionPixelSize, dimensionPixelSize);
                drawableJ2.draw(canvas2);
                bitmapDrawable3 = new BitmapDrawable(bitmapCreateBitmap2);
            }
            LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{bitmapDrawable, bitmapDrawable3, bitmapDrawable2});
            layerDrawable.setId(0, R.id.background);
            layerDrawable.setId(1, R.id.secondaryProgress);
            layerDrawable.setId(2, R.id.progress);
            return layerDrawable;
        }

        private void m(Drawable drawable, int i10, PorterDuff.Mode mode) {
            Drawable drawableMutate = drawable.mutate();
            if (mode == null) {
                mode = f.f1698b;
            }
            drawableMutate.setColorFilter(f.e(i10, mode));
        }

        @Override
        public Drawable a(b0 b0Var, Context context, int i10) {
            if (i10 == R$drawable.abc_cab_background_top_material) {
                return new LayerDrawable(new Drawable[]{b0Var.j(context, R$drawable.abc_cab_background_internal_bg), b0Var.j(context, R$drawable.abc_cab_background_top_mtrl_alpha)});
            }
            if (i10 == R$drawable.abc_ratingbar_material) {
                return l(b0Var, context, R$dimen.abc_star_big);
            }
            if (i10 == R$drawable.abc_ratingbar_indicator_material) {
                return l(b0Var, context, R$dimen.abc_star_medium);
            }
            if (i10 == R$drawable.abc_ratingbar_small_material) {
                return l(b0Var, context, R$dimen.abc_star_small);
            }
            return null;
        }

        @Override
        public ColorStateList b(Context context, int i10) {
            if (i10 == R$drawable.abc_edit_text_material) {
                return g.a.a(context, R$color.abc_tint_edittext);
            }
            if (i10 == R$drawable.abc_switch_track_mtrl_alpha) {
                return g.a.a(context, R$color.abc_tint_switch_track);
            }
            if (i10 == R$drawable.abc_switch_thumb_material) {
                return k(context);
            }
            if (i10 == R$drawable.abc_btn_default_mtrl_shape) {
                return j(context);
            }
            if (i10 == R$drawable.abc_btn_borderless_material) {
                return g(context);
            }
            if (i10 == R$drawable.abc_btn_colored_material) {
                return i(context);
            }
            if (i10 == R$drawable.abc_spinner_mtrl_am_alpha || i10 == R$drawable.abc_spinner_textfield_background_material) {
                return g.a.a(context, R$color.abc_tint_spinner);
            }
            if (f(this.f1702b, i10)) {
                return f0.e(context, R$attr.colorControlNormal);
            }
            if (f(this.f1705e, i10)) {
                return g.a.a(context, R$color.abc_tint_default);
            }
            if (f(this.f1706f, i10)) {
                return g.a.a(context, R$color.abc_tint_btn_checkable);
            }
            if (i10 == R$drawable.abc_seekbar_thumb_material) {
                return g.a.a(context, R$color.abc_tint_seek_thumb);
            }
            return null;
        }

        /* JADX WARN: Code duplicated, block: B:22:0x0051  */
        /* JADX WARN: Code duplicated, block: B:24:0x0062  */
        /* JADX WARN: Code duplicated, block: B:26:0x0066 A[RETURN] */
        @Override
        public boolean c(Context context, int i10, Drawable drawable) {
            int i11;
            boolean z10;
            int iRound;
            Drawable drawableMutate;
            PorterDuff.Mode mode = f.f1698b;
            if (!f(this.f1701a, i10)) {
                if (f(this.f1703c, i10)) {
                    i11 = R$attr.colorControlActivated;
                } else {
                    if (f(this.f1704d, i10)) {
                        mode = PorterDuff.Mode.MULTIPLY;
                    } else if (i10 == R$drawable.abc_list_divider_mtrl_alpha) {
                        z10 = true;
                        iRound = Math.round(40.8f);
                        i11 = 16842800;
                        mode = mode;
                    } else if (i10 != R$drawable.abc_dialog_material_background) {
                        i11 = 0;
                        z10 = false;
                        iRound = -1;
                    }
                    mode = mode;
                    iRound = -1;
                    i11 = 16842801;
                    z10 = true;
                }
                if (z10) {
                    return false;
                }
                drawableMutate = drawable.mutate();
                drawableMutate.setColorFilter(f.e(f0.c(context, i11), mode));
                if (iRound != -1) {
                    drawableMutate.setAlpha(iRound);
                }
                return true;
            }
            i11 = R$attr.colorControlNormal;
            z10 = true;
            iRound = -1;
            if (z10) {
                return false;
            }
            drawableMutate = drawable.mutate();
            drawableMutate.setColorFilter(f.e(f0.c(context, i11), mode));
            if (iRound != -1) {
                drawableMutate.setAlpha(iRound);
            }
            return true;
        }

        @Override
        public PorterDuff.Mode d(int i10) {
            if (i10 == R$drawable.abc_switch_thumb_material) {
                return PorterDuff.Mode.MULTIPLY;
            }
            return null;
        }

        @Override
        public boolean e(Context context, int i10, Drawable drawable) {
            if (i10 == R$drawable.abc_seekbar_track_material) {
                LayerDrawable layerDrawable = (LayerDrawable) drawable;
                m(layerDrawable.findDrawableByLayerId(R.id.background), f0.c(context, R$attr.colorControlNormal), f.f1698b);
                m(layerDrawable.findDrawableByLayerId(R.id.secondaryProgress), f0.c(context, R$attr.colorControlNormal), f.f1698b);
                m(layerDrawable.findDrawableByLayerId(R.id.progress), f0.c(context, R$attr.colorControlActivated), f.f1698b);
                return true;
            }
            if (i10 != R$drawable.abc_ratingbar_material && i10 != R$drawable.abc_ratingbar_indicator_material && i10 != R$drawable.abc_ratingbar_small_material) {
                return false;
            }
            LayerDrawable layerDrawable2 = (LayerDrawable) drawable;
            m(layerDrawable2.findDrawableByLayerId(R.id.background), f0.b(context, R$attr.colorControlNormal), f.f1698b);
            m(layerDrawable2.findDrawableByLayerId(R.id.secondaryProgress), f0.c(context, R$attr.colorControlActivated), f.f1698b);
            m(layerDrawable2.findDrawableByLayerId(R.id.progress), f0.c(context, R$attr.colorControlActivated), f.f1698b);
            return true;
        }
    }

    public static synchronized f b() {
        try {
            if (f1699c == null) {
                h();
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f1699c;
    }

    public static synchronized PorterDuffColorFilter e(int i10, PorterDuff.Mode mode) {
        return b0.l(i10, mode);
    }

    public static synchronized void h() {
        if (f1699c == null) {
            f fVar = new f();
            f1699c = fVar;
            fVar.f1700a = b0.h();
            f1699c.f1700a.u(new a());
        }
    }

    static void i(Drawable drawable, h0 h0Var, int[] iArr) {
        b0.w(drawable, h0Var, iArr);
    }

    public synchronized Drawable c(Context context, int i10) {
        return this.f1700a.j(context, i10);
    }

    synchronized Drawable d(Context context, int i10, boolean z10) {
        return this.f1700a.k(context, i10, z10);
    }

    synchronized ColorStateList f(Context context, int i10) {
        return this.f1700a.m(context, i10);
    }

    public synchronized void g(Context context) {
        this.f1700a.s(context);
    }
}
