package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.os.Bundle;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import android.widget.ListAdapter;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.R$dimen;
import com.google.android.material.R$id;
import com.google.android.material.R$integer;
import com.google.android.material.R$layout;
import com.google.android.material.R$string;
import com.google.android.material.button.MaterialButton;
import java.util.Calendar;
import java.util.Iterator;

public final class MaterialCalendar<S> extends p {

    static final Object f27943o = "MONTHS_VIEW_GROUP_TAG";

    static final Object f27944p = "NAVIGATION_PREV_TAG";

    static final Object f27945q = "NAVIGATION_NEXT_TAG";

    static final Object f27946r = "SELECTOR_TOGGLE_TAG";

    private int f27947b;

    private DateSelector f27948c;

    private CalendarConstraints f27949d;

    private DayViewDecorator f27950e;

    private Month f27951f;

    private CalendarSelector f27952g;

    private com.google.android.material.datepicker.b f27953h;

    private RecyclerView f27954i;

    private RecyclerView f27955j;

    private View f27956k;

    private View f27957l;

    private View f27958m;

    private View f27959n;

    enum CalendarSelector {
        DAY,
        YEAR
    }

    class a implements View.OnClickListener {

        final n f27960a;

        a(n nVar) {
            this.f27960a = nVar;
        }

        @Override
        public void onClick(View view) {
            int iFindLastVisibleItemPosition = MaterialCalendar.this.m0().findLastVisibleItemPosition() - 1;
            if (iFindLastVisibleItemPosition >= 0) {
                MaterialCalendar.this.p0(this.f27960a.h(iFindLastVisibleItemPosition));
            }
        }
    }

    class b extends AccessibilityDelegateCompat {
        b() {
        }

