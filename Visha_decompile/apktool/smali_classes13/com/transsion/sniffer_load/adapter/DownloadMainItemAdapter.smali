.class public Lcom/transsion/sniffer_load/adapter/DownloadMainItemAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/transsion/sniffer_load/adapter/DownloadViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public final o:Landroid/content/Context;

.field public p:Ljava/util/List;

.field public q:Ljava/lang/String;

.field public r:Z

.field public s:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/sniffer_load/adapter/DownloadMainItemAdapter;->q:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/sniffer_load/adapter/DownloadMainItemAdapter;->r:Z

    const/4 v0, 0x4

    iput v0, p0, Lcom/transsion/sniffer_load/adapter/DownloadMainItemAdapter;->s:I

    iput-object p1, p0, Lcom/transsion/sniffer_load/adapter/DownloadMainItemAdapter;->o:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public b(Lcom/transsion/sniffer_load/adapter/DownloadViewHolder;I)V
    .locals 2

    instance-of v0, p1, Lcom/transsion/sniffer_load/adapter/DownloadAViewHolder;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/transsion/sniffer_load/adapter/DownloadAViewHolder;

    iget v1, p0, Lcom/transsion/sniffer_load/adapter/DownloadMainItemAdapter;->s:I

    invoke-virtual {v0, v1}, Lcom/transsion/sniffer_load/adapter/DownloadAViewHolder;->d(I)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/sniffer_load/adapter/DownloadMainItemAdapter;->o:Landroid/content/Context;

    iget-object p0, p0, Lcom/transsion/sniffer_load/adapter/DownloadMainItemAdapter;->p:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/transsion/sniffer_load/adapter/DownloadViewHolder;->a(Landroid/content/Context;Ljava/lang/Object;)V

    return-void
.end method

.method public c(Landroid/view/ViewGroup;I)Lcom/transsion/sniffer_load/adapter/DownloadViewHolder;
    .locals 3

    const/16 v0, 0x3eb

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcom/transsion/sniffer_load/adapter/DownloadMainItemAdapter;->q:Ljava/lang/String;

    sput-object p2, Lcom/transsion/sniffer_load/adapter/DownloadEmptyHolder;->s:Ljava/lang/String;

    new-instance p2, Lcom/transsion/sniffer_load/adapter/DownloadEmptyHolder;

    iget-object p0, p0, Lcom/transsion/sniffer_load/adapter/DownloadMainItemAdapter;->o:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget v0, Lcom/transsion/sniffer_load/adapter/DownloadEmptyHolder;->r:I

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/transsion/sniffer_load/adapter/DownloadEmptyHolder;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_0
    if-nez p2, :cond_1

    new-instance p2, Lcom/transsion/sniffer_load/adapter/DownloadAViewHolder;

    iget-object v0, p0, Lcom/transsion/sniffer_load/adapter/DownloadMainItemAdapter;->o:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/transsion/sniffer_load/adapter/DownloadAViewHolder;->u:I

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/transsion/sniffer_load/adapter/DownloadAViewHolder;-><init>(Landroid/view/View;)V

    iget-boolean p1, p0, Lcom/transsion/sniffer_load/adapter/DownloadMainItemAdapter;->r:Z

    iput-boolean p1, p2, Lcom/transsion/sniffer_load/adapter/DownloadAViewHolder;->s:Z

    iget p0, p0, Lcom/transsion/sniffer_load/adapter/DownloadMainItemAdapter;->s:I

    invoke-virtual {p2, p0}, Lcom/transsion/sniffer_load/adapter/DownloadAViewHolder;->d(I)V

    return-object p2

    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    new-instance p2, Lcom/transsion/sniffer_load/adapter/DownloadBViewHolder;

    iget-object p0, p0, Lcom/transsion/sniffer_load/adapter/DownloadMainItemAdapter;->o:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget v0, Lcom/transsion/sniffer_load/adapter/DownloadBViewHolder;->t:I

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/transsion/sniffer_load/adapter/DownloadBViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_2
    const/4 v0, 0x1

    if-ne p2, v0, :cond_3

    new-instance p2, Lcom/transsion/sniffer_load/adapter/DownloadBookMarkHolder;

    iget-object p0, p0, Lcom/transsion/sniffer_load/adapter/DownloadMainItemAdapter;->o:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/transsion/sniffer_load/adapter/DownloadBookMarkHolder;->t:I

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/transsion/sniffer_load/adapter/DownloadBookMarkHolder;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-object p2

    :cond_3
    new-instance p2, Lcom/transsion/sniffer_load/adapter/DownloadCViewHolder;

    iget-object p0, p0, Lcom/transsion/sniffer_load/adapter/DownloadMainItemAdapter;->o:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget v0, Lcom/transsion/sniffer_load/adapter/DownloadCViewHolder;->t:I

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/transsion/sniffer_load/adapter/DownloadCViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public d(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/adapter/DownloadMainItemAdapter;->p:Ljava/util/List;

    return-void
.end method

.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/adapter/DownloadMainItemAdapter;->p:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItemViewType(I)I
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/adapter/DownloadMainItemAdapter;->p:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/sniff/DownloadMain$PageItem;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/sniff/DownloadMain$PageItem;->getWebsite_type()I

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/transsion/sniffer_load/adapter/DownloadViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/sniffer_load/adapter/DownloadMainItemAdapter;->b(Lcom/transsion/sniffer_load/adapter/DownloadViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/sniffer_load/adapter/DownloadMainItemAdapter;->c(Landroid/view/ViewGroup;I)Lcom/transsion/sniffer_load/adapter/DownloadViewHolder;

    move-result-object p0

    return-object p0
.end method
