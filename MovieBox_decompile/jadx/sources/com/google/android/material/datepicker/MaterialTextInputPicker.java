package com.google.android.material.datepicker;

import android.os.Bundle;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.util.Iterator;

public final class MaterialTextInputPicker<S> extends p {

    private int f28013b;

    private DateSelector f28014c;

    private CalendarConstraints f28015d;

    class a extends o {
        a() {
        }

        @Override
        public void a() {
            Iterator it = MaterialTextInputPicker.this.f28083a.iterator();
            while (it.hasNext()) {
                ((o) it.next()).a();
            }
        }

        @Override
        public void b(Object obj) {
            Iterator it = MaterialTextInputPicker.this.f28083a.iterator();
            while (it.hasNext()) {
                ((o) it.next()).b(obj);
            }
        }
    }

    static MaterialTextInputPicker X(DateSelector dateSelector, int i10, CalendarConstraints calendarConstraints) {
        MaterialTextInputPicker materialTextInputPicker = new MaterialTextInputPicker();
        Bundle bundle = new Bundle();
        bundle.putInt("THEME_RES_ID_KEY", i10);
        bundle.putParcelable("DATE_SELECTOR_KEY", dateSelector);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", calendarConstraints);
        materialTextInputPicker.setArguments(bundle);
        return materialTextInputPicker;
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            bundle = getArguments();
        }
        this.f28013b = bundle.getInt("THEME_RES_ID_KEY");
        this.f28014c = (DateSelector) bundle.getParcelable("DATE_SELECTOR_KEY");
        this.f28015d = (CalendarConstraints) bundle.getParcelable("CALENDAR_CONSTRAINTS_KEY");
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return this.f28014c.onCreateTextInputView(layoutInflater.cloneInContext(new ContextThemeWrapper(getContext(), this.f28013b)), viewGroup, bundle, this.f28015d, new a());
    }

    @Override
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("THEME_RES_ID_KEY", this.f28013b);
        bundle.putParcelable("DATE_SELECTOR_KEY", this.f28014c);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", this.f28015d);
    }
}
