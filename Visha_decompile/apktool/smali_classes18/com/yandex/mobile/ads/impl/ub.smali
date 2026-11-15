.class public final Lcom/yandex/mobile/ads/impl/ub;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ub;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_0

    new-instance v0, Lcom/yandex/mobile/ads/impl/vb;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ub;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/yandex/mobile/ads/impl/vb;-><init>(Landroid/content/Context;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ub;->a:Landroid/content/Context;

    new-instance v1, Lcom/yandex/mobile/ads/impl/tb;

    new-instance v2, Lcom/yandex/mobile/ads/impl/rb;

    invoke-direct {v2, p0, v0}, Lcom/yandex/mobile/ads/impl/rb;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/vb;)V

    new-instance v3, Lcom/yandex/mobile/ads/impl/ob;

    invoke-direct {v3}, Lcom/yandex/mobile/ads/impl/ob;-><init>()V

    invoke-direct {v1, v0, p0, v2, v3}, Lcom/yandex/mobile/ads/impl/tb;-><init>(Lcom/yandex/mobile/ads/impl/vb;Landroid/content/Context;Lcom/yandex/mobile/ads/impl/rb;Lcom/yandex/mobile/ads/impl/ob;)V

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/tb;->a()Landroid/app/Dialog;

    move-result-object p0

    new-instance v1, Lcom/yandex/mobile/ads/impl/sb;

    invoke-direct {v1, p0, v0}, Lcom/yandex/mobile/ads/impl/sb;-><init>(Landroid/app/Dialog;Lcom/yandex/mobile/ads/impl/vb;)V

    invoke-virtual {v1, p1}, Lcom/yandex/mobile/ads/impl/sb;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
