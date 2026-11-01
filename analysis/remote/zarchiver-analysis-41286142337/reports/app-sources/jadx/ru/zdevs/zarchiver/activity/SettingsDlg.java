package ru.zdevs.zarchiver.activity;

import android.app.ActionBar;
import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.preference.Preference;
import android.preference.PreferenceActivity;
import android.preference.PreferenceFragment;
import android.preference.PreferenceManager;
import android.preference.PreferenceScreen;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.util.List;
import java.util.Map;
import ru.zdevs.zarchiver.R;
import ru.zdevs.zarchiver.ZApp;
import x0.h;
import z0.e;

public class SettingsDlg extends PreferenceActivity implements SharedPreferences.OnSharedPreferenceChangeListener {

    public SharedPreferences f1605a;

    public static class PluginFragment extends PreferenceFragment {
        @Override
        public final void onCreate(Bundle bundle) {
            super.onCreate(bundle);
            Activity activity = getActivity();
            String[] strArr = l0.c.f1180a;
            if (Build.VERSION.SDK_INT < 17) {
                return;
            }
            PackageManager packageManager = activity.getPackageManager();
            Intent intent = new Intent("ru.zdevs.zarchiver.plugin.PLUGIN_APPLICATION");
            PreferenceScreen preferenceScreenCreatePreferenceScreen = getPreferenceManager().createPreferenceScreen(activity);
            for (ResolveInfo resolveInfo : packageManager.queryIntentActivities(intent, 0)) {
                Intent intent2 = new Intent(intent);
                ActivityInfo activityInfo = resolveInfo.activityInfo;
                intent2.setComponent(new ComponentName(activityInfo.packageName, activityInfo.name));
                intent2.setPackage(resolveInfo.activityInfo.packageName);
                intent2.putExtra("LOCALE", t0.b.f2084e);
                Preference preference = new Preference(activity);
                preference.setTitle(resolveInfo.loadLabel(packageManager));
                preference.getExtras().putParcelable("intent", intent2);
                preference.setOnPreferenceClickListener(new l0.a());
                preferenceScreenCreatePreferenceScreen.addPreference(preference);
            }
            Preference preference2 = new Preference(activity);
            preference2.setTitle(R.string.OPT_PLUGINS_SEARCH);
            preference2.setOnPreferenceClickListener(new l0.b());
            preferenceScreenCreatePreferenceScreen.addPreference(preference2);
            setPreferenceScreen(preferenceScreenCreatePreferenceScreen);
        }
    }

    public static class SettingsFragment extends PreferenceFragment {
        @Override
        public final void onActivityCreated(Bundle bundle) {
            super.onActivityCreated(bundle);
            if (Build.VERSION.SDK_INT < 21 || !v0.b.h()) {
                return;
            }
            a.a(getView(), android.R.id.summary, R.attr.defaultTextColorFileListSub);
        }

        @Override
        public final void onCreate(Bundle bundle) {
            super.onCreate(bundle);
            String string = getArguments().getString("settings");
            if ("general".equals(string)) {
                addPreferencesFromResource(R.xml.pref_general);
                return;
            }
            if ("gui".equals(string)) {
                addPreferencesFromResource(R.xml.pref_gui);
                if (e.d(ZApp.c(Build.VERSION.SDK_INT >= 23 ? getContext() : null))) {
                    findPreference("iTwoTab").setEnabled(false);
                    return;
                }
                return;
            }
            if ("fm".equals(string)) {
                addPreferencesFromResource(R.xml.pref_fm);
            } else if ("compression".equals(string)) {
                addPreferencesFromResource(R.xml.pref_compression);
            } else if ("root".equals(string)) {
                addPreferencesFromResource(R.xml.pref_root);
            }
        }
    }

    public static class a extends BaseAdapter {

        public final ListAdapter f1606a;

        public final int f1607b;

        public final int f1608c;

        public a(ListAdapter listAdapter, int i2, int i3) {
            this.f1606a = listAdapter;
            this.f1607b = i2;
            this.f1608c = i3;
        }

        public static void a(View view, int i2, int i3) {
            ListView listView;
            ListAdapter adapter;
            if (view == null || (listView = (ListView) view.findViewById(android.R.id.list)) == null || (adapter = listView.getAdapter()) == null) {
                return;
            }
            listView.setAdapter((ListAdapter) new a(adapter, i2, z0.c.c(view.getContext(), i3)));
            listView.setItemChecked(0, true);
        }

        @Override
        public final int getCount() {
            return this.f1606a.getCount();
        }

        @Override
        public final Object getItem(int i2) {
            return this.f1606a.getItem(i2);
        }

