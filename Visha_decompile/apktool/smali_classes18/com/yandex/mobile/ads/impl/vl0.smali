.class public final Lcom/yandex/mobile/ads/impl/vl0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/bv1;

.field private final b:Lcom/yandex/mobile/ads/impl/fc2;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/fc2;)V
    .locals 1

    const-string v0, "sdkEnvironmentModule"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoAdLoader"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/vl0;->a:Lcom/yandex/mobile/ads/impl/bv1;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/vl0;->b:Lcom/yandex/mobile/ads/impl/fc2;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/p2;Lcom/yandex/mobile/ads/impl/dq1;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adBreak"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestListener"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/ea2;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/vl0;->a:Lcom/yandex/mobile/ads/impl/bv1;

    new-instance v6, Lcom/yandex/mobile/ads/impl/ho0;

    invoke-direct {v6, p1, v3}, Lcom/yandex/mobile/ads/impl/ho0;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;)V

    move-object v1, v0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/yandex/mobile/ads/impl/ea2;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/p2;Lcom/yandex/mobile/ads/impl/dq1;Lcom/yandex/mobile/ads/impl/ho0;)V

    new-instance p1, Lcom/yandex/mobile/ads/impl/ha2$a;

    invoke-direct {p1, p2}, Lcom/yandex/mobile/ads/impl/ha2$a;-><init>(Lcom/yandex/mobile/ads/impl/p2;)V

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ha2$a;->c()Lcom/yandex/mobile/ads/impl/ha2$a;

    move-result-object p1

    new-instance p2, Lcom/yandex/mobile/ads/impl/ha2;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3}, Lcom/yandex/mobile/ads/impl/ha2;-><init>(Lcom/yandex/mobile/ads/impl/ha2$a;I)V

    new-instance p1, Lcom/yandex/mobile/ads/impl/fo0;

    invoke-direct {p1, p2}, Lcom/yandex/mobile/ads/impl/fo0;-><init>(Lcom/yandex/mobile/ads/impl/ha2;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/vl0;->b:Lcom/yandex/mobile/ads/impl/fc2;

    invoke-virtual {p0, p2, p1, v0}, Lcom/yandex/mobile/ads/impl/fc2;->a(Lcom/yandex/mobile/ads/impl/ha2;Lcom/yandex/mobile/ads/impl/fo0;Lcom/yandex/mobile/ads/impl/ea2;)V

    return-void
.end method
