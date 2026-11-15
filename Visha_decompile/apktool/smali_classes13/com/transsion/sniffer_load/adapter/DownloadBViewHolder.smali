.class public Lcom/transsion/sniffer_load/adapter/DownloadBViewHolder;
.super Lcom/transsion/sniffer_load/adapter/DownloadViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/sniffer_load/adapter/DownloadViewHolder<",
        "Lcom/transsion/dbdata/beans/sniff/DownloadMain$PageItem;",
        ">;"
    }
.end annotation


# static fields
.field public static final t:I


# instance fields
.field public p:Landroid/widget/TextView;

.field public q:Landroidx/recyclerview/widget/RecyclerView;

.field public r:Lcom/transsion/sniffer_load/adapter/DownloadViewAdapter;

.field public s:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/transsion/sniffer_load/R$layout;->adapter_item_b:I

    sput v0, Lcom/transsion/sniffer_load/adapter/DownloadBViewHolder;->t:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/transsion/sniffer_load/adapter/DownloadViewHolder;-><init>(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/sniffer_load/adapter/DownloadBViewHolder;->s:Z

    sget v0, Lcom/transsion/sniffer_load/R$id;->tv_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/sniffer_load/adapter/DownloadBViewHolder;->p:Landroid/widget/TextView;

    sget v0, Lcom/transsion/sniffer_load/R$id;->rv_item:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/transsion/sniffer_load/adapter/DownloadBViewHolder;->q:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/dbdata/beans/sniff/DownloadMain$PageItem;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/sniffer_load/adapter/DownloadBViewHolder;->c(Landroid/content/Context;Lcom/transsion/dbdata/beans/sniff/DownloadMain$PageItem;)V

    return-void
.end method

.method public c(Landroid/content/Context;Lcom/transsion/dbdata/beans/sniff/DownloadMain$PageItem;)V
    .locals 8

    iget-object v0, p0, Lcom/transsion/sniffer_load/adapter/DownloadBViewHolder;->p:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Lcom/transsion/sniffer_load/adapter/DownloadViewHolder;->b(Lcom/transsion/dbdata/beans/sniff/DownloadMain$PageItem;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/sniff/DownloadMain$PageItem;->getCategory_id()I

    move-result v0

    const/4 v1, 0x7

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/sniff/DownloadMain$PageItem;->getCategory_id()I

    move-result v0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    iget-boolean v1, p0, Lcom/transsion/sniffer_load/adapter/DownloadBViewHolder;->s:Z

    if-eqz v1, :cond_2

    new-instance v1, Lcom/transsion/utils/CustomGridLayoutManager;

    invoke-direct {v1, p1, v2}, Lcom/transsion/utils/CustomGridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    iget-object v2, p0, Lcom/transsion/sniffer_load/adapter/DownloadBViewHolder;->q:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/transsion/sniffer_load/adapter/DownloadBViewHolder;->q:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/transsion/utils/CustomGridLayoutManager;

    const/4 v3, 0x4

    invoke-direct {v2, p1, v3}, Lcom/transsion/utils/CustomGridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    :goto_2
    if-eqz v0, :cond_3

    sget v0, Lcom/transsion/sniffer_load/R$layout;->adapter_download_d:I

    :goto_3
    move v3, v0

    goto :goto_4

    :cond_3
    sget v0, Lcom/transsion/sniffer_load/R$layout;->adapter_download_b:I

    goto :goto_3

    :goto_4
    new-instance v0, Lcom/transsion/sniffer_load/adapter/DownloadBViewHolder$a;

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/sniff/DownloadMain$PageItem;->getData_list()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/sniff/DownloadMain$PageItem;->getCategory_name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/sniff/DownloadMain$PageItem;->getWebsite_type()I

    move-result v6

    move-object v1, v0

    move-object v2, p0

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/transsion/sniffer_load/adapter/DownloadBViewHolder$a;-><init>(Lcom/transsion/sniffer_load/adapter/DownloadBViewHolder;ILjava/util/List;Ljava/lang/String;ILandroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/sniffer_load/adapter/DownloadBViewHolder;->r:Lcom/transsion/sniffer_load/adapter/DownloadViewAdapter;

    iget-object p0, p0, Lcom/transsion/sniffer_load/adapter/DownloadBViewHolder;->q:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method
