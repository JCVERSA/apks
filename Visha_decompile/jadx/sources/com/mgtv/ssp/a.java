package com.mgtv.ssp;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.hunantv.imgo.util.v;
import com.mgtv.ssp.auth.EntranceInfo;
import com.mgtv.ssp.callback.MgSspSdkCallback;
import com.mgtv.ssp.playdetail.SspPlayDetailActivity;

public class a {
    public void a(Context context, int i, EntranceInfo entranceInfo, MgSspSdkCallback mgSspSdkCallback) {
        if (entranceInfo == null || TextUtils.isEmpty(entranceInfo.getContentId())) {
            return;
        }
        if (!TextUtils.isEmpty(entranceInfo.getType())) {
            com.mgtv.thirdsdk.playcore.utils.c.b(entranceInfo.getType());
        }
        com.mgtv.ssp.feed.a aVar = new com.mgtv.ssp.feed.a();
        com.mgtv.ssp.bean.a aVar2 = new com.mgtv.ssp.bean.a();
        aVar2.b = entranceInfo;
        aVar2.c = mgSspSdkCallback;
        aVar2.a = i;
        aVar.a(context, aVar2);
    }

    public void a(Activity activity, int i, EntranceInfo entranceInfo, MgSspSdkCallback mgSspSdkCallback) {
        if (entranceInfo == null || TextUtils.isEmpty(entranceInfo.getContentId())) {
            return;
        }
        if (!TextUtils.isEmpty(entranceInfo.getType())) {
            com.mgtv.thirdsdk.playcore.utils.c.b(entranceInfo.getType());
        }
        if ("fragment".equalsIgnoreCase(entranceInfo.getType())) {
            com.mgtv.ssp.feed.a aVar = new com.mgtv.ssp.feed.a();
            com.mgtv.ssp.bean.a aVar2 = new com.mgtv.ssp.bean.a();
            aVar2.b = entranceInfo;
            aVar2.c = mgSspSdkCallback;
            aVar2.a = i;
            aVar.a(activity, aVar2);
            return;
        }
        com.mgtv.ssp.feed.b bVar = new com.mgtv.ssp.feed.b();
        com.mgtv.ssp.bean.a aVar3 = new com.mgtv.ssp.bean.a();
        aVar3.b = entranceInfo;
        aVar3.c = mgSspSdkCallback;
        aVar3.a = i;
        bVar.a(activity, aVar3);
    }

    public void a(Context context, EntranceInfo entranceInfo) {
        if (entranceInfo == null || TextUtils.isEmpty(entranceInfo.getContentId())) {
            return;
        }
        if (!TextUtils.isEmpty(entranceInfo.getType())) {
            com.mgtv.thirdsdk.playcore.utils.c.b(entranceInfo.getType());
        }
        if (com.mgtv.ssp.auth.b.a().b() == 0) {
            Intent intent = new Intent(context, (Class<?>) SspPlayDetailActivity.class);
            intent.putExtra(TtmlNode.ATTR_ID, entranceInfo.getVideoId());
            intent.putExtra("contentId", entranceInfo.getContentId());
            intent.putExtra("token", entranceInfo.getToken());
            com.hunantv.imgo.util.a.a(context, intent);
            return;
        }
        v.a(context.getString(R.string.init_error), 1);
    }
}
