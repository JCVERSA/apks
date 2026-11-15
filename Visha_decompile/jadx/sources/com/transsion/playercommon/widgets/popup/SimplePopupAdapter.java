package com.transsion.playercommon.widgets.popup;

import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.playercommon.R;
import defpackage.gw4;
import java.util.List;

public class SimplePopupAdapter<T extends gw4> extends BaseQuickAdapter<T, BaseViewHolder> {
    public SimplePopupAdapter(List list) {
        super(R.layout.layout_item_simple_list_popup, list);
    }

    @Override
    public void convert(BaseViewHolder baseViewHolder, gw4 gw4Var) {
        CheckedPopupListItem checkedPopupListItem = (CheckedPopupListItem) baseViewHolder.getView(R.id.simple_popup_list_item);
        checkedPopupListItem.setTitle(gw4Var.displayText());
        checkedPopupListItem.setChecked(gw4Var.isCheck());
    }
}
