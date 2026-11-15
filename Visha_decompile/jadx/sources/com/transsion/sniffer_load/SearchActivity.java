package com.transsion.sniffer_load;

import android.content.Intent;
import android.os.Bundle;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.sniffer_load.fragment.SearchFragment;
import defpackage.a64;

public class SearchActivity extends BaseActivity {
    @Override
    public int getFragmentContentId() {
        return com.transsion.magicvideo.R.id.fragment_content;
    }

    @Override
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (intent != null) {
            setResult(1242, intent);
            finish();
        }
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        com.transsion.utils.a.a(this, 10);
        setContentView(R.layout.activity_container);
        SearchFragment searchFragment = (SearchFragment) SearchFragment.D0(this, getIntent().getStringExtra("from"), null).setBaseActivity(this);
        searchFragment.getArguments().putString("page_tag", getIntent().getExtras().getString("page_tag"));
        searchFragment.getArguments().putString("web_start_url", getIntent().getExtras().getString("web_start_url"));
        a64.n(searchFragment, true, true);
    }
}
