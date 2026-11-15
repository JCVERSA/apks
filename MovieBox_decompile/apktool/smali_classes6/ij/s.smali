.class public final Lij/s;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lij/s;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lij/s;

    .line 2
    .line 3
    invoke-direct {v0}, Lij/s;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lij/s;->a:Lij/s;

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


# virtual methods
.method public final a(DDDD)Ljava/lang/String;
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    :try_start_0
    new-array v11, v1, [F

    .line 4
    .line 5
    move-wide v2, p1

    .line 6
    move-wide v4, p3

    .line 7
    move-wide/from16 v6, p5

    .line 8
    .line 9
    move-wide/from16 v8, p7

    .line 10
    .line 11
    move-object v10, v11

    .line 12
    invoke-static/range {v2 .. v10}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    .line 13
    .line 14
    .line 15
    aget v2, v11, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    const/high16 v2, -0x40800000    # -1.0f

    .line 19
    .line 20
    :goto_0
    const v3, 0x3dcccccd    # 0.1f

    .line 21
    .line 22
    .line 23
    cmpg-float v3, v2, v3

    .line 24
    .line 25
    if-gez v3, :cond_0

    .line 26
    .line 27
    const-string v0, "<0.1m"

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    const/high16 v3, 0x447a0000    # 1000.0f

    .line 31
    .line 32
    cmpg-float v3, v2, v3

    .line 33
    .line 34
    const-string v4, "format(...)"

    .line 35
    .line 36
    if-gez v3, :cond_1

    .line 37
    .line 38
    sget-object v3, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    .line 39
    .line 40
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    new-array v3, v1, [Ljava/lang/Object;

    .line 45
    .line 46
    aput-object v2, v3, v0

    .line 47
    .line 48
    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const-string v1, "%.1fm"

    .line 53
    .line 54
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    sget-object v3, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    .line 63
    .line 64
    const/16 v3, 0x3e8

    .line 65
    .line 66
    int-to-float v3, v3

    .line 67
    div-float/2addr v2, v3

    .line 68
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    new-array v3, v1, [Ljava/lang/Object;

    .line 73
    .line 74
    aput-object v2, v3, v0

    .line 75
    .line 76
    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    const-string v1, "%.1fkm"

    .line 81
    .line 82
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    :goto_1
    return-object v0
.end method

.method public final b(DDDD)F
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    new-array v0, v0, [F

    .line 3
    .line 4
    move-wide v1, p1

    .line 5
    move-wide v3, p3

    .line 6
    move-wide v5, p5

    .line 7
    move-wide/from16 v7, p7

    .line 8
    .line 9
    move-object v9, v0

    .line 10
    invoke-static/range {v1 .. v9}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    aget v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    const/high16 v0, -0x40800000    # -1.0f

    .line 18
    .line 19
    :goto_0
    return v0
.end method
