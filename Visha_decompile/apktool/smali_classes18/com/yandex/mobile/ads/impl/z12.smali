.class public final Lcom/yandex/mobile/ads/impl/z12;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/yandex/mobile/ads/impl/zb2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/zb2<",
            "Lcom/yandex/mobile/ads/impl/go0;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/yandex/mobile/ads/impl/ic;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/zb2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yandex/mobile/ads/impl/zb2<",
            "Lcom/yandex/mobile/ads/impl/go0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoAdInfo"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/z12;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/z12;->b:Lcom/yandex/mobile/ads/impl/zb2;

    new-instance p1, Lcom/yandex/mobile/ads/impl/ic;

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/zb2;->g()Lcom/yandex/mobile/ads/impl/mb2;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/yandex/mobile/ads/impl/ic;-><init>(Lcom/yandex/mobile/ads/impl/mb2;)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/z12;->c:Lcom/yandex/mobile/ads/impl/ic;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/gz;
    .locals 2

    new-instance v0, Lcom/yandex/mobile/ads/impl/d22;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/z12;->c:Lcom/yandex/mobile/ads/impl/ic;

    invoke-direct {v0, v1}, Lcom/yandex/mobile/ads/impl/d22;-><init>(Lcom/yandex/mobile/ads/impl/ic;)V

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/z12;->b:Lcom/yandex/mobile/ads/impl/zb2;

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/d22;->a(Lcom/yandex/mobile/ads/impl/zb2;)Lcom/yandex/mobile/ads/impl/c22;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p0, 0x2

    if-ne v0, p0, :cond_0

    new-instance p0, Lcom/yandex/mobile/ads/impl/vz;

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/vz;-><init>()V

    goto :goto_1

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    new-instance v0, Lcom/yandex/mobile/ads/impl/q00;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/z12;->a:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/impl/q00;-><init>(Landroid/content/Context;)V

    :goto_0
    move-object p0, v0

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/yandex/mobile/ads/impl/r00;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/z12;->a:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/impl/r00;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :goto_1
    return-object p0
.end method
