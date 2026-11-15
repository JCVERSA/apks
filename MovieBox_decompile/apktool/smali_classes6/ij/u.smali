.class public final Lij/u;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lij/u;

.field private static b:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lij/u;

    .line 2
    .line 3
    invoke-direct {v0}, Lij/u;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lij/u;->a:Lij/u;

    .line 7
    .line 8
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

.method private final b()I
    .locals 10

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v1, v0, [[I

    .line 3
    .line 4
    const/16 v2, 0x60

    .line 5
    .line 6
    const/16 v3, 0xfe

    .line 7
    .line 8
    const/16 v4, 0xd6

    .line 9
    .line 10
    const/16 v5, 0x74

    .line 11
    .line 12
    filled-new-array {v2, v3, v4, v5}, [I

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const/4 v3, 0x0

    .line 17
    aput-object v2, v1, v3

    .line 18
    .line 19
    const/16 v2, 0xf8

    .line 20
    .line 21
    const/16 v4, 0xcd

    .line 22
    .line 23
    const/16 v5, 0x2f

    .line 24
    .line 25
    const/16 v6, 0x7e

    .line 26
    .line 27
    filled-new-array {v2, v4, v5, v6}, [I

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    const/4 v4, 0x1

    .line 32
    aput-object v2, v1, v4

    .line 33
    .line 34
    const/16 v2, 0xd1

    .line 35
    .line 36
    const/16 v5, 0x49

    .line 37
    .line 38
    const/16 v6, 0xff

    .line 39
    .line 40
    const/16 v7, 0x48

    .line 41
    .line 42
    filled-new-array {v2, v5, v6, v7}, [I

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    const/4 v5, 0x2

    .line 47
    aput-object v2, v1, v5

    .line 48
    .line 49
    const/16 v2, 0x17

    .line 50
    .line 51
    const/16 v5, 0x52

    .line 52
    .line 53
    const/16 v6, 0x51

    .line 54
    .line 55
    const/16 v7, 0x63

    .line 56
    .line 57
    filled-new-array {v2, v5, v6, v7}, [I

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    const/4 v5, 0x3

    .line 62
    aput-object v2, v1, v5

    .line 63
    .line 64
    move v2, v3

    .line 65
    move v5, v2

    .line 66
    :goto_0
    if-ge v2, v0, :cond_1

    .line 67
    .line 68
    aget-object v6, v1, v2

    .line 69
    .line 70
    array-length v7, v6

    .line 71
    move v8, v3

    .line 72
    :goto_1
    if-ge v8, v7, :cond_0

    .line 73
    .line 74
    aget v9, v6, v8

    .line 75
    .line 76
    shl-int/2addr v5, v4

    .line 77
    xor-int/2addr v5, v9

    .line 78
    add-int/2addr v8, v4

    .line 79
    goto :goto_1

    .line 80
    :cond_0
    add-int/2addr v2, v4

    .line 81
    goto :goto_0

    .line 82
    :cond_1
    return v5
.end method

.method private final c(Ljava/lang/String;)I
    .locals 6

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-static {v2, v0, v1}, Lkotlin/internal/ProgressionUtilKt;->c(III)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-ltz v0, :cond_1

    .line 14
    .line 15
    move v1, v2

    .line 16
    :goto_0
    add-int/lit8 v3, v2, 0x2

    .line 17
    .line 18
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    const-string v5, "substring(...)"

    .line 23
    .line 24
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/16 v5, 0x10

    .line 28
    .line 29
    invoke-static {v5}, Lkotlin/text/CharsKt;->a(I)I

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    shl-int/lit8 v1, v1, 0x1

    .line 38
    .line 39
    xor-int/2addr v1, v4

    .line 40
    if-eq v2, v0, :cond_0

    .line 41
    .line 42
    move v2, v3

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    move v2, v1

    .line 45
    :cond_1
    return v2
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Z
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lij/u;->b:Ljava/lang/Boolean;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1

    .line 15
    :cond_0
    sget-object v0, Lij/r;->a:Lij/r;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lij/r;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-direct {p0, p1}, Lij/u;->c(Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    invoke-direct {p0}, Lij/u;->b()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-ne p1, v0, :cond_1

    .line 30
    .line 31
    const/4 p1, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 p1, 0x0

    .line 34
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    sput-object v0, Lij/u;->b:Ljava/lang/Boolean;

    .line 39
    .line 40
    return p1
.end method
