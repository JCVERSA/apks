package com.transsion.cloud.updownload.activity;

import android.content.Intent;
import android.provider.Settings;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.transsion.cloudcore.db.CloudTaskEntity;
import com.transsion.effectengine.bounceeffect.OverScrollDecorHelper;
import com.transsion.playercommon.R;
import com.transsion.playercommon.activities.RxPermissionOSBottomSheetDialog;
import com.transsion.playercommon.adapter.FileOperateMenuAdapter;
import com.transsion.playercommon.data.FileOperateItem;
import com.transsion.playercommon.data.SheetDialogParamsConstant;
import com.transsion.utils.CustomLinearLayoutManager;
import com.transsion.utils.a;
import com.transsion.widgetsbottomsheet.bottomsheet.OSPageView;
import defpackage.av3;
import java.util.ArrayList;
import java.util.List;

public class TransferSheetDialogActivity extends RxPermissionOSBottomSheetDialog implements BaseQuickAdapter.OnItemClickListener {
    public FileOperateMenuAdapter N;
    public List O = new ArrayList();
    public CloudTaskEntity P;

    public final void f0(View view) {
        OSPageView oSPageViewAddPage = addPage(view);
        CloudTaskEntity cloudTaskEntity = this.P;
        String str = "";
        if (cloudTaskEntity != null) {
            String strN = cloudTaskEntity.fileName;
            if (strN == null) {
                strN = av3.n(cloudTaskEntity.localFilePath);
            }
            if (strN != null) {
                str = strN;
            }
        }
        oSPageViewAddPage.setCloseIconVisibility(false);
        oSPageViewAddPage.setTitle(str);
    }

    public final List g0() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new FileOperateItem(R.drawable.ic_delete, R.string.delete, 5));
        arrayList.add(new FileOperateItem(R.drawable.ic_info, R.string.info, 6));
        return arrayList;
    }

    @Override
    public void initView() {
        super.initView();
        this.P = (CloudTaskEntity) getIntent().getParcelableExtra("data");
        View viewInflate = View.inflate(this, R.layout.layout_bottom_dialog_menu_recyclerview, null);
        RecyclerView recyclerView = (RecyclerView) viewInflate.findViewById(R.id.rv_content);
        FileOperateMenuAdapter fileOperateMenuAdapter = new FileOperateMenuAdapter(this);
        this.N = fileOperateMenuAdapter;
        recyclerView.setAdapter(fileOperateMenuAdapter);
        recyclerView.setLayoutManager(new CustomLinearLayoutManager(this));
        int i = 0;
        OverScrollDecorHelper.setUpOverScroll(recyclerView, 0);
        this.O.clear();
        this.O.addAll(g0());
        this.N.setNewData(this.O);
        this.N.setOnItemClickListener(this);
        View viewFindViewById = viewInflate.findViewById(R.id.bottomEmpty);
        boolean zW = a.w(getResources().getConfiguration());
        boolean z = Settings.Secure.getInt(getContentResolver(), "navigation_mode", 0) == 2;
        if (zW && z) {
            i = 8;
        }
        viewFindViewById.setVisibility(i);
        f0(viewInflate);
    }

    @Override
    public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        FileOperateItem fileOperateItem = (FileOperateItem) view.getTag();
        Intent intent = new Intent();
        intent.putExtra(SheetDialogParamsConstant.OUT_PARAM_ITEM_CLICK_DATA, fileOperateItem.getFlag());
        intent.putExtra(SheetDialogParamsConstant.OUT_PARAM_DATA, this.P);
        setResult(-1, intent);
        animateDismiss();
    }
}
