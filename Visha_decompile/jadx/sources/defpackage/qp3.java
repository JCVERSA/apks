package defpackage;

import android.text.TextUtils;
import android.util.Log;
import com.hunantv.imgo.net.entity.AuthInfo;
import com.hunantv.media.drm.IDrmManager;
import com.transsion.playercommon.R;
import com.transsion.playercommon.core.MainApp;
import java.util.HashMap;
import java.util.Map;

public abstract class qp3 {
    public static Map a(int i, String... strArr) {
        HashMap map = new HashMap();
        switch (i) {
            case 1:
                map.put("module_id", "30");
                map.put("module", "Others");
                map.put("module_buried", "others");
                break;
            case 2:
                map.put("module_id", "3");
                map.put("module", "Download");
                map.put("module_buried", "download");
                map.put("problem_type_id", "17");
                map.put("problem_type", "Others");
                map.put("feedback_type_id", "25");
                break;
            case 3:
                map.put("module_id", "4");
                map.put("module", "OnlineVideos");
                map.put("module_buried", "onlinevideos");
                map.put("problem_type_id", IDrmManager.SessionConfig.STR_DRM_TYPE_AUDIO_MAES);
                map.put("problem_type", "PlaybackExperience");
            case 4:
                map.put("module_id", "4");
                map.put("module", "OnlineVideos");
                map.put("module_buried", "onlinevideos");
                map.put("problem_type_id", "31");
                map.put("problem_type", "Subtitles");
                break;
            case 5:
                map.put("module_id", "3");
                map.put("module", "Download");
                map.put("module_buried", "download");
                map.put("problem_type_id", "32");
                map.put("problem_type", "FailedToFownloadVideo");
                break;
            case 6:
                map.put("module_id", "4");
                map.put("module", MainApp.f().getString(R.string.visha_online_video));
                map.put("module_buried", "onlinev");
                map.put("problem_type_id", "18");
                map.put("problem_type", MainApp.f().getString(R.string.visha_cloud_report_problem_type));
                break;
        }
        if (!TextUtils.isEmpty(b(i, strArr))) {
            map.put("remark", b(i, strArr));
        }
        return map;
    }

    public static String b(int i, String... strArr) {
        HashMap map = new HashMap();
        switch (i) {
            case 0:
                map.put("format", strArr[0]);
                break;
            case 1:
                map.put("rate", strArr[0]);
                break;
            case 2:
                map.put("rate", strArr[0]);
                map.put("mark", strArr[1]);
                break;
            case 3:
                map.put("videoid", strArr[0]);
                map.put("serialid", strArr[1]);
                break;
            case 4:
                map.put("videoid", strArr[0]);
                map.put("serialid", strArr[1]);
                map.put(AuthInfo.Component.CODE_SUBTITLE, strArr[2]);
                break;
            case 5:
                map.put("mark", strArr[0]);
                map.put("url", strArr[1]);
                break;
            case 6:
                map.put("mediaLibraryId", strArr[0]);
                map.put("mediaLibraryTitle", strArr[1]);
                map.put("mediaId", strArr[2]);
                map.put("mediaTitle", strArr[3]);
                break;
            default:
                return "";
        }
        Log.d("FeedBackParamProvider", fi1.e(map));
        return fi1.e(map);
    }
}
