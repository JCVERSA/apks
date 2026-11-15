.class public abstract Lcom/transsion/sniffer_load/adapter/DownloadViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;Ljava/lang/Object;)V
.end method

.method public b(Lcom/transsion/dbdata/beans/sniff/DownloadMain$PageItem;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/DownloadMain$PageItem;->getCategory_id()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/16 v1, 0x14

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_4

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sget v0, Lcom/transsion/sniffer_load/R$string;->visha_download_category_popular_music:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget v0, Lcom/transsion/sniffer_load/R$string;->visha_download_category_downloader:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget v0, Lcom/transsion/sniffer_load/R$string;->visha_download_category_others:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_3
    sget v0, Lcom/transsion/sniffer_load/R$string;->visha_download_category_movies:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_4
    sget v0, Lcom/transsion/sniffer_load/R$string;->visha_popular_sites:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_5
    sget v0, Lcom/transsion/sniffer_load/R$string;->visha_download_category_social_media:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_6

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/DownloadMain$PageItem;->getCategory_name()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_6
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method
