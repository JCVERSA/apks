package app.fast.ssh;

import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.viewpager.widget.ViewPager;
import app.fast.ssh.adapter.MyPagerAdapter;
import com.google.android.material.tabs.TabLayout;
import java.util.ArrayList;

public class AppsActivity extends AppCompatActivity {

    class AnonymousClass1 implements DialogInterface.OnClickListener {
        AnonymousClass1() {
        }

        @Override
        public void onClick(DialogInterface dialogInterface, int i) {
            AppsActivity.access$000(AppsActivity.this);
        }
    }

    static void access$000(AppsActivity appsActivity) {
        appsActivity.requestApp();
    }

    private void requestApp() {
        Intent intent = new Intent(ProtectedFastSSH.s("\u2ddf"), Uri.parse(ProtectedFastSSH.s("ⷞ")));
        intent.addCategory(ProtectedFastSSH.s("ⷠ"));
        intent.putExtra(ProtectedFastSSH.s("ⷢ"), new String[]{ProtectedFastSSH.s("ⷡ")});
        intent.putExtra(ProtectedFastSSH.s("ⷤ"), String.format(ProtectedFastSSH.s("ⷣ"), getString(com.hatunnel.plus.R.string.app_name)));
        intent.putExtra(ProtectedFastSSH.s("ⷥ"), ProtectedFastSSH.s("ⷦ"));
        if (intent.resolveActivity(getPackageManager()) != null) {
            startActivity(intent);
        }
    }

    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(com.hatunnel.plus.R.layout.l_res_0x7f0c001d);
        setSupportActionBar((Toolbar) findViewById(com.hatunnel.plus.R.id.l_res_0x7f090284));
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        getSupportActionBar().setHomeButtonEnabled(true);
        ArrayList arrayList = new ArrayList();
        arrayList.add(new AppsFragment(ProtectedFastSSH.s("ⷧ"), com.hatunnel.plus.R.drawable.l_res_0x7f0800a2));
        arrayList.add(new AppsFragment(ProtectedFastSSH.s("ⷨ"), com.hatunnel.plus.R.drawable.l_res_0x7f0800a5));
        arrayList.add(new AppsFragment(ProtectedFastSSH.s("ⷩ"), com.hatunnel.plus.R.drawable.l_res_0x7f0800ab));
        arrayList.add(new AppsFragment(ProtectedFastSSH.s("ⷪ"), com.hatunnel.plus.R.drawable.l_res_0x7f0800a9));
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(ProtectedFastSSH.s("ⷫ"));
        arrayList2.add(ProtectedFastSSH.s("ⷬ"));
        arrayList2.add(ProtectedFastSSH.s("ⷭ"));
        arrayList2.add(ProtectedFastSSH.s("ⷮ"));
        ViewPager viewPager = (ViewPager) findViewById(com.hatunnel.plus.R.id.l_res_0x7f0901d2);
        TabLayout tabLayout = (TabLayout) findViewById(com.hatunnel.plus.R.id.l_res_0x7f090255);
        MyPagerAdapter myPagerAdapter = new MyPagerAdapter(arrayList, arrayList2, getSupportFragmentManager(), 1);
        viewPager.setAdapter(myPagerAdapter);
        myPagerAdapter.notifyDataSetChanged();
        tabLayout.setupWithViewPager(viewPager);
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(com.hatunnel.plus.R.menu.l_res_0x7f0e0000, menu);
        return super.onCreateOptionsMenu(menu);
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        if (itemId == com.hatunnel.plus.R.id.l_res_0x7f09005b) {
            AlertDialog.Builder builder = new AlertDialog.Builder(this);
            builder.setTitle(ProtectedFastSSH.s("ⷯ"));
            builder.setMessage(ProtectedFastSSH.s("ⷰ"));
            builder.setPositiveButton(ProtectedFastSSH.s("ⷱ"), (DialogInterface.OnClickListener) null);
            builder.setNeutralButton(ProtectedFastSSH.s("ⷲ"), new AnonymousClass1());
            builder.create().show();
        } else if (itemId == com.hatunnel.plus.R.id.l_res_0x7f0901f8) {
            requestApp();
        }
        return super.onOptionsItemSelected(menuItem);
    }
}
