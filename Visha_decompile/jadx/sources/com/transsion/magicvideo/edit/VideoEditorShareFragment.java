package com.transsion.magicvideo.edit;

import android.content.res.Configuration;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.transsion.athena.data.TrackData;
import com.transsion.magicvideo.R;
import com.transsion.magicvideo.widgets.VideoPlayerMediaView;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.playercommon.fragments.BaseFragment;
import defpackage.jb8;
import defpackage.p06;
import defpackage.pp3;
import defpackage.rr3;
import defpackage.ux0;
import io.appmetrica.analytics.coreutils.internal.StringUtils;

public class VideoEditorShareFragment extends BaseFragment {
    public Uri l;
    public TextView m;
    public ImageView n;
    public ImageView o;
    public VideoPlayerMediaView p;
    public FrameLayout q;
    public com.transsion.playercommon.player.b r;
    public SurfaceHolder s;
    public View t;
    public TextView u;
    public String v;
    public String w;
    public Button x;
    public com.transsion.playercommon.player.b.a y = new d();
    public VideoPlayerMediaView.d z = new e();

    public class a extends ux0 {
        public a() {
        }

        @Override
        public void onNoDoubleClick(View view) {
            if (view.getId() == R.id.btn_share_more) {
                rr3.a("video/*", VideoEditorShareFragment.this.l, ((BaseFragment) VideoEditorShareFragment.this).mContext);
                p06.L(VideoEditorShareFragment.this.w, "vd_share_to_others");
            }
        }
    }

    public class b extends GestureDetector.SimpleOnGestureListener {
        public b() {
        }

        @Override
        public boolean onDoubleTap(MotionEvent motionEvent) {
            if (!VideoEditorShareFragment.this.r.isPlaying()) {
                return super.onDoubleTap(motionEvent);
            }
            VideoEditorShareFragment.this.r.pause(true);
            return true;
        }
    }

    public class c implements View.OnTouchListener {
        public final GestureDetector b;

        public c(GestureDetector gestureDetector) {
            this.b = gestureDetector;
        }

        @Override
        public boolean onTouch(View view, MotionEvent motionEvent) {
            this.b.onTouchEvent(motionEvent);
            return false;
        }
    }

    public class d implements com.transsion.playercommon.player.b.a {
        public d() {
        }

        @Override
        public void onPlayerStateUpdate(int i) {
            VideoEditorShareFragment.this.o.setVisibility(i != 3 ? 0 : 8);
        }

        @Override
        public void onVideoSizeChanged(int i, int i2) {
            VideoEditorShareFragment.this.p.onVideoSizeChanged(i, i2);
            VideoEditorShareFragment.this.t.setVisibility(8);
        }
    }

    public class e implements VideoPlayerMediaView.d {
        public e() {
        }

        @Override
        public void onSurfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
            Log.d("VideoEditorShareFragment", "onSurfaceChanged " + surfaceHolder + StringUtils.COMMA + i2 + StringUtils.COMMA + i3);
        }

        @Override
        public void onSurfaceCreated(SurfaceHolder surfaceHolder) {
            Log.d("VideoEditorShareFragment", "onSurfaceCreated " + surfaceHolder);
            VideoEditorShareFragment.this.s = surfaceHolder;
            VideoEditorShareFragment.this.r.O(VideoEditorShareFragment.this.s, true);
            if (pp3.w()) {
                return;
            }
            VideoEditorShareFragment.this.t.setVisibility(0);
        }

