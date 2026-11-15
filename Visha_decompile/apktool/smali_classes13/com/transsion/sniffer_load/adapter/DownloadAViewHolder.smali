.class public Lcom/transsion/sniffer_load/adapter/DownloadAViewHolder;
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
.field public static final u:I


# instance fields
.field public p:Landroid/widget/TextView;

.field public q:Landroidx/recyclerview/widget/RecyclerView;

.field public r:Lcom/transsion/sniffer_load/adapter/DownloadViewAdapter;

.field public s:Z

.field public t:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/transsion/sniffer_load/R$layout;->adapter_item_a:I

    sput v0, Lcom/transsion/sniffer_load/adapter/DownloadAViewHolder;->u:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/transsion/sniffer_load/adapter/DownloadViewHolder;-><init>(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/sniffer_load/adapter/DownloadAViewHolder;->s:Z

    const/4 v0, 0x4

    iput v0, p0, Lcom/transsion/sniffer_load/adapter/DownloadAViewHolder;->t:I

    sget v0, Lcom/transsion/sniffer_load/R$id;->tv_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/sniffer_load/adapter/DownloadAViewHolder;->p:Landroid/widget/TextView;

    sget v0, Lcom/transsion/sniffer_load/R$id;->rv_item:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/transsion/sniffer_load/adapter/DownloadAViewHolder;->q:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/dbdata/beans/sniff/DownloadMain$PageItem;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/sniffer_load/adapter/DownloadAViewHolder;->c(Landroid/content/Context;Lcom/transsion/dbdata/beans/sniff/DownloadMain$PageItem;)V

    return-void
.end method

.method public c(Landroid/content/Context;Lcom/transsion/dbdata/beans/sniff/DownloadMain$PageItem;)V
    .locals 9

    iget-object v0, p0, Lcom/transsion/sniffer_load/adapter/DownloadAViewHolder;->p:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Lcom/transsion/sniffer_load/adapter/DownloadViewHolder;->b(Lcom/transsion/dbdata/beans/sniff/DownloadMain$PageItem;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/sniff/DownloadMain$PageItem;->getCategory_id()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    iget-boolean v2, p0, Lcom/transsion/sniffer_load/adapter/DownloadAViewHolder;->s:Z

    if-eqz v2, :cond_1

    new-instance v0, Lcom/transsion/utils/CustomGridLayoutManager;

    const/4 v2, 0x1

    invoke-direct {v0, p1, v2}, Lcom/transsion/utils/CustomGridLayoutManager;-><init>(Landroid/content/Context;I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    iget-object v2, p0, Lcom/transsion/sniffer_load/adapter/DownloadAViewHolder;->q:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/transsion/sniffer_load/adapter/DownloadAViewHolder;->q:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Lcom/transsion/utils/CustomGridLayoutManager;

    invoke-direct {v3, p1, v0}, Lcom/transsion/utils/CustomGridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    :goto_1
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/sniff/DownloadMain$PageItem;->getCategory_id()I

    move-result v0

    if-ne v0, v1, :cond_2

    sget v0, Lcom/transsion/sniffer_load/R$layout;->adapter_download_z:I

    :goto_2
    move v3, v0

    goto :goto_3

    :cond_2
    sget v0, Lcom/transsion/sniffer_load/R$layout;->adapter_download_a:I

    goto :goto_2

    :goto_3
    new-instance v0, Lcom/transsion/sniffer_load/adapter/DownloadAViewHolder$a;

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/sniff/DownloadMain$PageItem;->getData_list()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/sniff/DownloadMain$PageItem;->getCategory_name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/sniff/DownloadMain$PageItem;->getWebsite_type()I

    move-result v6

    move-object v1, v0

    move-object v2, p0

    move-object v7, p2

    move-object v8, p1

    invoke-direct/range {v1 .. v8}, Lcom/transsion/sniffer_load/adapter/DownloadAViewHolder$a;-><init>(Lcom/transsion/sniffer_load/adapter/DownloadAViewHolder;ILjava/util/List;Ljava/lang/String;ILcom/transsion/dbdata/beans/sniff/DownloadMain$PageItem;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/sniffer_load/adapter/DownloadAViewHolder;->r:Lcom/transsion/sniffer_load/adapter/DownloadViewAdapter;

    iget-object p0, p0, Lcom/transsion/sniffer_load/adapter/DownloadAViewHolder;->q:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public d(I)V
    .locals 1

    iput p1, p0, Lcom/transsion/sniffer_load/adapter/DownloadAViewHolder;->t:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "spanCount: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/sniffer_load/adapter/DownloadAViewHolder;->t:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    return-void
.end method
