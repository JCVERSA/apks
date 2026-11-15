.class public final Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment$b;
.super Landroidx/recyclerview/widget/RecyclerView$r;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment;->L0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment;


# direct methods
.method constructor <init>(Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment$b;->a:Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$r;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 1
    const-string p2, "recyclerView"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-lez p3, :cond_0

    .line 7
    .line 8
    iget-object p2, p0, Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment$b;->a:Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment;

    .line 9
    .line 10
    invoke-static {p2, p1}, Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment;->J0(Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method
