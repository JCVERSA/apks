.class public final Lcom/yandex/mobile/ads/impl/ou1$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/nu1$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/mobile/ads/impl/ou1$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcr0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcr0;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CancellableContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ou1$a$b;->a:Lcr0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/ju1;Lcom/yandex/mobile/ads/impl/kr;)V
    .locals 1

    .line 5
    const-string v0, "sdkConfiguration"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configurationSource"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ou1$a$b;->a:Lcr0;

    invoke-interface {v0}, Lcr0;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ou1$a$b;->a:Lcr0;

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    .line 8
    new-instance v0, Lcom/yandex/mobile/ads/impl/yu1$b;

    invoke-direct {v0, p1, p2}, Lcom/yandex/mobile/ads/impl/yu1$b;-><init>(Lcom/yandex/mobile/ads/impl/ju1;Lcom/yandex/mobile/ads/impl/kr;)V

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lwh1;->resumeWith(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/si2;Lcom/yandex/mobile/ads/impl/kr;)V
    .locals 1

    .line 1
    const-string v0, "error"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configurationSource"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ou1$a$b;->a:Lcr0;

    invoke-interface {v0}, Lcr0;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ou1$a$b;->a:Lcr0;

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    .line 4
    new-instance v0, Lcom/yandex/mobile/ads/impl/yu1$a;

    invoke-direct {v0, p1, p2}, Lcom/yandex/mobile/ads/impl/yu1$a;-><init>(Lcom/yandex/mobile/ads/impl/si2;Lcom/yandex/mobile/ads/impl/kr;)V

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lwh1;->resumeWith(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
