.class public final Lcom/yandex/mobile/ads/impl/fg0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/yandex/mobile/ads/impl/eg0;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/yandex/mobile/ads/impl/hg0;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/ct;Lcom/yandex/mobile/ads/impl/hg0;)V
    .locals 1

    const-string v0, "checkHost"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultHostAccessChecker"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "hostAccessCheckerProvider"

    invoke-static {p3, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/fg0;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/fg0;->b:Lcom/yandex/mobile/ads/impl/hg0;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/eg0;
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/fg0;->b:Lcom/yandex/mobile/ads/impl/hg0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/hg0;->a()Lcom/yandex/mobile/ads/impl/ct;

    move-result-object v0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fg0;->a:Ljava/lang/String;

    invoke-interface {v0, p0}, Lcom/yandex/mobile/ads/impl/ct;->a(Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/sp0;->a([Ljava/lang/Object;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/eg0;

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/impl/eg0;-><init>(Z)V

    return-object v0
.end method

.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/fg0;->a()Lcom/yandex/mobile/ads/impl/eg0;

    move-result-object p0

    return-object p0
.end method
