.class public final synthetic Lwwd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/yandex/mobile/ads/impl/ww0$a;

.field public final synthetic c:Lcom/yandex/mobile/ads/impl/ww0;

.field public final synthetic d:Lcom/yandex/mobile/ads/impl/lw0;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/ww0$a;Lcom/yandex/mobile/ads/impl/ww0;Lcom/yandex/mobile/ads/impl/lw0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwwd;->b:Lcom/yandex/mobile/ads/impl/ww0$a;

    iput-object p2, p0, Lwwd;->c:Lcom/yandex/mobile/ads/impl/ww0;

    iput-object p3, p0, Lwwd;->d:Lcom/yandex/mobile/ads/impl/lw0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lwwd;->b:Lcom/yandex/mobile/ads/impl/ww0$a;

    iget-object v1, p0, Lwwd;->c:Lcom/yandex/mobile/ads/impl/ww0;

    iget-object p0, p0, Lwwd;->d:Lcom/yandex/mobile/ads/impl/lw0;

    invoke-static {v0, v1, p0}, Lcom/yandex/mobile/ads/impl/ww0$a;->c(Lcom/yandex/mobile/ads/impl/ww0$a;Lcom/yandex/mobile/ads/impl/ww0;Lcom/yandex/mobile/ads/impl/lw0;)V

    return-void
.end method
