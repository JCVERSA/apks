.class public Lcom/transsion/sniffer_load/adapter/DownloadBViewHolder$a;
.super Lcom/transsion/sniffer_load/adapter/DownloadViewAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/sniffer_load/adapter/DownloadBViewHolder;->c(Landroid/content/Context;Lcom/transsion/dbdata/beans/sniff/DownloadMain$PageItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic q:Landroid/content/Context;

.field public final synthetic r:Lcom/transsion/sniffer_load/adapter/DownloadBViewHolder;


# direct methods
.method public constructor <init>(Lcom/transsion/sniffer_load/adapter/DownloadBViewHolder;ILjava/util/List;Ljava/lang/String;ILandroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/adapter/DownloadBViewHolder$a;->r:Lcom/transsion/sniffer_load/adapter/DownloadBViewHolder;

    iput-object p6, p0, Lcom/transsion/sniffer_load/adapter/DownloadBViewHolder$a;->q:Landroid/content/Context;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/transsion/sniffer_load/adapter/DownloadViewAdapter;-><init>(ILjava/util/List;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public d(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/sniff/DownloadMain$ItemData;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/transsion/sniffer_load/adapter/DownloadViewAdapter;->d(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/sniff/DownloadMain$ItemData;)V

    iget-object p0, p0, Lcom/transsion/sniffer_load/adapter/DownloadBViewHolder$a;->q:Landroid/content/Context;

    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/sniff/DownloadMain$ItemData;->getIcon()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    sget v0, Lcom/transsion/sniffer_load/R$drawable;->ic_bookmark_placeholder:I

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/RequestBuilder;

    sget v0, Lcom/transsion/sniffer_load/R$id;->iv_cover:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    sget p0, Lcom/transsion/sniffer_load/R$id;->tv_name:I

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/sniff/DownloadMain$ItemData;->getWebsite_name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    return-void
.end method