        @Override
        public final long getItemId(int i2) {
            return this.f1606a.getItemId(i2);
        }

        @Override
        public final View getView(int i2, View view, ViewGroup viewGroup) {
            View view2 = this.f1606a.getView(i2, view, viewGroup);
            TextView textView = (TextView) view2.findViewById(this.f1607b);
            if (textView != null) {
                textView.setTextColor(this.f1608c);
            }
            return view2;
        }
    }

    public static class b extends w0.c {

        public final OutputStream f1609e;

        public b(OutputStream outputStream) {
            this.f1609e = outputStream;
        }

        @Override
        public final w0.a.b f() throws Throwable {
            ObjectOutputStream objectOutputStream;
            boolean z2;
            OutputStream outputStream = this.f1609e;
            SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(ZApp.f1434c);
            ObjectOutputStream objectOutputStream2 = null;
            try {
                objectOutputStream = new ObjectOutputStream(outputStream);
                try {
                    objectOutputStream.writeObject("ZA 1.0.10");
                    objectOutputStream.writeObject(defaultSharedPreferences.getAll());
                    objectOutputStream.close();
                    n0.e.d(objectOutputStream);
                    n0.e.d(outputStream);
                    z2 = true;
                } catch (IOException unused) {
                    n0.e.d(objectOutputStream);
                    n0.e.d(outputStream);
                    z2 = false;
                } catch (Throwable th) {
                    th = th;
                    objectOutputStream2 = objectOutputStream;
                    n0.e.d(objectOutputStream2);
                    n0.e.d(outputStream);
                    throw th;
                }
            } catch (IOException unused2) {
                objectOutputStream = null;
            } catch (Throwable th2) {
                th = th2;
            }
            ZApp.i(z2 ? R.string.MES_SUCESSFUL_END : R.string.MES_END_WITH_ERROR);
            return null;
        }
    }

    public static class c extends w0.c {

        public final InputStream f1610e;

        public c(InputStream inputStream) {
            this.f1610e = inputStream;
        }

        @Override
        public final w0.a.b f() throws Throwable {
            ObjectInputStream objectInputStream;
            char c2;
            int i2;
            InputStream inputStream = this.f1610e;
            ObjectInputStream objectInputStream2 = null;
            boolean z2 = false;
            try {
                objectInputStream = new ObjectInputStream(inputStream);
                try {
                    try {
                        if (((String) objectInputStream.readObject()).startsWith("ZA")) {
                            try {
                                Map map = (Map) objectInputStream.readObject();
                                n0.e.d(objectInputStream);
                                n0.e.d(inputStream);
                                SharedPreferences.Editor editorEdit = PreferenceManager.getDefaultSharedPreferences(ZApp.f1434c).edit();
                                editorEdit.clear();
                                for (Map.Entry entry : map.entrySet()) {
                                    if (entry.getValue() instanceof Boolean) {
                                        editorEdit.putBoolean((String) entry.getKey(), ((Boolean) entry.getValue()).booleanValue());
                                    } else if (entry.getValue() instanceof String) {
                                        editorEdit.putString((String) entry.getKey(), (String) entry.getValue());
                                    } else if (entry.getValue() instanceof Integer) {
                                        editorEdit.putInt((String) entry.getKey(), ((Integer) entry.getValue()).intValue());
                                    }
                                }
                                i2 = !editorEdit.commit() ? 1 : 0;
                            } catch (Exception unused) {
                                z2 = true;
                                c2 = z2 ? (char) 1 : (char) 2;
                                n0.e.d(objectInputStream);
                                n0.e.d(inputStream);
                                i2 = c2;
                            }
                        } else {
                            n0.e.d(objectInputStream);
                            c2 = 2;
                            n0.e.d(inputStream);
                            i2 = c2;
                        }
                    } catch (Throwable th) {
                        th = th;
                        objectInputStream2 = objectInputStream;
                        n0.e.d(objectInputStream2);
                        n0.e.d(inputStream);
                        throw th;
                    }
                } catch (Exception unused2) {
                }
            } catch (Exception unused3) {
                objectInputStream = null;
            } catch (Throwable th2) {
                th = th2;
            }
            if (i2 == 0) {
                ZApp.i(R.string.MES_SUCESSFUL_END);
            } else if (i2 == 1) {
                ZApp.i(R.string.MES_END_WITH_ERROR);
            } else if (i2 == 2) {
                ZApp.j("Invalid format");
            }
            return null;
        }
    }

    @Override
    public final void finishAndRemoveTask() {
        if (Build.VERSION.SDK_INT < 21) {
            finish();
        } else {
            super.finishAndRemoveTask();
        }
    }

