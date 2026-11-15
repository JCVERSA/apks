.class public final synthetic Lcom/yandex/mobile/ads/impl/yr2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/yandex/mobile/ads/impl/tw0;

.field public final synthetic c:Lcom/yandex/mobile/ads/impl/kk0$a;

.field public final synthetic d:Lcom/yandex/mobile/ads/impl/vw0$b;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/tw0;Lcom/yandex/mobile/ads/impl/kk0$a;Lcom/yandex/mobile/ads/impl/vw0$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/yr2;->b:Lcom/yandex/mobile/ads/impl/tw0;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/yr2;->c:Lcom/yandex/mobile/ads/impl/kk0$a;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/yr2;->d:Lcom/yandex/mobile/ads/impl/vw0$b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/yr2;->b:Lcom/yandex/mobile/ads/impl/tw0;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/yr2;->c:Lcom/yandex/mobile/ads/impl/kk0$a;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/yr2;->d:Lcom/yandex/mobile/ads/impl/vw0$b;

    invoke-static {v0, v1, p0}, Lcom/yandex/mobile/ads/impl/tw0;->a(Lcom/yandex/mobile/ads/impl/tw0;Lcom/yandex/mobile/ads/impl/kk0$a;Lcom/yandex/mobile/ads/impl/vw0$b;)V

    return-void
.end method