        @Override
        public void onSurfaceDestroyed(SurfaceHolder surfaceHolder) {
            Log.d("VideoEditorShareFragment", "onSurfaceDestroyed " + surfaceHolder);
            VideoEditorShareFragment.this.s = surfaceHolder;
            if (pp3.w()) {
                VideoEditorShareFragment.this.r.O(surfaceHolder, false);
            } else {
                VideoEditorShareFragment.this.r.O(null, false);
            }
        }
    }

    private void a0() {
        this.x.setOnClickListener(new a());
        this.o.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.c0(view);
            }
        });
        this.q.setOnTouchListener(new c(new GestureDetector(this.mContext, new b())));
    }

    public void d0(View view) {
        this.mActivity.onBackPressed();
    }

    public static VideoEditorShareFragment e0(Uri uri, String str, String str2) {
        VideoEditorShareFragment videoEditorShareFragment = new VideoEditorShareFragment();
        Bundle bundle = new Bundle();
        bundle.putString("uri_str", uri != null ? uri.toString() : "");
        bundle.putString("display_name", str);
        bundle.putString("resource to share", str2);
        videoEditorShareFragment.setArguments(bundle);
        return videoEditorShareFragment;
    }

    private void initTitle() {
        this.m.setText(this.v);
        this.n.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.d0(view);
            }
        });
    }

    public final void b0() {
        com.transsion.playercommon.player.c cVar = new com.transsion.playercommon.player.c(this.mContext, true, true);
        this.r = cVar;
        cVar.n(this.y);
    }

    public final void c0(View view) {
        this.r.d(true);
    }

    @Override
    public VideoEditorShareFragment setBaseActivity(BaseActivity baseActivity) {
        BaseActivity baseActivity2;
        int i;
        super.setBaseActivity(baseActivity);
        if (baseActivity != null && baseActivity.getWindow() != null) {
            Window window = this.mActivity.getWindow();
            if (baseActivity.isInMultiWindowMode()) {
                baseActivity2 = this.mActivity;
                i = R.color.black;
            } else {
                baseActivity2 = this.mActivity;
                i = R.color.transparent;
            }
            window.setStatusBarColor(baseActivity2.getColor(i));
            Window window2 = baseActivity.getWindow();
            int i2 = R.color.black;
            window2.setNavigationBarColor(baseActivity.getColor(i2));
            baseActivity.getWindow().setBackgroundDrawableResource(i2);
            baseActivity.getWindow().getDecorView().setSystemUiVisibility(baseActivity.getWindow().getDecorView().getSystemUiVisibility() & (-8209));
        }
        return this;
    }

    @Override
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        boolean zIsInMultiWindowMode = getActivity().isInMultiWindowMode();
        TextView textView = this.u;
        if (textView != null) {
            textView.setVisibility(zIsInMultiWindowMode ? 8 : 0);
        }
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() != null) {
            Bundle arguments = getArguments();
            this.l = Uri.parse(arguments.getString("uri_str", ""));
            this.v = arguments.getString("display_name", "");
            this.w = arguments.getString("resource to share", "");
        }
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.video_editor_share_fragment, viewGroup, false);
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        com.transsion.playercommon.player.b bVar = this.r;
        if (bVar != null) {
            bVar.u(false);
        }
    }

    @Override
    public void onResume() {
        super.onResume();
        com.transsion.playercommon.player.b bVar = this.r;
        if (bVar != null && !bVar.isPlaying()) {
            this.r.R(new jb8(this.l, 0L, false, false, true));
        }
        boolean zIsInMultiWindowMode = getActivity().isInMultiWindowMode();
        TextView textView = this.u;
        if (textView != null) {
            textView.setVisibility(zIsInMultiWindowMode ? 8 : 0);
        }
    }

    @Override
    public void onStop() {
        super.onStop();
        com.transsion.playercommon.player.b bVar = this.r;
        if (bVar != null) {
            bVar.pause(true);
        }
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.m = (TextView) view.findViewById(R.id.tv_video_play_title);
        this.n = (ImageView) view.findViewById(R.id.iv_video_play_back);
        this.o = (ImageView) view.findViewById(R.id.iv_play);
        VideoPlayerMediaView videoPlayerMediaView = (VideoPlayerMediaView) view.findViewById(R.id.player_media_view);
        this.p = videoPlayerMediaView;
        videoPlayerMediaView.setVisibility(0);
        this.p.setSurfaceListener(this.z);
        this.t = view.findViewById(R.id.black_cover);
        this.u = (TextView) view.findViewById(R.id.tv_save);
        if (com.transsion.utils.a.A()) {
            this.u.setText(com.transsion.playercommon.R.string.tablet_save_video);
        }
        this.q = (FrameLayout) view.findViewById(R.id.player_frame_layout);
        this.x = (Button) view.findViewById(R.id.btn_share_more);
        b0();
        a0();
        initTitle();
        Bundle bundle2 = new Bundle();
        bundle2.putString("type", this.w);
        TrackData trackData = new TrackData();
        trackData.add("type", this.w);
        p06.q0(trackData, bundle2, "mv_export_results_page_show", 932460000110L);
    }
}
