package com.google.android.exoplayer2.ui;

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
import com.google.android.exoplayer2.p1;
import com.google.android.exoplayer2.q3;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class TrackSelectionView extends LinearLayout {

    private final int f26310a;

    private final LayoutInflater f26311b;

    private final CheckedTextView f26312c;

    private final CheckedTextView f26313d;

    private final b f26314e;

    private final List f26315f;

    private final Map f26316g;

    private boolean f26317h;

    private boolean f26318i;

    private o0 f26319j;

    private CheckedTextView[][] f26320k;

    private boolean f26321l;

    private Comparator f26322m;

    private class b implements View.OnClickListener {
        private b() {
        }

        @Override
        public void onClick(View view) {
            TrackSelectionView.this.d(view);
        }
    }

    static final class c {

        public final q3.a f26324a;

        public final int f26325b;

        public c(q3.a aVar, int i10) {
            this.f26324a = aVar;
            this.f26325b = i10;
        }

        public p1 a() {
            return this.f26324a.c(this.f26325b);
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
        if (view == this.f26312c) {
            f();
        } else if (view == this.f26313d) {
            e();
        } else {
            g(view);
        }
        j();
    }

    private void e() {
        this.f26321l = false;
        this.f26316g.clear();
    }

    private void f() {
        this.f26321l = true;
        this.f26316g.clear();
    }

    public static Map<v9.w, na.x> filterOverrides(Map<v9.w, na.x> map, List<q3.a> list, boolean z10) {
        HashMap map2 = new HashMap();
        for (int i10 = 0; i10 < list.size(); i10++) {
            na.x xVar = map.get(list.get(i10).b());
            if (xVar != null && (z10 || map2.isEmpty())) {
                map2.put(xVar.f67108a, xVar);
            }
        }
        return map2;
    }

    private void g(View view) {
        this.f26321l = false;
        c cVar = (c) com.google.android.exoplayer2.util.a.e(view.getTag());
        v9.w wVarB = cVar.f26324a.b();
        int i10 = cVar.f26325b;
        na.x xVar = (na.x) this.f26316g.get(wVarB);
        if (xVar == null) {
            if (!this.f26318i && this.f26316g.size() > 0) {
                this.f26316g.clear();
            }
            this.f26316g.put(wVarB, new na.x(wVarB, ImmutableList.of(Integer.valueOf(i10))));
            return;
        }
        ArrayList arrayList = new ArrayList(xVar.f67109b);
        boolean zIsChecked = ((CheckedTextView) view).isChecked();
        boolean zH = h(cVar.f26324a);
        boolean z10 = zH || i();
        if (zIsChecked && z10) {
            arrayList.remove(Integer.valueOf(i10));
            if (arrayList.isEmpty()) {
                this.f26316g.remove(wVarB);
                return;
            } else {
                this.f26316g.put(wVarB, new na.x(wVarB, arrayList));
                return;
            }
        }
        if (zIsChecked) {
            return;
        }
        if (!zH) {
            this.f26316g.put(wVarB, new na.x(wVarB, ImmutableList.of(Integer.valueOf(i10))));
        } else {
            arrayList.add(Integer.valueOf(i10));
            this.f26316g.put(wVarB, new na.x(wVarB, arrayList));
        }
    }

    private boolean h(q3.a aVar) {
        return this.f26317h && aVar.e();
    }

    private boolean i() {
        return this.f26318i && this.f26315f.size() > 1;
    }

    private void j() {
        this.f26312c.setChecked(this.f26321l);
        this.f26313d.setChecked(!this.f26321l && this.f26316g.size() == 0);
        for (int i10 = 0; i10 < this.f26320k.length; i10++) {
            na.x xVar = (na.x) this.f26316g.get(((q3.a) this.f26315f.get(i10)).b());
            int i11 = 0;
            while (true) {
                CheckedTextView[] checkedTextViewArr = this.f26320k[i10];
                if (i11 < checkedTextViewArr.length) {
                    if (xVar != null) {
                        this.f26320k[i10][i11].setChecked(xVar.f67109b.contains(Integer.valueOf(((c) com.google.android.exoplayer2.util.a.e(checkedTextViewArr[i11].getTag())).f26325b)));
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
        if (this.f26315f.isEmpty()) {
            this.f26312c.setEnabled(false);
            this.f26313d.setEnabled(false);
            return;
        }
        this.f26312c.setEnabled(true);
        this.f26313d.setEnabled(true);
        this.f26320k = new CheckedTextView[this.f26315f.size()][];
        boolean zI = i();
        for (int i10 = 0; i10 < this.f26315f.size(); i10++) {
            q3.a aVar = (q3.a) this.f26315f.get(i10);
            boolean zH = h(aVar);
            CheckedTextView[][] checkedTextViewArr = this.f26320k;
            int i11 = aVar.f24967a;
            checkedTextViewArr[i10] = new CheckedTextView[i11];
            c[] cVarArr = new c[i11];
            for (int i12 = 0; i12 < aVar.f24967a; i12++) {
                cVarArr[i12] = new c(aVar, i12);
            }
            Comparator comparator = this.f26322m;
            if (comparator != null) {
                Arrays.sort(cVarArr, comparator);
            }
            for (int i13 = 0; i13 < i11; i13++) {
                if (i13 == 0) {
                    addView(this.f26311b.inflate(R$layout.exo_list_divider, (ViewGroup) this, false));
                }
                CheckedTextView checkedTextView = (CheckedTextView) this.f26311b.inflate((zH || zI) ? R.layout.simple_list_item_multiple_choice : R.layout.simple_list_item_single_choice, (ViewGroup) this, false);
                checkedTextView.setBackgroundResource(this.f26310a);
                checkedTextView.setText(this.f26319j.a(cVarArr[i13].a()));
                checkedTextView.setTag(cVarArr[i13]);
                if (aVar.h(i13)) {
                    checkedTextView.setFocusable(true);
                    checkedTextView.setOnClickListener(this.f26314e);
                } else {
                    checkedTextView.setFocusable(false);
                    checkedTextView.setEnabled(false);
                }
                this.f26320k[i10][i13] = checkedTextView;
                addView(checkedTextView);
            }
        }
        j();
    }

    public boolean getIsDisabled() {
        return this.f26321l;
    }

    public Map<v9.w, na.x> getOverrides() {
        return this.f26316g;
    }

    public void init(List<q3.a> list, boolean z10, Map<v9.w, na.x> map, @Nullable final Comparator<p1> comparator, @Nullable d dVar) {
        this.f26321l = z10;
        this.f26322m = comparator == null ? null : new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                return TrackSelectionView.c(comparator, (TrackSelectionView.c) obj, (TrackSelectionView.c) obj2);
            }
        };
        this.f26315f.clear();
        this.f26315f.addAll(list);
        this.f26316g.clear();
        this.f26316g.putAll(filterOverrides(map, list, this.f26318i));
        k();
    }

    public void setAllowAdaptiveSelections(boolean z10) {
        if (this.f26317h != z10) {
            this.f26317h = z10;
            k();
        }
    }

    public void setAllowMultipleOverrides(boolean z10) {
        if (this.f26318i != z10) {
            this.f26318i = z10;
            if (!z10 && this.f26316g.size() > 1) {
                Map<v9.w, na.x> mapFilterOverrides = filterOverrides(this.f26316g, this.f26315f, false);
                this.f26316g.clear();
                this.f26316g.putAll(mapFilterOverrides);
            }
            k();
        }
    }

    public void setShowDisableOption(boolean z10) {
        this.f26312c.setVisibility(z10 ? 0 : 8);
    }

    public void setTrackNameProvider(o0 o0Var) {
        this.f26319j = (o0) com.google.android.exoplayer2.util.a.e(o0Var);
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
        this.f26310a = resourceId;
        typedArrayObtainStyledAttributes.recycle();
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(context);
        this.f26311b = layoutInflaterFrom;
        b bVar = new b();
        this.f26314e = bVar;
        this.f26319j = new g(getResources());
        this.f26315f = new ArrayList();
        this.f26316g = new HashMap();
        CheckedTextView checkedTextView = (CheckedTextView) layoutInflaterFrom.inflate(R.layout.simple_list_item_single_choice, (ViewGroup) this, false);
        this.f26312c = checkedTextView;
        checkedTextView.setBackgroundResource(resourceId);
        checkedTextView.setText(R$string.exo_track_selection_none);
        checkedTextView.setEnabled(false);
        checkedTextView.setFocusable(true);
        checkedTextView.setOnClickListener(bVar);
        checkedTextView.setVisibility(8);
        addView(checkedTextView);
        addView(layoutInflaterFrom.inflate(R$layout.exo_list_divider, (ViewGroup) this, false));
        CheckedTextView checkedTextView2 = (CheckedTextView) layoutInflaterFrom.inflate(R.layout.simple_list_item_single_choice, (ViewGroup) this, false);
        this.f26313d = checkedTextView2;
        checkedTextView2.setBackgroundResource(resourceId);
        checkedTextView2.setText(R$string.exo_track_selection_auto);
        checkedTextView2.setEnabled(false);
        checkedTextView2.setFocusable(true);
        checkedTextView2.setOnClickListener(bVar);
        addView(checkedTextView2);
    }
}
