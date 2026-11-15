.class public final Lsn/h;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lsn/h;

.field private static b:[Ljava/lang/Integer;

.field private static c:Lcom/bumptech/glide/util/LruCache;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lsn/h;

    .line 2
    .line 3
    invoke-direct {v0}, Lsn/h;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lsn/h;->a:Lsn/h;

    .line 7
    .line 8
    const/16 v0, 0x78

    .line 9
    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/16 v1, 0xb4

    .line 15
    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const/16 v2, 0xf0

    .line 21
    .line 22
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    const/16 v3, 0x168

    .line 27
    .line 28
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    const/16 v4, 0x21c

    .line 33
    .line 34
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    const/16 v5, 0x2d0

    .line 39
    .line 40
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    const/16 v6, 0x438

    .line 45
    .line 46
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    const/4 v7, 0x7

    .line 51
    new-array v7, v7, [Ljava/lang/Integer;

    .line 52
    .line 53
    const/4 v8, 0x0

    .line 54
    aput-object v0, v7, v8

    .line 55
    .line 56
    const/4 v0, 0x1

    .line 57
    aput-object v1, v7, v0

    .line 58
    .line 59
    const/4 v0, 0x2

    .line 60
    aput-object v2, v7, v0

    .line 61
    .line 62
    const/4 v0, 0x3

    .line 63
    aput-object v3, v7, v0

    .line 64
    .line 65
    const/4 v0, 0x4

    .line 66
    aput-object v4, v7, v0

    .line 67
    .line 68
    const/4 v0, 0x5

    .line 69
    aput-object v5, v7, v0

    .line 70
    .line 71
    const/4 v0, 0x6

    .line 72
    aput-object v6, v7, v0

    .line 73
    .line 74
    sput-object v7, Lsn/h;->b:[Ljava/lang/Integer;

    .line 75
    .line 76
    new-instance v0, Lcom/bumptech/glide/util/LruCache;

    .line 77
    .line 78
    const-wide/16 v1, 0x258

    .line 79
    .line 80
    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/util/LruCache;-><init>(J)V

    .line 81
    .line 82
    .line 83
    sput-object v0, Lsn/h;->c:Lcom/bumptech/glide/util/LruCache;

    .line 84
    .line 85
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

.method public static synthetic c(Lsn/h;Ljava/lang/String;IZZIZZILjava/lang/Object;)Ljava/lang/String;
    .locals 10

    .line 1
    and-int/lit8 v0, p8, 0x4

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move v5, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move v5, p3

    .line 9
    :goto_0
    and-int/lit8 v0, p8, 0x8

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    move v6, v1

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    move v6, p4

    .line 16
    :goto_1
    and-int/lit8 v0, p8, 0x10

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    move v7, v1

    .line 22
    goto :goto_2

    .line 23
    :cond_2
    move v7, p5

    .line 24
    :goto_2
    and-int/lit8 v0, p8, 0x20

    .line 25
    .line 26
    if-eqz v0, :cond_3

    .line 27
    .line 28
    move v8, v1

    .line 29
    goto :goto_3

    .line 30
    :cond_3
    move/from16 v8, p6

    .line 31
    .line 32
    :goto_3
    and-int/lit8 v0, p8, 0x40

    .line 33
    .line 34
    if-eqz v0, :cond_4

    .line 35
    .line 36
    move v9, v1

    .line 37
    goto :goto_4

    .line 38
    :cond_4
    move/from16 v9, p7

    .line 39
    .line 40
    :goto_4
    move-object v2, p0

    .line 41
    move-object v3, p1

    .line 42
    move v4, p2

    .line 43
    invoke-virtual/range {v2 .. v9}, Lsn/h;->b(Ljava/lang/String;IZZIZZ)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    return-object v0
.end method

.method private final d(I)I
    .locals 5

    .line 1
    sget-object v0, Lsn/h;->b:[Ljava/lang/Integer;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/collections/ArraysKt;->n0([Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    sget-object v1, Lsn/h;->b:[Ljava/lang/Integer;

    .line 14
    .line 15
    array-length v2, v1

    .line 16
    const/4 v3, 0x0

    .line 17
    :goto_0
    if-ge v3, v2, :cond_1

    .line 18
    .line 19
    aget-object v4, v1, v3

    .line 20
    .line 21
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-gt p1, v4, :cond_0

    .line 26
    .line 27
    move v0, v4

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    :goto_1
    return v0
.end method

.method private final e(Ljava/lang/String;)Z
    .locals 4

    .line 1
    const-string v0, "?x-oss-process=image"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x2

    .line 5
    const/4 v3, 0x0

    .line 6
    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const-string v0, "x-server-image=1"

    .line 13
    .line 14
    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    :cond_0
    const/4 v1, 0x1

    .line 21
    :cond_1
    return v1
.end method


# virtual methods
.method public final a(Ljava/lang/String;IZZIZ)Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lsn/h;->e(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const-string p1, ""

    .line 13
    .line 14
    return-object p1

    .line 15
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const/4 v1, 0x2

    .line 21
    const/4 v2, 0x0

    .line 22
    const-string v3, "?"

    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    invoke-static {p1, v3, v4, v1, v2}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    const-string p1, "&x-oss-process=image"

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const-string p1, "?x-oss-process=image"

    .line 38
    .line 39
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    :goto_0
    const-string p1, "/resize,w_"

    .line 43
    .line 44
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    if-eqz p6, :cond_2

    .line 51
    .line 52
    const-string p1, ",h_"

    .line 53
    .line 54
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    :cond_2
    if-eqz p3, :cond_3

    .line 61
    .line 62
    const-string p1, "/format,webp"

    .line 63
    .line 64
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    :cond_3
    if-eqz p4, :cond_4

    .line 68
    .line 69
    const-string p1, "/quality,Q_50"

    .line 70
    .line 71
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    const-string p2, "toString(...)"

    .line 79
    .line 80
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    return-object p1
.end method

.method public final b(Ljava/lang/String;IZZIZZ)Ljava/lang/String;
    .locals 7

    .line 1
    const-string v2, "url"

    .line 2
    .line 3
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lsn/h;->e(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    return-object p1

    .line 13
    :cond_0
    invoke-direct {p0, p2}, Lsn/h;->d(I)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    sget-object v3, Lsn/h;->c:Lcom/bumptech/glide/util/LruCache;

    .line 18
    .line 19
    invoke-virtual {v3, p1}, Lcom/bumptech/glide/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    check-cast v3, Ljava/lang/Integer;

    .line 24
    .line 25
    if-eqz v3, :cond_1

    .line 26
    .line 27
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 v3, 0x0

    .line 33
    :goto_0
    if-lt v3, v2, :cond_2

    .line 34
    .line 35
    move v2, v3

    .line 36
    :cond_2
    int-to-float v4, v2

    .line 37
    const/high16 v5, 0x3f800000    # 1.0f

    .line 38
    .line 39
    mul-float/2addr v4, v5

    .line 40
    int-to-float v0, p2

    .line 41
    div-float/2addr v4, v0

    .line 42
    int-to-float v0, p5

    .line 43
    mul-float/2addr v4, v0

    .line 44
    float-to-int v5, v4

    .line 45
    if-eq v3, v2, :cond_3

    .line 46
    .line 47
    if-nez p7, :cond_3

    .line 48
    .line 49
    sget-object v0, Lsn/h;->c:Lcom/bumptech/glide/util/LruCache;

    .line 50
    .line 51
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v0, p1, v3}, Lcom/bumptech/glide/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    :cond_3
    move-object v0, p0

    .line 59
    move-object v1, p1

    .line 60
    move v3, p3

    .line 61
    move v4, p4

    .line 62
    move v6, p6

    .line 63
    invoke-virtual/range {v0 .. v6}, Lsn/h;->a(Ljava/lang/String;IZZIZ)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    return-object v0
.end method
