package com.transsion.cloud.adapter;

import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.netdisk.R;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J!\u0010\t\u001a\u00020\b2\u0006\u0010\u0006\u001a\u00020\u00032\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002H\u0014¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/transsion/cloud/adapter/CloudHistoryAdapter;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "", "Lcom/chad/library/adapter/base/BaseViewHolder;", MethodDecl.initName, "()V", "viewHolder", "item", "Lzfb;", "convert", "(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/String;)V", "clouddrive_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class CloudHistoryAdapter extends BaseQuickAdapter<String, BaseViewHolder> {
    public CloudHistoryAdapter() {
        super(R.layout.cloud_history_item);
    }

    @Override
    public void convert(BaseViewHolder viewHolder, String item) {
        y45.j(viewHolder, "viewHolder");
        viewHolder.setText(R.id.tv_content, item);
    }
}
