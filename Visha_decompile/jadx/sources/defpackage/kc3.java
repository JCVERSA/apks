package defpackage;

import android.content.Context;
import android.graphics.Rect;
import android.util.Log;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.CompoundButton;
import android.widget.LinearLayout;
import android.widget.Switch;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.transsion.magicvideo.R;
import com.transsion.magicvideo.adapter.VideoEqPresetAdapter;
import com.transsion.playercommon.widgets.CustomOsSeekbar;
import com.transsion.widgets.DisableDragLinearLayout;
import com.transsion.widgets.GestureUtil;
import com.transsion.widgets.InterceptLinearLayout;
import java.util.Arrays;

public class kc3 {
    public Switch a;
    public RecyclerView b;
    public CustomOsSeekbar d;
    public CustomOsSeekbar e;
    public InterceptLinearLayout f;
    public VideoEqPresetAdapter g;
    public LinearLayoutManager h;
    public DisableDragLinearLayout i;
    public Context k;
    public CustomOsSeekbar[] c = new CustomOsSeekbar[5];
    public short[] j = {0, 1, 10, 9, 7, 2, 3, 4, 8, 6, 5};
    public CustomOsSeekbar.f l = new c();

    public class a implements CompoundButton.OnCheckedChangeListener {
        public a() {
        }