    @Override
    public final MenuInflater getMenuInflater() {
        return Build.VERSION.SDK_INT < 21 ? new f1.a(this) : super.getMenuInflater();
    }

    @Override
    public final boolean isValidFragment(String str) {
        return true;
    }

    @Override
    public final void onActivityResult(int i2, int i3, Intent intent) {
        if (i3 != -1) {
            return;
        }
        Uri data = intent != null ? intent.getData() : null;
        try {
            if (i2 == 400 && data != null) {
                data.toString();
                new b(getContentResolver().openOutputStream(data)).g(null, null);
            } else {
                if (i2 != 401 || data == null) {
                    return;
                }
                data.toString();
                new c(getContentResolver().openInputStream(data)).g(null, null);
            }
        } catch (Exception unused) {
        }
    }

    @Override
    public final void onBuildHeaders(List<PreferenceActivity.Header> list) {
        loadHeadersFromResource(R.xml.pref_header, list);
    }

    @Override
    public final void onCreate(Bundle bundle) {
        ListView listView;
        ActionBar actionBar;
        e.o(this, false);
        e.k(this, t0.b.f2084e);
        super.onCreate(bundle);
        setTitle(R.string.OPT_TTL_SETTINGS);
        if (!e.d(this) && (actionBar = getActionBar()) != null) {
            actionBar.setDisplayHomeAsUpEnabled(true);
        }
        this.f1605a = PreferenceManager.getDefaultSharedPreferences(this);
        if (Build.VERSION.SDK_INT >= 21 && v0.b.h()) {
            a.a(getWindow().getDecorView(), android.R.id.title, R.attr.defaultTextColorFileList);
        }
        if (t0.b.k(1536) && (listView = (ListView) findViewById(android.R.id.list)) != null) {
            listView.setSelector(android.R.color.transparent);
        }
        Intent intent = getIntent();
        if (bundle == null && intent != null && intent.hasExtra("settings")) {
            Bundle bundle2 = new Bundle();
            bundle2.putString("settings", intent.getStringExtra("settings"));
            switchToHeader("ru.zdevs.zarchiver.activity.SettingsDlg$SettingsFragment", bundle2);
            setTitle(intent.getStringExtra("title"));
        }
    }

    @Override
    public final boolean onCreateOptionsMenu(Menu menu) {
        if (menu == null) {
            return false;
        }
        if (Build.VERSION.SDK_INT < 19) {
            return true;
        }
        getMenuInflater().inflate(R.menu.menu_settings, menu);
        return true;
    }

    @Override
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 19 && itemId == R.id.backup) {
            h.f(this, "za_settings.txt", true, 400);
            return true;
        }
        if (i2 >= 19 && itemId == R.id.restore) {
            h.f(this, null, false, 401);
            return true;
        }
        if (i2 >= 26 || itemId != 16908332) {
            return super.onOptionsItemSelected(menuItem);
        }
        finishAndRemoveTask();
        return true;
    }

    @Override
    public final void onPause() {
        super.onPause();
        this.f1605a.unregisterOnSharedPreferenceChangeListener(this);
    }

    @Override
    public final void onResume() {
        super.onResume();
        this.f1605a.registerOnSharedPreferenceChangeListener(this);
    }

    @Override
    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        boolean z2;
        if (("bRoot".equals(str) || "bRootAndroidDir".equals(str)) && sharedPreferences.getBoolean(str, false)) {
            int iI0 = a0.c.i0(0, sharedPreferences.getString("iRootType", null)) + 1;
            if (o0.a.g(iI0)) {
                z2 = false;
            } else {
                if (iI0 == 1) {
                    ZApp.i(R.string.OPT_ROOT_NOT_FOUND);
                } else if (iI0 == 2) {
                    ZApp.j("Shizuku v11+ / SUI not found!");
                }
                z2 = true;
            }
            if (z2) {
                sharedPreferences.edit().putBoolean(str, false).apply();
                Bundle bundle = new Bundle();
                bundle.putString("settings", "root");
                switchToHeader("ru.zdevs.zarchiver.activity.SettingsDlg$SettingsFragment", bundle);
                return;
            }
        }
        if ("iRootType".equals(str)) {
            sharedPreferences.edit().putBoolean("bRoot", false).putBoolean("bRootAndroidDir", false).apply();
            Bundle bundle2 = new Bundle();
            bundle2.putString("settings", "root");
            switchToHeader("ru.zdevs.zarchiver.activity.SettingsDlg$SettingsFragment", bundle2);
        }
        t0.b.f2082c |= 1;
    }
}
