package ru.zdevs.zarchiver.activity;

import android.app.ActionBar;
import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.widget.TextView;
import f1.a;
import h1.h;
import ru.zdevs.zarchiver.R;
import t0.b;
import z0.e;

public class AboutDlg extends Activity {
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
        return Build.VERSION.SDK_INT < 21 ? new a(this) : super.getMenuInflater();
    }

    @Override
    public final void onCreate(Bundle bundle) {
        int i2;
        ActionBar actionBar;
        e.o(this, false);
        e.k(this, b.f2084e);
        super.onCreate(bundle);
        StringBuilder sb = new StringBuilder("1.0.10 (GP ");
        try {
            i2 = getPackageManager().getPackageInfo("ru.zdevs.zarchiver", 0).versionCode;
        } catch (Exception unused) {
            i2 = 101036;
        }
        sb.append(i2);
        sb.append(")");
        String string = sb.toString();
        if (!e.d(this) && (actionBar = getActionBar()) != null) {
            actionBar.setDisplayHomeAsUpEnabled(true);
        }
        setContentView(R.layout.dlg_about);
        TextView textView = (TextView) findViewById(R.id.tv_version);
        if (textView != null) {
            textView.setText(string);
        }
        TextView textView2 = (TextView) findViewById(R.id.tv_donate);
        if (textView2 != null) {
            textView2.setText(getString(R.string.ABT_DONATE_GENERAL, getString(R.string.DNT_TRANSLATE_SERVICE_URL) + ", " + getString(R.string.DNT_TRANSLATE_URL)));
        }
        TextView textView3 = (TextView) findViewById(R.id.tv_terms_of_service);
        if (textView3 != null) {
            textView3.setPaintFlags(textView3.getPaintFlags() | 8);
            textView3.setOnClickListener(new b0.a(this));
        }
        TextView textView4 = (TextView) findViewById(R.id.tv_privacy_policy);
        if (textView4 != null) {
            textView4.setPaintFlags(textView4.getPaintFlags() | 8);
            textView4.setOnClickListener(new b0.b(this));
        }
    }

    @Override
    public final boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.menu_about, menu);
        return true;
    }

    @Override
    public final boolean onKeyUp(int i2, KeyEvent keyEvent) {
        if (i2 != 4) {
            return super.onKeyUp(i2, keyEvent);
        }
        finishAndRemoveTask();
        return true;
    }

    @Override
    public final boolean onMenuOpened(int i2, Menu menu) {
        if (i2 == 8) {
            e.m(menu);
        }
        return super.onMenuOpened(i2, menu);
    }

    @Override
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        Intent intentCreateChooser;
        boolean z2;
        if (menuItem.getItemId() == 16908332) {
            finishAndRemoveTask();
            return true;
        }
        int itemId = menuItem.getItemId();
        if (itemId == R.id.bRatingApp) {
            intentCreateChooser = new Intent("android.intent.action.VIEW");
            intentCreateChooser.setData(Uri.parse("market://details?id=ru.zdevs.zarchiver"));
        } else if (itemId == R.id.bFeedback) {
            int i2 = Build.VERSION.SDK_INT;
            String str = i2 < 29 ? "\n<br>" : "\n";
            StringBuilder sb = new StringBuilder("mailto:support@zdevs.ru?subject=");
            sb.append(Uri.encode(getString(R.string.app_name) + " 1.0.10 feedback"));
            sb.append("&body=");
            sb.append(Uri.encode("[Write message/problem here]"));
            sb.append(str);
            sb.append(Uri.encode("Technical information"));
            sb.append(str);
            StringBuilder sb2 = new StringBuilder("Device: ");
            String str2 = Build.MANUFACTURER;
            String str3 = Build.MODEL;
            if (!str3.startsWith(str2)) {
                str3 = str2 + " " + str3;
            }
            sb2.append(str3);
            sb2.append(" / API");
            sb2.append(i2);
            sb2.append(" / ");
            sb2.append(v0.b.a() / 1024);
            sb2.append("MB");
            sb.append(Uri.encode(sb2.toString()));
            sb.append(str);
            sb.append(Uri.encode("Build: GP 101036"));
            String string = sb.toString();
            Intent intent = new Intent("android.intent.action.SENDTO");
            intent.setData(Uri.parse(string));
            intentCreateChooser = Intent.createChooser(intent, getResources().getString(R.string.MENU_FEEDBACK));
        } else if (itemId == R.id.bShare) {
            Intent intent2 = new Intent("android.intent.action.SEND");
            intent2.setType("text/plain");
            intent2.putExtra("android.intent.extra.SUBJECT", "Check out ZArchiver");
            intent2.putExtra("android.intent.extra.TEXT", "ZArchiver is fast and simple archive and file manager. Get it on https://play.google.com/store/apps/details?id=ru.zdevs.zarchiver");
            intentCreateChooser = Intent.createChooser(intent2, getResources().getString(R.string.MENU_SHARE_APP));
        } else {
            intentCreateChooser = null;
        }
        if (intentCreateChooser != null) {
            h.e(this, intentCreateChooser);
            z2 = true;
        } else {
            z2 = false;
        }
        if (z2) {
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }
}
