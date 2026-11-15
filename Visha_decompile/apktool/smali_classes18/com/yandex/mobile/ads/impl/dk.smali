.class public final Lcom/yandex/mobile/ads/impl/dk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/ov1$a;


# instance fields
.field final synthetic a:Lcom/yandex/mobile/ads/impl/ck;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/ck<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/yandex/mobile/ads/impl/p82;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/ck;Lcom/yandex/mobile/ads/impl/p82;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/ck<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/yandex/mobile/ads/impl/p82;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/dk;->a:Lcom/yandex/mobile/ads/impl/ck;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/dk;->b:Lcom/yandex/mobile/ads/impl/p82;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/jc;Lcom/yandex/mobile/ads/impl/o50;)V
    .locals 1

    .line 3
    const-string v0, "advertisingConfiguration"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "environmentConfiguration"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/dk;->a:Lcom/yandex/mobile/ads/impl/ck;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ck;->f()Lcom/yandex/mobile/ads/impl/o3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/o3;->a(Lcom/yandex/mobile/ads/impl/jc;)V

    .line 5
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/dk;->a:Lcom/yandex/mobile/ads/impl/ck;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ck;->f()Lcom/yandex/mobile/ads/impl/o3;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/yandex/mobile/ads/impl/o3;->a(Lcom/yandex/mobile/ads/impl/o50;)V

    .line 6
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/dk;->a:Lcom/yandex/mobile/ads/impl/ck;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/dk;->b:Lcom/yandex/mobile/ads/impl/p82;

    invoke-virtual {p1, p0}, Lcom/yandex/mobile/ads/impl/ck;->b(Lcom/yandex/mobile/ads/impl/p82;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/w3;)V
    .locals 1

    .line 1
    const-string v0, "error"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/dk;->a:Lcom/yandex/mobile/ads/impl/ck;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/ck;->b(Lcom/yandex/mobile/ads/impl/w3;)V

    return-void
.end method
