.class public final Lcom/yandex/mobile/ads/impl/on0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/ff1;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/yandex/mobile/ads/impl/vn0;

.field private final c:Lcom/yandex/mobile/ads/impl/y82;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/vn0;Lcom/yandex/mobile/ads/impl/y82;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "instreamInteractionTracker"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "urlViewerLauncher"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/on0;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/on0;->b:Lcom/yandex/mobile/ads/impl/vn0;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/on0;->c:Lcom/yandex/mobile/ads/impl/y82;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    const-string v0, "url"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/on0;->c:Lcom/yandex/mobile/ads/impl/y82;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/on0;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/yandex/mobile/ads/impl/y82;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/on0;->b:Lcom/yandex/mobile/ads/impl/vn0;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/vn0;->a()V

    :cond_0
    return-void
.end method
