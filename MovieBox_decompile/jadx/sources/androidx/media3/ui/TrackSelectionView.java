package androidx.media3.ui;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckedTextView;
import android.widget.LinearLayout;
import androidx.annotation.Nullable;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class TrackSelectionView extends LinearLayout {

    private final int f13295a;

    private final LayoutInflater f13296b;

    private final CheckedTextView f13297c;

    private final CheckedTextView f13298d;

    private final b f13299e;

    private final List f13300f;

    private final Map f13301g;

    private boolean f13302h;

    private boolean f13303i;

    private z0 f13304j;

    private CheckedTextView[][] f13305k;

    private boolean f13306l;

    private Comparator f13307m;

    private class b implements View.OnClickListener {
        private b() {
        }

        @Override
        public void onClick(View view) {
            TrackSelectionView.this.d(view);
        }
    }

    static final class c {

        public final androidx.media3.common.i0.a f13309a;

        public final int f13310b;

        public c(androidx.media3.common.i0.a aVar, int i10) {
            this.f13309a = aVar;
            this.f13310b = i10;
        }

        public androidx.media3.common.r a() {
            return this.f13309a.b(this.f13310b);
        }
    }

    public interface d {
    }

    public TrackSelectionView(Context context) {
        this(context, null);
    }

    public static int c(Comparator comparator, c cVar, c cVar2) {
        return comparator.compare(cVar.a(), cVar2.a());
    }

    public void d(View view) {
        if (view == this.f13297c) {
            f();
        } else if (view == this.f13298d) {
            e();
        } else {
            g(view);
        }
        j();
    }

    private void e() {
        this.f13306l = false;
        this.f13301g.clear();
    }

    private void f() {
        this.f13306l = true;
        this.f13301g.clear();
    }

    public static Map<androidx.media3.common.f0, androidx.media3.common.g0> filterOverrides(Map<androidx.media3.common.f0, androidx.media3.common.g0> map, List<androidx.media3.common.i0.a> list, boolean z10) {
        HashMap map2 = new HashMap();
        for (int i10 = 0; i10 < list.size(); i10++) {
            androidx.media3.common.g0 g0Var = map.get(list.get(i10).a());
            if (g0Var != null && (z10 || map2.isEmpty())) {
                map2.put(g0Var.f9667a, g0Var);
            }
        }
        return map2;
    }

    private void g(View view) {
        this.f13306l = false;
        c cVar = (c) androidx.media3.common.util.a.e(view.getTag());
        androidx.media3.common.f0 f0VarA = cVar.f13309a.a();
        int i10 = cVar.f13310b;
        androidx.media3.common.g0 g0Var = (androidx.media3.common.g0) this.f13301g.get(f0VarA);
        if (g0Var == null) {
            if (!this.f13303i && this.f13301g.size() > 0) {
                this.f13301g.clear();
            }
            this.f13301g.put(f0VarA, new androidx.media3.common.g0(f0VarA, ImmutableList.of(Integer.valueOf(i10))));
            return;
        }
        ArrayList arrayList = new ArrayList(g0Var.f9668b);
        boolean zIsChecked = ((CheckedTextView) view).isChecked();
        boolean zH = h(cVar.f13309a);
        boolean z10 = zH || i();
        if (zIsChecked && z10) {
            arrayList.remove(Integer.valueOf(i10));
            if (arrayList.isEmpty()) {
                this.f13301g.remove(f0VarA);
                return;
            } else {
                this.f13301g.put(f0VarA, new androidx.media3.common.g0(f0VarA, arrayList));
                return;
            }
        }
        if (zIsChecked) {
            return;
        }
        if (!zH) {
            this.f13301g.put(f0VarA, new androidx.media3.common.g0(f0VarA, ImmutableList.of(Integer.valueOf(i10))));
        } else {
            arrayList.add(Integer.valueOf(i10));
            this.f13301g.put(f0VarA, new androidx.media3.common.g0(f0VarA, arrayList));
        }
    }

    private boolean h(androidx.media3.common.i0.a aVar) {
        return this.f13302h && aVar.e();
    }

    private boolean i() {
        return this.f13303i && this.f13300f.size() > 1;
    }

    private void j() {
        this.f13297c.setChecked(this.f13306l);
        this.f13298d.setChecked(!this.f13306l && this.f13301g.size() == 0);
        for (int i10 = 0; i10 < this.f13305k.length; i10++) {
            androidx.media3.common.g0 g0Var = (androidx.media3.common.g0) this.f13301g.get(((androidx.media3.common.i0.a) this.f13300f.get(i10)).a());
            int i11 = 0;
            while (true) {
                CheckedTextView[] checkedTextViewArr = this.f13305k[i10];
                if (i11 < checkedTextViewArr.length) {
                    if (g0Var != null) {
                        this.f13305k[i10][i11].setChecked(g0Var.f9668b.contains(Integer.valueOf(((c) androidx.media3.common.util.a.e(checkedTextViewArr[i11].getTag())).f13310b)));
                    } else {
                        checkedTextViewArr[i11].setChecked(false);
                    }
                    i11++;
                }
            }
        }
    }

    private void k() {
        for (int childCount = getChildCount() - 1; childCount >= 3; childCount--) {
            removeViewAt(childCount);
        }
        if (this.f13300f.isEmpty()) {
            this.f13297c.setEnabled(false);
            this.f13298d.setEnabled(false);
            return;
        }
        this.f13297c.setEnabled(true);
        this.f13298d.setEnabled(true);
        this.f13305k = new CheckedTextView[this.f13300f.size()][];
        boolean zI = i();
        for (int i10 = 0; i10 < this.f13300f.size(); i10++) {
            androidx.media3.common.i0.a aVar = (androidx.media3.common.i0.a) this.f13300f.get(i10);
            boolean zH = h(aVar);
            CheckedTextView[][] checkedTextViewArr = this.f13305k;
            int i11 = aVar.f9779a;
            checkedTextViewArr[i10] = new CheckedTextView[i11];
            c[] cVarArr = new c[i11];
            for (int i12 = 0; i12 < aVar.f9779a; i12++) {
                cVarArr[i12] = new c(aVar, i12);
            }
            Comparator comparator = this.f13307m;
            if (comparator != null) {
                Arrays.sort(cVarArr, comparator);
            }
            for (int i13 = 0; i13 < i11; i13++) {
                if (i13 == 0) {
                    addView(this.f13296b.inflate(R$layout.exo_list_divider, (ViewGroup) this, false));
                }
                CheckedTextView checkedTextView = (CheckedTextView) this.f13296b.inflate((zH || zI) ? R.layout.simple_list_item_multiple_choice : R.layout.simple_list_item_single_choice, (ViewGroup) this, false);
                checkedTextView.setBackgroundResource(this.f13295a);
                checkedTextView.setText(this.f13304j.a(cVarArr[i13].a()));
                checkedTextView.setTag(cVarArr[i13]);
                if (aVar.i(i13)) {
                    checkedTextView.setFocusable(true);
                    checkedTextView.setOnClickListener(this.f13299e);
                } else {
                    checkedTextView.setFocusable(false);
                    checkedTextView.setEnabled(false);
                }
                this.f13305k[i10][i13] = checkedTextView;
                addView(checkedTextView);
            }
        }
        j();
    }

    public boolean getIsDisabled() {
        return this.f13306l;
    }

    public Map<androidx.media3.common.f0, androidx.media3.common.g0> getOverrides() {
        return this.f13301g;
    }

    public void init(List<androidx.media3.common.i0.a> list, boolean z10, Map<androidx.media3.common.f0, androidx.media3.common.g0> map, @Nullable final Comparator<androidx.media3.common.r> comparator, @Nullable d dVar) {
        this.f13306l = z10;
        this.f13307m = comparator == null ? null : new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                return TrackSelectionView.c(comparator, (TrackSelectionView.c) obj, (TrackSelectionView.c) obj2);
            }
        };
        this.f13300f.clear();
        this.f13300f.addAll(list);
        this.f13301g.clear();
        this.f13301g.putAll(filterOverrides(map, list, this.f13303i));
        k();
    }

    public void setAllowAdaptiveSelections(boolean z10) {
        if (this.f13302h != z10) {
            this.f13302h = z10;
            k();
        }
    }

    public void setAllowMultipleOverrides(boolean z10) {
        if (this.f13303i != z10) {
            this.f13303i = z10;
            if (!z10 && this.f13301g.size() > 1) {
                Map<androidx.media3.common.f0, androidx.media3.common.g0> mapFilterOverrides = filterOverrides(this.f13301g, this.f13300f, false);
                this.f13301g.clear();
                this.f13301g.putAll(mapFilterOverrides);
            }
            k();
        }
    }

    public void setShowDisableOption(boolean z10) {
        this.f13297c.setVisibility(z10 ? 0 : 8);
    }

    public void setTrackNameProvider(z0 z0Var) {
        this.f13304j = (z0) androidx.media3.common.util.a.e(z0Var);
        k();
    }

    public TrackSelectionView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TrackSelectionView(Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        setOrientation(1);
        setSaveFromParentEnabled(false);
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{R.attr.selectableItemBackground});
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0);
        this.f13295a = resourceId;
        typedArrayObtainStyledAttributes.recycle();
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(context);
        this.f13296b = layoutInflaterFrom;
        b bVar = new b();
        this.f13299e = bVar;
        this.f13304j = new f(getResources());
        this.f13300f = new ArrayList();
        this.f13301g = new HashMap();
        CheckedTextView checkedTextView = (CheckedTextView) layoutInflaterFrom.inflate(R.layout.simple_list_item_single_choice, (ViewGroup) this, false);
        this.f13297c = checkedTextView;
        checkedTextView.setBackgroundResource(resourceId);
        checkedTextView.setText(R$string.exo_track_selection_none);
        checkedTextView.setEnabled(false);
        checkedTextView.setFocusable(true);
        checkedTextView.setOnClickListener(bVar);
        checkedTextView.setVisibility(8);
        addView(checkedTextView);
        addView(layoutInflaterFrom.inflate(R$layout.exo_list_divider, (ViewGroup) this, false));
        CheckedTextView checkedTextView2 = (CheckedTextView) layoutInflaterFrom.inflate(R.layout.simple_list_item_single_choice, (ViewGroup) this, false);
        this.f13298d = checkedTextView2;
        checkedTextView2.setBackgroundResource(resourceId);
        checkedTextView2.setText(R$string.exo_track_selection_auto);
        checkedTextView2.setEnabled(false);
        checkedTextView2.setFocusable(true);
        checkedTextView2.setOnClickListener(bVar);
        addView(checkedTextView2);
    }
}
