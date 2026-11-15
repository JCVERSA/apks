.class public final Lcom/yandex/mobile/ads/impl/wl0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/yandex/mobile/ads/impl/b52;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/yandex/mobile/ads/impl/na2$b;",
            "Lcom/yandex/mobile/ads/impl/ht$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/d52;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    sget-object v0, Lcom/yandex/mobile/ads/impl/b52;->d:Lcom/yandex/mobile/ads/impl/b52;

    sget-object v1, Lcom/yandex/mobile/ads/impl/b52;->e:Lcom/yandex/mobile/ads/impl/b52;

    sget-object v2, Lcom/yandex/mobile/ads/impl/b52;->c:Lcom/yandex/mobile/ads/impl/b52;

    sget-object v3, Lcom/yandex/mobile/ads/impl/b52;->b:Lcom/yandex/mobile/ads/impl/b52;

    sget-object v4, Lcom/yandex/mobile/ads/impl/b52;->f:Lcom/yandex/mobile/ads/impl/b52;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/yandex/mobile/ads/impl/b52;

    move-result-object v0

    invoke-static {v0}, Lye9;->h([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/yandex/mobile/ads/impl/wl0;->b:Ljava/util/Set;

    sget-object v0, Lcom/yandex/mobile/ads/impl/na2$b;->b:Lcom/yandex/mobile/ads/impl/na2$b;

    sget-object v1, Lcom/yandex/mobile/ads/impl/ht$a;->c:Lcom/yandex/mobile/ads/impl/ht$a;

    invoke-static {v0, v1}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    sget-object v1, Lcom/yandex/mobile/ads/impl/na2$b;->c:Lcom/yandex/mobile/ads/impl/na2$b;

    sget-object v2, Lcom/yandex/mobile/ads/impl/ht$a;->b:Lcom/yandex/mobile/ads/impl/ht$a;

    invoke-static {v1, v2}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    sget-object v2, Lcom/yandex/mobile/ads/impl/na2$b;->d:Lcom/yandex/mobile/ads/impl/na2$b;

    sget-object v3, Lcom/yandex/mobile/ads/impl/ht$a;->d:Lcom/yandex/mobile/ads/impl/ht$a;

    invoke-static {v2, v3}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/a;->p([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/yandex/mobile/ads/impl/wl0;->c:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/d52;

    sget-object v1, Lcom/yandex/mobile/ads/impl/wl0;->b:Ljava/util/Set;

    invoke-direct {v0, v1}, Lcom/yandex/mobile/ads/impl/d52;-><init>(Ljava/util/Set;)V

    .line 2
    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/wl0;-><init>(Lcom/yandex/mobile/ads/impl/d52;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/d52;)V
    .locals 1

    .line 3
    const-string v0, "timeOffsetParser"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/wl0;->a:Lcom/yandex/mobile/ads/impl/d52;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/a52;)Lcom/yandex/mobile/ads/impl/ht;
    .locals 3

    const-string v0, "timeOffset"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/a52;->a()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/wl0;->a:Lcom/yandex/mobile/ads/impl/d52;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/d52;->a(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/na2;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object p1, Lcom/yandex/mobile/ads/impl/wl0;->c:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/na2;->c()Lcom/yandex/mobile/ads/impl/na2$b;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yandex/mobile/ads/impl/ht$a;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/yandex/mobile/ads/impl/ht;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/na2;->d()F

    move-result p0

    float-to-long v1, p0

    invoke-direct {v0, p1, v1, v2}, Lcom/yandex/mobile/ads/impl/ht;-><init>(Lcom/yandex/mobile/ads/impl/ht$a;J)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
