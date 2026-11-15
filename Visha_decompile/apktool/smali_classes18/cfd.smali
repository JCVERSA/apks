.class public final synthetic Lcfd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/jj0$b;


# instance fields
.field public final synthetic a:Lcom/yandex/mobile/ads/impl/fk0;

.field public final synthetic b:Lcom/yandex/mobile/ads/impl/xj0;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/fk0;Lcom/yandex/mobile/ads/impl/xj0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcfd;->a:Lcom/yandex/mobile/ads/impl/fk0;

    iput-object p2, p0, Lcfd;->b:Lcom/yandex/mobile/ads/impl/xj0;

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcfd;->a:Lcom/yandex/mobile/ads/impl/fk0;

    iget-object p0, p0, Lcfd;->b:Lcom/yandex/mobile/ads/impl/xj0;

    invoke-static {v0, p0, p1}, Lcom/yandex/mobile/ads/impl/fk0;->d(Lcom/yandex/mobile/ads/impl/fk0;Lcom/yandex/mobile/ads/impl/xj0;Landroid/graphics/Bitmap;)V

    return-void
.end method
