package com.transsion.vishaplayersdk.widgets;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.blankj.utilcode.util.LogUtils;
import com.hunantv.imgo.data.MgtvPlayerConstants;
import com.tencent.mmkv.MMKV;
import com.transsion.utils.ToastUtils;
import com.transsion.vishaplayersdk.R;
import com.transsion.vishaplayersdk.gsyplayer.utils.NetworkUtils;
import com.transsion.vishaplayersdk.gsyplayer.video.PlayHandler;
import defpackage.h27;
import defpackage.wz5;

public class ErrorRefreshLayer extends LinearLayout {
    private final String TAG;
    private CheckBox mCheckBox;
    private TextView mRefrash;
    private View mRemindLayout;
    private TextView mTip;
    RefrashListener refrashListener;
    private int time;
    Runnable timeCountDownTask;
    private int type;
    private String value;

    public interface RefrashListener {
        void exit(int i);

        void retry(int i);
    }

    public ErrorRefreshLayer(Context context, int i) {
        super(context);
        this.time = 10;
        this.TAG = "visha_" + ErrorRefreshLayer.class.getSimpleName();
        this.timeCountDownTask = new Runnable() {
            @Override
            public void run() {
                ErrorRefreshLayer.this.mRefrash.setText(ErrorRefreshLayer.this.getContext().getString(R.string.error_resume_sec, Integer.valueOf(ErrorRefreshLayer.this.time)));
                ErrorRefreshLayer.this.invalidate();
                ErrorRefreshLayer.this.time--;
                if (ErrorRefreshLayer.this.time >= 0) {
                    ErrorRefreshLayer.this.updateTime();
                    return;
                }
                LogUtils.j(ErrorRefreshLayer.this.TAG, "play tick");
                ErrorRefreshLayer.this.time = -1;
                PlayHandler.getInstance().mShowMobileData = false;
                h27.c().e(1001, Boolean.FALSE);
                wz5.b();
                if (ErrorRefreshLayer.this.refrashListener != null) {
                    wz5.w();
                    PlayHandler.getInstance().mPlayStartTime = System.currentTimeMillis();
                    ErrorRefreshLayer errorRefreshLayer = ErrorRefreshLayer.this;
                    errorRefreshLayer.refrashListener.retry(errorRefreshLayer.type);
                }
            }
        };
        this.type = i;
        init(context);
    }

