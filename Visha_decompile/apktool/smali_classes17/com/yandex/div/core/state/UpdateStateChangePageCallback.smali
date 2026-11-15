.class public final Lcom/yandex/div/core/state/UpdateStateChangePageCallback;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0017\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000eR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/yandex/div/core/state/UpdateStateChangePageCallback;",
        "Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;",
        "",
        "mBlockId",
        "Luv2;",
        "mDivViewState",
        "<init>",
        "(Ljava/lang/String;Luv2;)V",
        "",
        "position",
        "Lzfb;",
        "onPageSelected",
        "(I)V",
        "d",
        "Ljava/lang/String;",
        "e",
        "Luv2;",
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
.field public final d:Ljava/lang/String;

.field public final e:Luv2;


# direct methods
.method public constructor <init>(Ljava/lang/String;Luv2;)V
    .locals 1

    const-string v0, "mBlockId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mDivViewState"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/state/UpdateStateChangePageCallback;->d:Ljava/lang/String;

    iput-object p2, p0, Lcom/yandex/div/core/state/UpdateStateChangePageCallback;->e:Luv2;

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/yandex/div/core/state/UpdateStateChangePageCallback;->e:Luv2;

    iget-object p0, p0, Lcom/yandex/div/core/state/UpdateStateChangePageCallback;->d:Ljava/lang/String;

    new-instance v1, Lzv7;

    invoke-direct {v1, p1}, Lzv7;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Luv2;->d(Ljava/lang/String;Luv2$a;)V

    :cond_0
    return-void
.end method
