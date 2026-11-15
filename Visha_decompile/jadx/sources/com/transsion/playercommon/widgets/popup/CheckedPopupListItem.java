package com.transsion.playercommon.widgets.popup;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Checkable;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatCheckedTextView;
import com.transsion.common.R;

public class CheckedPopupListItem extends LinearLayout implements Checkable {
    public AppCompatCheckedTextView b;
    public ImageView c;

    public CheckedPopupListItem(Context context) {
        this(context, null);
    }

    @Override
    public boolean isChecked() {
        return this.b.isChecked();
    }

    @Override
    public void setActivated(boolean z) {
        super.setActivated(z);
    }

    @Override
    public void setChecked(boolean z) {
        this.b.setChecked(z);
        this.c.setVisibility(z ? 0 : 4);
    }

    public void setTitle(String str) {
        this.b.setText(str);
    }

    @Override
    public void toggle() {
        this.b.toggle();
        this.c.setVisibility(this.b.isChecked() ? 0 : 4);
    }

    public CheckedPopupListItem(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CheckedPopupListItem(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.item_list_popup, (ViewGroup) this, true);
        this.c = (ImageView) viewInflate.findViewById(R.id.iv_Left);
        this.b = (AppCompatCheckedTextView) viewInflate.findViewById(R.id.iv_name);
    }
}
