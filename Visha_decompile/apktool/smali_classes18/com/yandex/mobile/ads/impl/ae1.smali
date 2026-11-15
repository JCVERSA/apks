.class public final Lcom/yandex/mobile/ads/impl/ae1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/z70;


# instance fields
.field private a:Lcom/yandex/mobile/ads/impl/b80;

.field private b:Lcom/yandex/mobile/ads/impl/y22;

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lv3d;

    invoke-direct {v0}, Lv3d;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/yandex/mobile/ads/impl/wz;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18
    new-instance v0, Lcom/yandex/mobile/ads/impl/ce1;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/ce1;-><init>()V

    const/4 v1, 0x1

    .line 19
    invoke-virtual {v0, p1, v1}, Lcom/yandex/mobile/ads/impl/ce1;->a(Lcom/yandex/mobile/ads/impl/wz;Z)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    iget v2, v0, Lcom/yandex/mobile/ads/impl/ce1;->a:I

    const/4 v4, 0x2

    and-int/2addr v2, v4

    if-eq v2, v4, :cond_0

    goto :goto_1

    .line 20
    :cond_0
    iget v0, v0, Lcom/yandex/mobile/ads/impl/ce1;->e:I

    const/16 v2, 0x8

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 21
    new-instance v2, Lcom/yandex/mobile/ads/impl/ag1;

    invoke-direct {v2, v0}, Lcom/yandex/mobile/ads/impl/ag1;-><init>(I)V

    .line 22
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/ag1;->c()[B

    move-result-object v4

    .line 23
    invoke-virtual {p1, v4, v3, v0, v3}, Lcom/yandex/mobile/ads/impl/wz;->b([BIIZ)Z

    .line 24
    invoke-virtual {v2, v3}, Lcom/yandex/mobile/ads/impl/ag1;->e(I)V

    .line 25
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/ag1;->a()I

    move-result p1

    const/4 v0, 0x5

    if-lt p1, v0, :cond_1

    .line 26
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/ag1;->t()I

    move-result p1

    const/16 v0, 0x7f

    if-ne p1, v0, :cond_1

    .line 27
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/ag1;->v()J

    move-result-wide v4

    const-wide/32 v6, 0x464c4143

    cmp-long p1, v4, v6

    if-nez p1, :cond_1

    .line 28
    new-instance p1, Lcom/yandex/mobile/ads/impl/yb0;

    invoke-direct {p1}, Lcom/yandex/mobile/ads/impl/yb0;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ae1;->b:Lcom/yandex/mobile/ads/impl/y22;

    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {v2, v3}, Lcom/yandex/mobile/ads/impl/ag1;->e(I)V

    .line 30
    :try_start_0
    invoke-static {v1, v2, v1}, Lcom/yandex/mobile/ads/impl/gj2;->a(ILcom/yandex/mobile/ads/impl/ag1;Z)Z

    move-result p1
    :try_end_0
    .catch Lcom/yandex/mobile/ads/impl/eg1; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_2

    .line 31
    new-instance p1, Lcom/yandex/mobile/ads/impl/fj2;

    invoke-direct {p1}, Lcom/yandex/mobile/ads/impl/fj2;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ae1;->b:Lcom/yandex/mobile/ads/impl/y22;

    goto :goto_0

    .line 32
    :catch_0
    :cond_2
    invoke-virtual {v2, v3}, Lcom/yandex/mobile/ads/impl/ag1;->e(I)V

    .line 33
    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/hf1;->b(Lcom/yandex/mobile/ads/impl/ag1;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 34
    new-instance p1, Lcom/yandex/mobile/ads/impl/hf1;

    invoke-direct {p1}, Lcom/yandex/mobile/ads/impl/hf1;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ae1;->b:Lcom/yandex/mobile/ads/impl/y22;

    :goto_0
    return v1

    :cond_3
    :goto_1
    return v3
.end method

.method private static synthetic a()[Lcom/yandex/mobile/ads/impl/z70;
    .locals 3

    .line 17
    new-instance v0, Lcom/yandex/mobile/ads/impl/ae1;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/ae1;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/yandex/mobile/ads/impl/z70;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1
.end method

.method public static synthetic b()[Lcom/yandex/mobile/ads/impl/z70;
    .locals 1

    invoke-static {}, Lcom/yandex/mobile/ads/impl/ae1;->a()[Lcom/yandex/mobile/ads/impl/z70;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/a80;Lcom/yandex/mobile/ads/impl/pj1;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ae1;->a:Lcom/yandex/mobile/ads/impl/b80;

    if-eqz v0, :cond_3

    .line 3
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ae1;->b:Lcom/yandex/mobile/ads/impl/y22;

    if-nez v0, :cond_1

    .line 4
    move-object v0, p1

    check-cast v0, Lcom/yandex/mobile/ads/impl/wz;

    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/ae1;->a(Lcom/yandex/mobile/ads/impl/wz;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/wz;->c()V

    goto :goto_0

    .line 6
    :cond_0
    const-string p0, "Failed to determine bitstream type"

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/eg1;->a(Ljava/lang/String;Ljava/lang/Exception;)Lcom/yandex/mobile/ads/impl/eg1;

    move-result-object p0

    throw p0

    .line 7
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/ae1;->c:Z

    if-nez v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ae1;->a:Lcom/yandex/mobile/ads/impl/b80;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/b80;->a(II)Lcom/yandex/mobile/ads/impl/a62;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ae1;->a:Lcom/yandex/mobile/ads/impl/b80;

    invoke-interface {v1}, Lcom/yandex/mobile/ads/impl/b80;->a()V

    .line 10
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ae1;->b:Lcom/yandex/mobile/ads/impl/y22;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/ae1;->a:Lcom/yandex/mobile/ads/impl/b80;

    invoke-virtual {v1, v3, v0}, Lcom/yandex/mobile/ads/impl/y22;->a(Lcom/yandex/mobile/ads/impl/b80;Lcom/yandex/mobile/ads/impl/a62;)V

    .line 11
    iput-boolean v2, p0, Lcom/yandex/mobile/ads/impl/ae1;->c:Z

    .line 12
    :cond_2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ae1;->b:Lcom/yandex/mobile/ads/impl/y22;

    check-cast p1, Lcom/yandex/mobile/ads/impl/wz;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/y22;->a(Lcom/yandex/mobile/ads/impl/wz;Lcom/yandex/mobile/ads/impl/pj1;)I

    move-result p0

    return p0

    .line 13
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public final a(JJ)V
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ae1;->b:Lcom/yandex/mobile/ads/impl/y22;

    if-eqz p0, :cond_0

    .line 15
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/yandex/mobile/ads/impl/y22;->a(JJ)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/b80;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ae1;->a:Lcom/yandex/mobile/ads/impl/b80;

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/a80;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16
    :try_start_0
    check-cast p1, Lcom/yandex/mobile/ads/impl/wz;

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/ae1;->a(Lcom/yandex/mobile/ads/impl/wz;)Z

    move-result p0
    :try_end_0
    .catch Lcom/yandex/mobile/ads/impl/eg1; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public final release()V
    .locals 0

    return-void
.end method