        @Override
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            kc3.this.x(z);
            if (z && kc3.this.g != null && kc3.this.g.g() == -1) {
                kc3.this.g.r(0);
                jrb.a(kc3.this.j[0]);
                kc3.this.y();
                krb.c(jrb.e());
            }
            kc3.this.n();
            hb0.markTrackSingle("vd_cp_equalizer_pop_cl", "status", z ? "on" : "off");
        }
    }

    public class b implements BaseQuickAdapter.OnItemClickListener {
        public final Context b;

        public b(Context context) {
            this.b = context;
        }

        @Override
        public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
            if (!jrb.e().a && raa.i(this.b)) {
                Log.i("visha_EqDialog", "onItemClick: " + i);
                return;
            }
            kc3.this.g.r(i);
            jrb.a(kc3.this.j[i]);
            for (short s = 0; s < jrb.d(); s = (short) (s + 1)) {
                kc3.this.c[s].setProgress(krb.b(i != 0 ? jrb.b(s) : jrb.e().c[s]));
            }
            krb.c(jrb.e());
            l16.b(i);
        }
    }

    public class c implements CustomOsSeekbar.f {
        public c() {
        }

        @Override
        public void onProgressChanged(CustomOsSeekbar customOsSeekbar, int i, float f, boolean z) {
            String str = (String) customOsSeekbar.getTag();
            str.hashCode();
            switch (str) {
                case "EQ_1":
                    kc3.this.v(z, 0);
                    break;
                case "EQ_2":
                    kc3.this.v(z, 1);
                    break;
                case "EQ_3":
                    kc3.this.v(z, 2);
                    break;
                case "EQ_4":
                    kc3.this.v(z, 3);
                    break;
                case "EQ_5":
                    kc3.this.v(z, 4);
                    break;
                case "EQ_3D":
                    jrb.j((short) kc3.this.e.getProgress());
                    break;
                case "EQ_REVERB":
                    jrb.h((short) kc3.this.d.getProgress());
                    break;
            }
            Log.i("visha_EqDialog", "onProgressChanged");
        }

        @Override
        public void onStartTrackingTouch(CustomOsSeekbar customOsSeekbar) {
            Log.i("visha_EqDialog", "onStopTrackingTouch");
        }

        @Override
        public void onStopTrackingTouch(CustomOsSeekbar customOsSeekbar) {
            Log.i("visha_EqDialog", "onStopTrackingTouch");
            krb.c(jrb.e());
        }
    }

    public static void s(int i) {
    }

    public final int m(short s) {
        short[] sArr = this.j;
        int length = sArr.length;
        int i = 0;
        for (int i2 = 0; i2 < length && s != sArr[i2]; i2++) {
            i++;
        }
        return i;
    }

    public final void n() {
        if (jrb.e().a) {
            this.f.setAlpha(1.0f);
            this.f.setChildClickable(true);
        } else {
            this.f.setAlpha(0.5f);
            this.f.setChildClickable(false);
        }
    }

    public void o(View view) {
        GestureUtil.scrollGesture(view, new GestureUtil.ScorllToListener() {
            @Override
            public final void scrollTo(int i) {
                kc3.s(i);
            }
        });
    }

    public final void p(Context context) {
        if (context == null) {
            return;
        }
        int i = 0;
        this.a.setChecked(jrb.e() != null && jrb.e().a);
        this.a.setOnCheckedChangeListener(new a());
        int i2 = R.array.preset_video_array;
        int i3 = R.layout.os_video_spinner_item_layout;
        ArrayAdapter.createFromResource(context, i2, i3).setDropDownViewResource(i3);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(context, 0, false);
        this.h = linearLayoutManager;
        this.b.setLayoutManager(linearLayoutManager);
        String[] stringArray = this.k.getResources().getStringArray(R.array.band_video_array);
        VideoEqPresetAdapter videoEqPresetAdapter = new VideoEqPresetAdapter(context);
        this.g = videoEqPresetAdapter;
        this.b.setAdapter(videoEqPresetAdapter);
        this.g.setNewData(Arrays.asList(stringArray));
        this.g.setOnItemClickListener(new b(context));
        this.d.setOnProgressChangedListener(this.l);
        this.e.setOnProgressChangedListener(this.l);
        for (int i4 = 0; i4 < jrb.e().c.length; i4++) {
            w(i4, jrb.e().c[i4]);
        }
        while (true) {
            CustomOsSeekbar[] customOsSeekbarArr = this.c;
            if (i >= customOsSeekbarArr.length) {
                y();
                return;
            } else {
                customOsSeekbarArr[i].setOnProgressChangedListener(this.l);
                i++;
            }
        }
    }

    public View q(Context context, View view) {
        this.k = context;
        r(view);
        o(view);
        p(context);
        return view;
    }

    public final void r(View view) {
        this.a = (Switch) view.findViewById(R.id.switch_open);
        DisableDragLinearLayout disableDragLinearLayout = (DisableDragLinearLayout) view.findViewById(R.id.ll_cannot_drag);
        this.i = disableDragLinearLayout;
        disableDragLinearLayout.setCanDrag(false);
        this.b = (RecyclerView) view.findViewById(R.id.rv_style);
        this.c[0] = (CustomOsSeekbar) view.findViewById(R.id.seekbar1);
        this.c[1] = (CustomOsSeekbar) view.findViewById(R.id.seekbar2);
        this.c[2] = (CustomOsSeekbar) view.findViewById(R.id.seekbar3);
        this.c[3] = (CustomOsSeekbar) view.findViewById(R.id.seekbar4);
        this.c[4] = (CustomOsSeekbar) view.findViewById(R.id.seekbar5);
        this.d = (CustomOsSeekbar) view.findViewById(R.id.sb_bassboot);
        this.e = (CustomOsSeekbar) view.findViewById(R.id.sb_3d);
        this.f = (InterceptLinearLayout) view.findViewById(R.id.ll_content);
        this.c[0].setTag("EQ_1");
        this.c[1].setTag("EQ_2");
        this.c[2].setTag("EQ_3");
        this.c[3].setTag("EQ_4");
        this.c[4].setTag("EQ_5");
        this.d.setTag("EQ_REVERB");
        this.e.setTag("EQ_3D");
        this.c[0].setThumbInsideColor(-16777216);
        this.c[1].setThumbInsideColor(-16777216);
        this.c[2].setThumbInsideColor(-16777216);
        this.c[3].setThumbInsideColor(-16777216);
        this.c[4].setThumbInsideColor(-16777216);
        this.d.setThumbInsideColor(-16777216);
        this.e.setThumbInsideColor(-16777216);
        LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.ll_sger1);
        LinearLayout linearLayout2 = (LinearLayout) view.findViewById(R.id.ll_sger2);
        linearLayout.post(new Runnable() {
            @Override
            public final void run() {
                this.b.t();
            }
        });
        linearLayout2.post(new Runnable() {
            @Override
            public final void run() {
                this.b.u();
            }
        });
    }

    public final void t() {
        this.d.setSystemGestureExclusionRects(Arrays.asList(new Rect(0, 0, this.d.getWidth(), this.d.getHeight())));
    }

    public final void u() {
        this.e.setSystemGestureExclusionRects(Arrays.asList(new Rect(0, 0, this.e.getWidth(), this.e.getHeight())));
    }

    public final void v(boolean z, int i) {
        if (z) {
            jrb.e().b = (short) 0;
            this.g.r(this.j[0]);
            this.b.smoothScrollToPosition(0);
            for (short s = 0; s < jrb.d(); s = (short) (s + 1)) {
                jrb.e().c[s] = (short) this.c[s].getProgress();
            }
            jrb.g((short) i, jrb.e().c[i]);
        }
    }

    public final void w(int i, int i2) {
        this.c[i].setProgress(i2);
    }

    public final void x(boolean z) {
        jrb.i(z);
    }

    public final void y() {
        this.d.setProgress(jrb.e().e);
        this.e.setProgress(jrb.e().f);
        for (short s = 0; s < jrb.e().c.length; s = (short) (s + 1)) {
            this.c[s].setProgress(krb.b(jrb.b(s)));
        }
        this.a.setChecked(jrb.e().a);
        int iM = m(jrb.e().b);
        this.g.r(iM);
        this.h.scrollToPositionWithOffset(iM, com.transsion.utils.a.d(this.k, 150.0f));
        n();
    }
}
