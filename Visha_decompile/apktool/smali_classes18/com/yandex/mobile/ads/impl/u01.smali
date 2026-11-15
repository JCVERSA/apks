.class public final Lcom/yandex/mobile/ads/impl/u01;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/yandex/mobile/ads/impl/z2;

.field private final c:Lcom/yandex/mobile/ads/impl/jm0;

.field private final d:Lcom/yandex/mobile/ads/impl/ym0;

.field private final e:Lcom/yandex/mobile/ads/impl/cn0;

.field private final f:Lcom/yandex/mobile/ads/impl/lo0;

.field private final g:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/z2;Lcom/yandex/mobile/ads/impl/jm0;Lcom/yandex/mobile/ads/impl/ym0;Lcom/yandex/mobile/ads/impl/cn0;Lcom/yandex/mobile/ads/impl/lo0;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adBreakStatusController"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "instreamAdPlayerController"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "instreamAdUiElementsManager"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "instreamAdViewsHolderManager"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adCreativePlaybackEventListener"

    invoke-static {p6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/u01;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/u01;->b:Lcom/yandex/mobile/ads/impl/z2;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/u01;->c:Lcom/yandex/mobile/ads/impl/jm0;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/u01;->d:Lcom/yandex/mobile/ads/impl/ym0;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/u01;->e:Lcom/yandex/mobile/ads/impl/cn0;

    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/u01;->f:Lcom/yandex/mobile/ads/impl/lo0;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/u01;->g:Ljava/util/LinkedHashMap;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/gt;)Lcom/yandex/mobile/ads/impl/u2;
    .locals 9

    const-string v0, "adBreak"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/u01;->g:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/yandex/mobile/ads/impl/u2;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/u01;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v2, "getApplicationContext(...)"

    invoke-static {v3, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/yandex/mobile/ads/impl/u01;->c:Lcom/yandex/mobile/ads/impl/jm0;

    iget-object v6, p0, Lcom/yandex/mobile/ads/impl/u01;->d:Lcom/yandex/mobile/ads/impl/ym0;

    iget-object v7, p0, Lcom/yandex/mobile/ads/impl/u01;->e:Lcom/yandex/mobile/ads/impl/cn0;

    iget-object v8, p0, Lcom/yandex/mobile/ads/impl/u01;->b:Lcom/yandex/mobile/ads/impl/z2;

    move-object v2, v1

    move-object v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/yandex/mobile/ads/impl/u2;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/gt;Lcom/yandex/mobile/ads/impl/jm0;Lcom/yandex/mobile/ads/impl/ym0;Lcom/yandex/mobile/ads/impl/cn0;Lcom/yandex/mobile/ads/impl/z2;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/u01;->f:Lcom/yandex/mobile/ads/impl/lo0;

    invoke-virtual {v1, p0}, Lcom/yandex/mobile/ads/impl/u2;->a(Lcom/yandex/mobile/ads/impl/lo0;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    check-cast v1, Lcom/yandex/mobile/ads/impl/u2;

    return-object v1
.end method
