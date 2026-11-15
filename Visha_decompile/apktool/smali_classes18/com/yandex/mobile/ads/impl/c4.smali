.class public final Lcom/yandex/mobile/ads/impl/c4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/yandex/mobile/ads/impl/gt;

.field private final c:Lcom/yandex/mobile/ads/impl/jm0;

.field private final d:Lcom/yandex/mobile/ads/impl/sj0;

.field private final e:Lcom/yandex/mobile/ads/impl/cn0;

.field private final f:Lcom/yandex/mobile/ads/impl/pc2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/pc2<",
            "Lcom/yandex/mobile/ads/impl/go0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/gt;Lcom/yandex/mobile/ads/impl/jm0;Lcom/yandex/mobile/ads/impl/yk1;Lcom/yandex/mobile/ads/impl/cn0;Lcom/yandex/mobile/ads/impl/i4;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adBreak"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adPlayerController"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageProvider"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adViewsHolderManager"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playbackEventsListener"

    invoke-static {p6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/c4;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/c4;->b:Lcom/yandex/mobile/ads/impl/gt;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/c4;->c:Lcom/yandex/mobile/ads/impl/jm0;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/c4;->d:Lcom/yandex/mobile/ads/impl/sj0;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/c4;->e:Lcom/yandex/mobile/ads/impl/cn0;

    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/c4;->f:Lcom/yandex/mobile/ads/impl/pc2;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/b4;
    .locals 8

    new-instance v7, Lcom/yandex/mobile/ads/impl/m4;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/c4;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/c4;->b:Lcom/yandex/mobile/ads/impl/gt;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/c4;->c:Lcom/yandex/mobile/ads/impl/jm0;

    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/c4;->d:Lcom/yandex/mobile/ads/impl/sj0;

    iget-object v5, p0, Lcom/yandex/mobile/ads/impl/c4;->e:Lcom/yandex/mobile/ads/impl/cn0;

    iget-object v6, p0, Lcom/yandex/mobile/ads/impl/c4;->f:Lcom/yandex/mobile/ads/impl/pc2;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/yandex/mobile/ads/impl/m4;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/gt;Lcom/yandex/mobile/ads/impl/jm0;Lcom/yandex/mobile/ads/impl/sj0;Lcom/yandex/mobile/ads/impl/cn0;Lcom/yandex/mobile/ads/impl/pc2;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/c4;->b:Lcom/yandex/mobile/ads/impl/gt;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/gt;->f()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v7, p0}, Lcom/yandex/mobile/ads/impl/m4;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p0

    new-instance v0, Lcom/yandex/mobile/ads/impl/b4;

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/impl/b4;-><init>(Ljava/util/ArrayList;)V

    return-object v0
.end method
