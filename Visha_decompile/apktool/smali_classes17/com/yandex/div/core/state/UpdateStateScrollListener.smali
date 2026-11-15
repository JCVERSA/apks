.class public final Lcom/yandex/div/core/state/UpdateStateScrollListener;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\'\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/yandex/div/core/state/UpdateStateScrollListener;",
        "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;",
        "",
        "blockId",
        "Luv2;",
        "divViewState",
        "Lrj2;",
        "layoutManager",
        "<init>",
        "(Ljava/lang/String;Luv2;Lrj2;)V",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "recyclerView",
        "",
        "dx",
        "dy",
        "Lzfb;",
        "onScrolled",
        "(Landroidx/recyclerview/widget/RecyclerView;II)V",
        "c",
        "Ljava/lang/String;",
        "d",
        "Luv2;",
        "e",
        "Lrj2;",
        "div_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final c:Ljava/lang/String;

.field public final d:Luv2;

.field public final e:Lrj2;


# direct methods
.method public constructor <init>(Ljava/lang/String;Luv2;Lrj2;)V
    .locals 1

    const-string v0, "blockId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "divViewState"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layoutManager"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/state/UpdateStateScrollListener;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/yandex/div/core/state/UpdateStateScrollListener;->d:Luv2;

    iput-object p3, p0, Lcom/yandex/div/core/state/UpdateStateScrollListener;->e:Lrj2;

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    iget-object p2, p0, Lcom/yandex/div/core/state/UpdateStateScrollListener;->e:Lrj2;

    invoke-interface {p2}, Lrj2;->firstVisibleItemPosition()I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForLayoutPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz p1, :cond_0

    iget-object p3, p0, Lcom/yandex/div/core/state/UpdateStateScrollListener;->e:Lrj2;

    invoke-interface {p3, p1}, Lrj2;->calcScrollOffset(Landroid/view/View;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object p3, p0, Lcom/yandex/div/core/state/UpdateStateScrollListener;->d:Luv2;

    iget-object p0, p0, Lcom/yandex/div/core/state/UpdateStateScrollListener;->c:Ljava/lang/String;

    new-instance v0, Lcd4;

    invoke-direct {v0, p2, p1}, Lcd4;-><init>(II)V

    invoke-virtual {p3, p0, v0}, Luv2;->d(Ljava/lang/String;Luv2$a;)V

    return-void
.end method
