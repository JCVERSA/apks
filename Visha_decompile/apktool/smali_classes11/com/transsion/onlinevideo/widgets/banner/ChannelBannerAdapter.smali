.class public Lcom/transsion/onlinevideo/widgets/banner/ChannelBannerAdapter;
.super Lcom/zhpan/bannerview/BaseBannerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zhpan/bannerview/BaseBannerAdapter<",
        "Lcom/transsion/dbdata/beans/appconfig/BannerBean;",
        ">;"
    }
.end annotation


# instance fields
.field public final r:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/zhpan/bannerview/BaseBannerAdapter;-><init>()V

    iput-object p1, p0, Lcom/transsion/onlinevideo/widgets/banner/ChannelBannerAdapter;->r:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Lcom/zhpan/bannerview/BaseViewHolder;Ljava/lang/Object;II)V
    .locals 0

    check-cast p2, Lcom/transsion/dbdata/beans/appconfig/BannerBean;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/onlinevideo/widgets/banner/ChannelBannerAdapter;->y(Lcom/zhpan/bannerview/BaseViewHolder;Lcom/transsion/dbdata/beans/appconfig/BannerBean;II)V

    return-void
.end method

.method public getLayoutId(I)I
    .locals 0

    sget p0, Lcom/transsion/onlinevideo/R$layout;->banner_image_item:I

    return p0
.end method

.method public y(Lcom/zhpan/bannerview/BaseViewHolder;Lcom/transsion/dbdata/beans/appconfig/BannerBean;II)V
    .locals 3

    iget-object p3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget p4, Lcom/transsion/onlinevideo/R$id;->iv_item:I

    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p4, p0, Lcom/transsion/onlinevideo/widgets/banner/ChannelBannerAdapter;->r:Landroid/content/Context;

    invoke-static {p4}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p4

    invoke-virtual {p4}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object p4

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/appconfig/BannerBean;->getCover()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p4

    sget v2, Lcom/transsion/onlinevideo/R$drawable;->ic_banner_placeholder:I

    invoke-virtual {p4, v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p4

    check-cast p4, Lcom/bumptech/glide/RequestBuilder;

    new-instance v2, Lcom/transsion/onlinevideo/widgets/banner/ChannelBannerAdapter$a;

    invoke-direct {v2, p0, v0, v1}, Lcom/transsion/onlinevideo/widgets/banner/ChannelBannerAdapter$a;-><init>(Lcom/transsion/onlinevideo/widgets/banner/ChannelBannerAdapter;J)V

    invoke-virtual {p4, v2}, Lcom/bumptech/glide/RequestBuilder;->addListener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget p3, Lcom/transsion/onlinevideo/R$id;->banner_title:I

    invoke-virtual {p0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/appconfig/BannerBean;->getTitle()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget p1, Lcom/transsion/onlinevideo/R$id;->banner_description:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/appconfig/BannerBean;->getShortDescribe()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/appconfig/BannerBean;->getShortDescribe()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method
