.class public final Ldr/b;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Ldr/b;

.field private static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ldr/b;

    .line 2
    .line 3
    invoke-direct {v0}, Ldr/b;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ldr/b;->a:Ldr/b;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Ldr/b;->b:Ljava/lang/String;

    .line 17
    .line 18
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final a(Lcom/transsion/shorttv/bean/Subject;Lcom/transsion/shorttv/bean/ShortTVItem;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/Subject;->getNeedPaid()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    return v0

    .line 12
    :cond_1
    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/Subject;->isPaid()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x1

    .line 17
    if-ne v1, v2, :cond_2

    .line 18
    .line 19
    return v0

    .line 20
    :cond_2
    if-nez p2, :cond_3

    .line 21
    .line 22
    return v0

    .line 23
    :cond_3
    invoke-virtual {p2}, Lcom/transsion/shorttv/bean/ShortTVItem;->getNeedPaid()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_4

    .line 28
    .line 29
    return v0

    .line 30
    :cond_4
    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/Subject;->getAdUnlockedEps()Ljava/util/Set;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p2}, Lcom/transsion/shorttv/bean/ShortTVItem;->getEp()I

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_5

    .line 47
    .line 48
    return v0

    .line 49
    :cond_5
    return v2
.end method


# virtual methods
.method public final b(Lcom/transsion/shorttv/bean/Subject;I)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/Subject;->getAdUnlockedEps()Ljava/util/Set;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    if-ne p2, v0, :cond_0

    .line 19
    .line 20
    const-string p1, "ad"

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    if-eqz p1, :cond_1

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/Subject;->isPaid()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-ne p1, v0, :cond_1

    .line 30
    .line 31
    const-string p1, "buy"

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const-string p1, ""

    .line 35
    .line 36
    :goto_0
    return-object p1
.end method

.method public final c(Lcom/transsion/shorttv/bean/Subject;Lcom/transsion/shorttv/bean/ShortTVItem;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ldr/b;->a(Lcom/transsion/shorttv/bean/Subject;Lcom/transsion/shorttv/bean/ShortTVItem;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final d(Lcom/transsion/shorttv/bean/ShortTVItem;)V
    .locals 1

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final e(Lcom/transsion/shorttv/bean/Subject;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final f(Lcom/transsion/shorttv/bean/Subject;)V
    .locals 4

    .line 1
    const-string v0, "subject"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/Subject;->getTotalEpisode()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-gt v1, v0, :cond_0

    .line 16
    .line 17
    :goto_0
    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/Subject;->getAdUnlockedEps()Ljava/util/Set;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    if-eq v1, v0, :cond_0

    .line 29
    .line 30
    add-int/lit8 v1, v1, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    return-void
.end method

.method public final g(Lcom/transsion/shorttv/bean/Subject;Lcom/transsion/shorttv/bean/ShortTVItem;I)V
    .locals 3

    .line 1
    const-string v0, "subject"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "epInfo"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    :goto_0
    if-ge v0, p3, :cond_1

    .line 13
    .line 14
    invoke-virtual {p2}, Lcom/transsion/shorttv/bean/ShortTVItem;->getEp()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    add-int/2addr v1, v0

    .line 19
    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/Subject;->getTotalEpisode()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-gt v1, v2, :cond_0

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/Subject;->getAdUnlockedEps()Ljava/util/Set;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    return-void
.end method
