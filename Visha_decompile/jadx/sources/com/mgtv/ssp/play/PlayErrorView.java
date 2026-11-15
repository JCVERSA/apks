package com.mgtv.ssp.play;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.hunantv.imgo.data.MgtvPlayerConstants;
import com.hunantv.imgo.util.p;
import com.hunantv.imgo.util.t;
import com.mgtv.ssp.R;
import com.mgtv.ssp.a.a;
import com.mgtv.ssp.activity.SspCommonWebActivity;
import com.mgtv.ssp.control.b;
import com.mgtv.thirdsdk.playcore.utils.f;

public class PlayErrorView implements b {
    private a authData;
    private String code;
    private String default_error;
    private boolean isLandScreen;
    public Context mContext;
    private PreviewEndScene mCurrentScene;
    private View mErrorView;
    private ImageView mIvBack;
    public FrameLayout mParent;
    private TextView mTvFeedBack;
    private TextView mTvMSG;
    private String msg;
    private String videoId;
    private OnErrorViewCallback viewClicked;

    public interface OnErrorViewCallback {
        boolean isFull();

        void onBack();

        void onDismiss();

        void retry();

        void toLogin();

        void toVip(String str);
    }

    public PlayErrorView(@NonNull Context context, String str, String str2) {
        this.mContext = context;
        this.mParent = new FrameLayout(context);
        this.code = str;
        this.msg = str2;
        this.default_error = context.getResources().getString(R.string.more_goto_manguotv);
    }

