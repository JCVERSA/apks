.class public final Lcom/yandex/div/core/view2/divs/pager/FixedPageSizeOffScreenPagesController$setOffScreenPages$1;
.super Lcom/yandex/div/core/view2/divs/widgets/DivPagerView$OffScreenPagesUpdateCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/view2/divs/pager/FixedPageSizeOffScreenPagesController;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "com/yandex/div/core/view2/divs/pager/FixedPageSizeOffScreenPagesController$setOffScreenPages$1",
        "Lcom/yandex/div/core/view2/divs/widgets/DivPagerView$OffScreenPagesUpdateCallback;",
        "",
        "position",
        "Lzfb;",
        "onPageSelected",
        "(I)V",
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
.field public final synthetic d:Le74;


# direct methods
.method public constructor <init>(Le74;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/pager/FixedPageSizeOffScreenPagesController$setOffScreenPages$1;->d:Le74;

    invoke-direct {p0}, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView$OffScreenPagesUpdateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/pager/FixedPageSizeOffScreenPagesController$setOffScreenPages$1;->d:Le74;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
