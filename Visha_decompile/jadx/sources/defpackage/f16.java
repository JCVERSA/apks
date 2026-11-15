package defpackage;

import android.os.Bundle;
import com.transsion.athena.data.TrackData;
import com.transsion.dbdata.beans.SubtitleSettingData;
import com.transsion.dbdata.beans.media.PlayAudioData;
import java.math.BigDecimal;

public abstract class f16 extends hb0 {
    public static int a;

    public static int b(SubtitleSettingData subtitleSettingData) {
        if (subtitleSettingData.translateY != 0) {
            return 3;
        }
        int i = subtitleSettingData.location;
        if (i == 2) {
            return 0;
        }
        if (i == 0) {
            return 1;
        }
        return i == 1 ? 2 : 0;
    }

    public static void c(SubtitleSettingData subtitleSettingData) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putInt("location", b(subtitleSettingData));
        trackData.add("location", b(subtitleSettingData));
        bundle.putInt("align", subtitleSettingData.textAlignment);
        trackData.add("align", subtitleSettingData.textAlignment);
        bundle.putInt(PlayAudioData.TAG_SIZE, subtitleSettingData.textSize);
        trackData.add(PlayAudioData.TAG_SIZE, subtitleSettingData.textSize);
        bundle.putInt("weight", subtitleSettingData.textStyle);
        trackData.add("weight", subtitleSettingData.textStyle);
        bundle.putInt("fontcolor", subtitleSettingData.textColor);
        trackData.add("fontcolor", subtitleSettingData.textColor);
        bundle.putInt("bgcolor", subtitleSettingData.textBackgroundColor);
        trackData.add("bgcolor", subtitleSettingData.textBackgroundColor);
        bundle.putInt("transparency", subtitleSettingData.textBackgroundOpacity);
        trackData.add("transparency", subtitleSettingData.textBackgroundOpacity);
        p06.q0(trackData, bundle, "vd_cp_subtitle_pop_customize_statue", 9324L);
    }

    public static void d(int i, String str) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putInt("analyze", i);
        bundle.putString("path", str);
        bundle.putString("format", zu3.n(str));
        trackData.add("analyze", i);
        trackData.add("path", str);
        trackData.add("format", zu3.n(str));
        p06.q0(trackData, bundle, "vd_cp_subtitle_analyze", 9324L);
    }

    public static void e(int i, int i2) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putInt("analyze", i);
        bundle.putInt("format", i2);
        trackData.add("analyze", i);
        trackData.add("format", i2);
        p06.q0(trackData, bundle, "vd_cp_subtitle_analyze", 9324L);
    }

    public static void f(int i) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putInt("track", i);
        trackData.add("track", i);
        p06.q0(trackData, bundle, "vd_cp_subtitle_pop_addlocalsub_cl", 9324L);
    }

    public static void g(int i) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putInt("from", i);
        trackData.add("from", i);
        p06.q0(trackData, bundle, "vd_cp_subtitle_pop_downloadsub", 9324L);
    }

    public static void h(double d, String str, int i) {
        double dDoubleValue = new BigDecimal(d).setScale(1, 1).doubleValue();
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putDouble("syn", dDoubleValue);
        bundle.putString("path", str);
        bundle.putInt("track", i);
        trackData.add("syn", dDoubleValue);
        trackData.add("path", str);
        trackData.add("track", i);
        p06.q0(trackData, bundle, "vd_cp_subtitle_pop_fastsyntrack", 9324L);
    }

    public static void i(double d, String str, String str2) {
        double dDoubleValue = new BigDecimal(d).setScale(1, 1).doubleValue();
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putDouble("statue", dDoubleValue);
        bundle.putString("path", str);
        trackData.add("statue", dDoubleValue);
        trackData.add("path", str);
        p06.q0(trackData, bundle, str2, 9324L);
    }

    public static void j(int i) {
        hb0.markTrackSingle("vd_cp_subtitle_2track_switchcl", "statue", Integer.valueOf(i));
    }
}
