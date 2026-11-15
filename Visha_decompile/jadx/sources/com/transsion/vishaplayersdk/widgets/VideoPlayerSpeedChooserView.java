package com.transsion.vishaplayersdk.widgets;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RelativeLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.vishaplayersdk.R;
import com.transsion.vishaplayersdk.adapter.SpeedAdapter;
import java.util.ArrayList;
import java.util.List;

public class VideoPlayerSpeedChooserView extends RelativeLayout {
    public static final int SPEED_CHANGING_1 = 0;
    public static final int SPEED_CHANGING_2 = 1;
    public static final int SPEED_CHANGING_3 = 2;
    public static final int SPEED_CHANGING_4 = 3;
    public static final int SPEED_FIXED = -1;
    private List<String> list;
    private Context mContext;
    private boolean mInflated;
    private SpeedAdapter mSpeedAdapter;
    private RecyclerView mSpeedRv;
    private int mSpeedState;
    private View mSpeedTv;

    public VideoPlayerSpeedChooserView(Context context) {
        super(context);
        this.list = new ArrayList();
        this.mSpeedState = -2;
        this.mContext = context;
    }

    private void ensureInflated() {
        if (this.mInflated) {
            return;
        }
        this.mInflated = true;
        if (this.mContext == null) {
            this.mContext = getContext();
        }
        View viewInflate = View.inflate(this.mContext, R.layout.online_player_speed_choose_view, this);
        this.mSpeedTv = viewInflate.findViewById(R.id.tv_play_speed);
        this.mSpeedRv = (RecyclerView) viewInflate.findViewById(R.id.rv_speed);
        initSpeedRecyclerView();
    }

    private void initSpeedRecyclerView() {
        this.mSpeedRv.setLayoutManager(new LinearLayoutManager(this.mContext));
        SpeedAdapter speedAdapter = new SpeedAdapter();
        this.mSpeedAdapter = speedAdapter;
        this.mSpeedRv.setAdapter(speedAdapter);
        this.list.add(getResources().getString(R.string.online_play_speed_circle_3_0));
        this.list.add(getResources().getString(R.string.online_play_speed_circle_2_0));
        this.list.add(getResources().getString(R.string.online_play_speed_circle_1_5));
        this.list.add(getResources().getString(R.string.online_play_speed_circle_1_25));
        this.mSpeedAdapter.setNewData(this.list);
    }

    @SuppressLint({"NotifyDataSetChanged"})
    public void changeChildVisible(int i) {
        ensureInflated();
        if (i == -1) {
            this.mSpeedTv.setVisibility(0);
            this.mSpeedRv.setVisibility(8);
            setBackgroundResource(R.color.transparent);
        } else if (i == 0 || i == 1 || i == 2 || i == 3) {
            setBackgroundResource(R.drawable.speed_chooser_view_bg);
            this.mSpeedRv.setVisibility(0);
            this.mSpeedAdapter.setSelectedItemPosition(i);
            this.mSpeedAdapter.notifyDataSetChanged();
            this.mSpeedTv.setVisibility(8);
        }
    }

    public void init(Context context) {
        this.mContext = context;
        ensureInflated();
    }

    public void setSpeedState(int i) {
        ensureInflated();
        if (this.mSpeedState != i) {
            this.mSpeedState = i;
            changeChildVisible(i);
        }
    }

    public VideoPlayerSpeedChooserView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.list = new ArrayList();
        this.mSpeedState = -2;
        this.mContext = context;
    }

    public VideoPlayerSpeedChooserView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.list = new ArrayList();
        this.mSpeedState = -2;
        this.mContext = context;
    }

    public VideoPlayerSpeedChooserView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.list = new ArrayList();
        this.mSpeedState = -2;
        this.mContext = context;
    }
}
