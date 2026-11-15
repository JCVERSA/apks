package com.transsion.widgetslib.widget.editext;

import android.content.Context;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.View;
import android.widget.EditText;
import java.util.ArrayList;
import java.util.Iterator;

public class ExtendedEditText extends EditText implements View.OnFocusChangeListener {
    public ArrayList b;
    public View.OnFocusChangeListener c;
    public View.OnFocusChangeListener d;
    public boolean e;

    public ExtendedEditText(Context context) {
        super(context);
        this.b = null;
        this.c = null;
        this.d = null;
    }

    @Override
    public void addTextChangedListener(TextWatcher textWatcher) {
        if (this.b == null) {
            this.b = new ArrayList();
        }
        this.b.add(textWatcher);
        super.addTextChangedListener(textWatcher);
    }

    public void clearTextChangedListeners() {
        ArrayList arrayList = this.b;
        if (arrayList != null) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                super.removeTextChangedListener((TextWatcher) it.next());
            }
            this.b.clear();
            this.b = null;
        }
    }

    @Override
    public void onFocusChange(View view, boolean z) {
        View.OnFocusChangeListener onFocusChangeListener = this.d;
        if (onFocusChangeListener != null) {
            onFocusChangeListener.onFocusChange(view, z);
        }
        View.OnFocusChangeListener onFocusChangeListener2 = this.c;
        if (onFocusChangeListener2 != null) {
            onFocusChangeListener2.onFocusChange(view, z);
        }
    }

    @Override
    public void removeTextChangedListener(TextWatcher textWatcher) {
        int iIndexOf;
        ArrayList arrayList = this.b;
        if (arrayList != null && (iIndexOf = arrayList.indexOf(textWatcher)) >= 0) {
            this.b.remove(iIndexOf);
        }
        super.removeTextChangedListener(textWatcher);
    }

    @Override
    public void setOnFocusChangeListener(View.OnFocusChangeListener onFocusChangeListener) {
        boolean z = this.e;
        if (!z && onFocusChangeListener != null) {
            this.e = true;
            super.setOnFocusChangeListener(this);
        } else if (onFocusChangeListener == null && this.d == null && z) {
            this.e = false;
            super.setOnFocusChangeListener(null);
        }
        this.c = onFocusChangeListener;
    }

    public void setSelfOnFocusChangeListener(View.OnFocusChangeListener onFocusChangeListener) {
        boolean z = this.e;
        if (!z && onFocusChangeListener != null) {
            this.e = true;
            super.setOnFocusChangeListener(this);
        } else if (onFocusChangeListener == null && this.d == null && z) {
            this.e = false;
            super.setOnFocusChangeListener(null);
        }
        this.d = onFocusChangeListener;
    }

    public ExtendedEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.b = null;
        this.c = null;
        this.d = null;
    }

    public ExtendedEditText(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.b = null;
        this.c = null;
        this.d = null;
    }
}
