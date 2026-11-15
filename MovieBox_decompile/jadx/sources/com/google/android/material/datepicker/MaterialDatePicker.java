package com.google.android.material.datepicker;

import android.R;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.fragment.app.DialogFragment;
import com.google.android.material.R$attr;
import com.google.android.material.R$dimen;
import com.google.android.material.R$drawable;
import com.google.android.material.R$id;
import com.google.android.material.R$layout;
import com.google.android.material.R$string;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.internal.f0;
import java.util.Iterator;
import java.util.LinkedHashSet;

public final class MaterialDatePicker<S> extends DialogFragment {
    static final Object E = "CONFIRM_BUTTON_TAG";
    static final Object F = "CANCEL_BUTTON_TAG";
    static final Object G = "TOGGLE_BUTTON_TAG";
    private Button A;
    private boolean B;
    private CharSequence C;
    private CharSequence D;

    private final LinkedHashSet f27980a = new LinkedHashSet();

    private final LinkedHashSet f27981b = new LinkedHashSet();

    private final LinkedHashSet f27982c = new LinkedHashSet();

    private final LinkedHashSet f27983d = new LinkedHashSet();

    private int f27984e;

    private DateSelector f27985f;

    private p f27986g;

    private CalendarConstraints f27987h;

    private DayViewDecorator f27988i;

    private MaterialCalendar f27989j;

    private int f27990k;

    private CharSequence f27991l;

    private boolean f27992m;

    private int f27993n;

    private int f27994o;

    private CharSequence f27995p;

    private int f27996q;

    private CharSequence f27997r;

    private int f27998s;

    private CharSequence f27999t;

    private int f28000u;

    private CharSequence f28001v;

    private TextView f28002w;

    private TextView f28003x;

    private CheckableImageButton f28004y;

    private cb.i f28005z;

    class a implements View.OnClickListener {
        a() {
        }

        @Override
        public void onClick(View view) {
            Iterator it = MaterialDatePicker.this.f27980a.iterator();
            if (!it.hasNext()) {
                MaterialDatePicker.this.dismiss();
            } else {
                android.support.v4.media.session.c.a(it.next());
                MaterialDatePicker.this.j0();
                throw null;
            }
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override
        public void onClick(View view) {
            Iterator it = MaterialDatePicker.this.f27981b.iterator();
            while (it.hasNext()) {
                ((View.OnClickListener) it.next()).onClick(view);
            }
            MaterialDatePicker.this.dismiss();
        }
    }

    class c implements OnApplyWindowInsetsListener {

        final int f28008a;

        final View f28009b;

        final int f28010c;

        c(int i10, View view, int i11) {
            this.f28008a = i10;
            this.f28009b = view;
            this.f28010c = i11;
        }

        @Override
        public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
            int i10 = windowInsetsCompat.getInsets(WindowInsetsCompat.Type.systemBars()).f76466b;
            if (this.f28008a >= 0) {
                this.f28009b.getLayoutParams().height = this.f28008a + i10;
                View view2 = this.f28009b;
                view2.setLayoutParams(view2.getLayoutParams());
            }
            View view3 = this.f28009b;
            view3.setPadding(view3.getPaddingLeft(), this.f28010c + i10, this.f28009b.getPaddingRight(), this.f28009b.getPaddingBottom());
            return windowInsetsCompat;
        }
    }

    class d extends o {
        d() {
        }

        @Override
        public void a() {
            MaterialDatePicker.this.A.setEnabled(false);
        }

        @Override
        public void b(Object obj) {
            MaterialDatePicker materialDatePicker = MaterialDatePicker.this;
            materialDatePicker.s0(materialDatePicker.h0());
            MaterialDatePicker.this.A.setEnabled(MaterialDatePicker.this.e0().isSelectionComplete());
        }
    }

