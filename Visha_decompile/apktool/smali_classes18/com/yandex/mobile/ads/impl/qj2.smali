.class public final Lcom/yandex/mobile/ads/impl/qj2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/y30$c;


# static fields
.field static final synthetic c:[Laf5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Laf5;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/yandex/mobile/ads/impl/go1;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "getCacheListener()Lcom/monetization/ads/nativeads/video/cache/VideoCacheListener;"

    const/4 v1, 0x0

    const-class v2, Lcom/yandex/mobile/ads/impl/qj2;

    const-string v3, "cacheListener"

    invoke-static {v2, v3, v0, v1}, Lcom/yandex/mobile/ads/impl/ta;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lcf5;

    move-result-object v0

    const/4 v2, 0x1

    new-array v3, v2, [Laf5;

    aput-object v0, v3, v1

    sput-object v3, Lcom/yandex/mobile/ads/impl/qj2;->c:[Laf5;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ly71;->n([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/yandex/mobile/ads/impl/qj2;->d:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ly71;->n([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/yandex/mobile/ads/impl/qj2;->e:Ljava/util/List;

    invoke-static {v0, v1}, Li81;->J0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/yandex/mobile/ads/impl/qj2;->f:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/ee2;)V
    .locals 1

    const-string v0, "requestId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoCacheListener"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/qj2;->a:Ljava/lang/String;

    invoke-static {p2}, Lcom/yandex/mobile/ads/impl/ho1;->a(Ljava/lang/Object;)Lcom/yandex/mobile/ads/impl/go1;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/qj2;->b:Lcom/yandex/mobile/ads/impl/go1;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/y30;Lcom/yandex/mobile/ads/impl/w30;)V
    .locals 3

    const-string v0, "downloadManager"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "download"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p2, Lcom/yandex/mobile/ads/impl/w30;->a:Lcom/yandex/mobile/ads/impl/a40;

    iget-object v0, v0, Lcom/yandex/mobile/ads/impl/a40;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/qj2;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/yandex/mobile/ads/impl/qj2;->d:Ljava/util/List;

    iget v1, p2, Lcom/yandex/mobile/ads/impl/w30;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/qj2;->b:Lcom/yandex/mobile/ads/impl/go1;

    sget-object v2, Lcom/yandex/mobile/ads/impl/qj2;->c:[Laf5;

    aget-object v2, v2, v1

    invoke-virtual {v0, p0, v2}, Lcom/yandex/mobile/ads/impl/go1;->getValue(Ljava/lang/Object;Laf5;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/ee2;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/ee2;->a()V

    :cond_0
    sget-object v0, Lcom/yandex/mobile/ads/impl/qj2;->e:Ljava/util/List;

    iget v2, p2, Lcom/yandex/mobile/ads/impl/w30;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/qj2;->b:Lcom/yandex/mobile/ads/impl/go1;

    sget-object v2, Lcom/yandex/mobile/ads/impl/qj2;->c:[Laf5;

    aget-object v1, v2, v1

    invoke-virtual {v0, p0, v1}, Lcom/yandex/mobile/ads/impl/go1;->getValue(Ljava/lang/Object;Laf5;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/ee2;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/ee2;->c()V

    :cond_1
    sget-object v0, Lcom/yandex/mobile/ads/impl/qj2;->f:Ljava/util/List;

    iget p2, p2, Lcom/yandex/mobile/ads/impl/w30;->b:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1, p0}, Lcom/yandex/mobile/ads/impl/y30;->a(Lcom/yandex/mobile/ads/impl/y30$c;)V

    :cond_2
    return-void
.end method
