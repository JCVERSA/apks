.class final synthetic Lcom/yandex/mobile/ads/impl/qe1$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/cb2;
.implements Le84;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/mobile/ads/impl/qe1;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/mobile/ads/impl/qe1;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/qe1;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/qe1$b;->a:Lcom/yandex/mobile/ads/impl/qe1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/qe1$b;->a:Lcom/yandex/mobile/ads/impl/qe1;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/qe1;->a(Lcom/yandex/mobile/ads/impl/qe1;)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/yandex/mobile/ads/impl/cb2;

    if-eqz v0, :cond_0

    instance-of v0, p1, Le84;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/qe1$b;->getFunctionDelegate()Lx74;

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

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/qe1$b;->a:Lcom/yandex/mobile/ads/impl/qe1;

    const-string v5, "onOmSdkJsControllerLoaded()V"

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-class v3, Lcom/yandex/mobile/ads/impl/qe1;

    const-string v4, "onOmSdkJsControllerLoaded"

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v7
.end method

.method public final hashCode()I
    .locals 0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/qe1$b;->getFunctionDelegate()Lx74;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method
