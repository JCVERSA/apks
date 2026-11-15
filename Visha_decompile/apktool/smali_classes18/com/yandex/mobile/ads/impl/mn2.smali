.class final synthetic Lcom/yandex/mobile/ads/impl/mn2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/ya2;
.implements Le84;


# instance fields
.field final synthetic a:Lcom/yandex/mobile/ads/impl/nn2;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/nn2;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/mn2;->a:Lcom/yandex/mobile/ads/impl/nn2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/xa2;)V
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/mn2;->a:Lcom/yandex/mobile/ads/impl/nn2;

    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/nn2;->a(Lcom/yandex/mobile/ads/impl/nn2;Lcom/yandex/mobile/ads/impl/xa2;)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/yandex/mobile/ads/impl/ya2;

    if-eqz v0, :cond_0

    instance-of v0, p1, Le84;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/mn2;->getFunctionDelegate()Lx74;

    move-result-object p0

    check-cast p1, Le84;

    invoke-interface {p1}, Le84;->getFunctionDelegate()Lx74;

    move-result-object p1

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getFunctionDelegate()Lx74;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lx74;"
        }
    .end annotation

    new-instance v7, Lkotlin/jvm/internal/FunctionReferenceImpl;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/mn2;->a:Lcom/yandex/mobile/ads/impl/nn2;

    const-string v5, "trackVerificationNotExecuted(Lcom/yandex/mobile/ads/video/playback/tracker/verification/omsdk/error/VerificationNotExecutedException;)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-class v3, Lcom/yandex/mobile/ads/impl/nn2;

    const-string v4, "trackVerificationNotExecuted"

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v7
.end method

.method public final hashCode()I
    .locals 0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/mn2;->getFunctionDelegate()Lx74;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method
