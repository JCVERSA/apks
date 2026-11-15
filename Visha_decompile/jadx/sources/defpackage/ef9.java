package defpackage;

import android.widget.CompoundButton;
import com.transsion.tools.fragments.SettingFragment;

public final class ef9 implements CompoundButton.OnCheckedChangeListener {
    public final SettingFragment b;

    @Override
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        this.b.onCheckedChanged(compoundButton, z);
    }
}
