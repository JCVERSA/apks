.class public Lcom/transsion/btdownload/ui/TorrentItemAdapter;
.super Landroidx/recyclerview/widget/ListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/btdownload/ui/TorrentItemAdapter$ItemViewHolder;,
        Lcom/transsion/btdownload/ui/TorrentItemAdapter$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/ListAdapter<",
        "Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;",
        "Lcom/transsion/btdownload/ui/TorrentItemAdapter$ItemViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final s:Landroidx/recyclerview/widget/DiffUtil$ItemCallback;


# instance fields
.field public o:Ljava/util/HashSet;

.field public p:Z

.field public q:Landroid/content/Context;

.field public r:Lcom/transsion/btdownload/ui/TorrentItemAdapter$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/btdownload/ui/TorrentItemAdapter$a;

    invoke-direct {v0}, Lcom/transsion/btdownload/ui/TorrentItemAdapter$a;-><init>()V

    sput-object v0, Lcom/transsion/btdownload/ui/TorrentItemAdapter;->s:Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/transsion/btdownload/ui/TorrentItemAdapter;->s:Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/ListAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/btdownload/ui/TorrentItemAdapter;->o:Ljava/util/HashSet;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/btdownload/ui/TorrentItemAdapter;->p:Z

    iput-object p1, p0, Lcom/transsion/btdownload/ui/TorrentItemAdapter;->q:Landroid/content/Context;

    return-void
.end method

.method public static synthetic b(Lcom/transsion/btdownload/ui/TorrentItemAdapter;Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/btdownload/ui/TorrentItemAdapter;->v(Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;)V

    return-void
.end method


# virtual methods
.method public A(IZ)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/transsion/btdownload/ui/TorrentItemAdapter;->o:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/btdownload/ui/TorrentItemAdapter;->o:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public B(Lcom/transsion/btdownload/ui/TorrentItemAdapter$b;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/btdownload/ui/TorrentItemAdapter;->r:Lcom/transsion/btdownload/ui/TorrentItemAdapter$b;

    return-void
.end method

.method public C(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/btdownload/ui/TorrentItemAdapter;->p:Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public D(I)V
    .locals 2

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;

    iget-object v1, p0, Lcom/transsion/btdownload/ui/TorrentItemAdapter;->o:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/transsion/btdownload/ui/TorrentItemAdapter;->o:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/transsion/btdownload/ui/TorrentItemAdapter;->o:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method public E()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/btdownload/ui/TorrentItemAdapter;->o:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/transsion/btdownload/ui/TorrentItemAdapter$ItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/btdownload/ui/TorrentItemAdapter;->w(Lcom/transsion/btdownload/ui/TorrentItemAdapter$ItemViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/btdownload/ui/TorrentItemAdapter;->x(Landroid/view/ViewGroup;I)Lcom/transsion/btdownload/ui/TorrentItemAdapter$ItemViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public r(I)Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;

    return-object p0
.end method

.method public s()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/btdownload/ui/TorrentItemAdapter;->o:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result p0

    return p0
.end method

.method public t()Ljava/util/HashSet;
    .locals 0

    iget-object p0, p0, Lcom/transsion/btdownload/ui/TorrentItemAdapter;->o:Ljava/util/HashSet;

    return-object p0
.end method

.method public u()Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/btdownload/ui/TorrentItemAdapter;->o:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/ListAdapter;->getItemCount()I

    move-result p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final synthetic v(Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/btdownload/ui/TorrentItemAdapter;->o:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public w(Lcom/transsion/btdownload/ui/TorrentItemAdapter$ItemViewHolder;I)V
    .locals 7

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;

    iget-object v3, p0, Lcom/transsion/btdownload/ui/TorrentItemAdapter;->o:Ljava/util/HashSet;

    iget-boolean v4, p0, Lcom/transsion/btdownload/ui/TorrentItemAdapter;->p:Z

    iget-object v6, p0, Lcom/transsion/btdownload/ui/TorrentItemAdapter;->r:Lcom/transsion/btdownload/ui/TorrentItemAdapter$b;

    move-object v1, p1

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/transsion/btdownload/ui/TorrentItemAdapter$ItemViewHolder;->a(Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;Ljava/util/HashSet;ZILcom/transsion/btdownload/ui/TorrentItemAdapter$b;)V

    return-void
.end method

.method public x(Landroid/view/ViewGroup;I)Lcom/transsion/btdownload/ui/TorrentItemAdapter$ItemViewHolder;
    .locals 2

    new-instance p2, Lcom/transsion/btdownload/ui/TorrentItemAdapter$ItemViewHolder;

    iget-object p0, p0, Lcom/transsion/btdownload/ui/TorrentItemAdapter;->q:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget v0, Lcom/transsion/bt_download/R$layout;->adapter_torrent_item:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/transsion/btdownload/ui/TorrentItemAdapter$ItemViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public y()V
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/ListAdapter;->getCurrentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lmsa;

    invoke-direct {v1, p0}, Lmsa;-><init>(Lcom/transsion/btdownload/ui/TorrentItemAdapter;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public z(I)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/btdownload/ui/TorrentItemAdapter;->o:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Lcom/transsion/btdownload/ui/TorrentItemAdapter;->o:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method