    private View getErrorView() {
        View viewInflate = LayoutInflater.from(this.mContext).inflate(R.layout.error_play, (ViewGroup) null);
        this.mErrorView = viewInflate;
        this.mTvMSG = (TextView) viewInflate.findViewById(R.id.tv_msg);
        if (this.code == MgtvPlayerConstants.ErrorCode.CONTINUE_TO_MGTV) {
            this.mErrorView.findViewById(R.id.iv_continue_icon).setVisibility(0);
        }
        String str = this.code;
        if (str != null && str.startsWith("140105_")) {
            TextView textView = (TextView) this.mErrorView.findViewById(R.id.tv_feedback);
            this.mTvFeedBack = textView;
            if (textView != null && this.mContext != null) {
                textView.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View view) {
                        Intent intent = new Intent(PlayErrorView.this.mContext, (Class<?>) SspCommonWebActivity.class);
                        intent.putExtra("webUrl", com.mgtv.ssp.auth.b.a().e().getReportH5().replace("__VCODE__", PlayErrorView.this.videoId));
                        com.hunantv.imgo.util.a.a(PlayErrorView.this.mContext, intent);
                    }
                });
                this.mTvFeedBack.setVisibility(0);
            }
        }
        OnErrorViewCallback onErrorViewCallback = this.viewClicked;
        if (onErrorViewCallback != null) {
            this.isLandScreen = onErrorViewCallback.isFull() || this.isLandScreen;
        }
        ImageView imageView = (ImageView) this.mErrorView.findViewById(R.id.imgv_error_back);
        this.mIvBack = imageView;
        if (this.isLandScreen) {
            f.a(imageView, 0);
            this.mIvBack.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View view) {
                    if (PlayErrorView.this.viewClicked != null) {
                        f.a(PlayErrorView.this.mIvBack, 8);
                        PlayErrorView.this.viewClicked.onBack();
                    }
                }
            });
        }
        return this.mErrorView;
    }

    private View getRealView() {
        return isShowVip() ? this.mParent : this.mErrorView;
    }

    private View getVipView() {
        PreviewEndScene previewEndScene = new PreviewEndScene();
        a aVar = this.authData;
        if (aVar != null) {
            previewEndScene.setAuthData(aVar);
        }
        OnErrorViewCallback onErrorViewCallback = this.viewClicked;
        if (onErrorViewCallback != null) {
            this.isLandScreen = onErrorViewCallback.isFull() || this.isLandScreen;
        }
        ImageView imageView = new ImageView(this.mContext);
        this.mIvBack = imageView;
        if (this.isLandScreen) {
            f.a(imageView, 0);
            int iA = t.a(this.mContext, 25.0f);
            this.mParent.addView(this.mIvBack, new FrameLayout.LayoutParams(iA, iA));
            this.mIvBack.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View view) {
                    if (PlayErrorView.this.viewClicked != null) {
                        f.a(PlayErrorView.this.mIvBack, 8);
                        PlayErrorView.this.viewClicked.onBack();
                    }
                }
            });
        }
        PreviewEndScene previewEndScene2 = this.mCurrentScene;
        if (previewEndScene2 != null) {
            previewEndScene2.detach(this.mParent);
        }
        previewEndScene.attach(this.mParent);
        this.mCurrentScene = previewEndScene;
        previewEndScene.setOnViewClick(this.viewClicked);
        return this.mParent;
    }

    private boolean isShowVip() {
        if (com.hunantv.imgo.util.b.Z() || this.code != MgtvPlayerConstants.ErrorCode.AUTH_FAILED_VIP) {
            if (MgtvPlayerConstants.ErrorCode.AUTH_FAILED_VIP.equals(this.code) && this.authData != null) {
                return true;
            }
            if (MgtvPlayerConstants.ErrorCode.AUTH_FAILED_VIP.equals(this.code)) {
                this.msg = this.mContext.getResources().getString(R.string.error_change_video);
            }
            return false;
        }
        this.code = MgtvPlayerConstants.ErrorCode.CONTINUE_TO_MGTV;
        String strAa = com.hunantv.imgo.util.b.aa();
        this.msg = strAa;
        if (TextUtils.isEmpty(strAa)) {
            this.msg = this.default_error;
        }
        return false;
    }

    private boolean needReactClick(String str) {
        return (str == MgtvPlayerConstants.ErrorCode.CONTINUE_TO_MGTV || str.startsWith("140105_")) ? false : true;
    }

    private void setClickListener() {
        if (this.mErrorView != null) {
            String str = this.code;
            if (str == null || !needReactClick(str)) {
                this.mErrorView.setOnClickListener(null);
            } else {
                this.mErrorView.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View view) {
                        if (PlayErrorView.this.viewClicked != null) {
                            PlayErrorView.this.viewClicked.retry();
                        }
                    }
                });
            }
        }
    }

    @Override
    public void attach(@NonNull com.mgtv.ssp.control.a aVar) {
    }

    @Override
    @Nullable
    public View getView() {
        return getRealView();
    }

    @Override
    public void onLockStateChanged(boolean z) {
    }

    @Override
    public void onPlayStateChanged(int i) {
        View realView;
        if (i != 5) {
            if (i == 16) {
                View realView2 = getRealView();
                if (realView2 != null) {
                    realView2.setVisibility(0);
                    realView2.bringToFront();
                    return;
                }
                return;
            }
            if (i == 9 || i == 10 || (realView = getRealView()) == null) {
                return;
            }
            realView.setVisibility(8);
            OnErrorViewCallback onErrorViewCallback = this.viewClicked;
            if (onErrorViewCallback != null) {
                onErrorViewCallback.onDismiss();
            }
        }
    }

    @Override
    public void onPlayerStateChanged(int i) {
    }

    @Override
    public void onVisibilityChanged(boolean z, Animation animation) {
    }

    public void rendUi(String str) {
        rendUi(str, "-1");
    }

    public void screenChange(boolean z) {
        this.isLandScreen = z;
        if (z) {
            f.a(this.mIvBack, 0);
        } else {
            f.a(this.mIvBack, 8);
        }
    }

    public void setAuthData(a aVar) {
        this.authData = aVar;
    }

    public void setLandScreen(boolean z) {
        this.isLandScreen = z;
    }

    public void setMsg(String str) {
        this.msg = str;
    }

    @Override
    public void setProgress(int i, int i2) {
    }

    public void setTvMSG(String str) {
        TextView textView = this.mTvMSG;
        if (textView != null) {
            textView.setText(str);
        }
    }

    public void setViewClick(OnErrorViewCallback onErrorViewCallback) {
        this.viewClicked = onErrorViewCallback;
    }

    public void rendUi(String str, String str2) {
        this.code = str;
        this.videoId = str2;
        if (isShowVip()) {
            getVipView();
            return;
        }
        if (MgtvPlayerConstants.ErrorCode.AUTH_SUCCESS.equals(str)) {
            return;
        }
        if (!p.f()) {
            this.msg = this.mContext.getString(R.string.no_network);
        }
        getErrorView();
        setClickListener();
        setTvMSG(this.msg);
    }
}
