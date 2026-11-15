.class public Lcom/transsion/sniffer_load/adapter/DownloadAViewHolder$a;
.super Lcom/transsion/sniffer_load/adapter/DownloadViewAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/sniffer_load/adapter/DownloadAViewHolder;->c(Landroid/content/Context;Lcom/transsion/dbdata/beans/sniff/DownloadMain$PageItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic q:Lcom/transsion/dbdata/beans/sniff/DownloadMain$PageItem;

.field public final synthetic r:Landroid/content/Context;

.field public final synthetic s:Lcom/transsion/sniffer_load/adapter/DownloadAViewHolder;


# direct methods
.method public constructor <init>(Lcom/transsion/sniffer_load/adapter/DownloadAViewHolder;ILjava/util/List;Ljava/lang/String;ILcom/transsion/dbdata/beans/sniff/DownloadMain$PageItem;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/adapter/DownloadAViewHolder$a;->s:Lcom/transsion/sniffer_load/adapter/DownloadAViewHolder;

    iput-object p6, p0, Lcom/transsion/sniffer_load/adapter/DownloadAViewHolder$a;->q:Lcom/transsion/dbdata/beans/sniff/DownloadMain$PageItem;

    iput-object p7, p0, Lcom/transsion/sniffer_load/adapter/DownloadAViewHolder$a;->r:Landroid/content/Context;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/transsion/sniffer_load/adapter/DownloadViewAdapter;-><init>(ILjava/util/List;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public d(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/sniff/DownloadMain$ItemData;)V
    .locals 5

    invoke-super {p0, p1, p2}, Lcom/transsion/sniffer_load/adapter/DownloadViewAdapter;->d(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/sniff/DownloadMain$ItemData;)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/adapter/DownloadAViewHolder$a;->q:Lcom/transsion/dbdata/beans/sniff/DownloadMain$PageItem;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/sniff/DownloadMain$PageItem;->getCategory_id()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    sget v0, Lcom/transsion/sniffer_load/R$id;->iv_cover:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/transsion/sniffer_load/R$id;->round_icon:I

    :goto_0
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/sniff/DownloadMain$ItemData;->getWebsite_name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/sniff/DownloadMain$ItemData;->getWebsite_name()Ljava/lang/String;

    move-result-object v2

    const-string v3, "whatsapppaikkamerkki"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.resource://"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/sniffer_load/adapter/DownloadAViewHolder$a;->r:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/sniffer_load/R$drawable;->icon_whatapp_logo_new:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/sniffer_load/adapter/DownloadAViewHolder$a;->r:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/sniffer_load/adapter/DownloadAViewHolder$a;->r:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    sget v2, Lcom/transsion/sniffer_load/R$id;->tv_name:I

    iget-object v3, p0, Lcom/transsion/sniffer_load/adapter/DownloadAViewHolder$a;->r:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/sniffer_load/R$string;->whatsapp:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/sniff/DownloadMain$ItemData;->getIcon()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/transsion/sniffer_load/R$id;->tv_name:I

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/sniff/DownloadMain$ItemData;->getWebsite_name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v3, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-object p2, v2

    :goto_1
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/ImageView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/transsion/sniffer_load/adapter/DownloadAViewHolder$a;->r:Landroid/content/Context;

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    iget-object p0, p0, Lcom/transsion/sniffer_load/adapter/DownloadAViewHolder$a;->q:Lcom/transsion/dbdata/beans/sniff/DownloadMain$PageItem;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/sniff/DownloadMain$PageItem;->getCategory_id()I

    move-result p0

    if-ne p0, v1, :cond_2

    invoke-static {}, Lcom/bumptech/glide/request/RequestOptions;->circleCropTransform()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p0

    goto :goto_2

    :cond_2
    new-instance p0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {p0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    :goto_2
    invoke-virtual {p2, p0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    sget p2, Lcom/transsion/sniffer_load/R$drawable;->ic_bookmark_placeholder:I

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_3
    return-void
.end method
