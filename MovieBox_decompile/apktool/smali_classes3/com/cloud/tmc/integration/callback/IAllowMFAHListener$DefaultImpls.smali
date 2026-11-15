.class public final Lcom/cloud/tmc/integration/callback/IAllowMFAHListener$DefaultImpls;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/integration/callback/IAllowMFAHListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# direct methods
.method public static addMFAHInterceptAction(Lcom/cloud/tmc/integration/callback/IAllowMFAHListener;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/integration/callback/IAllowMFAHListener;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "block"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-lez v0, :cond_0

    .line 13
    .line 14
    sget-object v0, Lcom/cloud/tmc/integration/utils/MiniForceAddHomeManager;->INSTANCE:Lcom/cloud/tmc/integration/utils/MiniForceAddHomeManager;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lcom/cloud/tmc/integration/utils/MiniForceAddHomeManager;->checkInterect(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    invoke-interface {p0}, Lcom/cloud/tmc/integration/callback/IAllowMFAHListener;->getMFAHInterceptList()Ljava/util/ArrayList;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void
.end method

.method public static clearMFAHIntercept(Lcom/cloud/tmc/integration/callback/IAllowMFAHListener;)V
    .locals 0

    .line 1
    invoke-interface {p0}, Lcom/cloud/tmc/integration/callback/IAllowMFAHListener;->getMFAHInterceptList()Ljava/util/ArrayList;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static getMFAHIntercept(Lcom/cloud/tmc/integration/callback/IAllowMFAHListener;)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/integration/callback/IAllowMFAHListener;",
            ")",
            "Ljava/util/ArrayList<",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/cloud/tmc/integration/callback/IAllowMFAHListener;->getMFAHInterceptList()Ljava/util/ArrayList;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static mfahAllow(Lcom/cloud/tmc/integration/callback/IAllowMFAHListener;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-interface {p0}, Lcom/cloud/tmc/integration/callback/IAllowMFAHListener;->getMFAHInterceptList()Ljava/util/ArrayList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 20
    .line 21
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-interface {p0}, Lcom/cloud/tmc/integration/callback/IAllowMFAHListener;->clearMFAHIntercept()V

    .line 26
    .line 27
    .line 28
    sget-object p0, Lcom/cloud/tmc/integration/utils/MiniForceAddHomeManager;->INSTANCE:Lcom/cloud/tmc/integration/utils/MiniForceAddHomeManager;

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/integration/utils/MiniForceAddHomeManager;->removeMFAHListener(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method
