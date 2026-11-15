package com.transsion.tools.filetrans.adapter;

import android.content.res.Configuration;
import android.content.res.Resources;
import android.net.wifi.p2p.WifiP2pDevice;
import android.widget.TextView;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.tools.R;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 \u000f2\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\u0010B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J!\u0010\t\u001a\u00020\b2\u0006\u0010\u0006\u001a\u00020\u00032\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002H\u0014¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\r\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u0011"}, d2 = {"Lcom/transsion/tools/filetrans/adapter/FileTransDeviceAdapter;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Landroid/net/wifi/p2p/WifiP2pDevice;", "Lcom/chad/library/adapter/base/BaseViewHolder;", MethodDecl.initName, "()V", "helper", "item", "Lzfb;", "c", "(Lcom/chad/library/adapter/base/BaseViewHolder;Landroid/net/wifi/p2p/WifiP2pDevice;)V", "Landroid/widget/TextView;", "nameView", "b", "(Landroid/widget/TextView;)V", "o", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "tools_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class FileTransDeviceAdapter extends BaseQuickAdapter<WifiP2pDevice, BaseViewHolder> {
    public FileTransDeviceAdapter() {
        super(R.layout.item_file_trans_device);
    }

    public final void b(TextView nameView) {
        Configuration configuration;
        Resources resources = nameView.getResources();
        Float fValueOf = (resources == null || (configuration = resources.getConfiguration()) == null) ? null : Float.valueOf(configuration.fontScale);
        if (fValueOf == null || fValueOf.floatValue() <= 1.3f) {
            return;
        }
        nameView.setTextSize(2, 11.0f);
    }

    @Override
    public void convert(BaseViewHolder helper, WifiP2pDevice item) {
        y45.j(helper, "helper");
        TextView textView = (TextView) helper.getView(R.id.tv_name);
        String str = item != null ? item.deviceName : null;
        if (str == null) {
            str = "";
        }
        textView.setText(str);
        y45.g(textView);
        b(textView);
    }
}
