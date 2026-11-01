package l0;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.net.Uri;
import android.preference.Preference;

public final class b implements Preference.OnPreferenceClickListener {
    @Override
    public final boolean onPreferenceClick(Preference preference) {
        try {
            try {
                preference.getContext().startActivity(new Intent("android.intent.action.VIEW", Uri.parse("market://search?q=ZArchiver plugin")));
                return true;
            } catch (ActivityNotFoundException unused) {
                preference.getContext().startActivity(new Intent("android.intent.action.VIEW", Uri.parse("https://play.google.com/store/apps/search?q=ZArchiver plugin")));
                return true;
            }
        } catch (ActivityNotFoundException unused2) {
            return true;
        }
    }
}
