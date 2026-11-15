.class public Lcom/transsion/sniffer_load/adapter/DownloadCViewHolder;
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

    sget v0, Lcom/transsion/sniffer_load/R$layout;->adapter_item_c:I

    sput v0, Lcom/transsion/sniffer_load/adapter/DownloadCViewHolder;->t:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/transsion/sniffer_load/adapter/DownloadViewHolder;-><init>(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/sniffer_load/adapter/DownloadCViewHolder;->s:Z

    sget v0, Lcom/transsion/sniffer_load/R$id;->tv_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/sniffer_load/adapter/DownloadCViewHolder;->p:Landroid/widget/TextView;

    sget v0, Lcom/transsion/sniffer_load/R$id;->rv_item:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/transsion/sniffer_load/adapter/DownloadCViewHolder;->q:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/dbdata/beans/sniff/DownloadMain$PageItem;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/sniffer_load/adapter/DownloadCViewHolder;->c(Landroid/content/Context;Lcom/transsion/dbdata/beans/sniff/DownloadMain$PageItem;)V

    return-void
.end method

.method public c(Landroid/content/Context;Lcom/transsion/dbdata/beans/sniff/DownloadMain$PageItem;)V
    .locals 10

    iget-object v0, p0, Lcom/transsion/sniffer_load/adapter/DownloadCViewHolder;->p:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Lcom/transsion/sniffer_load/adapter/DownloadViewHolder;->b(Lcom/transsion/dbdata/beans/sniff/DownloadMain$PageItem;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, Lcom/transsion/sniffer_load/adapter/DownloadCViewHolder;->s:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/transsion/utils/CustomGridLayoutManager;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/transsion/utils/CustomGridLayoutManager;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    iget-object v1, p0, Lcom/transsion/sniffer_load/adapter/DownloadCViewHolder;->q:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/sniffer_load/adapter/DownloadCViewHolder;->q:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/transsion/utils/CustomGridLayoutManager;

    const/4 v2, 0x4

    invoke-direct {v1, p1, v2}, Lcom/transsion/utils/CustomGridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    :goto_0
    new-instance v0, Lcom/transsion/sniffer_load/adapter/DownloadCViewHolder$a;

    sget v5, Lcom/transsion/sniffer_load/R$layout;->adapter_download_c:I

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/sniff/DownloadMain$PageItem;->getData_list()Ljava/util/List;

    move-result-object v6

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/sniff/DownloadMain$PageItem;->getCategory_name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/sniff/DownloadMain$PageItem;->getWebsite_type()I

    move-result v8

    move-object v3, v0

    move-object v4, p0

    move-object v9, p1

    invoke-direct/range {v3 .. v9}, Lcom/transsion/sniffer_load/adapter/DownloadCViewHolder$a;-><init>(Lcom/transsion/sniffer_load/adapter/DownloadCViewHolder;ILjava/util/List;Ljava/lang/String;ILandroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/sniffer_load/adapter/DownloadCViewHolder;->r:Lcom/transsion/sniffer_load/adapter/DownloadViewAdapter;

    iget-object p0, p0, Lcom/transsion/sniffer_load/adapter/DownloadCViewHolder;->q:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method
