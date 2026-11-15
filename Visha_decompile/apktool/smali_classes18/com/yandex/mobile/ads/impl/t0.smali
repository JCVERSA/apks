.class public final Lcom/yandex/mobile/ads/impl/t0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/o3;

.field private final b:Lcom/yandex/mobile/ads/impl/o8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/o3;)V
    .locals 1

    const-string v0, "adConfiguration"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adResponse"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/t0;->a:Lcom/yandex/mobile/ads/impl/o3;

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/t0;->b:Lcom/yandex/mobile/ads/impl/o8;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)Lcom/yandex/mobile/ads/impl/c1;
    .locals 3

    const-string v0, "resultActivityIntent"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/c1$a;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/t0;->b:Lcom/yandex/mobile/ads/impl/o8;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/t0;->a:Lcom/yandex/mobile/ads/impl/o3;

    new-instance v2, Lcom/yandex/mobile/ads/impl/t8;

    invoke-direct {v2}, Lcom/yandex/mobile/ads/impl/t8;-><init>()V

    invoke-direct {v0, v1, p0, v2}, Lcom/yandex/mobile/ads/impl/c1$a;-><init>(Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/t8;)V

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/c1$a;->a(Landroid/content/Intent;)Lcom/yandex/mobile/ads/impl/c1$a;

    move-result-object p0

    new-instance p1, Lcom/yandex/mobile/ads/impl/c1;

    invoke-direct {p1, p0}, Lcom/yandex/mobile/ads/impl/c1;-><init>(Lcom/yandex/mobile/ads/impl/c1$a;)V

    return-object p1
.end method
