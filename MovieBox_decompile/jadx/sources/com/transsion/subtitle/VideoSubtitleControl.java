package com.transsion.subtitle;

import android.app.Application;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.fragment.app.FragmentActivity;
import com.amazonaws.services.s3.model.BucketVersioningConfiguration;
import com.avery.subtitle.widget.SimpleSubtitleView;
import com.blankj.utilcode.util.Utils;
import com.blankj.utilcode.util.y;
import com.cloud.tmc.integration.constants.IntegrationConstants;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.transsion.baselib.db.AppDatabase;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baselib.db.video.VideoDetailPlayDao;
import com.transsion.mb.config.manager.ConfigBean;
import com.transsion.moviedetailapi.bean.DubsInfo;
import com.transsion.subtitle.dialog.SubtitleMainDialog2;
import com.transsion.subtitle.helper.LocalVideoUiType;
import com.transsion.subtitle_download.db.SubtitleDownloadTable;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.ListIterator;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

public final class VideoSubtitleControl {
    private final Lazy A;
    private Map B;
    private final b C;
    private final VideoSubtitleControl$downloadListener$1 D;
    private long E;
    private final Set F;
    private boolean G;
    private String H;
    private final c I;

    private final FragmentActivity f52671a;

    private final String f52672b;

    private float f52673c;

    private List f52674d;

    private final Function1 f52675e;

    private final Function2 f52676f;

    private final Function3 f52677g;

    private final Function1 f52678h;

    private final Function1 f52679i;

    private final Function1 f52680j;

    private final Function2 f52681k;

    private List f52682l;

    private boolean f52683m;

    private long f52684n;

    private boolean f52685o;

    private DownloadBean f52686p;

    private com.transsion.subtitle.helper.d f52687q;

    private LocalVideoUiType f52688r;

    private final n0 f52689s;

    private Map f52690t;

    private ViewGroup f52691u;

    private final Map f52692v;

    private final Map f52693w;

    private Function1 f52694x;

    private Map f52695y;

    private Map f52696z;

    public static final class a implements k5.a {
        a() {
        }

        @Override
        public long getCurrentPosition() {
            return VideoSubtitleControl.this.f52684n;
        }

        @Override
        public Float getSpeed() {
            return Float.valueOf(VideoSubtitleControl.this.f52673c);
        }

        @Override
        public boolean isPlaying() {
            return VideoSubtitleControl.this.K();
        }
    }

    public static final class b implements lt.c {
        b() {
        }

        @Override
        public void K(boolean z10, DownloadBean bean) {
            Intrinsics.h(bean, "bean");
            String resourceId = bean.getResourceId();
            DownloadBean downloadBean = VideoSubtitleControl.this.f52686p;
            if (Intrinsics.c(resourceId, downloadBean != null ? downloadBean.getResourceId() : null) && z10 && VideoSubtitleControl.this.f52682l.isEmpty()) {
                com.transsion.subtitle.a.f52708a.a(VideoSubtitleControl.this.getClass().getSimpleName() + " --> -------- 检测到有字幕但是在下载中");
            }
        }

        @Override
        public void g(ht.a aVar) {
            lt.c.a.b(this, aVar);
        }
    }

    public static final class c implements lt.b {
        c() {
        }

        @Override
        public SimpleSubtitleView a() {
            return (SimpleSubtitleView) VideoSubtitleControl.this.f52690t.get(IntegrationConstants.TAB_BAR_POSITION_DEFAULT);
        }

        @Override
        public void b(boolean z10) {
            VideoSubtitleControl.this.P(z10);
            VideoSubtitleControl.this.V(null, z10);
        }

        @Override
        public void c(String msg) {
            Intrinsics.h(msg, "msg");
            Function1 function1 = VideoSubtitleControl.this.f52680j;
            if (function1 != null) {
                function1.invoke(msg);
            }
        }

        @Override
        public SimpleSubtitleView d() {
            return (SimpleSubtitleView) VideoSubtitleControl.this.f52690t.get(IntegrationConstants.TAB_BAR_POSITION_TOP);
        }

        @Override
        public void e(ht.a aVar, ht.a aVar2, boolean z10) {
            String lanName;
            SubtitleDownloadTable subtitleDownloadTableB;
            SubtitleDownloadTable subtitleDownloadTableB2;
            SubtitleDownloadTable subtitleDownloadTableB3;
            SubtitleDownloadTable subtitleDownloadTableB4;
            String lan;
            SubtitleDownloadTable subtitleDownloadTableB5;
            SubtitleDownloadTable subtitleDownloadTableB6;
            SubtitleDownloadTable subtitleDownloadTableB7;
            VideoSubtitleControl.this.G = z10;
            String lan2 = null;
            com.transsion.subtitle.a.f52708a.a(VideoSubtitleControl.this.getClass().getSimpleName() + " --> onSubtitleSelect() --> isOpenBilingual = " + z10 + " --> top = " + ((aVar == null || (subtitleDownloadTableB7 = aVar.b()) == null) ? null : subtitleDownloadTableB7.getName()) + " --> bottom = " + ((aVar2 == null || (subtitleDownloadTableB6 = aVar2.b()) == null) ? null : subtitleDownloadTableB6.getName()));
            Function3 function3 = VideoSubtitleControl.this.f52677g;
            String str = "";
            if (aVar == null || (subtitleDownloadTableB5 = aVar.b()) == null || (lanName = subtitleDownloadTableB5.getLanName()) == null) {
                lanName = "";
            }
            if (aVar != null && (subtitleDownloadTableB4 = aVar.b()) != null && (lan = subtitleDownloadTableB4.getLan()) != null) {
                str = lan;
            }
            function3.invoke(lanName, str, Integer.valueOf((aVar == null || (subtitleDownloadTableB3 = aVar.b()) == null) ? 1 : subtitleDownloadTableB3.getType()));
            Function2 function2 = VideoSubtitleControl.this.f52681k;
            String lan3 = (aVar == null || (subtitleDownloadTableB2 = aVar.b()) == null) ? null : subtitleDownloadTableB2.getLan();
            if (aVar2 != null && (subtitleDownloadTableB = aVar2.b()) != null) {
                lan2 = subtitleDownloadTableB.getLan();
            }
            function2.invoke(lan3, lan2);
            VideoSubtitleControl videoSubtitleControl = VideoSubtitleControl.this;
            videoSubtitleControl.d0(aVar, (SimpleSubtitleView) videoSubtitleControl.f52690t.get(IntegrationConstants.TAB_BAR_POSITION_TOP), true);
            VideoSubtitleControl videoSubtitleControl2 = VideoSubtitleControl.this;
            videoSubtitleControl2.d0(aVar2, (SimpleSubtitleView) videoSubtitleControl2.f52690t.get(IntegrationConstants.TAB_BAR_POSITION_DEFAULT), false);
            VideoSubtitleControl.this.F.clear();
            if (aVar != null) {
                VideoSubtitleControl.this.F.add(aVar);
            }
            if (aVar2 != null) {
                VideoSubtitleControl.this.F.add(aVar2);
            }
        }

