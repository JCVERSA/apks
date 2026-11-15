.class public abstract Lcom/yandex/div/core/player/DivPlayerView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lju2;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008&\u0018\u00002\u00020\u00012\u00020\u0002B%\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/yandex/div/core/player/DivPlayerView;",
        "Landroid/widget/FrameLayout;",
        "Lju2;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
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
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 1
    sget p3, Lcom/yandex/div/R$attr;->divImageStyle:I

    .line 2
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/yandex/div/core/player/DivPlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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
