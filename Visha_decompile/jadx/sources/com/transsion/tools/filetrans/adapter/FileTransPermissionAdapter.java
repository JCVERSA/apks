package com.transsion.tools.filetrans.adapter;

import androidx.media3.exoplayer.upstream.CmcdData;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.tools.R;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \u000b2\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\fB\u0007¢\u0006\u0004\b\u0004\u0010\u0005J!\u0010\t\u001a\u00020\b2\u0006\u0010\u0006\u001a\u00020\u00032\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002H\u0014¢\u0006\u0004\b\t\u0010\n¨\u0006\r"}, d2 = {"Lcom/transsion/tools/filetrans/adapter/FileTransPermissionAdapter;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/transsion/tools/filetrans/adapter/FileTransPermissionAdapter$a$a;", "Lcom/chad/library/adapter/base/BaseViewHolder;", MethodDecl.initName, "()V", "helper", "item", "Lzfb;", "b", "(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/tools/filetrans/adapter/FileTransPermissionAdapter$a$a;)V", "o", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "tools_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class FileTransPermissionAdapter extends BaseQuickAdapter<Companion.C0254a, BaseViewHolder> {
    public FileTransPermissionAdapter() {
        super(R.layout.item_file_trans_permission);
    }

    @Override
    public void convert(BaseViewHolder helper, Companion.C0254a item) {
        y45.j(helper, "helper");
        if (item != null) {
            helper.setText(R.id.title, item.c());
            helper.setText(R.id.info, item.b());
            helper.setImageResource(R.id.icon, item.a());
        }
    }
}
