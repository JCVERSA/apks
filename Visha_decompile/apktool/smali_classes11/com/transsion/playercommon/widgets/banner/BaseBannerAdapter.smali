.class public abstract Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter$a;,
        Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/transsion/playercommon/widgets/banner/BaseViewHolder<",
        "TT;>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010!\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0016\u0008&\u0018\u0000 /*\u0004\u0008\u0000\u0010\u00012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00030\u0002:\u0002;<B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J%\u0010\n\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00032\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ%\u0010\u000f\u001a\u00020\u000e2\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00032\u0006\u0010\r\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0017\u0010\u0011\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0017\u0010\u0017\u001a\u00020\u000e2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0015\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0017\u0010\u0019\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\u0008H\u0004\u00a2\u0006\u0004\u0008\u0019\u0010\u0012J+\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00032\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ5\u0010 \u001a\u00020\u000e2\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00032\u0006\u0010\u001e\u001a\u00028\u00002\u0006\u0010\r\u001a\u00020\u00082\u0006\u0010\u001f\u001a\u00020\u0008H$\u00a2\u0006\u0004\u0008 \u0010!J\u0017\u0010\"\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0008H\'\u00a2\u0006\u0004\u0008\"\u0010\u0012R\u001c\u0010&\u001a\u0008\u0012\u0004\u0012\u00028\u00000#8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008$\u0010%R\"\u0010*\u001a\u00020\'8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008(\u0010)\u001a\u0004\u0008*\u0010+\"\u0004\u0008,\u0010-R\"\u00101\u001a\u00020\'8\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008.\u0010)\u001a\u0004\u0008/\u0010+\"\u0004\u00080\u0010-R\u0018\u00103\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u00102R4\u0010\u001e\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010#2\u000e\u00104\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010#8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u00085\u00106\"\u0004\u00087\u00108R\u0011\u0010:\u001a\u00020\u00088F\u00a2\u0006\u0006\u001a\u0004\u00089\u0010\u0014\u00a8\u0006="
    }
    d2 = {
        "Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;",
        "T",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lcom/transsion/playercommon/widgets/banner/BaseViewHolder;",
        "<init>",
        "()V",
        "Landroid/view/ViewGroup;",
        "parent",
        "",
        "viewType",
        "u",
        "(Landroid/view/ViewGroup;I)Lcom/transsion/playercommon/widgets/banner/BaseViewHolder;",
        "holder",
        "position",
        "Lzfb;",
        "t",
        "(Lcom/transsion/playercommon/widgets/banner/BaseViewHolder;I)V",
        "getItemViewType",
        "(I)I",
        "getItemCount",
        "()I",
        "Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter$b;",
        "pageClickListener",
        "z",
        "(Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter$b;)V",
        "r",
        "Landroid/view/View;",
        "itemView",
        "d",
        "(Landroid/view/ViewGroup;Landroid/view/View;I)Lcom/transsion/playercommon/widgets/banner/BaseViewHolder;",
        "data",
        "pageSize",
        "c",
        "(Lcom/transsion/playercommon/widgets/banner/BaseViewHolder;Ljava/lang/Object;II)V",
        "getLayoutId",
        "",
        "o",
        "Ljava/util/List;",
        "mList",
        "",
        "p",
        "Z",
        "isCanLoop",
        "()Z",
        "w",
        "(Z)V",
        "q",
        "s",
        "y",
        "isForceLight",
        "Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter$b;",
        "mPageClickListener",
        "list",
        "getData",
        "()Ljava/util/List;",
        "x",
        "(Ljava/util/List;)V",
        "g",
        "listSize",
        "b",
        "a",
        "playercommon_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final s:Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter$a;


# instance fields
.field public o:Ljava/util/List;

.field public p:Z

.field public q:Z

.field public r:Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;->s:Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;->o:Ljava/util/List;

    return-void
.end method

.method public static synthetic b(Lcom/transsion/playercommon/widgets/banner/BaseViewHolder;Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;->v(Lcom/transsion/playercommon/widgets/banner/BaseViewHolder;Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;Landroid/view/View;)V

    return-void
.end method

.method public static final v(Lcom/transsion/playercommon/widgets/banner/BaseViewHolder;Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p0

    iget-object v0, p1, Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;->r:Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter$b;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    sget-object v0, Lw70;->a:Lw70;

    invoke-virtual {p1}, Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;->g()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lw70;->c(II)I

    move-result v0

    iget-object p1, p1, Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;->r:Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter$b;

    invoke-static {p1}, Ly45;->g(Ljava/lang/Object;)V

    invoke-interface {p1, p2, v0, p0}, Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter$b;->a(Landroid/view/View;II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public abstract c(Lcom/transsion/playercommon/widgets/banner/BaseViewHolder;Ljava/lang/Object;II)V
.end method

.method public final d(Landroid/view/ViewGroup;Landroid/view/View;I)Lcom/transsion/playercommon/widgets/banner/BaseViewHolder;
    .locals 0

    const-string p0, "parent"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "itemView"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/transsion/playercommon/widgets/banner/BaseViewHolder;

    invoke-direct {p0, p2}, Lcom/transsion/playercommon/widgets/banner/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-object p0
.end method

.method public final g()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;->o:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final getData()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;->o:Ljava/util/List;

    return-object p0
.end method

.method public getItemCount()I
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;->p:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;->g()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const/16 p0, 0x3e8

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;->g()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getItemViewType(I)I
    .locals 2

    sget-object v0, Lw70;->a:Lw70;

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;->g()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lw70;->c(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;->r(I)I

    move-result p0

    return p0
.end method

.method public abstract getLayoutId(I)I
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/transsion/playercommon/widgets/banner/BaseViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;->t(Lcom/transsion/playercommon/widgets/banner/BaseViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;->u(Landroid/view/ViewGroup;I)Lcom/transsion/playercommon/widgets/banner/BaseViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public final r(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public s()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;->q:Z

    return p0
.end method

.method public t(Lcom/transsion/playercommon/widgets/banner/BaseViewHolder;I)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lw70;->a:Lw70;

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;->g()I

    move-result v1

    invoke-virtual {v0, p2, v1}, Lw70;->c(II)I

    move-result p2

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;->o:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;->g()I

    move-result v1

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;->c(Lcom/transsion/playercommon/widgets/banner/BaseViewHolder;Ljava/lang/Object;II)V

    return-void
.end method

.method public u(Landroid/view/ViewGroup;I)Lcom/transsion/playercommon/widgets/banner/BaseViewHolder;
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;->getLayoutId(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v0, p2}, Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;->d(Landroid/view/ViewGroup;Landroid/view/View;I)Lcom/transsion/playercommon/widgets/banner/BaseViewHolder;

    move-result-object p1

    new-instance p2, Le90;

    invoke-direct {p2, p1, p0}, Le90;-><init>(Lcom/transsion/playercommon/widgets/banner/BaseViewHolder;Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public final w(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;->p:Z

    return-void
.end method

.method public final x(Ljava/util/List;)V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    check-cast p1, Ljava/util/Collection;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    sget-object p1, Lzfb;->a:Lzfb;

    :cond_0
    :goto_1
    iget-object p1, p0, Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;->o:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;->o:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public y(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;->q:Z

    return-void
.end method

.method public final z(Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter$b;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;->r:Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter$b;

    return-void
.end method
