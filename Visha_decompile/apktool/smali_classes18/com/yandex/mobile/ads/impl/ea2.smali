.class public final Lcom/yandex/mobile/ads/impl/ea2;
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
.field private final a:Lcom/yandex/mobile/ads/impl/p2;

.field private final b:Lcom/yandex/mobile/ads/impl/dq1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/dq1<",
            "Lcom/yandex/mobile/ads/impl/gt;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/yandex/mobile/ads/impl/ho0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/p2;Lcom/yandex/mobile/ads/impl/dq1;Lcom/yandex/mobile/ads/impl/ho0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yandex/mobile/ads/impl/bv1;",
            "Lcom/yandex/mobile/ads/impl/p2;",
            "Lcom/yandex/mobile/ads/impl/dq1<",
            "Lcom/yandex/mobile/ads/impl/gt;",
            ">;",
            "Lcom/yandex/mobile/ads/impl/ho0;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "sdkEnvironmentModule"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adBreak"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "instreamAdBreakRequestListener"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "instreamVideoAdBreakCreator"

    invoke-static {p5, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/ea2;->a:Lcom/yandex/mobile/ads/impl/p2;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/ea2;->b:Lcom/yandex/mobile/ads/impl/dq1;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/ea2;->c:Lcom/yandex/mobile/ads/impl/ho0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/sb2;)V
    .locals 1

    .line 1
    const-string v0, "error"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ea2;->b:Lcom/yandex/mobile/ads/impl/dq1;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/dq1;->a(Lcom/yandex/mobile/ads/impl/sb2;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 2

    .line 3
    check-cast p1, Ljava/util/List;

    .line 4
    const-string v0, "result"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ea2;->c:Lcom/yandex/mobile/ads/impl/ho0;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ea2;->a:Lcom/yandex/mobile/ads/impl/p2;

    invoke-virtual {v0, v1, p1}, Lcom/yandex/mobile/ads/impl/ho0;->a(Lcom/yandex/mobile/ads/impl/p2;Ljava/util/List;)Lcom/yandex/mobile/ads/impl/gt;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ea2;->b:Lcom/yandex/mobile/ads/impl/dq1;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/dq1;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_0
    const-string p1, "description"

    const-string v0, "Failed to parse ad break"

    invoke-static {v0, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance p1, Lcom/yandex/mobile/ads/impl/sb2;

    const/4 v1, 0x1

    invoke-direct {p1, v1, v0}, Lcom/yandex/mobile/ads/impl/sb2;-><init>(ILjava/lang/String;)V

    .line 9
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ea2;->b:Lcom/yandex/mobile/ads/impl/dq1;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/dq1;->a(Lcom/yandex/mobile/ads/impl/sb2;)V

    :goto_0
    return-void
.end method
