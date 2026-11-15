.class public final Lcom/yandex/mobile/ads/impl/li1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/r9;

.field private final b:Lcom/yandex/mobile/ads/impl/z5;

.field private final c:Lcom/yandex/mobile/ads/impl/eb;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/r9;Lcom/yandex/mobile/ads/impl/z5;Lcom/yandex/mobile/ads/impl/eb;)V
    .locals 1

    const-string v0, "adStateHolder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adPlayerEventsController"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adsLoaderPlaybackErrorConverter"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/li1;->a:Lcom/yandex/mobile/ads/impl/r9;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/li1;->b:Lcom/yandex/mobile/ads/impl/z5;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/li1;->c:Lcom/yandex/mobile/ads/impl/eb;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;)V
    .locals 3

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/li1;->a:Lcom/yandex/mobile/ads/impl/r9;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/r9;->c()Lcom/yandex/mobile/ads/impl/cj1;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/cj1;->d()Lcom/yandex/mobile/ads/impl/go0;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/li1;->a:Lcom/yandex/mobile/ads/impl/r9;

    invoke-virtual {v1, v0}, Lcom/yandex/mobile/ads/impl/r9;->a(Lcom/yandex/mobile/ads/impl/go0;)Lcom/yandex/mobile/ads/impl/wm0;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_3

    sget-object v2, Lcom/yandex/mobile/ads/impl/wm0;->b:Lcom/yandex/mobile/ads/impl/wm0;

    if-eq v2, v1, :cond_3

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/li1;->c:Lcom/yandex/mobile/ads/impl/eb;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/eb;->c(Ljava/lang/Throwable;)Lcom/yandex/mobile/ads/impl/xc2;

    move-result-object p1

    goto :goto_1

    :cond_2
    new-instance p1, Lcom/yandex/mobile/ads/impl/xc2;

    sget-object v1, Lcom/yandex/mobile/ads/impl/xc2$a;->D:Lcom/yandex/mobile/ads/impl/xc2$a;

    new-instance v2, Lcom/yandex/mobile/ads/impl/v00;

    invoke-direct {v2}, Lcom/yandex/mobile/ads/impl/v00;-><init>()V

    invoke-direct {p1, v1, v2}, Lcom/yandex/mobile/ads/impl/xc2;-><init>(Lcom/yandex/mobile/ads/impl/xc2$a;Ljava/lang/Throwable;)V

    :goto_1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/li1;->b:Lcom/yandex/mobile/ads/impl/z5;

    invoke-virtual {p0, v0, p1}, Lcom/yandex/mobile/ads/impl/z5;->a(Lcom/yandex/mobile/ads/impl/go0;Lcom/yandex/mobile/ads/impl/xc2;)V

    :cond_3
    return-void
.end method