        @Override
        public void f(boolean z10) {
            VideoSubtitleControl.this.G = z10;
            VideoSubtitleControl.this.U(z10);
        }

        @Override
        public boolean g() {
            return VideoSubtitleControl.this.G;
        }

        @Override
        public ViewGroup getSubtitleViewGroup() {
            return VideoSubtitleControl.this.f52691u;
        }

        @Override
        public void h(DubsInfo info) {
            Intrinsics.h(info, "info");
            VideoSubtitleControl.this.f52678h.invoke(info);
        }

        @Override
        public com.transsion.subtitle.helper.d i() {
            return VideoSubtitleControl.this.f52687q;
        }

        @Override
        public List j() {
            return VideoSubtitleControl.this.f52682l;
        }

        @Override
        public boolean k() {
            int i10 = com.transsion.baselib.report.launch.b.f42221a.b().getInt("subtitle_options_position", 10);
            com.transsion.subtitle.helper.d dVar = VideoSubtitleControl.this.f52687q;
            if (dVar != null) {
                dVar.j(VideoSubtitleControl.this.f52688r, VideoSubtitleControl.this.f52691u, i10);
            }
            return !Intrinsics.c(VideoSubtitleControl.this.H, BucketVersioningConfiguration.OFF);
        }

        @Override
        public void l(ht.a aVar, long j10) {
            if (aVar != null) {
                VideoSubtitleControl.this.W(aVar);
            }
            String strA = aVar != null ? aVar.a() : null;
            if (strA != null) {
                int iHashCode = strA.hashCode();
                if (iHashCode != 0) {
                    if (iHashCode != 50770) {
                        if (iHashCode == 51560 && strA.equals("2nd")) {
                            SimpleSubtitleView simpleSubtitleView = (SimpleSubtitleView) VideoSubtitleControl.this.f52690t.get(IntegrationConstants.TAB_BAR_POSITION_DEFAULT);
                            if (simpleSubtitleView != null) {
                                simpleSubtitleView.subtitleDelay(j10);
                                return;
                            }
                            return;
                        }
                    } else if (strA.equals("1st")) {
                        SimpleSubtitleView simpleSubtitleView2 = (SimpleSubtitleView) VideoSubtitleControl.this.f52690t.get(IntegrationConstants.TAB_BAR_POSITION_TOP);
                        if (simpleSubtitleView2 != null) {
                            simpleSubtitleView2.subtitleDelay(j10);
                            return;
                        }
                        return;
                    }
                } else if (strA.equals("")) {
                    SimpleSubtitleView simpleSubtitleView3 = (SimpleSubtitleView) VideoSubtitleControl.this.f52690t.get(IntegrationConstants.TAB_BAR_POSITION_TOP);
                    if (simpleSubtitleView3 != null) {
                        simpleSubtitleView3.subtitleDelay(j10);
                        return;
                    }
                    return;
                }
            }
            com.transsion.subtitle.a.f52708a.a(VideoSubtitleControl.this.getClass().getSimpleName() + " --> onSubtitleDelay() --> 异常");
        }
    }

