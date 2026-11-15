package com.transsion.mimedia.activity;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.alibaba.android.arouter.facade.annotation.Route;
import com.transsion.mimedia.R;
import com.transsion.mimedia.fragment.MediaLibraryVideoFragment;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.playercommon.arouter.VishaRouterTable;
import defpackage.a64;
import defpackage.jl6;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Route(path = VishaRouterTable.PATH_PAGE_ACTIVITY_MEDIA_LIBRARY_VIDEO)
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0007\u0018\u0000 \u00132\u00020\u0001:\u0001\u0014B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u0019\u0010\u000b\u001a\u00020\u00062\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0014¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\r\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\r\u0010\bJ\u0015\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0010\u0010\u0011J\r\u0010\u0012\u001a\u00020\u0006¢\u0006\u0004\b\u0012\u0010\u0003¨\u0006\u0015"}, d2 = {"Lcom/transsion/mimedia/activity/MediaLibraryVideoActivity;", "Lcom/transsion/playercommon/activities/BaseActivity;", MethodDecl.initName, "()V", "Landroid/content/Intent;", "intent", "Lzfb;", "handleShareIntent", "(Landroid/content/Intent;)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "onNewIntent", "", "mediaLibraryId", "showFragment", "(Ljava/lang/String;)V", "initFragment", "Companion", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "mimedia_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class MediaLibraryVideoActivity extends BaseActivity {
    public static final String HOST_OPEN = "com.transsion.magicshow";
    public static final String SCHEME_MIMEDIA = "mimedia";
    public static final String TAG = "MediaLibraryVideoActivity";

    private final void handleShareIntent(Intent intent) {
        if (!y45.e("android.intent.action.VIEW", intent.getAction())) {
            initFragment();
            return;
        }
        try {
            Uri data = intent.getData();
            if (data == null) {
                Log.w(TAG, "handleMediaLibrary Intent data is null");
                finish();
                return;
            }
            Log.d(TAG, "handleMediaLibrary Received URI: " + data);
            if (!y45.e(SCHEME_MIMEDIA, data.getScheme())) {
                Log.w(TAG, "handleMediaLibrary Invalid scheme: " + data.getScheme());
                finish();
                return;
            }
            if (!y45.e(HOST_OPEN, data.getHost())) {
                Log.w(TAG, "handleMediaLibrary Invalid host: " + data.getHost());
                finish();
                return;
            }
            jl6 jl6Var = jl6.a;
            String strB = jl6Var.b(data.toString());
            if (strB != null && strB.length() != 0) {
                Log.w(TAG, "handleMediaLibrary shareUrlString: " + strB);
                String strA = jl6Var.a(strB);
                if (strA != null) {
                    showFragment(strA);
                    return;
                }
                Log.w(TAG, "handleMediaLibrary finish id: " + strA);
                finish();
                return;
            }
            Log.w(TAG, "share_url parameter not found in mimedia URI");
            finish();
        } catch (Exception e) {
            Log.e(TAG, "Error handleMediaLibrary intent: " + e.getMessage());
            finish();
        }
    }

    public final void initFragment() {
        MediaLibraryVideoFragment.Companion companion = MediaLibraryVideoFragment.INSTANCE;
        Intent intent = getIntent();
        a64.n((MediaLibraryVideoFragment) companion.a(intent != null ? intent.getExtras() : null).setBaseActivity(this), true, true);
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_container);
        Intent intent = getIntent();
        y45.i(intent, "getIntent(...)");
        handleShareIntent(intent);
        resetNavigationBarColor(true);
    }

    @Override
    public void onNewIntent(Intent intent) {
        y45.j(intent, "intent");
        super.onNewIntent(intent);
        Log.d(TAG, "MiMediaActivity onNewIntent");
        handleShareIntent(intent);
    }

    public final void showFragment(String mediaLibraryId) {
        y45.j(mediaLibraryId, "mediaLibraryId");
        Intent intent = getIntent();
        if (intent != null) {
            intent.putExtra("mediaLibraryId", mediaLibraryId);
        }
        Intent intent2 = getIntent();
        if (intent2 != null) {
            intent2.putExtra("from", 3);
        }
        MediaLibraryVideoFragment.Companion companion = MediaLibraryVideoFragment.INSTANCE;
        Intent intent3 = getIntent();
        a64.n((MediaLibraryVideoFragment) companion.a(intent3 != null ? intent3.getExtras() : null).setBaseActivity(this), true, true);
    }
}
