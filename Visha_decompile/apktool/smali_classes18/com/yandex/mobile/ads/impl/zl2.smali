.class public final Lcom/yandex/mobile/ads/impl/zl2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/dt;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/common/InitializationListener;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/common/InitializationListener;)V
    .locals 1

    const-string v0, "initializationListener"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/zl2;->a:Lcom/yandex/mobile/ads/common/InitializationListener;

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/zl2;)Lcom/yandex/mobile/ads/common/InitializationListener;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/zl2;->a:Lcom/yandex/mobile/ads/common/InitializationListener;

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/yandex/mobile/ads/impl/zl2;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/yandex/mobile/ads/impl/zl2;

    iget-object p1, p1, Lcom/yandex/mobile/ads/impl/zl2;->a:Lcom/yandex/mobile/ads/common/InitializationListener;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/zl2;->a:Lcom/yandex/mobile/ads/common/InitializationListener;

    invoke-static {p1, p0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/zl2;->a:Lcom/yandex/mobile/ads/common/InitializationListener;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final onInitializationCompleted()V
    .locals 2

    new-instance v0, Lcom/monetization/ads/core/utils/CallbackStackTraceMarker;

    new-instance v1, Lcom/yandex/mobile/ads/impl/zl2$a;

    invoke-direct {v1, p0}, Lcom/yandex/mobile/ads/impl/zl2$a;-><init>(Lcom/yandex/mobile/ads/impl/zl2;)V

    invoke-direct {v0, v1}, Lcom/monetization/ads/core/utils/CallbackStackTraceMarker;-><init>(Lc74;)V

    return-void
.end method
