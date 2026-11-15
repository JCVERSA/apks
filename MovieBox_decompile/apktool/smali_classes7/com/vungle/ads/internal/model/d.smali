.class public final Lcom/vungle/ads/internal/model/d;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/internal/model/d$c;,
        Lcom/vungle/ads/internal/model/d$b;,
        Lcom/vungle/ads/internal/model/d$a;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/vungle/ads/internal/model/d$b;


# instance fields
.field private final carrier:Ljava/lang/String;

.field private ext:Lcom/vungle/ads/internal/model/d$c;

.field private h:I

.field private ifa:Ljava/lang/String;

.field private lmt:Ljava/lang/Integer;

.field private final make:Ljava/lang/String;

.field private final model:Ljava/lang/String;

.field private final os:Ljava/lang/String;

.field private final osv:Ljava/lang/String;

.field private ua:Ljava/lang/String;

.field private w:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/vungle/ads/internal/model/d$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/vungle/ads/internal/model/d$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/vungle/ads/internal/model/d;->Companion:Lcom/vungle/ads/internal/model/d$b;

    .line 8
    .line 9
    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/vungle/ads/internal/model/d$c;Lkotlinx/serialization/internal/w1;)V
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
    .end annotation

    and-int/lit8 p13, p1, 0x77

    const/16 v0, 0x77

    if-eq v0, p13, :cond_0

    .line 1
    sget-object p13, Lcom/vungle/ads/internal/model/d$a;->INSTANCE:Lcom/vungle/ads/internal/model/d$a;

    invoke-virtual {p13}, Lcom/vungle/ads/internal/model/d$a;->getDescriptor()Lkotlinx/serialization/descriptors/f;

    move-result-object p13

    invoke-static {p1, v0, p13}, Lkotlinx/serialization/internal/m1;->a(IILkotlinx/serialization/descriptors/f;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/vungle/ads/internal/model/d;->make:Ljava/lang/String;

    iput-object p3, p0, Lcom/vungle/ads/internal/model/d;->model:Ljava/lang/String;

    iput-object p4, p0, Lcom/vungle/ads/internal/model/d;->osv:Ljava/lang/String;

    and-int/lit8 p2, p1, 0x8

    const/4 p3, 0x0

    if-nez p2, :cond_1

    iput-object p3, p0, Lcom/vungle/ads/internal/model/d;->carrier:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iput-object p5, p0, Lcom/vungle/ads/internal/model/d;->carrier:Ljava/lang/String;

    :goto_0
    iput-object p6, p0, Lcom/vungle/ads/internal/model/d;->os:Ljava/lang/String;

    iput p7, p0, Lcom/vungle/ads/internal/model/d;->w:I

    iput p8, p0, Lcom/vungle/ads/internal/model/d;->h:I

    and-int/lit16 p2, p1, 0x80

    if-nez p2, :cond_2

    iput-object p3, p0, Lcom/vungle/ads/internal/model/d;->ua:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iput-object p9, p0, Lcom/vungle/ads/internal/model/d;->ua:Ljava/lang/String;

    :goto_1
    and-int/lit16 p2, p1, 0x100

    if-nez p2, :cond_3

    iput-object p3, p0, Lcom/vungle/ads/internal/model/d;->ifa:Ljava/lang/String;

    goto :goto_2

    :cond_3
    iput-object p10, p0, Lcom/vungle/ads/internal/model/d;->ifa:Ljava/lang/String;

    :goto_2
    and-int/lit16 p2, p1, 0x200

    if-nez p2, :cond_4

    iput-object p3, p0, Lcom/vungle/ads/internal/model/d;->lmt:Ljava/lang/Integer;

    goto :goto_3

    :cond_4
    iput-object p11, p0, Lcom/vungle/ads/internal/model/d;->lmt:Ljava/lang/Integer;

    :goto_3
    and-int/lit16 p1, p1, 0x400

    if-nez p1, :cond_5

    iput-object p3, p0, Lcom/vungle/ads/internal/model/d;->ext:Lcom/vungle/ads/internal/model/d$c;

    goto :goto_4

    :cond_5
    iput-object p12, p0, Lcom/vungle/ads/internal/model/d;->ext:Lcom/vungle/ads/internal/model/d$c;

    :goto_4
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/vungle/ads/internal/model/d$c;)V
    .locals 1

    const-string v0, "make"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "model"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "osv"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "os"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/vungle/ads/internal/model/d;->make:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/vungle/ads/internal/model/d;->model:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/vungle/ads/internal/model/d;->osv:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/vungle/ads/internal/model/d;->carrier:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Lcom/vungle/ads/internal/model/d;->os:Ljava/lang/String;

    .line 8
    iput p6, p0, Lcom/vungle/ads/internal/model/d;->w:I

    .line 9
    iput p7, p0, Lcom/vungle/ads/internal/model/d;->h:I

    .line 10
    iput-object p8, p0, Lcom/vungle/ads/internal/model/d;->ua:Ljava/lang/String;

    .line 11
    iput-object p9, p0, Lcom/vungle/ads/internal/model/d;->ifa:Ljava/lang/String;

    .line 12
    iput-object p10, p0, Lcom/vungle/ads/internal/model/d;->lmt:Ljava/lang/Integer;

    .line 13
    iput-object p11, p0, Lcom/vungle/ads/internal/model/d;->ext:Lcom/vungle/ads/internal/model/d$c;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/vungle/ads/internal/model/d$c;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 15

    move/from16 v0, p12

    and-int/lit8 v1, v0, 0x8

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v7, v2

    goto :goto_0

    :cond_0
    move-object/from16 v7, p4

    :goto_0
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_1

    move-object v11, v2

    goto :goto_1

    :cond_1
    move-object/from16 v11, p8

    :goto_1
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_2

    move-object v12, v2

    goto :goto_2

    :cond_2
    move-object/from16 v12, p9

    :goto_2
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_3

    move-object v13, v2

    goto :goto_3

    :cond_3
    move-object/from16 v13, p10

    :goto_3
    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_4

    move-object v14, v2

    goto :goto_4

    :cond_4
    move-object/from16 v14, p11

    :goto_4
    move-object v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    .line 14
    invoke-direct/range {v3 .. v14}, Lcom/vungle/ads/internal/model/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/vungle/ads/internal/model/d$c;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/vungle/ads/internal/model/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/vungle/ads/internal/model/d$c;ILjava/lang/Object;)Lcom/vungle/ads/internal/model/d;
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v1, p12

    .line 3
    .line 4
    and-int/lit8 v2, v1, 0x1

    .line 5
    .line 6
    if-eqz v2, :cond_0

    .line 7
    .line 8
    iget-object v2, v0, Lcom/vungle/ads/internal/model/d;->make:Ljava/lang/String;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object v2, p1

    .line 12
    :goto_0
    and-int/lit8 v3, v1, 0x2

    .line 13
    .line 14
    if-eqz v3, :cond_1

    .line 15
    .line 16
    iget-object v3, v0, Lcom/vungle/ads/internal/model/d;->model:Ljava/lang/String;

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    move-object v3, p2

    .line 20
    :goto_1
    and-int/lit8 v4, v1, 0x4

    .line 21
    .line 22
    if-eqz v4, :cond_2

    .line 23
    .line 24
    iget-object v4, v0, Lcom/vungle/ads/internal/model/d;->osv:Ljava/lang/String;

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_2
    move-object v4, p3

    .line 28
    :goto_2
    and-int/lit8 v5, v1, 0x8

    .line 29
    .line 30
    if-eqz v5, :cond_3

    .line 31
    .line 32
    iget-object v5, v0, Lcom/vungle/ads/internal/model/d;->carrier:Ljava/lang/String;

    .line 33
    .line 34
    goto :goto_3

    .line 35
    :cond_3
    move-object/from16 v5, p4

    .line 36
    .line 37
    :goto_3
    and-int/lit8 v6, v1, 0x10

    .line 38
    .line 39
    if-eqz v6, :cond_4

    .line 40
    .line 41
    iget-object v6, v0, Lcom/vungle/ads/internal/model/d;->os:Ljava/lang/String;

    .line 42
    .line 43
    goto :goto_4

    .line 44
    :cond_4
    move-object/from16 v6, p5

    .line 45
    .line 46
    :goto_4
    and-int/lit8 v7, v1, 0x20

    .line 47
    .line 48
    if-eqz v7, :cond_5

    .line 49
    .line 50
    iget v7, v0, Lcom/vungle/ads/internal/model/d;->w:I

    .line 51
    .line 52
    goto :goto_5

    .line 53
    :cond_5
    move/from16 v7, p6

    .line 54
    .line 55
    :goto_5
    and-int/lit8 v8, v1, 0x40

    .line 56
    .line 57
    if-eqz v8, :cond_6

    .line 58
    .line 59
    iget v8, v0, Lcom/vungle/ads/internal/model/d;->h:I

    .line 60
    .line 61
    goto :goto_6

    .line 62
    :cond_6
    move/from16 v8, p7

    .line 63
    .line 64
    :goto_6
    and-int/lit16 v9, v1, 0x80

    .line 65
    .line 66
    if-eqz v9, :cond_7

    .line 67
    .line 68
    iget-object v9, v0, Lcom/vungle/ads/internal/model/d;->ua:Ljava/lang/String;

    .line 69
    .line 70
    goto :goto_7

    .line 71
    :cond_7
    move-object/from16 v9, p8

    .line 72
    .line 73
    :goto_7
    and-int/lit16 v10, v1, 0x100

    .line 74
    .line 75
    if-eqz v10, :cond_8

    .line 76
    .line 77
    iget-object v10, v0, Lcom/vungle/ads/internal/model/d;->ifa:Ljava/lang/String;

    .line 78
    .line 79
    goto :goto_8

    .line 80
    :cond_8
    move-object/from16 v10, p9

    .line 81
    .line 82
    :goto_8
    and-int/lit16 v11, v1, 0x200

    .line 83
    .line 84
    if-eqz v11, :cond_9

    .line 85
    .line 86
    iget-object v11, v0, Lcom/vungle/ads/internal/model/d;->lmt:Ljava/lang/Integer;

    .line 87
    .line 88
    goto :goto_9

    .line 89
    :cond_9
    move-object/from16 v11, p10

    .line 90
    .line 91
    :goto_9
    and-int/lit16 v1, v1, 0x400

    .line 92
    .line 93
    if-eqz v1, :cond_a

    .line 94
    .line 95
    iget-object v1, v0, Lcom/vungle/ads/internal/model/d;->ext:Lcom/vungle/ads/internal/model/d$c;

    .line 96
    .line 97
    goto :goto_a

    .line 98
    :cond_a
    move-object/from16 v1, p11

    .line 99
    .line 100
    :goto_a
    move-object p1, v2

    .line 101
    move-object p2, v3

    .line 102
    move-object p3, v4

    .line 103
    move-object/from16 p4, v5

    .line 104
    .line 105
    move-object/from16 p5, v6

    .line 106
    .line 107
    move/from16 p6, v7

    .line 108
    .line 109
    move/from16 p7, v8

    .line 110
    .line 111
    move-object/from16 p8, v9

    .line 112
    .line 113
    move-object/from16 p9, v10

    .line 114
    .line 115
    move-object/from16 p10, v11

    .line 116
    .line 117
    move-object/from16 p11, v1

    .line 118
    .line 119
    invoke-virtual/range {p0 .. p11}, Lcom/vungle/ads/internal/model/d;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/vungle/ads/internal/model/d$c;)Lcom/vungle/ads/internal/model/d;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    return-object v0
