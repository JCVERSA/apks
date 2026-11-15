package com.transsion.playercommon.share.view;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.playercommon.R;
import com.transsion.playercommon.share.model.SharePlatformInfo;
import com.transsion.playercommon.share.view.SocialPlatformAdapter;
import com.transsion.playercommon.vishaapis.gslb.GslbInterceptor;
import defpackage.e74;
import defpackage.y45;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u000f\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001bB)\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0012\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0004\b\t\u0010\nJ\u001f\u0010\u000f\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u001f\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0015\u0010\u0016R\u001a\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R \u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00070\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001a¨\u0006\u001c"}, d2 = {"Lcom/transsion/playercommon/share/view/SocialPlatformAdapter;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lcom/transsion/playercommon/share/view/SocialPlatformAdapter$ViewHolder;", "", "Lcom/transsion/playercommon/share/model/SharePlatformInfo;", "platforms", "Lkotlin/Function1;", "Lzfb;", "onItemClick", MethodDecl.initName, "(Ljava/util/List;Le74;)V", "Landroid/view/ViewGroup;", "parent", "", "viewType", GslbInterceptor.HEADER_KEY_GSLB, "(Landroid/view/ViewGroup;I)Lcom/transsion/playercommon/share/view/SocialPlatformAdapter$ViewHolder;", "holder", "position", "c", "(Lcom/transsion/playercommon/share/view/SocialPlatformAdapter$ViewHolder;I)V", "getItemCount", "()I", "o", "Ljava/util/List;", TtmlNode.TAG_P, "Le74;", "ViewHolder", "playercommon_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SocialPlatformAdapter extends RecyclerView.Adapter<ViewHolder> {

    public final List platforms;

    public final e74 onItemClick;

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u0017\u0010\u000b\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\nR\u0017\u0010\u0011\u001a\u00020\f8\u0006¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0012"}, d2 = {"Lcom/transsion/playercommon/share/view/SocialPlatformAdapter$ViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Landroid/view/View;", "itemView", MethodDecl.initName, "(Landroid/view/View;)V", "Landroid/widget/ImageView;", TtmlNode.TAG_P, "Landroid/widget/ImageView;", "b", "()Landroid/widget/ImageView;", "platformIcon", "Landroid/widget/TextView;", "q", "Landroid/widget/TextView;", "c", "()Landroid/widget/TextView;", "platformName", "playercommon_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class ViewHolder extends RecyclerView.ViewHolder {

        public final ImageView platformIcon;

        public final TextView platformName;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ViewHolder(View view) {
            super(view);
            y45.j(view, "itemView");
            View viewFindViewById = view.findViewById(R.id.platform_icon);
            y45.i(viewFindViewById, "findViewById(...)");
            this.platformIcon = (ImageView) viewFindViewById;
            View viewFindViewById2 = view.findViewById(R.id.platform_name);
            y45.i(viewFindViewById2, "findViewById(...)");
            this.platformName = (TextView) viewFindViewById2;
        }

        public final ImageView getPlatformIcon() {
            return this.platformIcon;
        }

        public final TextView getPlatformName() {
            return this.platformName;
        }
    }

    public SocialPlatformAdapter(List list, e74 e74Var) {
        y45.j(list, "platforms");
        y45.j(e74Var, "onItemClick");
        this.platforms = list;
        this.onItemClick = e74Var;
    }

    public static final void d(SocialPlatformAdapter socialPlatformAdapter, SharePlatformInfo sharePlatformInfo, View view) {
        socialPlatformAdapter.onItemClick.invoke(sharePlatformInfo);
    }

    @Override
    public void onBindViewHolder(ViewHolder holder, int position) {
        y45.j(holder, "holder");
        final SharePlatformInfo sharePlatformInfo = (SharePlatformInfo) this.platforms.get(position);
        holder.getPlatformName().setText(sharePlatformInfo.getName());
        holder.getPlatformIcon().setImageDrawable(sharePlatformInfo.getIcon());
        holder.itemView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                SocialPlatformAdapter.d(this.b, sharePlatformInfo, view);
            }
        });
    }

    @Override
    public ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        y45.j(parent, "parent");
        View viewInflate = LayoutInflater.from(parent.getContext()).inflate(R.layout.item_social_platform, parent, false);
        y45.g(viewInflate);
        return new ViewHolder(viewInflate);
    }

    @Override
    public int getItemCount() {
        return this.platforms.size();
    }
}
