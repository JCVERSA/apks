package com.transsion.audio.adapter;

import android.util.Log;
import android.view.View;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.audio.R;
import com.transsion.audio.data.AudioSettingItem;
import com.transsion.widgetslib.widget.OSIconTextView;
import java.util.List;

public abstract class AudioSettingLoopAdapter extends BaseQuickAdapter<AudioSettingItem, BaseViewHolder> {
    private boolean isForceNight;
    private int repeatMode;
    private int selectPosition;

    public AudioSettingLoopAdapter(List list, int i, boolean z) {
        super(R.layout.audio_loop_item_layout, list);
        this.repeatMode = i;
        this.isForceNight = z;
    }

    public final void c(int i, View view) {
        this.selectPosition = i;
        notifyDataSetChanged();
        AudioSettingItem audioSettingItem = getData().get(this.selectPosition);
        this.repeatMode = audioSettingItem.getValue();
        selectItem(this.selectPosition, audioSettingItem);
    }

    public void notifyByNightType(boolean z) {
        this.isForceNight = z;
        notifyDataSetChanged();
    }

    public abstract void selectItem(int i, AudioSettingItem audioSettingItem);

    public void updateRepeatMode(int i) {
        this.repeatMode = i;
    }

    @Override
    public void convert(BaseViewHolder baseViewHolder, AudioSettingItem audioSettingItem) {
        int i;
        boolean z = this.repeatMode == audioSettingItem.getValue();
        View view = baseViewHolder.getView(R.id.fl_bg);
        final int adapterPosition = baseViewHolder.getAdapterPosition();
        if (z) {
            Log.i("AudioSettingLoop", "isForceNight: " + this.isForceNight);
            view.setBackgroundResource(this.isForceNight ? R.drawable.audio_loop_select_item_light : R.drawable.audio_loop_select_item);
        } else {
            view.setBackgroundResource(0);
        }
        baseViewHolder.itemView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                this.b.c(adapterPosition, view2);
            }
        });
        OSIconTextView oSIconTextView = (OSIconTextView) baseViewHolder.getView(R.id.image);
        oSIconTextView.setText(audioSettingItem.getIconResId());
        if (z) {
            i = this.isForceNight ? -16777216 : -855310;
        } else {
            i = -4210753;
        }
        oSIconTextView.setTextColor(i);
    }
}