    public VideoSubtitleControl(FragmentActivity activity, String str, float f10, List dubs, Function1 loadingCallback, Function2 controlCallback, Function3 subtitleSelected, Function1 audioSelected, Function1 setSublistData, Function1 function1, Function2 subtitleSelectedBilingual) {
        Intrinsics.h(activity, "activity");
        Intrinsics.h(dubs, "dubs");
        Intrinsics.h(loadingCallback, "loadingCallback");
        Intrinsics.h(controlCallback, "controlCallback");
        Intrinsics.h(subtitleSelected, "subtitleSelected");
        Intrinsics.h(audioSelected, "audioSelected");
        Intrinsics.h(setSublistData, "setSublistData");
        Intrinsics.h(subtitleSelectedBilingual, "subtitleSelectedBilingual");
        this.f52671a = activity;
        this.f52672b = str;
        this.f52673c = f10;
        this.f52674d = dubs;
        this.f52675e = loadingCallback;
        this.f52676f = controlCallback;
        this.f52677g = subtitleSelected;
        this.f52678h = audioSelected;
        this.f52679i = setSublistData;
        this.f52680j = function1;
        this.f52681k = subtitleSelectedBilingual;
        this.f52682l = new ArrayList();
        this.f52688r = LocalVideoUiType.MIDDLE;
        this.f52689s = o0.a(y0.c());
        this.f52690t = new LinkedHashMap();
        this.f52692v = new LinkedHashMap();
        this.f52693w = new LinkedHashMap();
        this.f52695y = new LinkedHashMap();
        this.f52696z = new LinkedHashMap();
        this.A = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return VideoSubtitleControl.s0();
            }
        });
        this.B = new LinkedHashMap();
        b bVar = new b();
        this.C = bVar;
        VideoSubtitleControl$downloadListener$1 videoSubtitleControl$downloadListener$1 = new VideoSubtitleControl$downloadListener$1(this);
        this.D = videoSubtitleControl$downloadListener$1;
        this.f52687q = new com.transsion.subtitle.helper.d(activity);
        com.transsion.subtitle.a.f52708a.a(VideoSubtitleControl.class.getSimpleName() + " --> init{} --> VideoSubtitleControl --> 创建了");
        h.a aVar = h.f52857a;
        aVar.b().b(videoSubtitleControl$downloadListener$1);
        aVar.b().d(bVar);
        this.F = new LinkedHashSet();
        this.H = "";
        this.I = new c();
    }

    public final VideoDetailPlayDao G() {
        return (VideoDetailPlayDao) this.A.getValue();
    }

    private final void H() {
        for (Map.Entry entry : this.f52690t.entrySet()) {
            SimpleSubtitleView simpleSubtitleView = (SimpleSubtitleView) entry.getValue();
            if (simpleSubtitleView != null) {
                simpleSubtitleView.turnOff(true);
            }
            SimpleSubtitleView simpleSubtitleView2 = (SimpleSubtitleView) entry.getValue();
            if (simpleSubtitleView2 != null) {
                simpleSubtitleView2.setVisibility(8);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:50:0x01ce  */
    private final void I() {
        String lanName;
        SubtitleDownloadTable subtitleDownloadTableB;
        Long delay;
        SubtitleDownloadTable subtitleDownloadTableB2;
        String path;
        SubtitleDownloadTable subtitleDownloadTableB3;
        SubtitleDownloadTable subtitleDownloadTableB4;
        String lan;
        SubtitleDownloadTable subtitleDownloadTableB5;
        Locale localeA = com.transsion.subtitle.helper.c.a();
        com.transsion.subtitle.a aVar = com.transsion.subtitle.a.f52708a;
        aVar.a(VideoSubtitleControl.class.getSimpleName() + " --> initDefaultSubtitle() --> cur language = " + localeA.getLanguage() + " -- country = " + localeA.getCountry());
        String str = "";
        String string = com.transsion.baselib.report.launch.b.f42221a.b().getString("k_subtitle_language", "");
        DownloadBean downloadBean = this.f52686p;
        ht.a aVar2 = null;
        String subtitleSelectId = downloadBean != null ? downloadBean.getSubtitleSelectId() : null;
        aVar.a(VideoSubtitleControl.class.getSimpleName() + " --> initDefaultSubtitle() --> savedDiffId = " + subtitleSelectId + " -- savedLan = " + string);
        String id2 = "";
        ht.a aVar3 = null;
        for (ht.a aVar4 : this.f52682l) {
            if (aVar4.d()) {
                if (Intrinsics.c(aVar4.b().getLan(), "en")) {
                    aVar2 = aVar4;
                }
                if ((subtitleSelectId == null || subtitleSelectId.length() == 0) && Intrinsics.c(aVar4.b().getLanAbbr(), localeA.getLanguage())) {
                    id2 = aVar4.b().getId();
                    com.transsion.subtitle.a.f52708a.a(VideoSubtitleControl.class.getSimpleName() + " --> initDefaultSubtitle() --> 没有自己选择的默认语言，使用手机语言 -- phone set def language = " + id2);
                } else if (Intrinsics.c(aVar4.b().getId(), subtitleSelectId)) {
                    id2 = aVar4.b().getId();
                    com.transsion.subtitle.a.f52708a.a(VideoSubtitleControl.class.getSimpleName() + " --> initDefaultSubtitle() --> 使用之前选择的字幕 saved flag = " + id2);
                } else if (subtitleSelectId == null || subtitleSelectId.length() == 0) {
                    if (Intrinsics.c(aVar4.b().getLanName(), string)) {
                        id2 = aVar4.b().getId();
                        com.transsion.subtitle.a.f52708a.a(VideoSubtitleControl.class.getSimpleName() + " --> initDefaultSubtitle() --> 使用之前选择的语言 local set savedLan = " + string);
                    }
                }
                aVar3 = aVar4;
            }
        }
        if (id2.length() != 0) {
            aVar2 = aVar3;
        } else if (aVar2 != null && aVar2.d()) {
            id2 = aVar2.b().getId();
            com.transsion.subtitle.a.f52708a.a(VideoSubtitleControl.class.getSimpleName() + " --> initDefaultSubtitle() --> 没有设置默认语言 --> english set def language = " + id2);
        } else if (this.f52682l.isEmpty()) {
            aVar2 = aVar3;
        } else {
            Iterator it = this.f52682l.iterator();
            while (true) {
                if (!it.hasNext()) {
                    aVar2 = aVar3;
                    break;
                }
                ht.a aVar5 = (ht.a) it.next();
                if (aVar5.d()) {
                    id2 = aVar5.b().getId();
                    aVar2 = aVar5;
                    break;
                }
            }
            if (id2.length() == 0) {
                com.transsion.subtitle.a.f52708a.a(VideoSubtitleControl.class.getSimpleName() + " --> initDefaultSubtitle() --> 可能外部只读取到了数据库前面没下载的字幕 --> 没有对应的语言，不设置，需要用户手动设置或当前下载后自动设置上");
                return;
            }
        }
        this.H = id2;
        Function3 function3 = this.f52677g;
        if (aVar2 == null || (subtitleDownloadTableB5 = aVar2.b()) == null || (lanName = subtitleDownloadTableB5.getLanName()) == null) {
            lanName = "";
        }
        if (aVar2 != null && (subtitleDownloadTableB4 = aVar2.b()) != null && (lan = subtitleDownloadTableB4.getLan()) != null) {
            str = lan;
        }
        function3.invoke(lanName, str, Integer.valueOf((aVar2 == null || (subtitleDownloadTableB3 = aVar2.b()) == null) ? 1 : subtitleDownloadTableB3.getType()));
        if (aVar2 != null && (subtitleDownloadTableB2 = aVar2.b()) != null && (path = subtitleDownloadTableB2.getPath()) != null) {
            Iterator it2 = this.f52690t.entrySet().iterator();
            while (it2.hasNext()) {
                SimpleSubtitleView simpleSubtitleView = (SimpleSubtitleView) ((Map.Entry) it2.next()).getValue();
                if (simpleSubtitleView != null) {
                    simpleSubtitleView.setDefaultSubtitle(path);
                }
            }
        }
        if (aVar2 != null) {
            aVar2.l(true);
        }
        if (aVar2 != null && (subtitleDownloadTableB = aVar2.b()) != null && (delay = subtitleDownloadTableB.getDelay()) != null) {
            long jLongValue = delay.longValue();
            wf.a.f74274a.c(com.transsion.baselib.report.a.f42192a.a(), "default delayDuration = " + jLongValue, true);
            Iterator it3 = this.f52690t.entrySet().iterator();
            while (it3.hasNext()) {
                SimpleSubtitleView simpleSubtitleView2 = (SimpleSubtitleView) ((Map.Entry) it3.next()).getValue();
                if (simpleSubtitleView2 != null) {
                    simpleSubtitleView2.subtitleDelay(jLongValue);
                }
            }
        }
        if (aVar2 != null) {
            this.F.add(aVar2);
        }
        d0(aVar2, (SimpleSubtitleView) this.f52690t.get(IntegrationConstants.TAB_BAR_POSITION_TOP), true);
    }

    private final void J(SimpleSubtitleView simpleSubtitleView) {
        if (simpleSubtitleView != null) {
            simpleSubtitleView.initSubtitle(new a(), false);
            return;
        }
        com.transsion.subtitle.a.f52708a.a(VideoSubtitleControl.class.getSimpleName() + " --> vdSubtitle --> initSubtitle() --> null");
    }

    private final boolean L() {
        Iterator it = this.f52682l.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            if (!((ht.a) it.next()).b().isInner()) {
                i10++;
            }
        }
        return i10 > 1;
    }

    public final void P(boolean z10) {
        com.transsion.subtitle.a.f52708a.a(VideoSubtitleControl.class.getSimpleName() + " --> onSubtitleSwitchClick() --> turnOn = " + z10 + " --> 字幕开关状态变化");
        if (z10) {
            this.H = "";
            l0();
        } else {
            this.H = BucketVersioningConfiguration.OFF;
            H();
        }
        if (!z10) {
            this.f52677g.invoke(BucketVersioningConfiguration.OFF, BucketVersioningConfiguration.OFF, 0);
        } else if (!this.F.isEmpty()) {
            ht.a aVar = (ht.a) CollectionsKt.h0(this.F);
            Function3 function3 = this.f52677g;
            String lanName = aVar.b().getLanName();
            if (lanName == null) {
                lanName = "";
            }
            String lan = aVar.b().getLan();
            function3.invoke(lanName, lan != null ? lan : "", Integer.valueOf(aVar.b().getType()));
        }
        if (z10 && L()) {
            m0();
        }
    }

    public final void U(boolean z10) {
        String str = this.f52672b;
        if (str == null || str.length() == 0) {
            return;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("bilingual", String.valueOf(z10));
        qi.h.f69682a.o(this.f52672b, linkedHashMap);
    }

    public final void V(ht.a aVar, boolean z10) {
        String subjectId;
        String resourceId;
        String lan;
        String lanName;
        SubtitleDownloadTable subtitleDownloadTableB;
        SubtitleDownloadTable subtitleDownloadTableB2;
        String id2;
        SubtitleDownloadTable subtitleDownloadTableB3;
        SubtitleDownloadTable subtitleDownloadTableB4;
        SubtitleDownloadTable subtitleDownloadTableB5;
        SubtitleDownloadTable subtitleDownloadTableB6;
        SubtitleDownloadTable subtitleDownloadTableB7;
        SubtitleDownloadTable subtitleDownloadTableB8;
        String str = this.f52672b;
        if (str == null || str.length() == 0) {
            return;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        DownloadBean downloadBean = this.f52686p;
        String str2 = "";
        if (downloadBean == null || (subjectId = downloadBean.getSubjectId()) == null) {
            subjectId = "";
        }
        linkedHashMap.put("subject_id", subjectId);
        DownloadBean downloadBean2 = this.f52686p;
        if (downloadBean2 == null || (resourceId = downloadBean2.getResourceId()) == null) {
            resourceId = "";
        }
        linkedHashMap.put("resource_id", resourceId);
        int se2 = 0;
        Integer numValueOf = null;
        if (((aVar == null || (subtitleDownloadTableB8 = aVar.b()) == null) ? 0 : subtitleDownloadTableB8.getEp()) > 0) {
            linkedHashMap.put("ep", String.valueOf((aVar == null || (subtitleDownloadTableB7 = aVar.b()) == null) ? null : Integer.valueOf(subtitleDownloadTableB7.getEp())));
        }
        if (aVar != null && (subtitleDownloadTableB6 = aVar.b()) != null) {
            se2 = subtitleDownloadTableB6.getSe();
        }
        if (se2 > 0) {
            linkedHashMap.put("se", String.valueOf((aVar == null || (subtitleDownloadTableB5 = aVar.b()) == null) ? null : Integer.valueOf(subtitleDownloadTableB5.getSe())));
        }
        if (aVar == null || (subtitleDownloadTableB4 = aVar.b()) == null || (lan = subtitleDownloadTableB4.getLan()) == null) {
            lan = "";
        }
        linkedHashMap.put("lan", lan);
        if (aVar == null || (subtitleDownloadTableB3 = aVar.b()) == null || (lanName = subtitleDownloadTableB3.getLanName()) == null) {
            lanName = "";
        }
        linkedHashMap.put("lan_name", lanName);
        if (aVar != null && (subtitleDownloadTableB2 = aVar.b()) != null && (id2 = subtitleDownloadTableB2.getId()) != null) {
            str2 = id2;
        }
        linkedHashMap.put("id", str2);
        if (aVar != null && (subtitleDownloadTableB = aVar.b()) != null) {
            numValueOf = Integer.valueOf(subtitleDownloadTableB.getType());
        }
        linkedHashMap.put(NativeComponentConstants.KEY_COMPONENT_TYPE, String.valueOf(numValueOf));
        linkedHashMap.put("result", z10 ? "1" : "0");
        qi.h.f69682a.q(this.f52672b, "subtitle_switch", linkedHashMap);
    }

    public final void W(ht.a aVar) {
        String str;
        String subjectId;
        String resourceId;
        if (this.B.containsKey(aVar.b().getId()) || (str = this.f52672b) == null || str.length() == 0) {
            return;
        }
        this.B.put(aVar.b().getId(), "");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        DownloadBean downloadBean = this.f52686p;
        if (downloadBean == null || (subjectId = downloadBean.getSubjectId()) == null) {
            subjectId = "";
        }
        linkedHashMap.put("subject_id", subjectId);
        DownloadBean downloadBean2 = this.f52686p;
        if (downloadBean2 == null || (resourceId = downloadBean2.getResourceId()) == null) {
            resourceId = "";
        }
        linkedHashMap.put("resource_id", resourceId);
        if (aVar.b().getEp() > 0) {
            linkedHashMap.put("ep", String.valueOf(aVar.b().getEp()));
        }
        if (aVar.b().getSe() > 0) {
            linkedHashMap.put("se", String.valueOf(aVar.b().getSe()));
        }
        String lan = aVar.b().getLan();
        if (lan == null) {
            lan = "";
        }
        linkedHashMap.put("lan", lan);
        String lanName = aVar.b().getLanName();
        linkedHashMap.put("lan_name", lanName != null ? lanName : "");
        linkedHashMap.put("id", aVar.b().getId());
        linkedHashMap.put(NativeComponentConstants.KEY_COMPONENT_TYPE, String.valueOf(aVar.b().getType()));
        qi.h.f69682a.q(this.f52672b, "subtitle_sync", linkedHashMap);
    }

    public final void Y(ht.a aVar) {
        SubtitleDownloadTable subtitleDownloadTableB;
        SubtitleDownloadTable subtitleDownloadTableB2;
        SubtitleDownloadTable subtitleDownloadTableB3;
        SubtitleDownloadTable subtitleDownloadTableB4;
        if (aVar != null && (subtitleDownloadTableB4 = aVar.b()) != null && subtitleDownloadTableB4.isInner()) {
            com.transsion.baselib.report.launch.b.f42221a.b().putString("k_subtitle_language", aVar.b().getLanName());
        }
        com.transsion.subtitle.a aVar2 = com.transsion.subtitle.a.f52708a;
        String simpleName = VideoSubtitleControl.class.getSimpleName();
        DownloadBean downloadBean = this.f52686p;
        aVar2.a(simpleName + " --> saveSelectedFlag() --> saveSelectId = " + (downloadBean != null ? downloadBean.getSubjectId() : null) + " -- id = " + ((aVar == null || (subtitleDownloadTableB3 = aVar.b()) == null) ? null : subtitleDownloadTableB3.getId()));
        DownloadBean downloadBean2 = this.f52686p;
        if (downloadBean2 != null) {
            downloadBean2.setSubtitleSelectId((aVar == null || (subtitleDownloadTableB2 = aVar.b()) == null) ? null : subtitleDownloadTableB2.getId());
        }
        Function1 function1 = this.f52694x;
        if (function1 != null) {
            function1.invoke((aVar == null || (subtitleDownloadTableB = aVar.b()) == null) ? null : subtitleDownloadTableB.getId());
        }
        kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new VideoSubtitleControl$saveSelectedFlag$1(this, aVar, null), 3, null);
    }

    public static final void a0(VideoSubtitleControl videoSubtitleControl, View view) {
        Iterator it = videoSubtitleControl.f52696z.entrySet().iterator();
        while (it.hasNext()) {
            Function1 function1 = (Function1) ((Map.Entry) it.next()).getValue();
            Intrinsics.e(view);
            function1.invoke(view);
        }
        videoSubtitleControl.m0();
    }

    public final void d0(final ht.a aVar, final SimpleSubtitleView simpleSubtitleView, final boolean z10) {
        String id2;
        SubtitleDownloadTable subtitleDownloadTableB;
        if (aVar == null || (subtitleDownloadTableB = aVar.b()) == null || (id2 = subtitleDownloadTableB.getId()) == null) {
            id2 = "";
        }
        this.H = id2;
        if (aVar == null) {
            if (simpleSubtitleView != null) {
                simpleSubtitleView.turnOff(true);
                simpleSubtitleView.setVisibility(8);
            }
            com.transsion.subtitle.a.f52708a.a(VideoSubtitleControl.class.getSimpleName() + " --> setSubtitle() --> " + (z10 ? "topBean" : "bottomBean") + " == null --> isTop = " + z10 + " --> view.hashCode = " + (simpleSubtitleView != null ? simpleSubtitleView.hashCode() : 0));
            return;
        }
        if (simpleSubtitleView == null) {
            com.transsion.subtitle.a.f52708a.b(VideoSubtitleControl.class.getSimpleName() + " --> setSubtitle() --> subtitleView ==null --> isTop = " + z10);
            return;
        }
        simpleSubtitleView.setVisibility(0);
        String path = aVar.b().getPath();
        if (path == null) {
            path = "";
        }
        simpleSubtitleView.setSubtitlePath(path, com.transsion.subtitle.helper.c.b(aVar));
        String path2 = aVar.b().getPath();
        simpleSubtitleView.selectSubtitle(path2 != null ? path2 : "", com.transsion.subtitle.helper.c.b(aVar), new k5.b() {
            @Override
            public final void a(boolean z11) {
                VideoSubtitleControl.e0(this.f52737a, simpleSubtitleView, aVar, z10, simpleSubtitleView, z11);
            }
        });
        Function1 function1 = this.f52694x;
        if (function1 != null) {
            function1.invoke(aVar.b().getId());
        }
    }

    public static final void e0(VideoSubtitleControl videoSubtitleControl, SimpleSubtitleView simpleSubtitleView, ht.a aVar, boolean z10, SimpleSubtitleView simpleSubtitleView2, boolean z11) {
        videoSubtitleControl.f52675e.invoke(Boolean.FALSE);
        simpleSubtitleView.turnOff(false);
        simpleSubtitleView.refreshImmediately();
        h.f52857a.b().g(aVar);
        Long delay = aVar.b().getDelay();
        if (delay != null) {
            simpleSubtitleView.subtitleDelay(delay.longValue());
        }
        com.transsion.subtitle.a.f52708a.a(VideoSubtitleControl.class.getSimpleName() + " --> setSubtitle() --> refreshImmediately() --> 展示字幕 --> bean.dbBean.name = " + aVar.b().getName() + " --> isTop = " + z10 + "  --> view.hashCode = " + simpleSubtitleView2.hashCode() + " -- path = " + aVar.b().getPath());
    }

    public static void k0(VideoSubtitleControl videoSubtitleControl, boolean z10, boolean z11, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z11 = false;
        }
        videoSubtitleControl.j0(z10, z11);
    }

    private final void l0() {
        int i10 = 0;
        for (Object obj : this.F) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                CollectionsKt.u();
            }
            ht.a aVar = (ht.a) obj;
            if (i10 == 0) {
                d0(aVar, (SimpleSubtitleView) this.f52690t.get(IntegrationConstants.TAB_BAR_POSITION_TOP), true);
            } else if (i10 == 1) {
                d0(aVar, (SimpleSubtitleView) this.f52690t.get(IntegrationConstants.TAB_BAR_POSITION_DEFAULT), false);
            }
            i10 = i11;
        }
    }

    private final void m0() {
        if (this.f52682l.isEmpty()) {
            j0(false, true);
            return;
        }
        FragmentActivity fragmentActivity = this.f52671a;
        SubtitleMainDialog2.Companion aVar = SubtitleMainDialog2.INSTANCE;
        boolean z10 = this.f52688r == LocalVideoUiType.LAND;
        boolean zC = Intrinsics.c(this.H, BucketVersioningConfiguration.OFF);
        List list = this.f52682l;
        List list2 = this.f52674d;
        DownloadBean downloadBean = this.f52686p;
        LocalVideoUiType localVideoUiType = this.f52688r;
        com.transsion.subtitle.helper.d dVar = this.f52687q;
        SubtitleMainDialog2 subtitleMainDialog2B = aVar.b(z10, zC, list, list2, downloadBean, localVideoUiType, Integer.valueOf(dVar != null ? dVar.h(localVideoUiType) : y.c()), this.f52672b);
        subtitleMainDialog2B.F0(this.I);
        subtitleMainDialog2B.J0(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return VideoSubtitleControl.n0(this.f52713a, (ht.a) obj);
            }
        });
        subtitleMainDialog2B.k0(fragmentActivity, "fragment_subtitle_main_dialog");
    }

    public static final Unit n0(VideoSubtitleControl videoSubtitleControl, ht.a bean) {
        Intrinsics.h(bean, "bean");
        videoSubtitleControl.o0(bean);
        return Unit.f64096a;
    }

    private final void o0(ht.a aVar) {
        String string;
        com.transsion.subtitle.a.f52708a.a(VideoSubtitleControl.class.getSimpleName() + " --> subtitleSelectFromSearch() --> 搜索字幕选中 --> 直接设置使用 --> isOpenBilingual = " + this.G);
        String str = "";
        if (this.G) {
            for (ht.a aVar2 : this.f52682l) {
                if (aVar2.f() && TextUtils.equals(aVar2.a(), "1st")) {
                    aVar2.l(false);
                    aVar2.g("");
                    com.transsion.subtitle.a.f52708a.a(VideoSubtitleControl.class.getSimpleName() + " --> subtitleSelectFromSearch() --> 这里默认替换 1st --> it.isSelect = false");
                }
            }
            for (ht.a aVar3 : this.f52682l) {
                if (Intrinsics.c(aVar3.b().getId(), aVar.b().getId())) {
                    aVar3.l(true);
                    aVar3.g("1st");
                    com.transsion.subtitle.a.f52708a.a(VideoSubtitleControl.class.getSimpleName() + " --> subtitleSelectFromSearch() --> 这里默认替换 1st --> it.isSelect = true");
                }
            }
        } else {
            for (ht.a aVar4 : this.f52682l) {
                if (aVar4.f()) {
                    aVar4.l(false);
                }
            }
            com.transsion.subtitle.a.f52708a.a(VideoSubtitleControl.class.getSimpleName() + " --> subtitleSelectFromSearch() --> 能从搜索选中回调，一定在字幕列表里面了");
            for (ht.a aVar5 : this.f52682l) {
                if (Intrinsics.c(aVar.b().getId(), aVar5.b().getId())) {
                    aVar5.l(true);
                }
            }
            com.transsion.subtitle.a.f52708a.a(VideoSubtitleControl.class.getSimpleName() + " --> subtitleSelectFromSearch() --> 找到ID相同的哪个设置 选中");
        }
        d0(aVar, (SimpleSubtitleView) this.f52690t.get(IntegrationConstants.TAB_BAR_POSITION_TOP), true);
        com.transsion.subtitle.a.f52708a.a(VideoSubtitleControl.class.getSimpleName() + " --> subtitleSelectFromSearch() --> 设置字幕 --> bean.id = " + aVar.b().getId());
        Function1 function1 = this.f52680j;
        if (function1 != null) {
            Application applicationA = Utils.a();
            if (applicationA != null && (string = applicationA.getString(R$string.subtitle_switch_toast)) != null) {
                str = string;
            }
            function1.invoke(str);
        }
    }

    public static final VideoDetailPlayDao s0() {
        AppDatabase.Companion companion = AppDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return companion.b(applicationA).C1();
    }

    public final void E(LocalVideoUiType uitType, Function2 switchCallback, Function1 settingCallback) {
        Intrinsics.h(uitType, "uitType");
        Intrinsics.h(switchCallback, "switchCallback");
        Intrinsics.h(settingCallback, "settingCallback");
        this.f52695y.put(uitType, switchCallback);
        this.f52696z.put(uitType, settingCallback);
    }

    public final Map F() {
        return new LinkedHashMap();
    }

    public final boolean K() {
        return this.f52685o;
    }

    public final void M() {
        com.transsion.subtitle.a.f52708a.a(VideoSubtitleControl.class.getSimpleName() + " --> onDestroy()");
        for (Map.Entry entry : this.f52690t.entrySet()) {
            SimpleSubtitleView simpleSubtitleView = (SimpleSubtitleView) entry.getValue();
            if (simpleSubtitleView != null) {
                simpleSubtitleView.stop();
            }
            SimpleSubtitleView simpleSubtitleView2 = (SimpleSubtitleView) entry.getValue();
            if (simpleSubtitleView2 != null) {
                simpleSubtitleView2.destroy();
            }
        }
        if (this.f52683m) {
            try {
                Result.Companion companion = Result.INSTANCE;
                Iterator it = this.f52692v.entrySet().iterator();
                while (it.hasNext()) {
                    Iterator it2 = ((Map) ((Map.Entry) it.next()).getValue()).entrySet().iterator();
                    while (it2.hasNext()) {
                        SimpleSubtitleView simpleSubtitleView3 = (SimpleSubtitleView) ((Map.Entry) it2.next()).getValue();
                        if (simpleSubtitleView3 != null) {
                            simpleSubtitleView3.destroy();
                        }
                    }
                }
                Result.m453constructorimpl(Unit.f64096a);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m453constructorimpl(ResultKt.a(th2));
            }
        }
        this.f52690t.clear();
        this.f52695y.clear();
        this.f52696z.clear();
        h.a aVar = h.f52857a;
        aVar.b().c(this.D);
        aVar.b().f(this.C);
        aVar.b().reset();
    }

    public final void N(ht.a bean) {
        Intrinsics.h(bean, "bean");
        com.transsion.subtitle.a aVar = com.transsion.subtitle.a.f52708a;
        aVar.a(VideoSubtitleControl.class.getSimpleName() + " --> onDetailPageSubtitleSelect--> " + bean.b().getLan() + ", " + bean.b().getLanName() + ", " + bean.d());
        if (bean.d()) {
            this.I.e(bean, null, false);
            return;
        }
        if (!yg.l.f76264a.e()) {
            com.tn.lib.widget.toast.core.h.f40484a.k(com.transsion.baseui.R$string.base_network_fail);
            return;
        }
        bean.b().setStatus(2);
        String simpleName = VideoSubtitleControl.class.getSimpleName();
        DownloadBean downloadBean = this.f52686p;
        String totalTitleName = downloadBean != null ? downloadBean.getTotalTitleName() : null;
        aVar.a(simpleName + " --> DetailPage downloadSubtitle() --> 内置字幕列表，下载字幕，name = " + totalTitleName + ", subtype = " + bean.b().getType() + ",\"  download subtitleName = " + bean.b().getSubtitleName() + ", subResourceId = " + bean.b().getResourceId() + "~");
        h.f52857a.b().h(bean);
    }

    public final void O(LocalVideoUiType type) {
        SimpleSubtitleView simpleSubtitleView;
        Intrinsics.h(type, "type");
        this.f52688r = type;
        if (this.f52683m) {
            Map linkedHashMap = (Map) this.f52692v.get(type);
            if (linkedHashMap == null) {
                linkedHashMap = new LinkedHashMap();
            }
            this.f52690t = linkedHashMap;
            this.f52691u = (ViewGroup) this.f52693w.get(this.f52688r);
            com.transsion.subtitle.a.f52708a.a(VideoSubtitleControl.class.getSimpleName() + " --> onLocalUiChanged() --> currentUiType = " + this.f52688r + " --> subtitleSelectList.size = " + this.F.size());
            for (ht.a aVar : this.F) {
                boolean z10 = true;
                if (this.G) {
                    String strA = aVar.a();
                    int iHashCode = strA.hashCode();
                    if (iHashCode != 0) {
                        if (iHashCode != 50770) {
                            simpleSubtitleView = (iHashCode == 51560 && strA.equals("2nd")) ? (SimpleSubtitleView) this.f52690t.get(IntegrationConstants.TAB_BAR_POSITION_DEFAULT) : null;
                            z10 = false;
                        } else if (strA.equals("1st")) {
                            simpleSubtitleView = (SimpleSubtitleView) this.f52690t.get(IntegrationConstants.TAB_BAR_POSITION_TOP);
                        }
                        z10 = false;
                    } else if (strA.equals("")) {
                        simpleSubtitleView = (SimpleSubtitleView) this.f52690t.get(IntegrationConstants.TAB_BAR_POSITION_TOP);
                    } else {
                        z10 = false;
                    }
                    d0(aVar, simpleSubtitleView, z10);
                } else {
                    d0(aVar, (SimpleSubtitleView) this.f52690t.get(IntegrationConstants.TAB_BAR_POSITION_TOP), true);
                }
            }
        }
        com.transsion.subtitle.helper.d dVar = this.f52687q;
        if (dVar != null) {
            dVar.i((SimpleSubtitleView) this.f52690t.get(IntegrationConstants.TAB_BAR_POSITION_TOP), (SimpleSubtitleView) this.f52690t.get(IntegrationConstants.TAB_BAR_POSITION_DEFAULT), type, this.f52691u);
        }
        com.transsion.subtitle.a.f52708a.a(VideoSubtitleControl.class.getSimpleName() + " --> onLocalUiChanged() --> 页面切换刷新字幕位置信息");
    }

    public final void Q() {
        Iterator it = this.f52690t.entrySet().iterator();
        while (it.hasNext()) {
            SimpleSubtitleView simpleSubtitleView = (SimpleSubtitleView) ((Map.Entry) it.next()).getValue();
            if (simpleSubtitleView != null) {
                simpleSubtitleView.pause();
            }
        }
    }

    public final void R(long j10) {
        this.E = j10;
    }

    public final void S() {
        Iterator it = this.f52690t.entrySet().iterator();
        while (it.hasNext()) {
            SimpleSubtitleView simpleSubtitleView = (SimpleSubtitleView) ((Map.Entry) it.next()).getValue();
            if (simpleSubtitleView != null) {
                simpleSubtitleView.resume();
            }
        }
    }

    public final void T() {
    }

    public final void X() {
        this.H = "";
        this.f52682l.clear();
        for (Map.Entry entry : this.f52690t.entrySet()) {
            SimpleSubtitleView simpleSubtitleView = (SimpleSubtitleView) entry.getValue();
            if (simpleSubtitleView != null) {
                simpleSubtitleView.reset();
            }
            SimpleSubtitleView simpleSubtitleView2 = (SimpleSubtitleView) entry.getValue();
            if (simpleSubtitleView2 != null) {
                uf.c.g(simpleSubtitleView2);
            }
        }
        com.transsion.subtitle.a.f52708a.a(VideoSubtitleControl.class.getSimpleName() + " --> reset() --> 重置资源");
        h.f52857a.b().reset();
    }

    public final void Z(LocalVideoUiType uiType, TextView textView, SimpleSubtitleView simpleSubtitleView, SimpleSubtitleView simpleSubtitleView2, ViewGroup viewGroup, boolean z10) {
        Intrinsics.h(uiType, "uiType");
        this.f52683m = z10;
        this.f52691u = viewGroup;
        this.f52690t.put(IntegrationConstants.TAB_BAR_POSITION_TOP, simpleSubtitleView);
        this.f52690t.put(IntegrationConstants.TAB_BAR_POSITION_DEFAULT, simpleSubtitleView2);
        if (z10) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            linkedHashMap.put(IntegrationConstants.TAB_BAR_POSITION_TOP, simpleSubtitleView);
            linkedHashMap.put(IntegrationConstants.TAB_BAR_POSITION_DEFAULT, simpleSubtitleView2);
            this.f52692v.put(uiType, linkedHashMap);
            this.f52693w.put(uiType, this.f52691u);
        }
        h.f52857a.b().reset();
        if (textView != null) {
            textView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    VideoSubtitleControl.a0(this.f52712a, view);
                }
            });
        }
        if (simpleSubtitleView != null) {
            J(simpleSubtitleView);
        }
        if (simpleSubtitleView2 != null) {
            J(simpleSubtitleView2);
        }
        com.transsion.subtitle.helper.d dVar = this.f52687q;
        if (dVar != null) {
            dVar.i(simpleSubtitleView, simpleSubtitleView2, uiType, viewGroup);
        }
        com.transsion.subtitle.a.f52708a.a(VideoSubtitleControl.class.getSimpleName() + " --> setData() --> uiType = " + uiType + " --> END");
    }

    public final void b0(boolean z10) {
        this.f52685o = z10;
    }

    public final void c0(Function1 function1) {
        this.f52694x = function1;
    }

    public final void f0(List list) {
        X();
        List list2 = list;
        if (list2 == null || list2.isEmpty()) {
            if (this.f52682l.isEmpty()) {
                com.transsion.subtitle.a aVar = com.transsion.subtitle.a.f52708a;
                String simpleName = VideoSubtitleControl.class.getSimpleName();
                DownloadBean downloadBean = this.f52686p;
                aVar.a(simpleName + " --> setSubtitleDataList() --> 无字幕 --> subtitleResId:" + (downloadBean != null ? downloadBean.getSubtitleResId() : null));
                return;
            }
            return;
        }
        com.transsion.subtitle.a.f52708a.a(VideoSubtitleControl.class.getSimpleName() + " --> setSubtitleDataList() --> 当前可用字幕数量 -- size = " + list.size());
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        ListIterator listIterator = list.listIterator();
        while (listIterator.hasNext()) {
            ht.a aVar2 = (ht.a) listIterator.next();
            aVar2.l(false);
            if (linkedHashMap.containsKey(aVar2.b().getId()) && linkedHashMap.containsValue(aVar2.b().getName())) {
                com.transsion.subtitle.a.f52708a.a(VideoSubtitleControl.class.getSimpleName() + " --> setSubtitleDataList() --> Repeated，remove~  name = " + aVar2.b().getName());
                listIterator.remove();
            } else {
                linkedHashMap.put(aVar2.b().getId(), aVar2.b().getName());
            }
        }
        if (list.size() > 1) {
            CollectionsKt.A(list, new Comparator() {
                /* JADX WARN: Multi-variable type inference failed */
                @Override
                public final int compare(T t10, T t11) {
                    return ComparisonsKt.d(Integer.valueOf(((ht.a) t10).b().getType()), Integer.valueOf(((ht.a) t11).b().getType()));
                }
            });
        }
        this.f52682l.clear();
        this.f52682l.addAll(list);
        this.f52679i.invoke(this.f52682l);
        I();
    }

    public final void g0(lt.a callback) {
        Intrinsics.h(callback, "callback");
    }

    public final void h0(DownloadBean downloadBean) {
        this.f52686p = downloadBean;
    }

    public final void i0(Function1 callback) {
        Intrinsics.h(callback, "callback");
    }

    public final void j0(boolean z10, boolean z11) {
        String value;
        Boolean boolM1;
        ConfigBean configBeanC = cm.f.f17019c.a().c("sa_show_no_subtitle_tips", true);
        if ((!((configBeanC == null || (value = configBeanC.getValue()) == null || (boolM1 = StringsKt.m1(value)) == null) ? false : boolM1.booleanValue()) && !z11) || this.f52671a.isDestroyed() || this.f52671a.isFinishing()) {
            return;
        }
        FragmentActivity fragmentActivity = this.f52671a;
        SubtitleMainDialog2 subtitleMainDialog2A = SubtitleMainDialog2.INSTANCE.a(this.f52688r == LocalVideoUiType.LAND, z10, this.f52674d, this.f52686p, this.f52672b);
        subtitleMainDialog2A.k0(fragmentActivity, "fragment_subtitle_main_dialog");
        subtitleMainDialog2A.F0(this.I);
    }

    public final void p0(List dubs) {
        Intrinsics.h(dubs, "dubs");
        this.f52674d = dubs;
    }

    public final void q0(long j10) {
        this.f52684n = j10;
    }

    public final void r0(float f10) {
        this.f52673c = f10;
    }

    public VideoSubtitleControl(FragmentActivity fragmentActivity, String str, float f10, List list, Function1 function1, Function2 function2, Function3 function3, Function1 function4, Function1 function5, Function1 function6, Function2 function7, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(fragmentActivity, str, f10, (i10 & 8) != 0 ? CollectionsKt.l() : list, function1, function2, function3, function4, function5, (i10 & 512) != 0 ? null : function6, function7);
    }
}
