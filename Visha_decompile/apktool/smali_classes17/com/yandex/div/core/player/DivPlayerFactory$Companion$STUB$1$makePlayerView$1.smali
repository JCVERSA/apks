.class public final Lcom/yandex/div/core/player/DivPlayerFactory$Companion$STUB$1$makePlayerView$1;
.super Lcom/yandex/div/core/player/DivPlayerView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/player/DivPlayerFactory$Companion$STUB$1;->e(Landroid/content/Context;)Lcom/yandex/div/core/player/DivPlayerFactory$Companion$STUB$1$makePlayerView$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "com/yandex/div/core/player/DivPlayerFactory$Companion$STUB$1$makePlayerView$1",
        "Lcom/yandex/div/core/player/DivPlayerView;",
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


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/yandex/div/core/player/DivPlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic attach(Lcom/yandex/div/core/player/a;)V
    .locals 0

    invoke-super {p0, p1}, Lju2;->attach(Lcom/yandex/div/core/player/a;)V

    return-void
.end method

.method public bridge synthetic detach()V
    .locals 0

    invoke-super {p0}, Lju2;->detach()V

    return-void
.end method

.method public bridge synthetic getAttachedPlayer()Lcom/yandex/div/core/player/a;
    .locals 0

    invoke-super {p0}, Lju2;->getAttachedPlayer()Lcom/yandex/div/core/player/a;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setScale(Lcom/yandex/div2/DivVideoScale;)V
    .locals 0

    invoke-super {p0, p1}, Lju2;->setScale(Lcom/yandex/div2/DivVideoScale;)V

    return-void
.end method

.method public bridge synthetic setVisibleOnScreen(Z)V
    .locals 0

    invoke-super {p0, p1}, Lju2;->setVisibleOnScreen(Z)V

    return-void
.end method
