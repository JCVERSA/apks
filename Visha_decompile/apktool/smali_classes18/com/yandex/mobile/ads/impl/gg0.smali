.class public final Lcom/yandex/mobile/ads/impl/gg0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/gg0;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/g2;)Lcom/yandex/mobile/ads/impl/ct;
    .locals 1

    const-string v0, "requestPolicy"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    new-instance p1, Lcom/yandex/mobile/ads/impl/yh0;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/gg0;->a:Landroid/content/Context;

    invoke-static {}, Lcom/yandex/mobile/ads/impl/dt1;->a()Lcom/yandex/mobile/ads/impl/ft1;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/yandex/mobile/ads/impl/yh0;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/et1;)V

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    new-instance p1, Lcom/yandex/mobile/ads/impl/n42;

    invoke-direct {p1}, Lcom/yandex/mobile/ads/impl/n42;-><init>()V

    :goto_0
    return-object p1
.end method
