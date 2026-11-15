.class public final Lcom/yandex/mobile/ads/impl/fp1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/sl$b;


# instance fields
.field final synthetic a:Lcom/yandex/mobile/ads/impl/gp1;

.field final synthetic b:Lcom/yandex/mobile/ads/impl/yb1;

.field final synthetic c:Lcom/yandex/mobile/ads/impl/hp1;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/gp1;Lcom/yandex/mobile/ads/impl/yb1;Lcom/yandex/mobile/ads/impl/hp1;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/fp1;->a:Lcom/yandex/mobile/ads/impl/gp1;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/fp1;->b:Lcom/yandex/mobile/ads/impl/yb1;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/fp1;->c:Lcom/yandex/mobile/ads/impl/hp1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;)V
    .locals 2

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/fp1;->a:Lcom/yandex/mobile/ads/impl/gp1;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/gp1;->a(Lcom/yandex/mobile/ads/impl/gp1;)Lcom/yandex/mobile/ads/impl/ep1;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/fp1;->b:Lcom/yandex/mobile/ads/impl/yb1;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fp1;->c:Lcom/yandex/mobile/ads/impl/hp1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p0, p1}, Lcom/yandex/mobile/ads/impl/ep1;->a(Lcom/yandex/mobile/ads/impl/yb1;Lcom/yandex/mobile/ads/impl/hp1;Landroid/graphics/Bitmap;)V

    return-void
.end method