        @Override
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.setCollectionInfo(null);
        }
    }

    class c extends q {

        final int f27963a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(Context context, int i10, boolean z10, int i11) {
            super(context, i10, z10);
            this.f27963a = i11;
        }

        @Override
        protected void calculateExtraLayoutSpace(RecyclerView.x xVar, int[] iArr) {
            if (this.f27963a == 0) {
                iArr[0] = MaterialCalendar.this.f27955j.getWidth();
                iArr[1] = MaterialCalendar.this.f27955j.getWidth();
            } else {
                iArr[0] = MaterialCalendar.this.f27955j.getHeight();
                iArr[1] = MaterialCalendar.this.f27955j.getHeight();
            }
        }
    }

    class d implements k {
        d() {
        }

        @Override
        public void a(long j10) {
            if (MaterialCalendar.this.f27949d.getDateValidator().isValid(j10)) {
                MaterialCalendar.this.f27948c.select(j10);
                Iterator it = MaterialCalendar.this.f28083a.iterator();
                while (it.hasNext()) {
                    ((o) it.next()).b(MaterialCalendar.this.f27948c.getSelection());
                }
                MaterialCalendar.this.f27955j.getAdapter().notifyDataSetChanged();
                if (MaterialCalendar.this.f27954i != null) {
                    MaterialCalendar.this.f27954i.getAdapter().notifyDataSetChanged();
                }
            }
        }
    }

    class e extends AccessibilityDelegateCompat {
        e() {
        }

        @Override
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.setScrollable(false);
        }
    }

    class f extends RecyclerView.l {

        private final Calendar f27967a = x.s();

        private final Calendar f27968b = x.s();

        f() {
        }

        @Override
        public void onDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView.x xVar) {
            if ((recyclerView.getAdapter() instanceof y) && (recyclerView.getLayoutManager() instanceof GridLayoutManager)) {
                y yVar = (y) recyclerView.getAdapter();
                GridLayoutManager gridLayoutManager = (GridLayoutManager) recyclerView.getLayoutManager();
                for (androidx.core.util.e eVar : MaterialCalendar.this.f27948c.getSelectedRanges()) {
                    Object obj = eVar.f7958a;
                    if (obj != null && eVar.f7959b != null) {
                        this.f27967a.setTimeInMillis(((Long) obj).longValue());
                        this.f27968b.setTimeInMillis(((Long) eVar.f7959b).longValue());
                        int i10 = yVar.i(this.f27967a.get(1));
                        int i11 = yVar.i(this.f27968b.get(1));
                        View viewFindViewByPosition = gridLayoutManager.findViewByPosition(i10);
                        View viewFindViewByPosition2 = gridLayoutManager.findViewByPosition(i11);
                        int iU = i10 / gridLayoutManager.U();
                        int iU2 = i11 / gridLayoutManager.U();
                        int i12 = iU;
                        while (i12 <= iU2) {
                            View viewFindViewByPosition3 = gridLayoutManager.findViewByPosition(gridLayoutManager.U() * i12);
                            if (viewFindViewByPosition3 != null) {
                                canvas.drawRect((i12 != iU || viewFindViewByPosition == null) ? 0 : viewFindViewByPosition.getLeft() + (viewFindViewByPosition.getWidth() / 2), viewFindViewByPosition3.getTop() + MaterialCalendar.this.f27953h.f28042d.c(), (i12 != iU2 || viewFindViewByPosition2 == null) ? recyclerView.getWidth() : viewFindViewByPosition2.getLeft() + (viewFindViewByPosition2.getWidth() / 2), viewFindViewByPosition3.getBottom() - MaterialCalendar.this.f27953h.f28042d.b(), MaterialCalendar.this.f27953h.f28046h);
                            }
                            i12++;
                        }
                    }
                }
            }
        }
    }

    class g extends AccessibilityDelegateCompat {
        g() {
        }

        @Override
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.setHintText(MaterialCalendar.this.f27959n.getVisibility() == 0 ? MaterialCalendar.this.getString(R$string.mtrl_picker_toggle_to_year_selection) : MaterialCalendar.this.getString(R$string.mtrl_picker_toggle_to_day_selection));
        }
    }

    class h extends RecyclerView.r {

        final n f27971a;

        final MaterialButton f27972b;

        h(n nVar, MaterialButton materialButton) {
            this.f27971a = nVar;
            this.f27972b = materialButton;
        }

        @Override
        public void onScrollStateChanged(RecyclerView recyclerView, int i10) {
            if (i10 == 0) {
                recyclerView.announceForAccessibility(this.f27972b.getText());
            }
        }

        @Override
        public void onScrolled(RecyclerView recyclerView, int i10, int i11) {
            int iFindFirstVisibleItemPosition = i10 < 0 ? MaterialCalendar.this.m0().findFirstVisibleItemPosition() : MaterialCalendar.this.m0().findLastVisibleItemPosition();
            MaterialCalendar.this.f27951f = this.f27971a.h(iFindFirstVisibleItemPosition);
            this.f27972b.setText(this.f27971a.i(iFindFirstVisibleItemPosition));
        }
    }

    class i implements View.OnClickListener {
        i() {
        }

        @Override
        public void onClick(View view) {
            MaterialCalendar.this.s0();
        }
    }

    class j implements View.OnClickListener {

        final n f27975a;

        j(n nVar) {
            this.f27975a = nVar;
        }

        @Override
        public void onClick(View view) {
            int iFindFirstVisibleItemPosition = MaterialCalendar.this.m0().findFirstVisibleItemPosition() + 1;
            if (iFindFirstVisibleItemPosition < MaterialCalendar.this.f27955j.getAdapter().getItemCount()) {
                MaterialCalendar.this.p0(this.f27975a.h(iFindFirstVisibleItemPosition));
            }
        }
    }

    interface k {
        void a(long j10);
    }

    private void e0(View view, n nVar) {
        MaterialButton materialButton = (MaterialButton) view.findViewById(R$id.month_navigation_fragment_toggle);
        materialButton.setTag(f27946r);
        ViewCompat.setAccessibilityDelegate(materialButton, new g());
        View viewFindViewById = view.findViewById(R$id.month_navigation_previous);
        this.f27956k = viewFindViewById;
        viewFindViewById.setTag(f27944p);
        View viewFindViewById2 = view.findViewById(R$id.month_navigation_next);
        this.f27957l = viewFindViewById2;
        viewFindViewById2.setTag(f27945q);
        this.f27958m = view.findViewById(R$id.mtrl_calendar_year_selector_frame);
        this.f27959n = view.findViewById(R$id.mtrl_calendar_day_selector_frame);
        q0(CalendarSelector.DAY);
        materialButton.setText(this.f27951f.i());
        this.f27955j.addOnScrollListener(new h(nVar, materialButton));
        materialButton.setOnClickListener(new i());
        this.f27957l.setOnClickListener(new j(nVar));
        this.f27956k.setOnClickListener(new a(nVar));
    }

    private RecyclerView.l f0() {
        return new f();
    }

    static int k0(Context context) {
        return context.getResources().getDimensionPixelSize(R$dimen.mtrl_calendar_day_height);
    }

    private static int l0(Context context) {
        Resources resources = context.getResources();
        int dimensionPixelSize = resources.getDimensionPixelSize(R$dimen.mtrl_calendar_navigation_height) + resources.getDimensionPixelOffset(R$dimen.mtrl_calendar_navigation_top_padding) + resources.getDimensionPixelOffset(R$dimen.mtrl_calendar_navigation_bottom_padding);
        int dimensionPixelSize2 = resources.getDimensionPixelSize(R$dimen.mtrl_calendar_days_of_week_height);
        int i10 = m.f28066g;
        return dimensionPixelSize + dimensionPixelSize2 + (resources.getDimensionPixelSize(R$dimen.mtrl_calendar_day_height) * i10) + ((i10 - 1) * resources.getDimensionPixelOffset(R$dimen.mtrl_calendar_month_vertical_padding)) + resources.getDimensionPixelOffset(R$dimen.mtrl_calendar_bottom_padding);
    }

    public static MaterialCalendar n0(DateSelector dateSelector, int i10, CalendarConstraints calendarConstraints, DayViewDecorator dayViewDecorator) {
        MaterialCalendar materialCalendar = new MaterialCalendar();
        Bundle bundle = new Bundle();
        bundle.putInt("THEME_RES_ID_KEY", i10);
        bundle.putParcelable("GRID_SELECTOR_KEY", dateSelector);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", calendarConstraints);
        bundle.putParcelable("DAY_VIEW_DECORATOR_KEY", dayViewDecorator);
        bundle.putParcelable("CURRENT_MONTH_KEY", calendarConstraints.getOpenAt());
        materialCalendar.setArguments(bundle);
        return materialCalendar;
    }

    private void o0(final int i10) {
        this.f27955j.post(new Runnable() {
            @Override
            public void run() {
                MaterialCalendar.this.f27955j.smoothScrollToPosition(i10);
            }
        });
    }

    private void r0() {
        ViewCompat.setAccessibilityDelegate(this.f27955j, new e());
    }

    @Override
    public boolean V(o oVar) {
        return super.V(oVar);
    }

    CalendarConstraints g0() {
        return this.f27949d;
    }

    com.google.android.material.datepicker.b h0() {
        return this.f27953h;
    }

    Month i0() {
        return this.f27951f;
    }

    public DateSelector j0() {
        return this.f27948c;
    }

    LinearLayoutManager m0() {
        return (LinearLayoutManager) this.f27955j.getLayoutManager();
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            bundle = getArguments();
        }
        this.f27947b = bundle.getInt("THEME_RES_ID_KEY");
        this.f27948c = (DateSelector) bundle.getParcelable("GRID_SELECTOR_KEY");
        this.f27949d = (CalendarConstraints) bundle.getParcelable("CALENDAR_CONSTRAINTS_KEY");
        this.f27950e = (DayViewDecorator) bundle.getParcelable("DAY_VIEW_DECORATOR_KEY");
        this.f27951f = (Month) bundle.getParcelable("CURRENT_MONTH_KEY");
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        int i10;
        int i11;
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(getContext(), this.f27947b);
        this.f27953h = new com.google.android.material.datepicker.b(contextThemeWrapper);
        LayoutInflater layoutInflaterCloneInContext = layoutInflater.cloneInContext(contextThemeWrapper);
        Month start = this.f27949d.getStart();
        if (MaterialDatePicker.m0(contextThemeWrapper)) {
            i10 = R$layout.mtrl_calendar_vertical;
            i11 = 1;
        } else {
            i10 = R$layout.mtrl_calendar_horizontal;
            i11 = 0;
        }
        View viewInflate = layoutInflaterCloneInContext.inflate(i10, viewGroup, false);
        viewInflate.setMinimumHeight(l0(requireContext()));
        GridView gridView = (GridView) viewInflate.findViewById(R$id.mtrl_calendar_days_of_week);
        ViewCompat.setAccessibilityDelegate(gridView, new b());
        int firstDayOfWeek = this.f27949d.getFirstDayOfWeek();
        gridView.setAdapter((ListAdapter) (firstDayOfWeek > 0 ? new com.google.android.material.datepicker.k(firstDayOfWeek) : new com.google.android.material.datepicker.k()));
        gridView.setNumColumns(start.f28019c);
        gridView.setEnabled(false);
        this.f27955j = (RecyclerView) viewInflate.findViewById(R$id.mtrl_calendar_months);
        this.f27955j.setLayoutManager(new c(getContext(), i11, false, i11));
        this.f27955j.setTag(f27943o);
        n nVar = new n(contextThemeWrapper, this.f27948c, this.f27949d, this.f27950e, new d());
        this.f27955j.setAdapter(nVar);
        int integer = contextThemeWrapper.getResources().getInteger(R$integer.mtrl_calendar_year_selector_span);
        RecyclerView recyclerView = (RecyclerView) viewInflate.findViewById(R$id.mtrl_calendar_year_selector_frame);
        this.f27954i = recyclerView;
        if (recyclerView != null) {
            recyclerView.setHasFixedSize(true);
            this.f27954i.setLayoutManager(new GridLayoutManager((Context) contextThemeWrapper, integer, 1, false));
            this.f27954i.setAdapter(new y(this));
            this.f27954i.addItemDecoration(f0());
        }
        if (viewInflate.findViewById(R$id.month_navigation_fragment_toggle) != null) {
            e0(viewInflate, nVar);
        }
        if (!MaterialDatePicker.m0(contextThemeWrapper)) {
            new androidx.recyclerview.widget.n().attachToRecyclerView(this.f27955j);
        }
        this.f27955j.scrollToPosition(nVar.j(this.f27951f));
        r0();
        return viewInflate;
    }

    @Override
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("THEME_RES_ID_KEY", this.f27947b);
        bundle.putParcelable("GRID_SELECTOR_KEY", this.f27948c);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", this.f27949d);
        bundle.putParcelable("DAY_VIEW_DECORATOR_KEY", this.f27950e);
        bundle.putParcelable("CURRENT_MONTH_KEY", this.f27951f);
    }

    void p0(Month month) {
        n nVar = (n) this.f27955j.getAdapter();
        int iJ = nVar.j(month);
        int iJ2 = iJ - nVar.j(this.f27951f);
        boolean z10 = Math.abs(iJ2) > 3;
        boolean z11 = iJ2 > 0;
        this.f27951f = month;
        if (z10 && z11) {
            this.f27955j.scrollToPosition(iJ - 3);
            o0(iJ);
        } else if (!z10) {
            o0(iJ);
        } else {
            this.f27955j.scrollToPosition(iJ + 3);
            o0(iJ);
        }
    }

    void q0(CalendarSelector calendarSelector) {
        this.f27952g = calendarSelector;
        if (calendarSelector == CalendarSelector.YEAR) {
            this.f27954i.getLayoutManager().scrollToPosition(((y) this.f27954i.getAdapter()).i(this.f27951f.f28018b));
            this.f27958m.setVisibility(0);
            this.f27959n.setVisibility(8);
            this.f27956k.setVisibility(8);
            this.f27957l.setVisibility(8);
            return;
        }
        if (calendarSelector == CalendarSelector.DAY) {
            this.f27958m.setVisibility(8);
            this.f27959n.setVisibility(0);
            this.f27956k.setVisibility(0);
            this.f27957l.setVisibility(0);
            p0(this.f27951f);
        }
    }

    void s0() {
        CalendarSelector calendarSelector = this.f27952g;
        CalendarSelector calendarSelector2 = CalendarSelector.YEAR;
        if (calendarSelector == calendarSelector2) {
            q0(CalendarSelector.DAY);
        } else if (calendarSelector == CalendarSelector.DAY) {
            q0(calendarSelector2);
        }
    }
}
