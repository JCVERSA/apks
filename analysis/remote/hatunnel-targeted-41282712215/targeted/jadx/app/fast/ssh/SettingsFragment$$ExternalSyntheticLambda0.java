package app.fast.ssh;

import androidx.preference.EditTextPreference;
import androidx.preference.Preference;

public final class SettingsFragment$$ExternalSyntheticLambda0 implements Preference.OnPreferenceChangeListener {
    public final EditTextPreference f$0;

    public SettingsFragment$$ExternalSyntheticLambda0(EditTextPreference editTextPreference) {
        this.f$0 = editTextPreference;
    }

    @Override
    public final boolean onPreferenceChange(Preference preference, Object obj) {
        return SettingsFragment.lambda$onCreatePreferences$0(this.f$0, preference, obj);
    }
}
