package androidx.appcompat.view.menu;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.TextView;
import androidx.appcompat.R$attr;
import androidx.appcompat.R$id;
import androidx.appcompat.R$layout;
import androidx.appcompat.R$styleable;
import androidx.appcompat.widget.j0;

public class ListMenuItemView extends LinearLayout implements m.a, AbsListView.SelectionBoundsAdjuster {

    private h f1062a;

    private ImageView f1063b;

    private RadioButton f1064c;

    private TextView f1065d;

    private CheckBox f1066e;

    private TextView f1067f;

    private ImageView f1068g;

    private ImageView f1069h;

    private LinearLayout f1070i;

    private Drawable f1071j;

    private int f1072k;

    private Context f1073l;

    private boolean f1074m;

    private Drawable f1075n;

    private boolean f1076o;

    private LayoutInflater f1077p;

    private boolean f1078q;

    public ListMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.listMenuViewStyle);
    }

    private void a(View view) {
        b(view, -1);
    }

    private void b(View view, int i10) {
        LinearLayout linearLayout = this.f1070i;
        if (linearLayout != null) {
            linearLayout.addView(view, i10);
        } else {
            addView(view, i10);
        }
    }

    private void c() {
        CheckBox checkBox = (CheckBox) getInflater().inflate(R$layout.abc_list_menu_item_checkbox, (ViewGroup) this, false);
        this.f1066e = checkBox;
        a(checkBox);
    }

    private void d() {
        ImageView imageView = (ImageView) getInflater().inflate(R$layout.abc_list_menu_item_icon, (ViewGroup) this, false);
        this.f1063b = imageView;
        b(imageView, 0);
    }

    private void e() {
        RadioButton radioButton = (RadioButton) getInflater().inflate(R$layout.abc_list_menu_item_radio, (ViewGroup) this, false);
        this.f1064c = radioButton;
        a(radioButton);
    }

    private LayoutInflater getInflater() {
        if (this.f1077p == null) {
            this.f1077p = LayoutInflater.from(getContext());
        }
        return this.f1077p;
    }

    private void setSubMenuArrowVisible(boolean z10) {
        ImageView imageView = this.f1068g;
        if (imageView != null) {
            imageView.setVisibility(z10 ? 0 : 8);
        }
    }

    @Override
    public void adjustListItemSelectionBounds(Rect rect) {
        ImageView imageView = this.f1069h;
        if (imageView == null || imageView.getVisibility() != 0) {
            return;
        }
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f1069h.getLayoutParams();
        rect.top += this.f1069h.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
    }

    @Override
    public h getItemData() {
        return this.f1062a;
    }

    @Override
    public void initialize(h hVar, int i10) {
        this.f1062a = hVar;
        setVisibility(hVar.isVisible() ? 0 : 8);
        setTitle(hVar.i(this));
        setCheckable(hVar.isCheckable());
        setShortcut(hVar.A(), hVar.g());
        setIcon(hVar.getIcon());
        setEnabled(hVar.isEnabled());
        setSubMenuArrowVisible(hVar.hasSubMenu());
        setContentDescription(hVar.getContentDescription());
    }

    @Override
    protected void onFinishInflate() {
        super.onFinishInflate();
        setBackground(this.f1071j);
        TextView textView = (TextView) findViewById(R$id.title);
        this.f1065d = textView;
        int i10 = this.f1072k;
        if (i10 != -1) {
            textView.setTextAppearance(this.f1073l, i10);
        }
        this.f1067f = (TextView) findViewById(R$id.shortcut);
        ImageView imageView = (ImageView) findViewById(R$id.submenuarrow);
        this.f1068g = imageView;
        if (imageView != null) {
            imageView.setImageDrawable(this.f1075n);
        }
        this.f1069h = (ImageView) findViewById(R$id.group_divider);
        this.f1070i = (LinearLayout) findViewById(R$id.content);
    }

    @Override
    protected void onMeasure(int i10, int i11) {
        if (this.f1063b != null && this.f1074m) {
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.f1063b.getLayoutParams();
            int i12 = layoutParams.height;
            if (i12 > 0 && layoutParams2.width <= 0) {
                layoutParams2.width = i12;
            }
        }
        super.onMeasure(i10, i11);
    }

    @Override
    public boolean prefersCondensedTitle() {
        return false;
    }

    public void setCheckable(boolean z10) {
        CompoundButton compoundButton;
        View view;
        if (!z10 && this.f1064c == null && this.f1066e == null) {
            return;
        }
        if (this.f1062a.m()) {
            if (this.f1064c == null) {
                e();
            }
            compoundButton = this.f1064c;
            view = this.f1066e;
        } else {
            if (this.f1066e == null) {
                c();
            }
            compoundButton = this.f1066e;
            view = this.f1064c;
        }
        if (z10) {
            compoundButton.setChecked(this.f1062a.isChecked());
            if (compoundButton.getVisibility() != 0) {
                compoundButton.setVisibility(0);
            }
            if (view == null || view.getVisibility() == 8) {
                return;
            }
            view.setVisibility(8);
            return;
        }
        CheckBox checkBox = this.f1066e;
        if (checkBox != null) {
            checkBox.setVisibility(8);
        }
        RadioButton radioButton = this.f1064c;
        if (radioButton != null) {
            radioButton.setVisibility(8);
        }
    }

    public void setChecked(boolean z10) {
        CompoundButton compoundButton;
        if (this.f1062a.m()) {
            if (this.f1064c == null) {
                e();
            }
            compoundButton = this.f1064c;
        } else {
            if (this.f1066e == null) {
                c();
            }
            compoundButton = this.f1066e;
        }
        compoundButton.setChecked(z10);
    }

    public void setForceShowIcon(boolean z10) {
        this.f1078q = z10;
        this.f1074m = z10;
    }

    public void setGroupDividerEnabled(boolean z10) {
        ImageView imageView = this.f1069h;
        if (imageView != null) {
            imageView.setVisibility((this.f1076o || !z10) ? 8 : 0);
        }
    }

    public void setIcon(Drawable drawable) {
        boolean z10 = this.f1062a.z() || this.f1078q;
        if (z10 || this.f1074m) {
            ImageView imageView = this.f1063b;
            if (imageView == null && drawable == null && !this.f1074m) {
                return;
            }
            if (imageView == null) {
                d();
            }
            if (drawable == null && !this.f1074m) {
                this.f1063b.setVisibility(8);
                return;
            }
            ImageView imageView2 = this.f1063b;
            if (!z10) {
                drawable = null;
            }
            imageView2.setImageDrawable(drawable);
            if (this.f1063b.getVisibility() != 0) {
                this.f1063b.setVisibility(0);
            }
        }
    }

    public void setShortcut(boolean z10, char c10) {
        int i10 = (z10 && this.f1062a.A()) ? 0 : 8;
        if (i10 == 0) {
            this.f1067f.setText(this.f1062a.h());
        }
        if (this.f1067f.getVisibility() != i10) {
            this.f1067f.setVisibility(i10);
        }
    }

    public void setTitle(CharSequence charSequence) {
        if (charSequence == null) {
            if (this.f1065d.getVisibility() != 8) {
                this.f1065d.setVisibility(8);
            }
        } else {
            this.f1065d.setText(charSequence);
            if (this.f1065d.getVisibility() != 0) {
                this.f1065d.setVisibility(0);
            }
        }
    }

    public boolean showsIcon() {
        return this.f1078q;
    }

    public ListMenuItemView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet);
        j0 j0VarV = j0.v(getContext(), attributeSet, R$styleable.MenuView, i10, 0);
        this.f1071j = j0VarV.g(R$styleable.MenuView_android_itemBackground);
        this.f1072k = j0VarV.n(R$styleable.MenuView_android_itemTextAppearance, -1);
        this.f1074m = j0VarV.a(R$styleable.MenuView_preserveIconSpacing, false);
        this.f1073l = context;
        this.f1075n = j0VarV.g(R$styleable.MenuView_subMenuArrow);
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(null, new int[]{R.attr.divider}, R$attr.dropDownListViewStyle, 0);
        this.f1076o = typedArrayObtainStyledAttributes.hasValue(0);
        j0VarV.x();
        typedArrayObtainStyledAttributes.recycle();
    }
}
