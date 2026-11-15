.class public final Lax/b;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private final h:Lkotlin/Lazy;

.field private final i:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "GET"

    .line 5
    .line 6
    iput-object v0, p0, Lax/b;->a:Ljava/lang/String;

    .line 7
    .line 8
    const v0, 0xea60

    .line 9
    .line 10
    .line 11
    iput v0, p0, Lax/b;->b:I

    .line 12
    .line 13
    iput v0, p0, Lax/b;->c:I

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    iput v0, p0, Lax/b;->d:I

    .line 17
    .line 18
    sget-object v0, Lcom/transsnet/downloader/core/thread/DownloadExecutor;->a:Lcom/transsnet/downloader/core/thread/DownloadExecutor$b;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/transsnet/downloader/core/thread/DownloadExecutor$b;->a()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    div-int/lit8 v0, v0, 0x2

    .line 25
    .line 26
    add-int/lit8 v0, v0, 0x2

    .line 27
    .line 28
    iget v1, p0, Lax/b;->d:I

    .line 29
    .line 30
    div-int/2addr v0, v1

    .line 31
    iput v0, p0, Lax/b;->e:I

    .line 32
    .line 33
    const/4 v0, 0x3

    .line 34
    iput v0, p0, Lax/b;->f:I

    .line 35
    .line 36
    const/4 v0, 0x5

    .line 37
    iput v0, p0, Lax/b;->g:I

    .line 38
    .line 39
    new-instance v0, Lax/a;

    .line 40
    .line 41
    invoke-direct {v0}, Lax/a;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iput-object v0, p0, Lax/b;->h:Lkotlin/Lazy;

    .line 49
    .line 50
    const/4 v0, -0x1

    .line 51
    iput v0, p0, Lax/b;->i:I

    .line 52
    .line 53
    return-void
.end method

.method public static synthetic a()J
    .locals 2

    .line 1
    invoke-static {}, Lax/b;->h()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method private static final h()J
    .locals 4

    .line 1
    sget-object v0, Lcm/f;->c:Lcm/f$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcm/f$a;->a()Lcm/f;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "downloadRangeSize"

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-virtual {v0, v1, v2}, Lcm/f;->c(Ljava/lang/String;Z)Lcom/transsion/mb/config/manager/ConfigBean;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/transsion/mb/config/manager/ConfigBean;->getValue()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    const-wide/32 v1, 0x500000

    .line 23
    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-nez v3, :cond_1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    invoke-static {v0}, Lkotlin/text/StringsKt;->x(Ljava/lang/String;)Ljava/lang/Long;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 41
    .line 42
    .line 43
    move-result-wide v1

    .line 44
    :cond_2
    :goto_1
    return-wide v1
.end method


# virtual methods
.method public final b()I
    .locals 1

    .line 1
    iget v0, p0, Lax/b;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public final c()I
    .locals 1

    .line 1
    iget v0, p0, Lax/b;->e:I

    .line 2
    .line 3
    return v0
.end method

.method public final d()J
    .locals 2

    .line 1
    iget-object v0, p0, Lax/b;->h:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method

.method public final e()I
    .locals 1

    .line 1
    iget v0, p0, Lax/b;->i:I

    .line 2
    .line 3
    return v0
.end method

.method public final f()I
    .locals 1

    .line 1
    iget v0, p0, Lax/b;->g:I

    .line 2
    .line 3
    return v0
.end method

.method public final g()I
    .locals 1

    .line 1
    iget v0, p0, Lax/b;->f:I

    .line 2
    .line 3
    return v0
.end method

.method public final i(I)V
    .locals 0

    .line 1
    iput p1, p0, Lax/b;->d:I

    .line 2
    .line 3
    return-void
.end method
