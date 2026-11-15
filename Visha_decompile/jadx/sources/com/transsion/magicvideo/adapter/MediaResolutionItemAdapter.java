package com.transsion.magicvideo.adapter;

import android.content.Context;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.View;
import android.widget.RadioButton;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.dbdata.beans.mimedia.MIMediaVideoPlayItemInfo;
import com.transsion.magicvideo.R;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\f\u0018\u0000 \u00172\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0001:\u0001\u0018B\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u001f\u0010\u000b\u001a\u00020\n2\u0006\u0010\b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u000f\u001a\u00020\n2\b\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\u000f\u0010\u0010R$\u0010\u0016\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0010¨\u0006\u0019"}, d2 = {"Lcom/transsion/magicvideo/adapter/MediaResolutionItemAdapter;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;", "Lcom/chad/library/adapter/base/BaseViewHolder;", "Landroid/content/Context;", "context", MethodDecl.initName, "(Landroid/content/Context;)V", "helper", "item", "Lzfb;", "b", "(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;)V", "", "resolution", "c", "(Ljava/lang/String;)V", "o", "Ljava/lang/String;", "getMResolution", "()Ljava/lang/String;", "setMResolution", "mResolution", TtmlNode.TAG_P, CmcdData.OBJECT_TYPE_AUDIO_ONLY, "video_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class MediaResolutionItemAdapter extends BaseQuickAdapter<MIMediaVideoPlayItemInfo, BaseViewHolder> {

    public String mResolution;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MediaResolutionItemAdapter(Context context) {
        super(R.layout.template_item);
        y45.j(context, "context");
        this.mResolution = "";
        context.getTheme().resolveAttribute(R.attr.os_platform_basic_color, new TypedValue(), true);
    }

    @Override
    public void convert(BaseViewHolder helper, MIMediaVideoPlayItemInfo item) {
        y45.j(helper, "helper");
        y45.j(item, "item");
        String resolution = item.getResolution();
        helper.setText(R.id.tv_template_id, item.getResolution());
        boolean zEquals = TextUtils.equals(resolution, this.mResolution);
        View view = helper.getView(R.id.cb_template);
        y45.h(view, "null cannot be cast to non-null type android.widget.RadioButton");
        ((RadioButton) view).setChecked(zEquals);
    }

    public final void c(String resolution) {
        this.mResolution = resolution;
        notifyDataSetChanged();
    }
}
