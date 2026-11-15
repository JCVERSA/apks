package com.transsion.audio.activities;

import android.content.Intent;
import android.view.View;
import com.transsion.audio.widgets.AudioPlayListAddBucketView;
import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.dbdata.beans.media.PlayAudioListData;
import com.transsion.playercommon.R;
import com.transsion.playercommon.activities.RxPermissionOSBottomSheetDialog;
import com.transsion.widgetsbottomsheet.bottomsheet.OSPageView;
import defpackage.vg9;
import java.util.ArrayList;
import java.util.List;

public class AudioAddAllPlayListDialogActivity extends RxPermissionOSBottomSheetDialog {
    public List N;
    public boolean O;

    public final void h0(String str, boolean z, boolean z2, ArrayList arrayList) {
        OSPageView oSPageViewAddPage = addPage(new AudioPlayListAddBucketView(this, this.N, false, (AudioItem[]) arrayList.toArray(new AudioItem[arrayList.size()])));
        oSPageViewAddPage.setTitle(str);
        if (z) {
            oSPageViewAddPage.setBackIconVisibility(true);
            oSPageViewAddPage.setOnTitleBackIconClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    this.b.i0(view);
                }
            });
        }
        if (z2) {
            oSPageViewAddPage.setOnTitleCloseIconClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    this.b.j0(view);
                }
            });
        }
        oSPageViewAddPage.setCloseIconVisibility(z2);
    }

    public final void i0(View view) {
        popPage();
    }

    @Override
    public void initView() {
        super.initView();
        Intent intent = getIntent();
        ArrayList arrayList = new ArrayList();
        this.N = arrayList;
        arrayList.addAll(vg9.a());
        this.O = intent.getBooleanExtra("is_last", false);
        h0(getString(R.string.add_all_song_to_playlist), false, false, this.O ? PlayAudioListData.getInstance().getLastPlayList() : PlayAudioListData.getInstance().getPlayList());
    }

    public final void j0(View view) {
        animateDismiss();
    }
}
