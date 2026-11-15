.class public final Lcom/yandex/mobile/ads/impl/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/z70;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/s;

.field private final b:Lcom/yandex/mobile/ads/impl/ag1;

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lird;

    invoke-direct {v0}, Lird;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/yandex/mobile/ads/impl/s;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/s;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/r;->a:Lcom/yandex/mobile/ads/impl/s;

    new-instance v0, Lcom/yandex/mobile/ads/impl/ag1;

    const/16 v1, 0xae2

    invoke-direct {v0, v1}, Lcom/yandex/mobile/ads/impl/ag1;-><init>(I)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/r;->b:Lcom/yandex/mobile/ads/impl/ag1;

    return-void
.end method

.method private static synthetic a()[Lcom/yandex/mobile/ads/impl/z70;
    .locals 3

    .line 17
    new-instance v0, Lcom/yandex/mobile/ads/impl/r;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/r;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/yandex/mobile/ads/impl/z70;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1
.end method

.method public static synthetic b()[Lcom/yandex/mobile/ads/impl/z70;
    .locals 1

    invoke-static {}, Lcom/yandex/mobile/ads/impl/r;->a()[Lcom/yandex/mobile/ads/impl/z70;

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

    .line 8
    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/r;->b:Lcom/yandex/mobile/ads/impl/ag1;

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/ag1;->c()[B

    move-result-object p2

    check-cast p1, Lcom/yandex/mobile/ads/impl/wz;

    const/16 v0, 0xae2

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v0}, Lcom/yandex/mobile/ads/impl/wz;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return p2

    .line 9
    :cond_0
    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/r;->b:Lcom/yandex/mobile/ads/impl/ag1;

    invoke-virtual {p2, v1}, Lcom/yandex/mobile/ads/impl/ag1;->e(I)V

    .line 10
    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/r;->b:Lcom/yandex/mobile/ads/impl/ag1;

    invoke-virtual {p2, p1}, Lcom/yandex/mobile/ads/impl/ag1;->d(I)V

    .line 11
    iget-boolean p1, p0, Lcom/yandex/mobile/ads/impl/r;->c:Z

    if-nez p1, :cond_1

    .line 12
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/r;->a:Lcom/yandex/mobile/ads/impl/s;

    const/4 p2, 0x4

    const-wide/16 v2, 0x0

    invoke-virtual {p1, p2, v2, v3}, Lcom/yandex/mobile/ads/impl/s;->a(IJ)V

    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Lcom/yandex/mobile/ads/impl/r;->c:Z

    .line 14
    :cond_1
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/r;->a:Lcom/yandex/mobile/ads/impl/s;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/r;->b:Lcom/yandex/mobile/ads/impl/ag1;

    invoke-virtual {p1, p0}, Lcom/yandex/mobile/ads/impl/s;->a(Lcom/yandex/mobile/ads/impl/ag1;)V

    return v1
.end method

.method public final a(JJ)V
    .locals 0

    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Lcom/yandex/mobile/ads/impl/r;->c:Z

    .line 16
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/r;->a:Lcom/yandex/mobile/ads/impl/s;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/s;->a()V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/b80;)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/r;->a:Lcom/yandex/mobile/ads/impl/s;

    new-instance v0, Lcom/yandex/mobile/ads/impl/p72$d;

    const/4 v1, 0x1

    const/high16 v2, -0x80000000

    const/4 v3, 0x0

    .line 2
    invoke-direct {v0, v2, v3, v1}, Lcom/yandex/mobile/ads/impl/p72$d;-><init>(III)V

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/s;->a(Lcom/yandex/mobile/ads/impl/b80;Lcom/yandex/mobile/ads/impl/p72$d;)V

    .line 4
    invoke-interface {p1}, Lcom/yandex/mobile/ads/impl/b80;->a()V

    .line 5
    new-instance p0, Lcom/yandex/mobile/ads/impl/ex1$b;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v2, 0x0

    .line 6
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/yandex/mobile/ads/impl/ex1$b;-><init>(JJ)V

    .line 7
    invoke-interface {p1, p0}, Lcom/yandex/mobile/ads/impl/b80;->a(Lcom/yandex/mobile/ads/impl/ex1;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/a80;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18
    new-instance p0, Lcom/yandex/mobile/ads/impl/ag1;

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/ag1;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    .line 19
    :goto_0
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ag1;->c()[B

    move-result-object v3

    move-object v4, p1

    check-cast v4, Lcom/yandex/mobile/ads/impl/wz;

    .line 20
    invoke-virtual {v4, v3, v1, v0, v1}, Lcom/yandex/mobile/ads/impl/wz;->b([BIIZ)Z

    .line 21
    invoke-virtual {p0, v1}, Lcom/yandex/mobile/ads/impl/ag1;->e(I)V

    .line 22
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ag1;->w()I

    move-result v3

    const v5, 0x494433

    if-eq v3, v5, :cond_4

    .line 23
    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/wz;->c()V

    .line 24
    invoke-virtual {v4, v1, v2}, Lcom/yandex/mobile/ads/impl/wz;->a(ZI)Z

    move p1, v1

    move v0, v2

    .line 25
    :goto_1
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ag1;->c()[B

    move-result-object v3

    const/4 v5, 0x6

    .line 26
    invoke-virtual {v4, v3, v1, v5, v1}, Lcom/yandex/mobile/ads/impl/wz;->b([BIIZ)Z

    .line 27
    invoke-virtual {p0, v1}, Lcom/yandex/mobile/ads/impl/ag1;->e(I)V

    .line 28
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ag1;->z()I

    move-result v3

    const/16 v5, 0xb77

    if-eq v3, v5, :cond_1

    .line 29
    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/wz;->c()V

    add-int/lit8 v0, v0, 0x1

    sub-int p1, v0, v2

    const/16 v3, 0x2000

    if-lt p1, v3, :cond_0

    return v1

    .line 30
    :cond_0
    invoke-virtual {v4, v1, v0}, Lcom/yandex/mobile/ads/impl/wz;->a(ZI)Z

    move p1, v1

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    add-int/2addr p1, v3

    const/4 v5, 0x4

    if-lt p1, v5, :cond_2

    return v3

    .line 31
    :cond_2
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ag1;->c()[B

    move-result-object v3

    invoke-static {v3}, Lcom/yandex/mobile/ads/impl/t;->a([B)I

    move-result v3

    const/4 v5, -0x1

    if-ne v3, v5, :cond_3

    return v1

    :cond_3
    add-int/lit8 v3, v3, -0x6

    .line 32
    invoke-virtual {v4, v1, v3}, Lcom/yandex/mobile/ads/impl/wz;->a(ZI)Z

    goto :goto_1

    :cond_4
    const/4 v3, 0x3

    .line 33
    invoke-virtual {p0, v3}, Lcom/yandex/mobile/ads/impl/ag1;->f(I)V

    .line 34
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ag1;->s()I

    move-result v3

    add-int/lit8 v5, v3, 0xa

    add-int/2addr v2, v5

    .line 35
    invoke-virtual {v4, v1, v3}, Lcom/yandex/mobile/ads/impl/wz;->a(ZI)Z

    goto :goto_0
.end method

.method public final release()V
    .locals 0

    return-void
.end method
