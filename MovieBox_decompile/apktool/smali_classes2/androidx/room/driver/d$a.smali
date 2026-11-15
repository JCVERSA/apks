.class public final Landroidx/room/driver/d$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/driver/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/room/driver/d$a;-><init>()V

    return-void
.end method

.method private final c(Ljava/lang/String;)I
    .locals 11

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x2

    .line 6
    .line 7
    const/4 v1, -0x1

    .line 8
    if-gez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    const/4 v2, 0x0

    .line 12
    :goto_0
    if-ge v2, v0, :cond_9

    .line 13
    .line 14
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    const/16 v4, 0x20

    .line 19
    .line 20
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->j(II)I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-gtz v4, :cond_2

    .line 25
    .line 26
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    const/16 v4, 0x2d

    .line 30
    .line 31
    if-ne v3, v4, :cond_4

    .line 32
    .line 33
    add-int/lit8 v3, v2, 0x1

    .line 34
    .line 35
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eq v3, v4, :cond_3

    .line 40
    .line 41
    return v2

    .line 42
    :cond_3
    add-int/lit8 v7, v2, 0x2

    .line 43
    .line 44
    const/4 v9, 0x4

    .line 45
    const/4 v10, 0x0

    .line 46
    const/16 v6, 0xa

    .line 47
    .line 48
    const/4 v8, 0x0

    .line 49
    move-object v5, p1

    .line 50
    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->n0(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-gez v2, :cond_1

    .line 55
    .line 56
    return v1

    .line 57
    :cond_4
    const/16 v4, 0x2f

    .line 58
    .line 59
    if-ne v3, v4, :cond_8

    .line 60
    .line 61
    add-int/lit8 v3, v2, 0x1

    .line 62
    .line 63
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    const/16 v6, 0x2a

    .line 68
    .line 69
    if-eq v5, v6, :cond_5

    .line 70
    .line 71
    return v2

    .line 72
    :cond_5
    add-int/lit8 v7, v3, 0x1

    .line 73
    .line 74
    const/4 v9, 0x4

    .line 75
    const/4 v10, 0x0

    .line 76
    const/16 v6, 0x2a

    .line 77
    .line 78
    const/4 v8, 0x0

    .line 79
    move-object v5, p1

    .line 80
    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->n0(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    if-gez v3, :cond_6

    .line 85
    .line 86
    return v1

    .line 87
    :cond_6
    add-int/lit8 v2, v3, 0x1

    .line 88
    .line 89
    if-ge v2, v0, :cond_7

    .line 90
    .line 91
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    if-ne v2, v4, :cond_5

    .line 96
    .line 97
    :cond_7
    add-int/lit8 v2, v3, 0x2

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_8
    return v2

    .line 101
    :cond_9
    return v1
.end method

.method private final d(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0x1367f

    .line 6
    .line 7
    .line 8
    if-eq v0, v1, :cond_2

    .line 9
    .line 10
    const v1, 0x1403a

    .line 11
    .line 12
    .line 13
    if-eq v0, v1, :cond_1

    .line 14
    .line 15
    const v1, 0x14fc2

    .line 16
    .line 17
    .line 18
    if-eq v0, v1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const-string v0, "WIT"

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-nez p1, :cond_3

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const-string v0, "SEL"

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-nez p1, :cond_3

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    const-string v0, "PRA"

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-eqz p1, :cond_4

    .line 46
    .line 47
    :cond_3
    const/4 p1, 0x1

    .line 48
    goto :goto_1

    .line 49
    :cond_4
    :goto_0
    const/4 p1, 0x0

    .line 50
    :goto_1
    return p1
.end method


# virtual methods
.method public final a(Lz3/d;Ljava/lang/String;)Landroidx/room/driver/d;
    .locals 2

    .line 1
    const-string v0, "db"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "sql"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p2}, Lkotlin/text/StringsKt;->n1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "toUpperCase(...)"

    .line 26
    .line 27
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v0}, Landroidx/room/driver/d$a;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-nez v0, :cond_0

    .line 35
    .line 36
    new-instance v0, Landroidx/room/driver/d$c;

    .line 37
    .line 38
    invoke-direct {v0, p1, p2}, Landroidx/room/driver/d$c;-><init>(Lz3/d;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-object v0

    .line 42
    :cond_0
    invoke-direct {p0, v0}, Landroidx/room/driver/d$a;->d(Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    new-instance v0, Landroidx/room/driver/d$b;

    .line 49
    .line 50
    invoke-direct {v0, p1, p2}, Landroidx/room/driver/d$b;-><init>(Lz3/d;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    new-instance v0, Landroidx/room/driver/d$c;

    .line 55
    .line 56
    invoke-direct {v0, p1, p2}, Landroidx/room/driver/d$c;-><init>(Lz3/d;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :goto_0
    return-object v0
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "sql"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Landroidx/room/driver/d$a;->c(Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-ltz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-le v0, v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    add-int/lit8 v1, v0, 0x3

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const-string v0, "substring(...)"

    .line 34
    .line 35
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-object p1

    .line 39
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 40
    return-object p1
.end method
