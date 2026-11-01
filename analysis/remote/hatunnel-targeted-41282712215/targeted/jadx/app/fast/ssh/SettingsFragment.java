package app.fast.ssh;

import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Vibrator;
import android.preference.PreferenceManager;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatDelegate;
import androidx.preference.EditTextPreference;
import androidx.preference.ListPreference;
import androidx.preference.Preference;
import androidx.preference.PreferenceFragmentCompat;
import androidx.preference.SwitchPreference;
import app.fast.ssh.core.connection.SSLTunnelConnection;
import app.fast.ssh.dialog.ProxySettings;
import java.util.regex.Pattern;

public class SettingsFragment extends PreferenceFragmentCompat {

    class AnonymousClass1 implements Preference.OnPreferenceChangeListener {
        final EditTextPreference val$primaryDns;
        final EditTextPreference val$secondaryDns;

        AnonymousClass1(EditTextPreference editTextPreference, EditTextPreference editTextPreference2) {
            this.val$primaryDns = editTextPreference;
            this.val$secondaryDns = editTextPreference2;
        }

        @Override
        public boolean onPreferenceChange(Preference preference, Object obj) {
            Boolean bool = (Boolean) obj;
            this.val$primaryDns.setEnabled(bool.booleanValue());
            this.val$secondaryDns.setEnabled(bool.booleanValue());
            return true;
        }
    }

    class AnonymousClass2 implements Preference.OnPreferenceChangeListener {
        final EditTextPreference val$primaryDns;

        AnonymousClass2(EditTextPreference editTextPreference) {
            this.val$primaryDns = editTextPreference;
        }

        @Override
        public boolean onPreferenceChange(Preference preference, Object obj) {
            String str = (String) obj;
            if (SettingsFragment.access$000(str)) {
                this.val$primaryDns.setSummary(str);
                return true;
            }
            Toast.makeText(SettingsFragment.this.getContext(), ProtectedFastSSH.s("⾣"), 0).show();
            return false;
        }
    }

    class AnonymousClass3 implements Preference.OnPreferenceChangeListener {
        final EditTextPreference val$secondaryDns;

        AnonymousClass3(EditTextPreference editTextPreference) {
            this.val$secondaryDns = editTextPreference;
        }

        @Override
        public boolean onPreferenceChange(Preference preference, Object obj) {
            String str = (String) obj;
            if (SettingsFragment.access$000(str)) {
                this.val$secondaryDns.setSummary(str);
                return true;
            }
            Toast.makeText(SettingsFragment.this.getContext(), ProtectedFastSSH.s("⾤"), 0).show();
            return false;
        }
    }

    class AnonymousClass4 implements Preference.OnPreferenceChangeListener {
        AnonymousClass4() {
        }

        @Override
        public boolean onPreferenceChange(Preference preference, Object obj) {
            if (!((Boolean) obj).booleanValue()) {
                return true;
            }
            ((Vibrator) SettingsFragment.this.getActivity().getSystemService(ProtectedFastSSH.s("⾥"))).vibrate(100L);
            return true;
        }
    }

    class AnonymousClass5 implements Preference.OnPreferenceChangeListener {
        final ListPreference val$appTheme;

        AnonymousClass5(ListPreference listPreference) {
            this.val$appTheme = listPreference;
        }

        @Override
        public boolean onPreferenceChange(Preference preference, Object obj) {
            String str = (String) obj;
            int i = Integer.parseInt(str);
            if (i == 0) {
                AppCompatDelegate.setDefaultNightMode(-1);
            } else if (i == 1) {
                AppCompatDelegate.setDefaultNightMode(1);
            } else if (i == 2) {
                AppCompatDelegate.setDefaultNightMode(2);
            }
            ListPreference listPreference = this.val$appTheme;
            listPreference.setSummary(listPreference.getEntries()[Integer.parseInt(str)]);
            return true;
        }
    }

    class AnonymousClass6 implements Preference.OnPreferenceChangeListener {
        final ListPreference val$baseTunnel;

        AnonymousClass6(ListPreference listPreference) {
            this.val$baseTunnel = listPreference;
        }

        @Override
        public boolean onPreferenceChange(Preference preference, Object obj) {
            ListPreference listPreference = this.val$baseTunnel;
            listPreference.setSummary(listPreference.getEntries()[Integer.parseInt((String) obj)]);
            return true;
        }
    }

    class AnonymousClass7 implements Preference.OnPreferenceChangeListener {
        final Preference val$configureProxy;

        AnonymousClass7(Preference preference) {
            this.val$configureProxy = preference;
        }

        @Override
        public boolean onPreferenceChange(Preference preference, Object obj) {
            this.val$configureProxy.setEnabled(((Boolean) obj).booleanValue());
            return true;
        }
    }

    class AnonymousClass8 implements Preference.OnPreferenceClickListener {
        AnonymousClass8() {
        }

        @Override
        public boolean onPreferenceClick(Preference preference) {
            new ProxySettings(SettingsFragment.this.getContext());
            return true;
        }
    }

    class AnonymousClass9 implements Preference.OnPreferenceChangeListener {
        final ListPreference val$tlsVersion;

        AnonymousClass9(ListPreference listPreference) {
            this.val$tlsVersion = listPreference;
        }

