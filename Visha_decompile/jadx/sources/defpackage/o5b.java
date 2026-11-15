package defpackage;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import android.view.View;
import com.blankj.utilcode.util.ThreadUtils;
import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.beans.media.PlayAudioData;
import com.transsion.playercommon.R;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.playercommon.convert.ConvertingTaskManager;
import com.transsion.tranplayer.MediaMetadataRetriever;
import com.transsion.widgetslib.dialog.d;
import org.apache.commons.lang3.BooleanUtils;

public abstract class o5b {
    public static d a;
    public static lpb b;

    public static int b(String str) {
        if (ThreadUtils.r()) {
            throw new RuntimeException("TransMp3Utils.checkAudioTrack Can not be called in the main thread");
        }
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        try {
            try {
                mediaMetadataRetriever.setDataSource(str);
                String strExtractMetadata = mediaMetadataRetriever.extractMetadata(16);
                Log.w("visha_ConvertUtils", "hasAudioTrack: " + strExtractMetadata);
                if (BooleanUtils.YES.equals(strExtractMetadata)) {
                    mediaMetadataRetriever.release();
                    return 1;
                }
                mediaMetadataRetriever.release();
                return 0;
            } catch (Exception e) {
                Log.w("visha_ConvertUtils", "hasAudioTrack error: " + e.getMessage());
                mediaMetadataRetriever.release();
                return -1;
            }
        } catch (Throwable th) {
            mediaMetadataRetriever.release();
            throw th;
        }
    }

    public static void c(Dialog dialog) {
        if (dialog == null || !dialog.isShowing()) {
            return;
        }
        Context context = dialog.getContext();
        if (!(context instanceof Activity)) {
            dialog.dismiss();
            return;
        }
        Activity activity = (Activity) context;
        if (activity.isFinishing() || activity.isDestroyed()) {
            return;
        }
        dialog.dismiss();
    }

    public static void d() {
        c(a);
    }

    public static boolean e(String str) {
        return b(str) == 1;
    }

    public static void f(Context context, MediaItem mediaItem) {
        Intent intent = new Intent("com.transsion.tools.activities.ConverterMainActivity");
        intent.setPackage(context.getPackageName());
        if (mediaItem != null) {
            intent.putExtra("video_to_mp3_item_id", mediaItem.id);
        }
        f5.c(intent, context);
    }

    public static void g(BaseActivity baseActivity, MediaItem mediaItem, View view) {
        f(baseActivity, mediaItem);
        k16.b(true);
    }

    public static void h(Activity activity, AudioItem audioItem) {
        PlayAudioData playAudioDataConvertToPlayAudioData = PlayAudioData.convertToPlayAudioData(audioItem);
        if (playAudioDataConvertToPlayAudioData != null) {
            playAudioDataConvertToPlayAudioData.listFlag = 31;
            playAudioDataConvertToPlayAudioData.autoPlay = true;
            playAudioDataConvertToPlayAudioData.folderName = activity.getText(R.string.convert_to_audio).toString();
        }
        Intent intent = new Intent();
        intent.setClassName(activity, "com.transsion.audio.activities.AudioPlayerActivity");
        playAudioDataConvertToPlayAudioData.toIntent(intent);
        if (activity == null) {
            intent.addFlags(268435456);
        }
        f5.c(intent, activity);
    }

    public static void i() {
        lpb lpbVar = b;
        if (lpbVar != null) {
            lpbVar.j(null);
            b.k();
        }
        d();
    }

    public static void j(final BaseActivity baseActivity, final MediaItem mediaItem) {
        if (lpb.g() || lpb.h(mediaItem)) {
            return;
        }
        ConvertingTaskManager.j().B(mediaItem);
        ConvertingTaskManager.j().s(mediaItem);
        gq9.a(baseActivity, new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                o5b.g(baseActivity, mediaItem, view);
            }
        }, baseActivity.getResources().getString(R.string.have_add_to_converting_list), baseActivity.getResources().getString(R.string.snackbar_check));
    }
}
