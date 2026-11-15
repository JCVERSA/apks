package com.transsion.mimedia.activity;

import android.content.Intent;
import android.os.Bundle;
import com.alibaba.android.arouter.facade.annotation.Route;
import com.transsion.mimedia.R;
import com.transsion.mimedia.fragment.MediaLibraryListFragment;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.playercommon.arouter.VishaRouterTable;
import defpackage.a64;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Route(path = VishaRouterTable.PATH_PAGE_ACTIVITY_MEDIA_LIBRARY_LIST)
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014¢\u0006\u0004\b\u0007\u0010\bJ\r\u0010\t\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\u0003¨\u0006\n"}, d2 = {"Lcom/transsion/mimedia/activity/MediaLibraryListActivity;", "Lcom/transsion/playercommon/activities/BaseActivity;", MethodDecl.initName, "()V", "Landroid/os/Bundle;", "savedInstanceState", "Lzfb;", "onCreate", "(Landroid/os/Bundle;)V", "initFragment", "mimedia_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class MediaLibraryListActivity extends BaseActivity {
    public final void initFragment() {
        MediaLibraryListFragment.Companion companion = MediaLibraryListFragment.INSTANCE;
        Intent intent = getIntent();
        a64.n((MediaLibraryListFragment) companion.a(intent != null ? intent.getExtras() : null).setBaseActivity(this), true, true);
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_container);
        initFragment();
        resetNavigationBarColor(true);
    }
}
