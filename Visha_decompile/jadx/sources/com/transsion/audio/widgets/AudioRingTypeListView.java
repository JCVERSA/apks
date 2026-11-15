package com.transsion.audio.widgets;

import android.content.Context;
import android.media.RingtoneManager;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.transsion.athena.data.TrackData;
import com.transsion.audio.activities.AudioRingSheetDialogActivity;
import com.transsion.audio.adapter.RingtoneAdapter;
import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.effectengine.bounceeffect.OverScrollDecorHelper;
import com.transsion.playercommon.R;
import com.transsion.utils.CustomLinearLayoutManager;
import com.transsion.utils.ToastUtils;
import defpackage.p06;
import defpackage.pp3;
import java.util.ArrayList;
import java.util.List;

public class AudioRingTypeListView extends LinearLayout {
    private AudioItem audioItem;
    private Context context;

    public static class AudioRing {
        public String name;
        public int resId;

        public AudioRing(String str, int i) {
            this.name = str;
            this.resId = i;
        }
    }

    public AudioRingTypeListView(Context context, AudioItem audioItem) {
        super(context);
        this.context = context;
        this.audioItem = audioItem;
        init(context);
    }

    private void init(final Context context) {
        RecyclerView recyclerView = (RecyclerView) LayoutInflater.from(context).inflate(R.layout.audio_add_ringtone, this).findViewById(R.id.rv_video_play_filelist);
        RingtoneAdapter ringtoneAdapter = new RingtoneAdapter(context);
        recyclerView.setLayoutManager(new CustomLinearLayoutManager(context));
        recyclerView.setAdapter(ringtoneAdapter);
        OverScrollDecorHelper.setUpOverScroll(recyclerView, 0);
        ArrayList arrayList = new ArrayList();
        final ArrayList arrayList2 = new ArrayList();
        if (!pp3.y(context)) {
            arrayList.add(new AudioRing(getResources().getString(com.transsion.audio.R.string.phone_ringtone), com.transsion.audio.R.drawable.ic_ringtone));
            arrayList2.add(1);
        }
        arrayList.add(new AudioRing(getResources().getString(com.transsion.audio.R.string.alram_ringtone), com.transsion.audio.R.drawable.ic_alarm_tone));
        arrayList2.add(4);
        arrayList.add(new AudioRing(getResources().getString(com.transsion.audio.R.string.notification_ringtone), com.transsion.audio.R.drawable.ic_notification_sound));
        arrayList2.add(2);
        ringtoneAdapter.setNewData(arrayList);
        ringtoneAdapter.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
            @Override
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                this.b.lambda$init$0(arrayList2, context, baseQuickAdapter, view, i);
            }
        });
    }

    public void lambda$init$0(List list, Context context, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        if (i < 0 || i >= list.size()) {
            return;
        }
        int iIntValue = ((Integer) list.get(i)).intValue();
        try {
            markPointRingSet(i + 1);
            RingtoneManager.setActualDefaultRingtoneUri(getContext(), iIntValue, this.audioItem.getUri());
            ToastUtils.u(context, com.transsion.audio.R.string.set_finish);
            if (context instanceof AudioRingSheetDialogActivity) {
                ((AudioRingSheetDialogActivity) context).animateDismiss();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void markPointRingSet(int i) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putInt("ringset_mode", i);
        trackData.add("ringset_mode", i);
        p06.q0(trackData, bundle, "vd_audio_play", 9324L);
    }
}