.end method

.method public static final write$Self(Lcom/vungle/ads/internal/model/d;Lsy/d;Lkotlinx/serialization/descriptors/f;)V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    const-string v0, "self"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "output"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "serialDesc"

    .line 12
    .line 13
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/vungle/ads/internal/model/d;->make:Ljava/lang/String;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-interface {p1, p2, v1, v0}, Lsy/d;->y(Lkotlinx/serialization/descriptors/f;ILjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    iget-object v1, p0, Lcom/vungle/ads/internal/model/d;->model:Ljava/lang/String;

    .line 24
    .line 25
    invoke-interface {p1, p2, v0, v1}, Lsy/d;->y(Lkotlinx/serialization/descriptors/f;ILjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const/4 v0, 0x2

    .line 29
    iget-object v1, p0, Lcom/vungle/ads/internal/model/d;->osv:Ljava/lang/String;

    .line 30
    .line 31
    invoke-interface {p1, p2, v0, v1}, Lsy/d;->y(Lkotlinx/serialization/descriptors/f;ILjava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/4 v0, 0x3

    .line 35
    invoke-interface {p1, p2, v0}, Lsy/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    iget-object v1, p0, Lcom/vungle/ads/internal/model/d;->carrier:Ljava/lang/String;

    .line 43
    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    :goto_0
    sget-object v1, Lkotlinx/serialization/internal/b2;->a:Lkotlinx/serialization/internal/b2;

    .line 47
    .line 48
    iget-object v2, p0, Lcom/vungle/ads/internal/model/d;->carrier:Ljava/lang/String;

    .line 49
    .line 50
    invoke-interface {p1, p2, v0, v1, v2}, Lsy/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    :cond_1
    const/4 v0, 0x4

    .line 54
    iget-object v1, p0, Lcom/vungle/ads/internal/model/d;->os:Ljava/lang/String;

    .line 55
    .line 56
    invoke-interface {p1, p2, v0, v1}, Lsy/d;->y(Lkotlinx/serialization/descriptors/f;ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const/4 v0, 0x5

    .line 60
    iget v1, p0, Lcom/vungle/ads/internal/model/d;->w:I

    .line 61
    .line 62
    invoke-interface {p1, p2, v0, v1}, Lsy/d;->w(Lkotlinx/serialization/descriptors/f;II)V

    .line 63
    .line 64
    .line 65
    const/4 v0, 0x6

    .line 66
    iget v1, p0, Lcom/vungle/ads/internal/model/d;->h:I

    .line 67
    .line 68
    invoke-interface {p1, p2, v0, v1}, Lsy/d;->w(Lkotlinx/serialization/descriptors/f;II)V

    .line 69
    .line 70
    .line 71
    const/4 v0, 0x7

    .line 72
    invoke-interface {p1, p2, v0}, Lsy/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_2

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_2
    iget-object v1, p0, Lcom/vungle/ads/internal/model/d;->ua:Ljava/lang/String;

    .line 80
    .line 81
    if-eqz v1, :cond_3

    .line 82
    .line 83
    :goto_1
    sget-object v1, Lkotlinx/serialization/internal/b2;->a:Lkotlinx/serialization/internal/b2;

    .line 84
    .line 85
    iget-object v2, p0, Lcom/vungle/ads/internal/model/d;->ua:Ljava/lang/String;

    .line 86
    .line 87
    invoke-interface {p1, p2, v0, v1, v2}, Lsy/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    :cond_3
    const/16 v0, 0x8

    .line 91
    .line 92
    invoke-interface {p1, p2, v0}, Lsy/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-eqz v1, :cond_4

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_4
    iget-object v1, p0, Lcom/vungle/ads/internal/model/d;->ifa:Ljava/lang/String;

    .line 100
    .line 101
    if-eqz v1, :cond_5

    .line 102
    .line 103
    :goto_2
    sget-object v1, Lkotlinx/serialization/internal/b2;->a:Lkotlinx/serialization/internal/b2;

    .line 104
    .line 105
    iget-object v2, p0, Lcom/vungle/ads/internal/model/d;->ifa:Ljava/lang/String;

    .line 106
    .line 107
    invoke-interface {p1, p2, v0, v1, v2}, Lsy/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    :cond_5
    const/16 v0, 0x9

    .line 111
    .line 112
    invoke-interface {p1, p2, v0}, Lsy/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-eqz v1, :cond_6

    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_6
    iget-object v1, p0, Lcom/vungle/ads/internal/model/d;->lmt:Ljava/lang/Integer;

    .line 120
    .line 121
    if-eqz v1, :cond_7

    .line 122
    .line 123
    :goto_3
    sget-object v1, Lkotlinx/serialization/internal/r0;->a:Lkotlinx/serialization/internal/r0;

    .line 124
    .line 125
    iget-object v2, p0, Lcom/vungle/ads/internal/model/d;->lmt:Ljava/lang/Integer;

    .line 126
    .line 127
    invoke-interface {p1, p2, v0, v1, v2}, Lsy/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    :cond_7
    const/16 v0, 0xa

    .line 131
    .line 132
    invoke-interface {p1, p2, v0}, Lsy/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    if-eqz v1, :cond_8

    .line 137
    .line 138
    goto :goto_4

    .line 139
    :cond_8
    iget-object v1, p0, Lcom/vungle/ads/internal/model/d;->ext:Lcom/vungle/ads/internal/model/d$c;

    .line 140
    .line 141
    if-eqz v1, :cond_9

    .line 142
    .line 143
    :goto_4
    sget-object v1, Lcom/vungle/ads/internal/model/d$c$a;->INSTANCE:Lcom/vungle/ads/internal/model/d$c$a;

    .line 144
    .line 145
    iget-object p0, p0, Lcom/vungle/ads/internal/model/d;->ext:Lcom/vungle/ads/internal/model/d$c;

    .line 146
    .line 147
    invoke-interface {p1, p2, v0, v1, p0}, Lsy/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    :cond_9
    return-void
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/d;->make:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component10()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/d;->lmt:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component11()Lcom/vungle/ads/internal/model/d$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/d;->ext:Lcom/vungle/ads/internal/model/d$c;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/d;->model:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/d;->osv:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/d;->carrier:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/d;->os:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component6()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/vungle/ads/internal/model/d;->w:I

    .line 2
    .line 3
    return v0
.end method

.method public final component7()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/vungle/ads/internal/model/d;->h:I

    .line 2
    .line 3
    return v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/d;->ua:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/d;->ifa:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/vungle/ads/internal/model/d$c;)Lcom/vungle/ads/internal/model/d;
    .locals 13

    .line 1
    const-string v0, "make"

    .line 2
    .line 3
    move-object v2, p1

    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "model"

    .line 8
    .line 9
    move-object v3, p2

    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v0, "osv"

    .line 14
    .line 15
    move-object/from16 v4, p3

    .line 16
    .line 17
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v0, "os"

    .line 21
    .line 22
    move-object/from16 v6, p5

    .line 23
    .line 24
    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    new-instance v0, Lcom/vungle/ads/internal/model/d;

    .line 28
    .line 29
    move-object v1, v0

    .line 30
    move-object/from16 v5, p4

    .line 31
    .line 32
    move/from16 v7, p6

    .line 33
    .line 34
    move/from16 v8, p7

    .line 35
    .line 36
    move-object/from16 v9, p8

    .line 37
    .line 38
    move-object/from16 v10, p9

    .line 39
    .line 40
    move-object/from16 v11, p10

    .line 41
    .line 42
    move-object/from16 v12, p11

    .line 43
    .line 44
    invoke-direct/range {v1 .. v12}, Lcom/vungle/ads/internal/model/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/vungle/ads/internal/model/d$c;)V

    .line 45
    .line 46
    .line 47
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/vungle/ads/internal/model/d;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/vungle/ads/internal/model/d;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/vungle/ads/internal/model/d;->make:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/vungle/ads/internal/model/d;->make:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-object v1, p0, Lcom/vungle/ads/internal/model/d;->model:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v3, p1, Lcom/vungle/ads/internal/model/d;->model:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    iget-object v1, p0, Lcom/vungle/ads/internal/model/d;->osv:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v3, p1, Lcom/vungle/ads/internal/model/d;->osv:Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_4

    .line 44
    .line 45
    return v2

    .line 46
    :cond_4
    iget-object v1, p0, Lcom/vungle/ads/internal/model/d;->carrier:Ljava/lang/String;

    .line 47
    .line 48
    iget-object v3, p1, Lcom/vungle/ads/internal/model/d;->carrier:Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_5

    .line 55
    .line 56
    return v2

    .line 57
    :cond_5
    iget-object v1, p0, Lcom/vungle/ads/internal/model/d;->os:Ljava/lang/String;

    .line 58
    .line 59
    iget-object v3, p1, Lcom/vungle/ads/internal/model/d;->os:Ljava/lang/String;

    .line 60
    .line 61
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-nez v1, :cond_6

    .line 66
    .line 67
    return v2

    .line 68
    :cond_6
    iget v1, p0, Lcom/vungle/ads/internal/model/d;->w:I

    .line 69
    .line 70
    iget v3, p1, Lcom/vungle/ads/internal/model/d;->w:I

    .line 71
    .line 72
    if-eq v1, v3, :cond_7

    .line 73
    .line 74
    return v2

    .line 75
    :cond_7
    iget v1, p0, Lcom/vungle/ads/internal/model/d;->h:I

    .line 76
    .line 77
    iget v3, p1, Lcom/vungle/ads/internal/model/d;->h:I

    .line 78
    .line 79
    if-eq v1, v3, :cond_8

    .line 80
    .line 81
    return v2

    .line 82
    :cond_8
    iget-object v1, p0, Lcom/vungle/ads/internal/model/d;->ua:Ljava/lang/String;

    .line 83
    .line 84
    iget-object v3, p1, Lcom/vungle/ads/internal/model/d;->ua:Ljava/lang/String;

    .line 85
    .line 86
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-nez v1, :cond_9

    .line 91
    .line 92
    return v2

    .line 93
    :cond_9
    iget-object v1, p0, Lcom/vungle/ads/internal/model/d;->ifa:Ljava/lang/String;

    .line 94
    .line 95
    iget-object v3, p1, Lcom/vungle/ads/internal/model/d;->ifa:Ljava/lang/String;

    .line 96
    .line 97
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-nez v1, :cond_a

    .line 102
    .line 103
    return v2

    .line 104
    :cond_a
    iget-object v1, p0, Lcom/vungle/ads/internal/model/d;->lmt:Ljava/lang/Integer;

    .line 105
    .line 106
    iget-object v3, p1, Lcom/vungle/ads/internal/model/d;->lmt:Ljava/lang/Integer;

    .line 107
    .line 108
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    if-nez v1, :cond_b

    .line 113
    .line 114
    return v2

    .line 115
    :cond_b
    iget-object v1, p0, Lcom/vungle/ads/internal/model/d;->ext:Lcom/vungle/ads/internal/model/d$c;

    .line 116
    .line 117
    iget-object p1, p1, Lcom/vungle/ads/internal/model/d;->ext:Lcom/vungle/ads/internal/model/d$c;

    .line 118
    .line 119
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    if-nez p1, :cond_c

    .line 124
    .line 125
    return v2

    .line 126
    :cond_c
    return v0
.end method

.method public final getCarrier()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/d;->carrier:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getExt()Lcom/vungle/ads/internal/model/d$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/d;->ext:Lcom/vungle/ads/internal/model/d$c;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getH()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/vungle/ads/internal/model/d;->h:I

    .line 2
    .line 3
    return v0
.end method

.method public final getIfa()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/d;->ifa:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLmt()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/d;->lmt:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMake()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/d;->make:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getModel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/d;->model:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getOs()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/d;->os:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getOsv()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/d;->osv:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getUa()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/d;->ua:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getW()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/vungle/ads/internal/model/d;->w:I

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/d;->make:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lcom/vungle/ads/internal/model/d;->model:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v0, v1

    .line 16
    mul-int/lit8 v0, v0, 0x1f

    .line 17
    .line 18
    iget-object v1, p0, Lcom/vungle/ads/internal/model/d;->osv:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    add-int/2addr v0, v1

    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    iget-object v1, p0, Lcom/vungle/ads/internal/model/d;->carrier:Ljava/lang/String;

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    if-nez v1, :cond_0

    .line 31
    .line 32
    move v1, v2

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    :goto_0
    add-int/2addr v0, v1

    .line 39
    mul-int/lit8 v0, v0, 0x1f

    .line 40
    .line 41
    iget-object v1, p0, Lcom/vungle/ads/internal/model/d;->os:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    add-int/2addr v0, v1

    .line 48
    mul-int/lit8 v0, v0, 0x1f

    .line 49
    .line 50
    iget v1, p0, Lcom/vungle/ads/internal/model/d;->w:I

    .line 51
    .line 52
    add-int/2addr v0, v1

    .line 53
    mul-int/lit8 v0, v0, 0x1f

    .line 54
    .line 55
    iget v1, p0, Lcom/vungle/ads/internal/model/d;->h:I

    .line 56
    .line 57
    add-int/2addr v0, v1

    .line 58
    mul-int/lit8 v0, v0, 0x1f

    .line 59
    .line 60
    iget-object v1, p0, Lcom/vungle/ads/internal/model/d;->ua:Ljava/lang/String;

    .line 61
    .line 62
    if-nez v1, :cond_1

    .line 63
    .line 64
    move v1, v2

    .line 65
    goto :goto_1

    .line 66
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    :goto_1
    add-int/2addr v0, v1

    .line 71
    mul-int/lit8 v0, v0, 0x1f

    .line 72
    .line 73
    iget-object v1, p0, Lcom/vungle/ads/internal/model/d;->ifa:Ljava/lang/String;

    .line 74
    .line 75
    if-nez v1, :cond_2

    .line 76
    .line 77
    move v1, v2

    .line 78
    goto :goto_2

    .line 79
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    :goto_2
    add-int/2addr v0, v1

    .line 84
    mul-int/lit8 v0, v0, 0x1f

    .line 85
    .line 86
    iget-object v1, p0, Lcom/vungle/ads/internal/model/d;->lmt:Ljava/lang/Integer;

    .line 87
    .line 88
    if-nez v1, :cond_3

    .line 89
    .line 90
    move v1, v2

    .line 91
    goto :goto_3

    .line 92
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    :goto_3
    add-int/2addr v0, v1

    .line 97
    mul-int/lit8 v0, v0, 0x1f

    .line 98
    .line 99
    iget-object v1, p0, Lcom/vungle/ads/internal/model/d;->ext:Lcom/vungle/ads/internal/model/d$c;

    .line 100
    .line 101
    if-nez v1, :cond_4

    .line 102
    .line 103
    goto :goto_4

    .line 104
    :cond_4
    invoke-virtual {v1}, Lcom/vungle/ads/internal/model/d$c;->hashCode()I

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    :goto_4
    add-int/2addr v0, v2

    .line 109
    return v0
.end method

.method public final setExt(Lcom/vungle/ads/internal/model/d$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/internal/model/d;->ext:Lcom/vungle/ads/internal/model/d$c;

    .line 2
    .line 3
    return-void
.end method

.method public final setH(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/vungle/ads/internal/model/d;->h:I

    .line 2
    .line 3
    return-void
.end method

.method public final setIfa(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/internal/model/d;->ifa:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setLmt(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/internal/model/d;->lmt:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setUa(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/internal/model/d;->ua:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setW(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/vungle/ads/internal/model/d;->w:I

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "DeviceNode(make="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/vungle/ads/internal/model/d;->make:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", model="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/vungle/ads/internal/model/d;->model:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", osv="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/vungle/ads/internal/model/d;->osv:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", carrier="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/vungle/ads/internal/model/d;->carrier:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, ", os="

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lcom/vungle/ads/internal/model/d;->os:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, ", w="

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget v1, p0, Lcom/vungle/ads/internal/model/d;->w:I

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v1, ", h="

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget v1, p0, Lcom/vungle/ads/internal/model/d;->h:I

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v1, ", ua="

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    iget-object v1, p0, Lcom/vungle/ads/internal/model/d;->ua:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v1, ", ifa="

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    iget-object v1, p0, Lcom/vungle/ads/internal/model/d;->ifa:Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v1, ", lmt="

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    iget-object v1, p0, Lcom/vungle/ads/internal/model/d;->lmt:Ljava/lang/Integer;

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v1, ", ext="

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    iget-object v1, p0, Lcom/vungle/ads/internal/model/d;->ext:Lcom/vungle/ads/internal/model/d$c;

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const/16 v1, 0x29

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    return-object v0
.end method
