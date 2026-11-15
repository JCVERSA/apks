package com.transsion.magicvideo.edit;

import android.net.Uri;
import android.view.SurfaceView;
import android.view.View;
import com.transsion.video_edit.EditBaseActivity;
import defpackage.a64;

public class EditMainActivity extends EditBaseActivity {
    @Override
    public void U0(String str, final Uri uri) {
        super.U0(str, uri);
        runOnUiThread(new Runnable() {
            @Override
            public final void run() {
                this.b.n1(uri);
            }
        });
    }

    public final void n1(Uri uri) {
        String strSubstring = this.Y;
        if (strSubstring.startsWith("/")) {
            strSubstring = this.Y.substring(1);
        }
        VideoEditorShareFragment videoEditorShareFragmentE0 = VideoEditorShareFragment.e0(uri, strSubstring, "cut");
        videoEditorShareFragmentE0.setBaseActivity(this);
        a64.n(videoEditorShareFragmentE0, true, false);
        this.q0 = false;
        View view = this.X;
        if (view != null) {
            view.setVisibility(8);
        }
        SurfaceView surfaceView = this.N;
        if (surfaceView != null) {
            surfaceView.setVisibility(8);
        }
    }

    @Override
    public void onBackPressed() {
        super.onBackPressed();
        setResult(1237);
    }
}
