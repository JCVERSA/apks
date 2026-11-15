package defpackage;

import android.widget.ImageView;
import com.transsion.dbdata.beans.onlinevideo.CollectItem;
import com.transsion.onlinevideo.R;
import com.transsion.onlinevideo.collect.OnlineCollectDataManager;
import com.transsion.onlinevideo.viewmodel.CollectViewModel;
import com.transsion.palmsdk.b;
import com.transsion.utils.ToastUtils;

public abstract class sf7 {
    public static void a(ImageView imageView, CollectItem collectItem, String str, int i) {
        boolean zF = OnlineCollectDataManager.d().f(str);
        if (i == 0) {
            imageView.setImageResource(!zF ? R.drawable.ic_farvorited_on : R.drawable.ic_ott_collect_enter);
        } else {
            imageView.setImageResource(!zF ? R.drawable.ic_collected_recommend : R.drawable.ic_collect_recommend);
        }
        if (i == 0) {
            if (zF) {
                cd.i(imageView);
            } else {
                cd.h(imageView);
            }
        }
        if (!b.s() || collectItem.getIsYoutube() == 1) {
            if (zF) {
                OnlineCollectDataManager.d().i(collectItem.getIsYoutube() == 1 ? collectItem.getSourceId() : String.valueOf(collectItem.getVideoId()));
            } else {
                OnlineCollectDataManager.d().b(collectItem);
            }
            ToastUtils.s(zF ? R.string.collect_cancel_suc : R.string.collect_suc);
            h27.c().e(1078, new Object[0]);
            return;
        }
        if (zF) {
            if (collectItem.getIsYoutube() == 0) {
                CollectViewModel.d(new long[]{collectItem.getVideoId()}, imageView, i);
            }
        } else if (collectItem.getIsYoutube() == 0) {
            CollectViewModel.a(new CollectItem[]{collectItem}, imageView, i);
        }
    }
}
