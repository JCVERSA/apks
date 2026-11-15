.class public final Lcom/transsion/playercommon/share/view/SocialPlatformAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/playercommon/share/view/SocialPlatformAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/transsion/playercommon/share/view/SocialPlatformAdapter$ViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000f\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001bB)\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0012\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001f\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u001f\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016R\u001a\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R \u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00070\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/transsion/playercommon/share/view/SocialPlatformAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lcom/transsion/playercommon/share/view/SocialPlatformAdapter$ViewHolder;",
        "",
        "Lcom/transsion/playercommon/share/model/SharePlatformInfo;",
        "platforms",
        "Lkotlin/Function1;",
        "Lzfb;",
        "onItemClick",
        "<init>",
        "(Ljava/util/List;Le74;)V",
        "Landroid/view/ViewGroup;",
        "parent",
        "",
        "viewType",
        "g",
        "(Landroid/view/ViewGroup;I)Lcom/transsion/playercommon/share/view/SocialPlatformAdapter$ViewHolder;",
        "holder",
        "position",
        "c",
        "(Lcom/transsion/playercommon/share/view/SocialPlatformAdapter$ViewHolder;I)V",
        "getItemCount",
        "()I",
        "o",
        "Ljava/util/List;",
        "p",
        "Le74;",
        "ViewHolder",
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


# instance fields
.field public final o:Ljava/util/List;

.field public final p:Le74;


# direct methods
.method public constructor <init>(Ljava/util/List;Le74;)V
    .locals 1

    const-string v0, "platforms"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onItemClick"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/transsion/playercommon/share/view/SocialPlatformAdapter;->o:Ljava/util/List;

    iput-object p2, p0, Lcom/transsion/playercommon/share/view/SocialPlatformAdapter;->p:Le74;

    return-void
.end method

.method public static synthetic b(Lcom/transsion/playercommon/share/view/SocialPlatformAdapter;Lcom/transsion/playercommon/share/model/SharePlatformInfo;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/playercommon/share/view/SocialPlatformAdapter;->d(Lcom/transsion/playercommon/share/view/SocialPlatformAdapter;Lcom/transsion/playercommon/share/model/SharePlatformInfo;Landroid/view/View;)V

    return-void
.end method

.method public static final d(Lcom/transsion/playercommon/share/view/SocialPlatformAdapter;Lcom/transsion/playercommon/share/model/SharePlatformInfo;Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/share/view/SocialPlatformAdapter;->p:Le74;

    invoke-interface {p0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public c(Lcom/transsion/playercommon/share/view/SocialPlatformAdapter$ViewHolder;I)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/playercommon/share/view/SocialPlatformAdapter;->o:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/playercommon/share/model/SharePlatformInfo;

    invoke-virtual {p1}, Lcom/transsion/playercommon/share/view/SocialPlatformAdapter$ViewHolder;->c()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/transsion/playercommon/share/model/SharePlatformInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/transsion/playercommon/share/view/SocialPlatformAdapter$ViewHolder;->b()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/transsion/playercommon/share/model/SharePlatformInfo;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lsr9;

    invoke-direct {v0, p0, p2}, Lsr9;-><init>(Lcom/transsion/playercommon/share/view/SocialPlatformAdapter;Lcom/transsion/playercommon/share/model/SharePlatformInfo;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public g(Landroid/view/ViewGroup;I)Lcom/transsion/playercommon/share/view/SocialPlatformAdapter$ViewHolder;
    .locals 1

    const-string p0, "parent"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget p2, Lcom/transsion/playercommon/R$layout;->item_social_platform:I

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    new-instance p1, Lcom/transsion/playercommon/share/view/SocialPlatformAdapter$ViewHolder;

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-direct {p1, p0}, Lcom/transsion/playercommon/share/view/SocialPlatformAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/share/view/SocialPlatformAdapter;->o:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/transsion/playercommon/share/view/SocialPlatformAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/share/view/SocialPlatformAdapter;->c(Lcom/transsion/playercommon/share/view/SocialPlatformAdapter$ViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/share/view/SocialPlatformAdapter;->g(Landroid/view/ViewGroup;I)Lcom/transsion/playercommon/share/view/SocialPlatformAdapter$ViewHolder;

    move-result-object p0

    return-object p0
.end method
