package com.mgtv.ssp.widget;

import android.animation.ArgbEvaluator;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Color;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.mgtv.ssp.R;
import com.mgtv.ssp.adapter.listener.a;
import com.mgtv.ssp.bean.VideoInfoBean;
import com.mgtv.ssp.control.b;
import com.mgtv.thirdsdk.playcore.utils.f;

public class ImmerCoverView extends FrameLayout implements b {
    public VideoInfoBean a;
    protected ProgressBar b;
    public LinearLayout c;
    ValueAnimator d;
    boolean e;
    boolean f;
    private a g;
    private ImageView h;
    private ImageView i;
    private com.mgtv.ssp.control.a j;
    private FrameLayout k;
    private TextView l;
    private View m;
    private View n;
    private FrameLayout o;
    private com.mgtv.ssp.immersion.a.a p;
    private Handler q;

    public ImmerCoverView(@NonNull Context context) {
        super(context);
        this.q = new Handler(Looper.getMainLooper()) {
            @Override
            public void handleMessage(Message message) {
                ImmerCoverView.this.d();
            }
        };
        c();
    }

    @Override
    public void attach(@NonNull com.mgtv.ssp.control.a aVar) {
        this.j = aVar;
    }

    public ImageView getThumb() {
        return this.h;
    }

    @Override
    public View getView() {
        return this;
    }

    @Override
    public void onLockStateChanged(boolean z) {
    }

    @Override
    public void onPlayStateChanged(int i) {
        switch (i) {
            case 0:
                setVisibility(0);
                this.h.setVisibility(0);
                this.i.setVisibility(8);
                this.b.setVisibility(0);
                this.c.setVisibility(0);
                break;
            case 1:
            case 7:
                setVisibility(0);
                this.b.setVisibility(0);
                break;
            case 2:
            case 3:
            case 4:
                this.c.setVisibility(0);
                this.b.setVisibility(8);
                this.h.setVisibility(8);
                this.i.setVisibility(8);
                this.k.setVisibility(8);
                break;
            case 5:
                setVisibility(0);
                this.b.setVisibility(0);
                this.k.setVisibility(8);
                break;
            case 8:
                setVisibility(0);
                this.c.setVisibility(0);
                this.b.setVisibility(8);
                this.h.setVisibility(8);
                this.i.setVisibility(8);
                this.k.setVisibility(8);
                break;
            case 9:
                setVisibility(0);
                this.h.setVisibility(8);
                this.i.setVisibility(0);
                this.i.setSelected(false);
                this.b.setVisibility(8);
                this.k.setVisibility(8);
                break;
            case 13:
                this.b.setVisibility(8);
                this.h.setVisibility(8);
                this.i.setVisibility(8);
                Toast.makeText(getContext(), R.string.mgplayer_error_message, 0).show();
                break;
            case 14:
                setVisibility(0);
                this.k.setVisibility(0);
                this.b.setVisibility(8);
                this.k.bringToFront();
                this.i.setVisibility(8);
                this.h.setVisibility(0);
                break;
            case 16:
                this.b.setVisibility(8);
                setVisibility(0);
                break;
        }
    }

    @Override
    public void onPlayerStateChanged(int i) {
    }

    @Override
    public void onVisibilityChanged(boolean z, Animation animation) {
        if (z) {
            this.i.setSelected(true);
            this.i.setVisibility(0);
        } else if (this.i.isSelected()) {
            this.i.setSelected(false);
            this.i.setVisibility(8);
        }
    }

    @Override
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (z == this.f) {
            return;
        }
        this.f = z;
        if (z) {
            return;
        }
        b();
    }

    @Override
    public void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        if (i == 0) {
            if (this.e) {
                return;
            }
            this.e = true;
        } else if (this.e) {
            this.e = false;
            b();
        }
    }

    public void setAutoPlayClickListener(com.mgtv.ssp.immersion.a.a aVar) {
        this.p = aVar;
    }

    public void setOnItemClickListener(a aVar) {
        this.g = aVar;
    }

    @Override
    public void setProgress(int i, int i2) {
    }

    public void setVideoInfo(VideoInfoBean videoInfoBean) {
        this.a = videoInfoBean;
        if (TextUtils.isEmpty(videoInfoBean.getIntactSchema()) || TextUtils.isEmpty(videoInfoBean.getIntactVcode())) {
            f.a(this.m, 8);
        } else {
            f.a(this.m, 0);
        }
    }

    private void c() {
        LayoutInflater.from(getContext()).inflate(R.layout.layout_cover_control_view, (ViewGroup) this, true);
        this.h = (ImageView) findViewById(R.id.iv_thumb);
        ImageView imageView = (ImageView) findViewById(R.id.play_btn);
        this.i = imageView;
        imageView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                if (ImmerCoverView.this.j != null) {
                    ImmerCoverView.this.j.togglePlay();
                }
            }
        });
        this.b = (ProgressBar) findViewById(R.id.loading);
        LinearLayout linearLayout = (LinearLayout) findViewById(R.id.ll_bottom);
        this.c = linearLayout;
        linearLayout.setVisibility(0);
        this.b.setVisibility(0);
        this.h.setVisibility(0);
        this.k = (FrameLayout) findViewById(R.id.net_warning_layout);
        this.l = (TextView) findViewById(R.id.status_btn);
        this.k.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                ImmerCoverView.this.k.setVisibility(8);
                if (ImmerCoverView.this.p != null) {
                    ImmerCoverView.this.p.a();
                }
                ImmerCoverView.this.j.start();
            }
        });
        this.m = findViewById(R.id.view_immer_topositive);
        this.n = findViewById(R.id.tv_immer_topositive);
        this.m.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                if (ImmerCoverView.this.g != null) {
                    ImmerCoverView.this.g.a(ImmerCoverView.this.a);
                }
            }
        });
        this.o = (FrameLayout) findViewById(R.id.layout_error);
        b();
    }

    public void d() {
        View view = this.n;
        if (view != null) {
            view.setBackgroundColor(Color.parseColor("#10FF4500"));
            ObjectAnimator objectAnimatorOfInt = ObjectAnimator.ofInt(this.n, TtmlNode.ATTR_TTS_BACKGROUND_COLOR, 285164800, -2130754304, -855685888, -419478272, -47872);
            this.d = objectAnimatorOfInt;
            objectAnimatorOfInt.setDuration(1500L);
            this.d.setEvaluator(new ArgbEvaluator());
            this.d.setRepeatCount(0);
            this.d.setRepeatMode(2);
            this.d.start();
        }
    }

    public void a() {
        ValueAnimator valueAnimator = this.d;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        this.q.removeMessages(1);
        this.q.sendEmptyMessageDelayed(1, 2000L);
    }

    public void b() {
        View view = this.n;
        if (view != null) {
            view.setBackgroundColor(Color.parseColor("#191A1B"));
        }
        ValueAnimator valueAnimator = this.d;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        this.q.removeMessages(1);
    }

    public ImmerCoverView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.q = new Handler(Looper.getMainLooper()) {
            @Override
            public void handleMessage(Message message) {
                ImmerCoverView.this.d();
            }
        };
        c();
    }

    public ImmerCoverView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.q = new Handler(Looper.getMainLooper()) {
            @Override
            public void handleMessage(Message message) {
                ImmerCoverView.this.d();
            }
        };
        c();
    }
}
