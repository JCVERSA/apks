.class public final Lcom/yandex/mobile/ads/impl/rz1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Ljava/util/HashSet;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/d52;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lcom/yandex/mobile/ads/impl/b52;->c:Lcom/yandex/mobile/ads/impl/b52;

    sget-object v2, Lcom/yandex/mobile/ads/impl/b52;->b:Lcom/yandex/mobile/ads/impl/b52;

    filled-new-array {v1, v2}, [Lcom/yandex/mobile/ads/impl/b52;

    move-result-object v1

    invoke-static {v1}, Ly71;->n([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/yandex/mobile/ads/impl/rz1;->b:Ljava/util/HashSet;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/d52;

    sget-object v1, Lcom/yandex/mobile/ads/impl/rz1;->b:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Lcom/yandex/mobile/ads/impl/d52;-><init>(Ljava/util/Set;)V

    .line 2
    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/rz1;-><init>(Lcom/yandex/mobile/ads/impl/d52;)V

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
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/rz1;->a:Lcom/yandex/mobile/ads/impl/d52;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/uu;)Lcom/yandex/mobile/ads/impl/od2;
    .locals 3

    const-string v0, "creative"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/uu;->e()I

    move-result v0

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/uu;->i()Lcom/yandex/mobile/ads/impl/sz1;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/sz1;->a()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/rz1;->a:Lcom/yandex/mobile/ads/impl/d52;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/d52;->a(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/na2;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/na2;->d()F

    move-result p1

    sget-object v1, Lcom/yandex/mobile/ads/impl/na2$b;->c:Lcom/yandex/mobile/ads/impl/na2$b;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/na2;->c()Lcom/yandex/mobile/ads/impl/na2$b;

    move-result-object p0

    if-ne v1, p0, :cond_0

    int-to-long v1, v0

    const/16 p0, 0x64

    int-to-float p0, p0

    div-float/2addr p1, p0

    long-to-float p0, v1

    mul-float/2addr p1, p0

    float-to-long p0, p1

    long-to-float p1, p0

    :cond_0
    int-to-float p0, v0

    invoke-static {p1, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    new-instance p1, Lcom/yandex/mobile/ads/impl/od2;

    float-to-long v0, p0

    invoke-direct {p1, v0, v1}, Lcom/yandex/mobile/ads/impl/od2;-><init>(J)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
