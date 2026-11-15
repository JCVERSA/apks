package defpackage;

import android.os.Bundle;
import com.transsion.athena.data.TrackData;
import com.transsion.dbdata.beans.media.PlayAudioData;
import com.transsion.dbdata.beans.sniff.DownloadMain;
import com.transsion.livecaption.constant.ICode;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.function.Consumer;

public abstract class dz5 extends hb0 {
    public static int a = -1;
    public static String b = "";

    public class a implements Consumer {
        public final StringBuilder b;
        public final StringBuilder c;
        public final StringBuilder d;
        public final StringBuilder e;

        public a(StringBuilder sb, StringBuilder sb2, StringBuilder sb3, StringBuilder sb4) {
            this.b = sb;
            this.c = sb2;
            this.d = sb3;
            this.e = sb4;
        }

        @Override
        public void accept(DownloadMain.DownloadContent downloadContent) {
            this.b.append(downloadContent.getFile_name());
            this.b.append("; ");
            this.c.append(downloadContent.getLink());
            this.c.append("; ");
            this.d.append(downloadContent.getFile_size());
            this.d.append("; ");
            this.e.append(downloadContent.getFile_type());
            this.e.append("; ");
        }
    }

    public static void b(int i, String str) {
        hb0.markTrackSingle(str, "from", Integer.valueOf(i));
    }

    public static void c(String str, int i, DownloadMain.ItemData itemData) {
        if (itemData == null) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        StringBuilder sb2 = new StringBuilder();
        StringBuilder sb3 = new StringBuilder();
        StringBuilder sb4 = new StringBuilder();
        if (itemData.getWebsite_download_contents() != null) {
            itemData.getWebsite_download_contents().stream().forEach(new a(sb, sb2, sb3, sb4));
        }
        hb0.markKV("vd_dl_content_cl", new hb0.a("type", Integer.valueOf(i)), new hb0.a("type_1", str), new hb0.a("name", itemData.getWebsite_name()), new hb0.a(hb0.KEY_NAME_MAINURL, itemData.getWebsite_link()), new hb0.a("bt", Integer.valueOf(itemData.getIs_bt())), new hb0.a("name_1", sb.toString()), new hb0.a("video_url", sb2.toString()), new hb0.a(PlayAudioData.TAG_SIZE, sb3.toString()), new hb0.a("type_2", sb4.toString()));
    }

    public static void d(int[] iArr) {
        if (iArr == null) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        for (int i : iArr) {
            switch (i) {
                case 0:
                    sb.append("连接中：");
                    sb.append(i);
                    sb.append(StringUtils.COMMA);
                    break;
                case 1:
                    sb.append("等待中：");
                    sb.append(i);
                    sb.append(StringUtils.COMMA);
                    break;
                case 2:
                    sb.append("下载中：");
                    sb.append(i);
                    sb.append(StringUtils.COMMA);
                    break;
                case 3:
                    sb.append("暂停：");
                    sb.append(i);
                    sb.append(StringUtils.COMMA);
                    break;
                case 4:
                    sb.append("错误：");
                    sb.append(i);
                    sb.append(StringUtils.COMMA);
                    break;
                case 5:
                    sb.append("完成：");
                    sb.append(i);
                    sb.append(StringUtils.COMMA);
                    break;
                case 6:
                    sb.append("使用流量暂停：");
                    sb.append(i);
                    sb.append(StringUtils.COMMA);
                    break;
            }
        }
        p06.o0("dl_manager_downloading_vdstatus", "status_amount", sb.toString());
    }

    public static void e(int i, String str) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putInt(hb0.KEY_NAME_BTN, i);
        trackData.add(hb0.KEY_NAME_BTN, i);
        bundle.putString(ICode.CALL.CALL_KEY_CONTENT, str);
        trackData.add(ICode.CALL.CALL_KEY_CONTENT, str);
        bundle.putString(hb0.KEY_NAME_MAINURL, b);
        trackData.add(hb0.KEY_NAME_MAINURL, b);
        p06.q0(trackData, bundle, "dl_brower_rp_c_adl_guide_fb_op_ok_cl", 9324L);
    }

    public static void f(int i, int i2) {
        hb0.markTrackTwo("vd_dl_pv_switch", "from", Integer.valueOf(i), "status", Integer.valueOf(i2));
    }
}
