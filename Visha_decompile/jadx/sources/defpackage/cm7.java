package defpackage;

import android.widget.CompoundButton;

public class cm7 implements CompoundButton.OnCheckedChangeListener {
    public final ho7 b;

    public cm7(ho7 ho7Var) {
        this.b = ho7Var;
    }

    @Override
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        this.b.c.setEnabled(z);
    }
}