        @Override
        public boolean onPreferenceChange(Preference preference, Object obj) {
            String str = (String) obj;
            int i = Integer.parseInt(str);
            String strS = ProtectedFastSSH.s("⾦");
            String strS2 = ProtectedFastSSH.s("⾧");
            String strS3 = ProtectedFastSSH.s("⾨");
            String strS4 = ProtectedFastSSH.s("⾩");
            if (i == 0) {
                SSLTunnelConnection.TLS_VERSIONS.clear();
                SSLTunnelConnection.TLS_VERSIONS.add(ProtectedFastSSH.s("⾪"));
                SSLTunnelConnection.TLS_VERSIONS.add(strS4);
                SSLTunnelConnection.TLS_VERSIONS.add(strS3);
                SSLTunnelConnection.TLS_VERSIONS.add(strS2);
                SSLTunnelConnection.TLS_VERSIONS.add(strS);
            } else if (i == 1) {
                SSLTunnelConnection.TLS_VERSIONS.clear();
                SSLTunnelConnection.TLS_VERSIONS.add(strS4);
            } else if (i == 2) {
                SSLTunnelConnection.TLS_VERSIONS.clear();
                SSLTunnelConnection.TLS_VERSIONS.add(strS3);
            } else if (i == 3) {
                SSLTunnelConnection.TLS_VERSIONS.clear();
                SSLTunnelConnection.TLS_VERSIONS.add(strS2);
            } else if (i == 4) {
                SSLTunnelConnection.TLS_VERSIONS.clear();
                SSLTunnelConnection.TLS_VERSIONS.add(strS);
            }
            ListPreference listPreference = this.val$tlsVersion;
            listPreference.setSummary(listPreference.getEntries()[Integer.parseInt(str)]);
            return true;
        }
    }

    static boolean access$000(String str) {
        return isValidIPAddress(str);
    }

    private static boolean isValidIPAddress(String str) {
        Pattern patternCompile = Pattern.compile(ProtectedFastSSH.s("⾫"));
        if (str == null) {
            return false;
        }
        return patternCompile.matcher(str).matches();
    }

    static boolean lambda$onCreatePreferences$0(EditTextPreference editTextPreference, Preference preference, Object obj) {
        editTextPreference.setEnabled(((Boolean) obj).booleanValue());
        return true;
    }

    static boolean lambda$onCreatePreferences$1(Preference preference, Object obj) {
        return true;
    }

    @Override
    public void onCreatePreferences(Bundle bundle, String str) {
        setPreferencesFromResource(com.hatunnel.plus.R.xml.l_res_0x7f150008, str);
        String strS = ProtectedFastSSH.s("⾬");
        EditTextPreference editTextPreference = (EditTextPreference) findPreference(strS);
        String strS2 = ProtectedFastSSH.s("⾭");
        EditTextPreference editTextPreference2 = (EditTextPreference) findPreference(strS2);
        SwitchPreference switchPreference = (SwitchPreference) findPreference(ProtectedFastSSH.s("⾮"));
        switchPreference.setOnPreferenceChangeListener(new AnonymousClass1(editTextPreference, editTextPreference2));
        editTextPreference.setOnPreferenceChangeListener(new AnonymousClass2(editTextPreference));
        editTextPreference2.setOnPreferenceChangeListener(new AnonymousClass3(editTextPreference2));
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(getContext());
        editTextPreference.setEnabled(switchPreference.isChecked());
        editTextPreference2.setEnabled(switchPreference.isChecked());
        editTextPreference.setSummary(defaultSharedPreferences.getString(strS, ""));
        editTextPreference2.setSummary(defaultSharedPreferences.getString(strS2, ""));
        SwitchPreference switchPreference2 = (SwitchPreference) findPreference(ProtectedFastSSH.s("⾯"));
        if (switchPreference2 != null) {
            switchPreference2.setOnPreferenceChangeListener(new AnonymousClass4());
        }
        ListPreference listPreference = (ListPreference) findPreference(ProtectedFastSSH.s("⾰"));
        listPreference.setSummary(listPreference.getEntries()[Integer.parseInt(listPreference.getValue())]);
        listPreference.setOnPreferenceChangeListener(new AnonymousClass5(listPreference));
        SwitchPreference switchPreference3 = (SwitchPreference) findPreference(ProtectedFastSSH.s("⾱"));
        EditTextPreference editTextPreference3 = (EditTextPreference) findPreference(ProtectedFastSSH.s("⾲"));
        switchPreference3.setOnPreferenceChangeListener(new SettingsFragment$$ExternalSyntheticLambda0(editTextPreference3));
        editTextPreference3.setEnabled(switchPreference3.isChecked());
        editTextPreference3.setOnPreferenceChangeListener(new SettingsFragment$$ExternalSyntheticLambda1());
        ListPreference listPreference2 = (ListPreference) findPreference(ProtectedFastSSH.s("⾳"));
        listPreference2.setSummary(listPreference2.getEntries()[Integer.parseInt(listPreference2.getValue())]);
        listPreference2.setOnPreferenceChangeListener(new AnonymousClass6(listPreference2));
        SwitchPreference switchPreference4 = (SwitchPreference) findPreference(ProtectedFastSSH.s("⾴"));
        Preference preferenceFindPreference = findPreference(ProtectedFastSSH.s("⾵"));
        switchPreference4.setOnPreferenceChangeListener(new AnonymousClass7(preferenceFindPreference));
        preferenceFindPreference.setEnabled(switchPreference4.isChecked());
        preferenceFindPreference.setOnPreferenceClickListener(new AnonymousClass8());
        ListPreference listPreference3 = (ListPreference) findPreference(ProtectedFastSSH.s("⾶"));
        listPreference3.setSummary(listPreference3.getEntries()[Integer.parseInt(listPreference3.getValue())]);
        listPreference3.setOnPreferenceChangeListener(new AnonymousClass9(listPreference3));
    }
}