    private void init(Context context) {
        setOrientation(1);
        View viewInflate = View.inflate(context, R.layout.layout_error_refrash, this);
        TextView textView = (TextView) viewInflate.findViewById(R.id.tip);
        this.mTip = textView;
        textView.setText(getTip(this.type));
        this.mRemindLayout = viewInflate.findViewById(R.id.remind);
        this.mCheckBox = (CheckBox) viewInflate.findViewById(R.id.iv_remind_checkBox);
        boolean z = this.type == 1001;
        TextView textView2 = (TextView) viewInflate.findViewById(R.id.refrash);
        this.mRefrash = textView2;
        if (z || this.type != 1068) {
            Context context2 = getContext();
            textView2.setText(z ? context2.getString(R.string.error_resume_sec, Integer.valueOf(this.time)) : context2.getString(R.string.error_refresh));
        } else {
            textView2.setText(getContext().getString(R.string.player_live_exit));
        }
        this.mRemindLayout.setVisibility(z ? 0 : 8);
        if (z) {
            this.time = 10;
            this.mCheckBox.setChecked(MMKV.p().e("moble_remind", false));
            this.mCheckBox.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    this.b.lambda$init$0(view);
                }
            });
            updateTime();
        }
        this.mRefrash.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.lambda$init$1(view);
            }
        });
        if (this.type == 1002) {
            wz5.A();
        }
    }

    public void lambda$init$0(View view) {
        MMKV.p().y("moble_remind", this.mCheckBox.isChecked());
    }

    public void lambda$init$1(View view) {
        int i = this.type;
        if (i == 1068) {
            RefrashListener refrashListener = this.refrashListener;
            if (refrashListener != null) {
                refrashListener.exit(i);
                return;
            }
            return;
        }
        if (i == 1002) {
            wz5.v();
        }
        if (!NetworkUtils.isAvailable(getContext())) {
            ToastUtils.s(R.string.tip_no_net);
            return;
        }
        if (this.type == 1001) {
            this.time = -1;
            PlayHandler.getInstance().mShowMobileData = false;
            h27.c().e(1001, Boolean.FALSE);
            wz5.b();
        }
        if (this.refrashListener != null) {
            wz5.w();
            PlayHandler.getInstance().mPlayStartTime = System.currentTimeMillis();
            this.refrashListener.retry(this.type);
        }
        setVisibility(8);
    }

    public void updateTime() {
        if (this.time < 0 || getVisibility() != 0) {
            return;
        }
        this.mRefrash.postDelayed(this.timeCountDownTask, 1000L);
    }

    public String getTip(int i) {
        if (i == 1002) {
            return getContext().getString(R.string.eror_no_net);
        }
        if (i == 1001) {
            return getContext().getString(R.string.eror_no_wifi);
        }
        if (i != 1000 || TextUtils.isEmpty(this.value)) {
            return i == 1068 ? getContext().getString(R.string.player_live_complete) : getContext().getString(R.string.error_play);
        }
        if (MgtvPlayerConstants.ErrorCode.AUTH_FAILED_IP_NOT_PERMITTED.equals(this.value)) {
            return getContext().getString(R.string.error_zone);
        }
        if (MgtvPlayerConstants.ErrorCode.AUTH_FAILED_VIP.equals(this.value)) {
            return getContext().getString(R.string.error_auhtor);
        }
        return "140100".equals(this.value) ? getContext().getString(R.string.eror_no_net) : getContext().getString(R.string.error_play_code, this.value);
    }

    public int getType() {
        return this.type;
    }

    public void hideError() {
        this.mRefrash.removeCallbacks(this.timeCountDownTask);
        this.time = -1;
        setVisibility(8);
    }

    public void setRefrashListener(RefrashListener refrashListener) {
        this.refrashListener = refrashListener;
    }

    public ErrorRefreshLayer(Context context, int i, String str) {
        super(context);
        this.time = 10;
        this.TAG = "visha_" + ErrorRefreshLayer.class.getSimpleName();
        this.timeCountDownTask = new Runnable() {
            @Override
            public void run() {
                ErrorRefreshLayer.this.mRefrash.setText(ErrorRefreshLayer.this.getContext().getString(R.string.error_resume_sec, Integer.valueOf(ErrorRefreshLayer.this.time)));
                ErrorRefreshLayer.this.invalidate();
                ErrorRefreshLayer.this.time--;
                if (ErrorRefreshLayer.this.time >= 0) {
                    ErrorRefreshLayer.this.updateTime();
                    return;
                }
                LogUtils.j(ErrorRefreshLayer.this.TAG, "play tick");
                ErrorRefreshLayer.this.time = -1;
                PlayHandler.getInstance().mShowMobileData = false;
                h27.c().e(1001, Boolean.FALSE);
                wz5.b();
                if (ErrorRefreshLayer.this.refrashListener != null) {
                    wz5.w();
                    PlayHandler.getInstance().mPlayStartTime = System.currentTimeMillis();
                    ErrorRefreshLayer errorRefreshLayer = ErrorRefreshLayer.this;
                    errorRefreshLayer.refrashListener.retry(errorRefreshLayer.type);
                }
            }
        };
        this.type = i;
        this.value = str;
        init(context);
    }

    public ErrorRefreshLayer(Context context) {
        super(context);
        this.time = 10;
        this.TAG = "visha_" + ErrorRefreshLayer.class.getSimpleName();
        this.timeCountDownTask = new Runnable() {
            @Override
            public void run() {
                ErrorRefreshLayer.this.mRefrash.setText(ErrorRefreshLayer.this.getContext().getString(R.string.error_resume_sec, Integer.valueOf(ErrorRefreshLayer.this.time)));
                ErrorRefreshLayer.this.invalidate();
                ErrorRefreshLayer.this.time--;
                if (ErrorRefreshLayer.this.time >= 0) {
                    ErrorRefreshLayer.this.updateTime();
                    return;
                }
                LogUtils.j(ErrorRefreshLayer.this.TAG, "play tick");
                ErrorRefreshLayer.this.time = -1;
                PlayHandler.getInstance().mShowMobileData = false;
                h27.c().e(1001, Boolean.FALSE);
                wz5.b();
                if (ErrorRefreshLayer.this.refrashListener != null) {
                    wz5.w();
                    PlayHandler.getInstance().mPlayStartTime = System.currentTimeMillis();
                    ErrorRefreshLayer errorRefreshLayer = ErrorRefreshLayer.this;
                    errorRefreshLayer.refrashListener.retry(errorRefreshLayer.type);
                }
            }
        };
        init(context);
    }

    public ErrorRefreshLayer(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.time = 10;
        this.TAG = "visha_" + ErrorRefreshLayer.class.getSimpleName();
        this.timeCountDownTask = new Runnable() {
            @Override
            public void run() {
                ErrorRefreshLayer.this.mRefrash.setText(ErrorRefreshLayer.this.getContext().getString(R.string.error_resume_sec, Integer.valueOf(ErrorRefreshLayer.this.time)));
                ErrorRefreshLayer.this.invalidate();
                ErrorRefreshLayer.this.time--;
                if (ErrorRefreshLayer.this.time >= 0) {
                    ErrorRefreshLayer.this.updateTime();
                    return;
                }
                LogUtils.j(ErrorRefreshLayer.this.TAG, "play tick");
                ErrorRefreshLayer.this.time = -1;
                PlayHandler.getInstance().mShowMobileData = false;
                h27.c().e(1001, Boolean.FALSE);
                wz5.b();
                if (ErrorRefreshLayer.this.refrashListener != null) {
                    wz5.w();
                    PlayHandler.getInstance().mPlayStartTime = System.currentTimeMillis();
                    ErrorRefreshLayer errorRefreshLayer = ErrorRefreshLayer.this;
                    errorRefreshLayer.refrashListener.retry(errorRefreshLayer.type);
                }
            }
        };
        init(context);
    }

    public ErrorRefreshLayer(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.time = 10;
        this.TAG = "visha_" + ErrorRefreshLayer.class.getSimpleName();
        this.timeCountDownTask = new Runnable() {
            @Override
            public void run() {
                ErrorRefreshLayer.this.mRefrash.setText(ErrorRefreshLayer.this.getContext().getString(R.string.error_resume_sec, Integer.valueOf(ErrorRefreshLayer.this.time)));
                ErrorRefreshLayer.this.invalidate();
                ErrorRefreshLayer.this.time--;
                if (ErrorRefreshLayer.this.time >= 0) {
                    ErrorRefreshLayer.this.updateTime();
                    return;
                }
                LogUtils.j(ErrorRefreshLayer.this.TAG, "play tick");
                ErrorRefreshLayer.this.time = -1;
                PlayHandler.getInstance().mShowMobileData = false;
                h27.c().e(1001, Boolean.FALSE);
                wz5.b();
                if (ErrorRefreshLayer.this.refrashListener != null) {
                    wz5.w();
                    PlayHandler.getInstance().mPlayStartTime = System.currentTimeMillis();
                    ErrorRefreshLayer errorRefreshLayer = ErrorRefreshLayer.this;
                    errorRefreshLayer.refrashListener.retry(errorRefreshLayer.type);
                }
            }
        };
        init(context);
    }
}