    private static Drawable c0(Context context) {
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{R.attr.state_checked}, g.a.b(context, R$drawable.material_ic_calendar_black_24dp));
        stateListDrawable.addState(new int[0], g.a.b(context, R$drawable.material_ic_edit_black_24dp));
        return stateListDrawable;
    }

    private void d0(Window window) {
        if (this.B) {
            return;
        }
        View viewFindViewById = requireView().findViewById(R$id.fullscreen_header);
        com.google.android.material.internal.e.a(window, true, f0.h(viewFindViewById), null);
        ViewCompat.setOnApplyWindowInsetsListener(viewFindViewById, new c(viewFindViewById.getLayoutParams().height, viewFindViewById, viewFindViewById.getPaddingTop()));
        this.B = true;
    }

    public DateSelector e0() {
        if (this.f27985f == null) {
            this.f27985f = (DateSelector) getArguments().getParcelable("DATE_SELECTOR_KEY");
        }
        return this.f27985f;
    }

    private static CharSequence f0(CharSequence charSequence) {
        if (charSequence == null) {
            return null;
        }
        String[] strArrSplit = TextUtils.split(String.valueOf(charSequence), "\n");
        return strArrSplit.length > 1 ? strArrSplit[0] : charSequence;
    }

    private String g0() {
        return e0().getSelectionContentDescription(requireContext());
    }

    private static int i0(Context context) {
        Resources resources = context.getResources();
        int dimensionPixelOffset = resources.getDimensionPixelOffset(R$dimen.mtrl_calendar_content_padding);
        int i10 = Month.e().f28019c;
        return (dimensionPixelOffset * 2) + (resources.getDimensionPixelSize(R$dimen.mtrl_calendar_day_width) * i10) + ((i10 - 1) * resources.getDimensionPixelOffset(R$dimen.mtrl_calendar_month_horizontal_padding));
    }

    private int k0(Context context) {
        int i10 = this.f27984e;
        return i10 != 0 ? i10 : e0().getDefaultThemeResId(context);
    }

    private void l0(Context context) {
        this.f28004y.setTag(G);
        this.f28004y.setImageDrawable(c0(context));
        this.f28004y.setChecked(this.f27993n != 0);
        ViewCompat.setAccessibilityDelegate(this.f28004y, null);
        u0(this.f28004y);
        this.f28004y.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.f28065a.p0(view);
            }
        });
    }

    static boolean m0(Context context) {
        return q0(context, R.attr.windowFullscreen);
    }

    private boolean n0() {
        return getResources().getConfiguration().orientation == 2;
    }

    static boolean o0(Context context) {
        return q0(context, R$attr.nestedScrollable);
    }

    public void p0(View view) {
        this.A.setEnabled(e0().isSelectionComplete());
        this.f28004y.toggle();
        this.f27993n = this.f27993n == 1 ? 0 : 1;
        u0(this.f28004y);
        r0();
    }

    static boolean q0(Context context, int i10) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(za.b.d(context, R$attr.materialCalendarStyle, MaterialCalendar.class.getCanonicalName()), new int[]{i10});
        boolean z10 = typedArrayObtainStyledAttributes.getBoolean(0, false);
        typedArrayObtainStyledAttributes.recycle();
        return z10;
    }

    private void r0() {
        int iK0 = k0(requireContext());
        MaterialCalendar materialCalendarN0 = MaterialCalendar.n0(e0(), iK0, this.f27987h, this.f27988i);
        this.f27989j = materialCalendarN0;
        p pVarX = materialCalendarN0;
        if (this.f27993n == 1) {
            pVarX = MaterialTextInputPicker.X(e0(), iK0, this.f27987h);
        }
        this.f27986g = pVarX;
        t0();
        s0(h0());
        androidx.fragment.app.w wVarP = getChildFragmentManager().p();
        wVarP.s(R$id.mtrl_calendar_frame, this.f27986g);
        wVarP.k();
        this.f27986g.V(new d());
    }

    private void t0() {
        this.f28002w.setText((this.f27993n == 1 && n0()) ? this.D : this.C);
    }

    private void u0(CheckableImageButton checkableImageButton) {
        this.f28004y.setContentDescription(this.f27993n == 1 ? checkableImageButton.getContext().getString(R$string.mtrl_picker_toggle_to_calendar_input_mode) : checkableImageButton.getContext().getString(R$string.mtrl_picker_toggle_to_text_input_mode));
    }

    public String h0() {
        return e0().getSelectionDisplayString(getContext());
    }

    public final Object j0() {
        return e0().getSelection();
    }

    @Override
    public final void onCancel(DialogInterface dialogInterface) {
        Iterator it = this.f27982c.iterator();
        while (it.hasNext()) {
            ((DialogInterface.OnCancelListener) it.next()).onCancel(dialogInterface);
        }
        super.onCancel(dialogInterface);
    }

    @Override
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            bundle = getArguments();
        }
        this.f27984e = bundle.getInt("OVERRIDE_THEME_RES_ID");
        this.f27985f = (DateSelector) bundle.getParcelable("DATE_SELECTOR_KEY");
        this.f27987h = (CalendarConstraints) bundle.getParcelable("CALENDAR_CONSTRAINTS_KEY");
        this.f27988i = (DayViewDecorator) bundle.getParcelable("DAY_VIEW_DECORATOR_KEY");
        this.f27990k = bundle.getInt("TITLE_TEXT_RES_ID_KEY");
        this.f27991l = bundle.getCharSequence("TITLE_TEXT_KEY");
        this.f27993n = bundle.getInt("INPUT_MODE_KEY");
        this.f27994o = bundle.getInt("POSITIVE_BUTTON_TEXT_RES_ID_KEY");
        this.f27995p = bundle.getCharSequence("POSITIVE_BUTTON_TEXT_KEY");
        this.f27996q = bundle.getInt("POSITIVE_BUTTON_CONTENT_DESCRIPTION_RES_ID_KEY");
        this.f27997r = bundle.getCharSequence("POSITIVE_BUTTON_CONTENT_DESCRIPTION_KEY");
        this.f27998s = bundle.getInt("NEGATIVE_BUTTON_TEXT_RES_ID_KEY");
        this.f27999t = bundle.getCharSequence("NEGATIVE_BUTTON_TEXT_KEY");
        this.f28000u = bundle.getInt("NEGATIVE_BUTTON_CONTENT_DESCRIPTION_RES_ID_KEY");
        this.f28001v = bundle.getCharSequence("NEGATIVE_BUTTON_CONTENT_DESCRIPTION_KEY");
        CharSequence text = this.f27991l;
        if (text == null) {
            text = requireContext().getResources().getText(this.f27990k);
        }
        this.C = text;
        this.D = f0(text);
    }

    @Override
    public final Dialog onCreateDialog(Bundle bundle) {
        Dialog dialog = new Dialog(requireContext(), k0(requireContext()));
        Context context = dialog.getContext();
        this.f27992m = m0(context);
        this.f28005z = new cb.i(context, null, R$attr.materialCalendarStyle, R$style.Widget_MaterialComponents_MaterialCalendar);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(null, R$styleable.MaterialCalendar, R$attr.materialCalendarStyle, R$style.Widget_MaterialComponents_MaterialCalendar);
        int color = typedArrayObtainStyledAttributes.getColor(R$styleable.MaterialCalendar_backgroundTint, 0);
        typedArrayObtainStyledAttributes.recycle();
        this.f28005z.S(context);
        this.f28005z.d0(ColorStateList.valueOf(color));
        this.f28005z.c0(ViewCompat.getElevation(dialog.getWindow().getDecorView()));
        return dialog;
    }

    @Override
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(this.f27992m ? R$layout.mtrl_picker_fullscreen : R$layout.mtrl_picker_dialog, viewGroup);
        Context context = viewInflate.getContext();
        DayViewDecorator dayViewDecorator = this.f27988i;
        if (dayViewDecorator != null) {
            dayViewDecorator.initialize(context);
        }
        if (this.f27992m) {
            viewInflate.findViewById(R$id.mtrl_calendar_frame).setLayoutParams(new LinearLayout.LayoutParams(i0(context), -2));
        } else {
            viewInflate.findViewById(R$id.mtrl_calendar_main_pane).setLayoutParams(new LinearLayout.LayoutParams(i0(context), -1));
        }
        TextView textView = (TextView) viewInflate.findViewById(R$id.mtrl_picker_header_selection_text);
        this.f28003x = textView;
        ViewCompat.setAccessibilityLiveRegion(textView, 1);
        this.f28004y = (CheckableImageButton) viewInflate.findViewById(R$id.mtrl_picker_header_toggle);
        this.f28002w = (TextView) viewInflate.findViewById(R$id.mtrl_picker_title_text);
        l0(context);
        this.A = (Button) viewInflate.findViewById(R$id.confirm_button);
        if (e0().isSelectionComplete()) {
            this.A.setEnabled(true);
        } else {
            this.A.setEnabled(false);
        }
        this.A.setTag(E);
        CharSequence charSequence = this.f27995p;
        if (charSequence != null) {
            this.A.setText(charSequence);
        } else {
            int i10 = this.f27994o;
            if (i10 != 0) {
                this.A.setText(i10);
            }
        }
        CharSequence charSequence2 = this.f27997r;
        if (charSequence2 != null) {
            this.A.setContentDescription(charSequence2);
        } else if (this.f27996q != 0) {
            this.A.setContentDescription(getContext().getResources().getText(this.f27996q));
        }
        this.A.setOnClickListener(new a());
        Button button = (Button) viewInflate.findViewById(R$id.cancel_button);
        button.setTag(F);
        CharSequence charSequence3 = this.f27999t;
        if (charSequence3 != null) {
            button.setText(charSequence3);
        } else {
            int i11 = this.f27998s;
            if (i11 != 0) {
                button.setText(i11);
            }
        }
        CharSequence charSequence4 = this.f28001v;
        if (charSequence4 != null) {
            button.setContentDescription(charSequence4);
        } else if (this.f28000u != 0) {
            button.setContentDescription(getContext().getResources().getText(this.f28000u));
        }
        button.setOnClickListener(new b());
        return viewInflate;
    }

    @Override
    public final void onDismiss(DialogInterface dialogInterface) {
        Iterator it = this.f27983d.iterator();
        while (it.hasNext()) {
            ((DialogInterface.OnDismissListener) it.next()).onDismiss(dialogInterface);
        }
        ViewGroup viewGroup = (ViewGroup) getView();
        if (viewGroup != null) {
            viewGroup.removeAllViews();
        }
        super.onDismiss(dialogInterface);
    }

    @Override
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("OVERRIDE_THEME_RES_ID", this.f27984e);
        bundle.putParcelable("DATE_SELECTOR_KEY", this.f27985f);
        CalendarConstraints.b bVar = new CalendarConstraints.b(this.f27987h);
        MaterialCalendar materialCalendar = this.f27989j;
        Month monthI0 = materialCalendar == null ? null : materialCalendar.i0();
        if (monthI0 != null) {
            bVar.b(monthI0.f28021e);
        }
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", bVar.a());
        bundle.putParcelable("DAY_VIEW_DECORATOR_KEY", this.f27988i);
        bundle.putInt("TITLE_TEXT_RES_ID_KEY", this.f27990k);
        bundle.putCharSequence("TITLE_TEXT_KEY", this.f27991l);
        bundle.putInt("INPUT_MODE_KEY", this.f27993n);
        bundle.putInt("POSITIVE_BUTTON_TEXT_RES_ID_KEY", this.f27994o);
        bundle.putCharSequence("POSITIVE_BUTTON_TEXT_KEY", this.f27995p);
        bundle.putInt("POSITIVE_BUTTON_CONTENT_DESCRIPTION_RES_ID_KEY", this.f27996q);
        bundle.putCharSequence("POSITIVE_BUTTON_CONTENT_DESCRIPTION_KEY", this.f27997r);
        bundle.putInt("NEGATIVE_BUTTON_TEXT_RES_ID_KEY", this.f27998s);
        bundle.putCharSequence("NEGATIVE_BUTTON_TEXT_KEY", this.f27999t);
        bundle.putInt("NEGATIVE_BUTTON_CONTENT_DESCRIPTION_RES_ID_KEY", this.f28000u);
        bundle.putCharSequence("NEGATIVE_BUTTON_CONTENT_DESCRIPTION_KEY", this.f28001v);
    }

    @Override
    public void onStart() {
        super.onStart();
        Window window = requireDialog().getWindow();
        if (this.f27992m) {
            window.setLayout(-1, -1);
            window.setBackgroundDrawable(this.f28005z);
            d0(window);
        } else {
            window.setLayout(-2, -2);
            int dimensionPixelOffset = getResources().getDimensionPixelOffset(R$dimen.mtrl_calendar_dialog_background_inset);
            Rect rect = new Rect(dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset);
            window.setBackgroundDrawable(new InsetDrawable((Drawable) this.f28005z, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset));
            window.getDecorView().setOnTouchListener(new ua.a(requireDialog(), rect));
        }
        r0();
    }

    @Override
    public void onStop() {
        this.f27986g.W();
        super.onStop();
    }

    void s0(String str) {
        this.f28003x.setContentDescription(g0());
        this.f28003x.setText(str);
    }
}
