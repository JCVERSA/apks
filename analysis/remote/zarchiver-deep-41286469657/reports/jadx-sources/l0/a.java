package l0;

import android.content.Intent;
import android.preference.Preference;
import h1.h;

public final class a implements Preference.OnPreferenceClickListener {
    @Override
    public final boolean onPreferenceClick(Preference preference) {
        Intent intent = (Intent) preference.getExtras().getParcelable("intent");
        if (intent == null) {
            return true;
        }
        h.e(preference.getContext(), intent);
        return true;
    }
}
