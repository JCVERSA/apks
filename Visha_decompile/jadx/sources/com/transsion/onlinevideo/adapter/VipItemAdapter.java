package com.transsion.onlinevideo.adapter;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.bumptech.glide.Glide;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.dbdata.beans.onlinevideo.UserInfoBean;
import com.transsion.onlinevideo.R;
import defpackage.wna;

public class VipItemAdapter extends BaseQuickAdapter<UserInfoBean.VipInfoVosBean, BaseViewHolder> {
    public VipItemAdapter(Context context) {
        super(R.layout.rv_item_vip_activated);
        this.mContext = context;
    }

    @Override
    public void convert(BaseViewHolder baseViewHolder, UserInfoBean.VipInfoVosBean vipInfoVosBean) {
        if (vipInfoVosBean.getGuide() == null && baseViewHolder.getLayoutPosition() == 0) {
            RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) baseViewHolder.itemView.getLayoutParams();
            ((ViewGroup.MarginLayoutParams) layoutParams).topMargin = 0;
            baseViewHolder.itemView.setLayoutParams(layoutParams);
        }
        baseViewHolder.setText(R.id.tv_title, vipInfoVosBean.getTitle());
        ImageView imageView = (ImageView) baseViewHolder.itemView.findViewById(R.id.iv_icon);
        if (imageView != null && !TextUtils.isEmpty(vipInfoVosBean.getIcon())) {
            Glide.with(this.mContext).asBitmap().load2(vipInfoVosBean.getIcon()).into(imageView);
        }
        TextView textView = (TextView) baseViewHolder.itemView.findViewById(R.id.tv_expired_date);
        if (textView != null) {
            long expireDateTime = vipInfoVosBean.getExpireDateTime();
            if (expireDateTime > 0) {
                textView.setText(this.mContext.getString(vipInfoVosBean.getIsSubscribe() == 1 ? R.string.membership_expire_sub : R.string.membership_expire, wna.b(expireDateTime * 1000)));
            }
        }
        View view = baseViewHolder.itemView;
        int i = R.id.tv_guide;
        TextView textView2 = (TextView) view.findViewById(i);
        if (textView2 != null) {
            textView2.setText(vipInfoVosBean.getGuide());
            baseViewHolder.addOnClickListener(i);
            textView2.setVisibility(vipInfoVosBean.getIsSubscribe() == 0 ? 0 : 8);
        }
        View view2 = baseViewHolder.itemView;
        int i2 = R.id.detail_more;
        View viewFindViewById = view2.findViewById(i2);
        if (viewFindViewById != null) {
            baseViewHolder.addOnClickListener(i2);
            viewFindViewById.setVisibility(vipInfoVosBean.getIsSubscribe() != 1 ? 8 : 0);
        }
        TextView textView3 = (TextView) baseViewHolder.itemView.findViewById(R.id.tv_info);
        if (textView3 != null) {
            textView3.setText(vipInfoVosBean.getCpTip());
        }
    }

    @Override
    public int getItemViewType(int i) {
        UserInfoBean.VipInfoVosBean vipInfoVosBean = getData().get(i);
        if (vipInfoVosBean.getGuide() == null) {
            return 0;
        }
        return TextUtils.isEmpty(vipInfoVosBean.getExpireDate()) ? 2 : 1;
    }

    @Override
    public BaseViewHolder onCreateDefViewHolder(ViewGroup viewGroup, int i) {
        if (i == 0) {
            return createBaseViewHolder(viewGroup, R.layout.rv_item_vip_category);
        }
        return i == 1 ? createBaseViewHolder(viewGroup, R.layout.rv_item_vip_activated) : createBaseViewHolder(viewGroup, R.layout.rv_item_vip_no_activated);
    }
}
