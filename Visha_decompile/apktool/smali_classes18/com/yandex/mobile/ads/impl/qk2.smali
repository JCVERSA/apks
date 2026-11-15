.class public final Lcom/yandex/mobile/ads/impl/qk2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/dq1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/mobile/ads/impl/dq1<",
        "Ljava/util/List<",
        "+",
        "Lcom/yandex/mobile/ads/impl/mb2;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/dq1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/dq1<",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/mb2;",
            ">;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/yandex/mobile/ads/impl/rk2;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/mb2;Lcom/yandex/mobile/ads/impl/dq1;Lcom/yandex/mobile/ads/impl/rk2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yandex/mobile/ads/impl/mb2;",
            "Lcom/yandex/mobile/ads/impl/dq1<",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/mb2;",
            ">;>;",
            "Lcom/yandex/mobile/ads/impl/rk2;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "wrapperAd"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "requestListener"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "wrapperAdResponseConfigurator"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/qk2;->a:Lcom/yandex/mobile/ads/impl/dq1;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/qk2;->b:Lcom/yandex/mobile/ads/impl/rk2;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/sb2;)V
    .locals 1

    .line 1
    const-string v0, "error"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/qk2;->a:Lcom/yandex/mobile/ads/impl/dq1;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/dq1;->a(Lcom/yandex/mobile/ads/impl/sb2;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 1

    .line 3
    check-cast p1, Ljava/util/List;

    .line 4
    const-string v0, "response"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/qk2;->b:Lcom/yandex/mobile/ads/impl/rk2;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/rk2;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 6
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/qk2;->a:Lcom/yandex/mobile/ads/impl/dq1;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/dq1;->a(Ljava/lang/Object;)V

    return-void
.end method
