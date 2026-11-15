.class public final Lcom/yandex/mobile/ads/impl/xi2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/ui2;

.field private final b:Lcom/yandex/mobile/ads/impl/bd1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/bd1<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/aj2;Lcom/yandex/mobile/ads/impl/br1;Lcom/yandex/mobile/ads/impl/ui2;Lcom/yandex/mobile/ads/impl/bd1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/o3;",
            "Lcom/yandex/mobile/ads/impl/aj2<",
            "TT;>;",
            "Lcom/yandex/mobile/ads/impl/br1<",
            "TT;>;",
            "Lcom/yandex/mobile/ads/impl/ui2;",
            "Lcom/yandex/mobile/ads/impl/bd1<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "adConfiguration"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "volleyResponseBodyParser"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "responseBodyParser"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "volleyMapper"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "responseParser"

    invoke-static {p5, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/xi2;->a:Lcom/yandex/mobile/ads/impl/ui2;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/xi2;->b:Lcom/yandex/mobile/ads/impl/bd1;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/xc1;Ljava/util/Map;Lcom/yandex/mobile/ads/impl/ts;)Lcom/yandex/mobile/ads/impl/o8;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/xc1;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/yandex/mobile/ads/impl/ts;",
            ")",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "networkResponse"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headers"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "responseAdType"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/xi2;->a:Lcom/yandex/mobile/ads/impl/ui2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/ui2;->a(Lcom/yandex/mobile/ads/impl/xc1;)Lcom/yandex/mobile/ads/impl/wq1;

    move-result-object p1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/xi2;->b:Lcom/yandex/mobile/ads/impl/bd1;

    invoke-interface {p0, p1, p2, p3}, Lcom/yandex/mobile/ads/impl/bd1;->a(Lcom/yandex/mobile/ads/impl/wq1;Ljava/util/Map;Lcom/yandex/mobile/ads/impl/ts;)Lcom/yandex/mobile/ads/impl/o8;

    move-result-object p0

    return-object p0
.end method
