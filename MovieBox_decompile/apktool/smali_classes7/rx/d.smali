.class public final Lrx/d;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/d$b;,
        Lrx/d$a;
    }
.end annotation


# static fields
.field public static final Companion:Lrx/d$b;


# instance fields
.field private earningsByPlacementUSD:Ljava/lang/Float;

.field private isUserAPurchaser:Ljava/lang/Boolean;

.field private isUserASubscriber:Ljava/lang/Boolean;

.field private last30DaysMeanSpendUSD:Ljava/lang/Float;

.field private last30DaysMedianSpendUSD:Ljava/lang/Float;

.field private last30DaysPlacementFillRate:Ljava/lang/Float;

.field private last30DaysTotalSpendUSD:Ljava/lang/Float;

.field private last30DaysUserLtvUSD:Ljava/lang/Float;

.field private last30DaysUserPltvUSD:Ljava/lang/Float;

.field private last7DaysMeanSpendUSD:Ljava/lang/Float;

.field private last7DaysMedianSpendUSD:Ljava/lang/Float;

.field private last7DaysPlacementFillRate:Ljava/lang/Float;

.field private last7DaysTotalSpendUSD:Ljava/lang/Float;

.field private last7DaysUserLtvUSD:Ljava/lang/Float;

.field private last7DaysUserPltvUSD:Ljava/lang/Float;

.field private topNAdomain:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private totalEarningsUSD:Ljava/lang/Float;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lrx/d$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lrx/d$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lrx/d;->Companion:Lrx/d$b;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Float;Ljava/lang/Float;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Lkotlinx/serialization/internal/w1;)V
    .locals 4
    .annotation runtime Lkotlin/Deprecated;
    .end annotation

    move-object v0, p0

    move v1, p1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    if-nez v2, :cond_0

    iput-object v3, v0, Lrx/d;->totalEarningsUSD:Ljava/lang/Float;

    goto :goto_0

    :cond_0
    move-object v2, p2

    iput-object v2, v0, Lrx/d;->totalEarningsUSD:Ljava/lang/Float;

    :goto_0
    and-int/lit8 v2, v1, 0x2

    if-nez v2, :cond_1

    iput-object v3, v0, Lrx/d;->earningsByPlacementUSD:Ljava/lang/Float;

    goto :goto_1

    :cond_1
    move-object v2, p3

    iput-object v2, v0, Lrx/d;->earningsByPlacementUSD:Ljava/lang/Float;

    :goto_1
    and-int/lit8 v2, v1, 0x4

    if-nez v2, :cond_2

    iput-object v3, v0, Lrx/d;->topNAdomain:Ljava/util/List;

    goto :goto_2

    :cond_2
    move-object v2, p4

    iput-object v2, v0, Lrx/d;->topNAdomain:Ljava/util/List;

    :goto_2
    and-int/lit8 v2, v1, 0x8

    if-nez v2, :cond_3

    iput-object v3, v0, Lrx/d;->isUserAPurchaser:Ljava/lang/Boolean;

    goto :goto_3

    :cond_3
    move-object v2, p5

    iput-object v2, v0, Lrx/d;->isUserAPurchaser:Ljava/lang/Boolean;

    :goto_3
    and-int/lit8 v2, v1, 0x10

    if-nez v2, :cond_4

    iput-object v3, v0, Lrx/d;->isUserASubscriber:Ljava/lang/Boolean;

    goto :goto_4

    :cond_4
    move-object v2, p6

    iput-object v2, v0, Lrx/d;->isUserASubscriber:Ljava/lang/Boolean;

    :goto_4
    and-int/lit8 v2, v1, 0x20

    if-nez v2, :cond_5

    iput-object v3, v0, Lrx/d;->last7DaysTotalSpendUSD:Ljava/lang/Float;

    goto :goto_5

    :cond_5
    move-object v2, p7

    iput-object v2, v0, Lrx/d;->last7DaysTotalSpendUSD:Ljava/lang/Float;

    :goto_5
    and-int/lit8 v2, v1, 0x40

    if-nez v2, :cond_6

    iput-object v3, v0, Lrx/d;->last7DaysMedianSpendUSD:Ljava/lang/Float;

    goto :goto_6

    :cond_6
    move-object v2, p8

    iput-object v2, v0, Lrx/d;->last7DaysMedianSpendUSD:Ljava/lang/Float;

    :goto_6
    and-int/lit16 v2, v1, 0x80

    if-nez v2, :cond_7

    iput-object v3, v0, Lrx/d;->last7DaysMeanSpendUSD:Ljava/lang/Float;

    goto :goto_7

    :cond_7
    move-object v2, p9

    iput-object v2, v0, Lrx/d;->last7DaysMeanSpendUSD:Ljava/lang/Float;

    :goto_7
    and-int/lit16 v2, v1, 0x100

    if-nez v2, :cond_8

    iput-object v3, v0, Lrx/d;->last30DaysTotalSpendUSD:Ljava/lang/Float;

    goto :goto_8

    :cond_8
    move-object v2, p10

    iput-object v2, v0, Lrx/d;->last30DaysTotalSpendUSD:Ljava/lang/Float;

    :goto_8
    and-int/lit16 v2, v1, 0x200

    if-nez v2, :cond_9

    iput-object v3, v0, Lrx/d;->last30DaysMedianSpendUSD:Ljava/lang/Float;

    goto :goto_9

    :cond_9
    move-object v2, p11

    iput-object v2, v0, Lrx/d;->last30DaysMedianSpendUSD:Ljava/lang/Float;

    :goto_9
    and-int/lit16 v2, v1, 0x400

    if-nez v2, :cond_a

    iput-object v3, v0, Lrx/d;->last30DaysMeanSpendUSD:Ljava/lang/Float;

    goto :goto_a

    :cond_a
    move-object/from16 v2, p12

    iput-object v2, v0, Lrx/d;->last30DaysMeanSpendUSD:Ljava/lang/Float;

    :goto_a
    and-int/lit16 v2, v1, 0x800

    if-nez v2, :cond_b

    iput-object v3, v0, Lrx/d;->last7DaysUserPltvUSD:Ljava/lang/Float;

    goto :goto_b

    :cond_b
    move-object/from16 v2, p13

    iput-object v2, v0, Lrx/d;->last7DaysUserPltvUSD:Ljava/lang/Float;

    :goto_b
    and-int/lit16 v2, v1, 0x1000

    if-nez v2, :cond_c

    iput-object v3, v0, Lrx/d;->last7DaysUserLtvUSD:Ljava/lang/Float;

    goto :goto_c

    :cond_c
    move-object/from16 v2, p14

    iput-object v2, v0, Lrx/d;->last7DaysUserLtvUSD:Ljava/lang/Float;

    :goto_c
    and-int/lit16 v2, v1, 0x2000

    if-nez v2, :cond_d

    iput-object v3, v0, Lrx/d;->last30DaysUserPltvUSD:Ljava/lang/Float;

    goto :goto_d

    :cond_d
    move-object/from16 v2, p15

    iput-object v2, v0, Lrx/d;->last30DaysUserPltvUSD:Ljava/lang/Float;

    :goto_d
    and-int/lit16 v2, v1, 0x4000

    if-nez v2, :cond_e

    iput-object v3, v0, Lrx/d;->last30DaysUserLtvUSD:Ljava/lang/Float;

    goto :goto_e

    :cond_e
    move-object/from16 v2, p16

    iput-object v2, v0, Lrx/d;->last30DaysUserLtvUSD:Ljava/lang/Float;

    :goto_e
    const v2, 0x8000

    and-int/2addr v2, v1

    if-nez v2, :cond_f

    iput-object v3, v0, Lrx/d;->last7DaysPlacementFillRate:Ljava/lang/Float;

    goto :goto_f

    :cond_f
    move-object/from16 v2, p17

    iput-object v2, v0, Lrx/d;->last7DaysPlacementFillRate:Ljava/lang/Float;

    :goto_f
    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-nez v1, :cond_10

    iput-object v3, v0, Lrx/d;->last30DaysPlacementFillRate:Ljava/lang/Float;

    goto :goto_10

    :cond_10
    move-object/from16 v1, p18

    iput-object v1, v0, Lrx/d;->last30DaysPlacementFillRate:Ljava/lang/Float;

    :goto_10
    return-void
.end method

.method private static synthetic getEarningsByPlacementUSD$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method private static synthetic getLast30DaysMeanSpendUSD$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method private static synthetic getLast30DaysMedianSpendUSD$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method private static synthetic getLast30DaysPlacementFillRate$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method private static synthetic getLast30DaysTotalSpendUSD$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method private static synthetic getLast30DaysUserLtvUSD$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method private static synthetic getLast30DaysUserPltvUSD$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method private static synthetic getLast7DaysMeanSpendUSD$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method private static synthetic getLast7DaysMedianSpendUSD$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method private static synthetic getLast7DaysPlacementFillRate$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method private static synthetic getLast7DaysTotalSpendUSD$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method private static synthetic getLast7DaysUserLtvUSD$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method private static synthetic getLast7DaysUserPltvUSD$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method private static synthetic getTopNAdomain$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method private static synthetic getTotalEarningsUSD$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method private static synthetic isUserAPurchaser$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method private static synthetic isUserASubscriber$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static final write$Self(Lrx/d;Lsy/d;Lkotlinx/serialization/descriptors/f;)V
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
    const/4 v0, 0x0

    .line 17
    invoke-interface {p1, p2, v0}, Lsy/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v1, p0, Lrx/d;->totalEarningsUSD:Ljava/lang/Float;

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    :goto_0
    sget-object v1, Lkotlinx/serialization/internal/h0;->a:Lkotlinx/serialization/internal/h0;

    .line 29
    .line 30
    iget-object v2, p0, Lrx/d;->totalEarningsUSD:Ljava/lang/Float;

    .line 31
    .line 32
    invoke-interface {p1, p2, v0, v1, v2}, Lsy/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    const/4 v0, 0x1

    .line 36
    invoke-interface {p1, p2, v0}, Lsy/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    iget-object v1, p0, Lrx/d;->earningsByPlacementUSD:Ljava/lang/Float;

    .line 44
    .line 45
    if-eqz v1, :cond_3

    .line 46
    .line 47
    :goto_1
    sget-object v1, Lkotlinx/serialization/internal/h0;->a:Lkotlinx/serialization/internal/h0;

    .line 48
    .line 49
    iget-object v2, p0, Lrx/d;->earningsByPlacementUSD:Ljava/lang/Float;

    .line 50
    .line 51
    invoke-interface {p1, p2, v0, v1, v2}, Lsy/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    :cond_3
    const/4 v0, 0x2

    .line 55
    invoke-interface {p1, p2, v0}, Lsy/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_4

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_4
    iget-object v1, p0, Lrx/d;->topNAdomain:Ljava/util/List;

    .line 63
    .line 64
    if-eqz v1, :cond_5

    .line 65
    .line 66
    :goto_2
    new-instance v1, Lkotlinx/serialization/internal/f;

    .line 67
    .line 68
    sget-object v2, Lkotlinx/serialization/internal/b2;->a:Lkotlinx/serialization/internal/b2;

    .line 69
    .line 70
    invoke-direct {v1, v2}, Lkotlinx/serialization/internal/f;-><init>(Lkotlinx/serialization/b;)V

    .line 71
    .line 72
    .line 73
    iget-object v2, p0, Lrx/d;->topNAdomain:Ljava/util/List;

    .line 74
    .line 75
    invoke-interface {p1, p2, v0, v1, v2}, Lsy/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    :cond_5
    const/4 v0, 0x3

    .line 79
    invoke-interface {p1, p2, v0}, Lsy/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-eqz v1, :cond_6

    .line 84
    .line 85
    goto :goto_3

    .line 86
    :cond_6
    iget-object v1, p0, Lrx/d;->isUserAPurchaser:Ljava/lang/Boolean;

    .line 87
    .line 88
    if-eqz v1, :cond_7

    .line 89
    .line 90
    :goto_3
    sget-object v1, Lkotlinx/serialization/internal/i;->a:Lkotlinx/serialization/internal/i;

    .line 91
    .line 92
    iget-object v2, p0, Lrx/d;->isUserAPurchaser:Ljava/lang/Boolean;

    .line 93
    .line 94
    invoke-interface {p1, p2, v0, v1, v2}, Lsy/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    :cond_7
    const/4 v0, 0x4

    .line 98
    invoke-interface {p1, p2, v0}, Lsy/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    if-eqz v1, :cond_8

    .line 103
    .line 104
    goto :goto_4

    .line 105
    :cond_8
    iget-object v1, p0, Lrx/d;->isUserASubscriber:Ljava/lang/Boolean;

    .line 106
    .line 107
    if-eqz v1, :cond_9

    .line 108
    .line 109
    :goto_4
    sget-object v1, Lkotlinx/serialization/internal/i;->a:Lkotlinx/serialization/internal/i;

    .line 110
    .line 111
    iget-object v2, p0, Lrx/d;->isUserASubscriber:Ljava/lang/Boolean;

    .line 112
    .line 113
    invoke-interface {p1, p2, v0, v1, v2}, Lsy/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    :cond_9
    const/4 v0, 0x5

    .line 117
    invoke-interface {p1, p2, v0}, Lsy/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    if-eqz v1, :cond_a

    .line 122
    .line 123
    goto :goto_5

    .line 124
    :cond_a
    iget-object v1, p0, Lrx/d;->last7DaysTotalSpendUSD:Ljava/lang/Float;

    .line 125
    .line 126
    if-eqz v1, :cond_b

    .line 127
    .line 128
    :goto_5
    sget-object v1, Lkotlinx/serialization/internal/h0;->a:Lkotlinx/serialization/internal/h0;

    .line 129
    .line 130
    iget-object v2, p0, Lrx/d;->last7DaysTotalSpendUSD:Ljava/lang/Float;

    .line 131
    .line 132
    invoke-interface {p1, p2, v0, v1, v2}, Lsy/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    :cond_b
    const/4 v0, 0x6

    .line 136
    invoke-interface {p1, p2, v0}, Lsy/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    if-eqz v1, :cond_c

    .line 141
    .line 142
    goto :goto_6

    .line 143
    :cond_c
    iget-object v1, p0, Lrx/d;->last7DaysMedianSpendUSD:Ljava/lang/Float;

    .line 144
    .line 145
    if-eqz v1, :cond_d

    .line 146
    .line 147
    :goto_6
    sget-object v1, Lkotlinx/serialization/internal/h0;->a:Lkotlinx/serialization/internal/h0;

    .line 148
    .line 149
    iget-object v2, p0, Lrx/d;->last7DaysMedianSpendUSD:Ljava/lang/Float;

    .line 150
    .line 151
    invoke-interface {p1, p2, v0, v1, v2}, Lsy/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    :cond_d
    const/4 v0, 0x7

    .line 155
    invoke-interface {p1, p2, v0}, Lsy/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    if-eqz v1, :cond_e

    .line 160
    .line 161
    goto :goto_7

    .line 162
    :cond_e
    iget-object v1, p0, Lrx/d;->last7DaysMeanSpendUSD:Ljava/lang/Float;

    .line 163
    .line 164
    if-eqz v1, :cond_f

    .line 165
    .line 166
    :goto_7
    sget-object v1, Lkotlinx/serialization/internal/h0;->a:Lkotlinx/serialization/internal/h0;

    .line 167
    .line 168
    iget-object v2, p0, Lrx/d;->last7DaysMeanSpendUSD:Ljava/lang/Float;

    .line 169
    .line 170
    invoke-interface {p1, p2, v0, v1, v2}, Lsy/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    :cond_f
    const/16 v0, 0x8

    .line 174
    .line 175
    invoke-interface {p1, p2, v0}, Lsy/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    if-eqz v1, :cond_10

    .line 180
    .line 181
    goto :goto_8

    .line 182
    :cond_10
    iget-object v1, p0, Lrx/d;->last30DaysTotalSpendUSD:Ljava/lang/Float;

    .line 183
    .line 184
    if-eqz v1, :cond_11

    .line 185
    .line 186
    :goto_8
    sget-object v1, Lkotlinx/serialization/internal/h0;->a:Lkotlinx/serialization/internal/h0;

    .line 187
    .line 188
    iget-object v2, p0, Lrx/d;->last30DaysTotalSpendUSD:Ljava/lang/Float;

    .line 189
    .line 190
    invoke-interface {p1, p2, v0, v1, v2}, Lsy/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    :cond_11
    const/16 v0, 0x9

    .line 194
    .line 195
    invoke-interface {p1, p2, v0}, Lsy/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    .line 196
    .line 197
    .line 198
    move-result v1

    .line 199
    if-eqz v1, :cond_12

    .line 200
    .line 201
    goto :goto_9

    .line 202
    :cond_12
    iget-object v1, p0, Lrx/d;->last30DaysMedianSpendUSD:Ljava/lang/Float;

    .line 203
    .line 204
    if-eqz v1, :cond_13

    .line 205
    .line 206
    :goto_9
    sget-object v1, Lkotlinx/serialization/internal/h0;->a:Lkotlinx/serialization/internal/h0;

    .line 207
    .line 208
    iget-object v2, p0, Lrx/d;->last30DaysMedianSpendUSD:Ljava/lang/Float;

    .line 209
    .line 210
    invoke-interface {p1, p2, v0, v1, v2}, Lsy/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    .line 211
    .line 212
    .line 213
    :cond_13
    const/16 v0, 0xa

    .line 214
    .line 215
    invoke-interface {p1, p2, v0}, Lsy/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    .line 216
    .line 217
    .line 218
    move-result v1

    .line 219
    if-eqz v1, :cond_14

    .line 220
    .line 221
    goto :goto_a

    .line 222
    :cond_14
    iget-object v1, p0, Lrx/d;->last30DaysMeanSpendUSD:Ljava/lang/Float;

    .line 223
    .line 224
    if-eqz v1, :cond_15

    .line 225
    .line 226
    :goto_a
    sget-object v1, Lkotlinx/serialization/internal/h0;->a:Lkotlinx/serialization/internal/h0;

    .line 227
    .line 228
    iget-object v2, p0, Lrx/d;->last30DaysMeanSpendUSD:Ljava/lang/Float;

    .line 229
    .line 230
    invoke-interface {p1, p2, v0, v1, v2}, Lsy/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    .line 231
    .line 232
    .line 233
    :cond_15
    const/16 v0, 0xb

    .line 234
    .line 235
    invoke-interface {p1, p2, v0}, Lsy/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    .line 236
    .line 237
    .line 238
    move-result v1

    .line 239
    if-eqz v1, :cond_16

    .line 240
    .line 241
    goto :goto_b

    .line 242
    :cond_16
    iget-object v1, p0, Lrx/d;->last7DaysUserPltvUSD:Ljava/lang/Float;

    .line 243
    .line 244
    if-eqz v1, :cond_17

    .line 245
    .line 246
    :goto_b
    sget-object v1, Lkotlinx/serialization/internal/h0;->a:Lkotlinx/serialization/internal/h0;

    .line 247
    .line 248
    iget-object v2, p0, Lrx/d;->last7DaysUserPltvUSD:Ljava/lang/Float;

    .line 249
    .line 250
    invoke-interface {p1, p2, v0, v1, v2}, Lsy/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    .line 251
    .line 252
    .line 253
    :cond_17
    const/16 v0, 0xc

    .line 254
    .line 255
    invoke-interface {p1, p2, v0}, Lsy/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    .line 256
    .line 257
    .line 258
    move-result v1

    .line 259
    if-eqz v1, :cond_18

    .line 260
    .line 261
    goto :goto_c

    .line 262
    :cond_18
    iget-object v1, p0, Lrx/d;->last7DaysUserLtvUSD:Ljava/lang/Float;

    .line 263
    .line 264
    if-eqz v1, :cond_19

    .line 265
    .line 266
    :goto_c
    sget-object v1, Lkotlinx/serialization/internal/h0;->a:Lkotlinx/serialization/internal/h0;

    .line 267
    .line 268
    iget-object v2, p0, Lrx/d;->last7DaysUserLtvUSD:Ljava/lang/Float;

    .line 269
    .line 270
    invoke-interface {p1, p2, v0, v1, v2}, Lsy/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    .line 271
    .line 272
    .line 273
    :cond_19
    const/16 v0, 0xd

    .line 274
    .line 275
    invoke-interface {p1, p2, v0}, Lsy/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    .line 276
    .line 277
    .line 278
    move-result v1

    .line 279
    if-eqz v1, :cond_1a

    .line 280
    .line 281
    goto :goto_d

    .line 282
    :cond_1a
    iget-object v1, p0, Lrx/d;->last30DaysUserPltvUSD:Ljava/lang/Float;

    .line 283
    .line 284
    if-eqz v1, :cond_1b

    .line 285
    .line 286
    :goto_d
    sget-object v1, Lkotlinx/serialization/internal/h0;->a:Lkotlinx/serialization/internal/h0;

    .line 287
    .line 288
    iget-object v2, p0, Lrx/d;->last30DaysUserPltvUSD:Ljava/lang/Float;

    .line 289
    .line 290
    invoke-interface {p1, p2, v0, v1, v2}, Lsy/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    .line 291
    .line 292
    .line 293
    :cond_1b
    const/16 v0, 0xe

    .line 294
    .line 295
    invoke-interface {p1, p2, v0}, Lsy/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    .line 296
    .line 297
    .line 298
    move-result v1

    .line 299
    if-eqz v1, :cond_1c

    .line 300
    .line 301
    goto :goto_e

    .line 302
    :cond_1c
    iget-object v1, p0, Lrx/d;->last30DaysUserLtvUSD:Ljava/lang/Float;

    .line 303
    .line 304
    if-eqz v1, :cond_1d

    .line 305
    .line 306
    :goto_e
    sget-object v1, Lkotlinx/serialization/internal/h0;->a:Lkotlinx/serialization/internal/h0;

    .line 307
    .line 308
    iget-object v2, p0, Lrx/d;->last30DaysUserLtvUSD:Ljava/lang/Float;

    .line 309
    .line 310
    invoke-interface {p1, p2, v0, v1, v2}, Lsy/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    .line 311
    .line 312
    .line 313
    :cond_1d
    const/16 v0, 0xf

    .line 314
    .line 315
    invoke-interface {p1, p2, v0}, Lsy/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    .line 316
    .line 317
    .line 318
    move-result v1

    .line 319
    if-eqz v1, :cond_1e

    .line 320
    .line 321
    goto :goto_f

    .line 322
    :cond_1e
    iget-object v1, p0, Lrx/d;->last7DaysPlacementFillRate:Ljava/lang/Float;

    .line 323
    .line 324
    if-eqz v1, :cond_1f

    .line 325
    .line 326
    :goto_f
    sget-object v1, Lkotlinx/serialization/internal/h0;->a:Lkotlinx/serialization/internal/h0;

    .line 327
    .line 328
    iget-object v2, p0, Lrx/d;->last7DaysPlacementFillRate:Ljava/lang/Float;

    .line 329
    .line 330
    invoke-interface {p1, p2, v0, v1, v2}, Lsy/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    .line 331
    .line 332
    .line 333
    :cond_1f
    const/16 v0, 0x10

    .line 334
    .line 335
    invoke-interface {p1, p2, v0}, Lsy/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    .line 336
    .line 337
    .line 338
    move-result v1

    .line 339
    if-eqz v1, :cond_20

    .line 340
    .line 341
    goto :goto_10

    .line 342
    :cond_20
    iget-object v1, p0, Lrx/d;->last30DaysPlacementFillRate:Ljava/lang/Float;

    .line 343
    .line 344
    if-eqz v1, :cond_21

    .line 345
    .line 346
    :goto_10
    sget-object v1, Lkotlinx/serialization/internal/h0;->a:Lkotlinx/serialization/internal/h0;

    .line 347
    .line 348
    iget-object p0, p0, Lrx/d;->last30DaysPlacementFillRate:Ljava/lang/Float;

    .line 349
    .line 350
    invoke-interface {p1, p2, v0, v1, p0}, Lsy/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    .line 351
    .line 352
    .line 353
    :cond_21
    return-void
.end method


# virtual methods
.method public final setEarningsByPlacement(F)Lrx/d;
    .locals 6

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/util/q;->INSTANCE:Lcom/vungle/ads/internal/util/q;

    .line 2
    .line 3
    const/4 v4, 0x4

    .line 4
    const/4 v5, 0x0

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    move v1, p1

    .line 8
    invoke-static/range {v0 .. v5}, Lcom/vungle/ads/internal/util/q;->isInRange$default(Lcom/vungle/ads/internal/util/q;FFFILjava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lrx/d;->earningsByPlacementUSD:Ljava/lang/Float;

    .line 19
    .line 20
    :cond_0
    return-object p0
.end method

.method public final setIsUserAPurchaser(Z)Lrx/d;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lrx/d;->isUserAPurchaser:Ljava/lang/Boolean;

    .line 6
    .line 7
    return-object p0
.end method

.method public final setIsUserASubscriber(Z)Lrx/d;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lrx/d;->isUserASubscriber:Ljava/lang/Boolean;

    .line 6
    .line 7
    return-object p0
.end method

.method public final setLast30DaysMeanSpendUsd(F)Lrx/d;
    .locals 6

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/util/q;->INSTANCE:Lcom/vungle/ads/internal/util/q;

    .line 2
    .line 3
    const/4 v4, 0x4

    .line 4
    const/4 v5, 0x0

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    move v1, p1

    .line 8
    invoke-static/range {v0 .. v5}, Lcom/vungle/ads/internal/util/q;->isInRange$default(Lcom/vungle/ads/internal/util/q;FFFILjava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lrx/d;->last30DaysMeanSpendUSD:Ljava/lang/Float;

    .line 19
    .line 20
    :cond_0
    return-object p0
.end method

.method public final setLast30DaysMedianSpendUsd(F)Lrx/d;
    .locals 6

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/util/q;->INSTANCE:Lcom/vungle/ads/internal/util/q;

    .line 2
    .line 3
    const/4 v4, 0x4

    .line 4
    const/4 v5, 0x0

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    move v1, p1

    .line 8
    invoke-static/range {v0 .. v5}, Lcom/vungle/ads/internal/util/q;->isInRange$default(Lcom/vungle/ads/internal/util/q;FFFILjava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lrx/d;->last30DaysMedianSpendUSD:Ljava/lang/Float;

    .line 19
    .line 20
    :cond_0
    return-object p0
.end method

.method public final setLast30DaysPlacementFillRate(F)Lrx/d;
    .locals 3

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/util/q;->INSTANCE:Lcom/vungle/ads/internal/util/q;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/high16 v2, 0x42c80000    # 100.0f

    .line 5
    .line 6
    invoke-virtual {v0, p1, v1, v2}, Lcom/vungle/ads/internal/util/q;->isInRange(FFF)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lrx/d;->last30DaysPlacementFillRate:Ljava/lang/Float;

    .line 17
    .line 18
    :cond_0
    return-object p0
.end method

.method public final setLast30DaysTotalSpendUsd(F)Lrx/d;
    .locals 6

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/util/q;->INSTANCE:Lcom/vungle/ads/internal/util/q;

    .line 2
    .line 3
    const/4 v4, 0x4

    .line 4
    const/4 v5, 0x0

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    move v1, p1

    .line 8
    invoke-static/range {v0 .. v5}, Lcom/vungle/ads/internal/util/q;->isInRange$default(Lcom/vungle/ads/internal/util/q;FFFILjava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lrx/d;->last30DaysTotalSpendUSD:Ljava/lang/Float;

    .line 19
    .line 20
    :cond_0
    return-object p0
.end method

.method public final setLast30DaysUserLtvUsd(F)Lrx/d;
    .locals 6

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/util/q;->INSTANCE:Lcom/vungle/ads/internal/util/q;

    .line 2
    .line 3
    const/4 v4, 0x4

    .line 4
    const/4 v5, 0x0

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    move v1, p1

    .line 8
    invoke-static/range {v0 .. v5}, Lcom/vungle/ads/internal/util/q;->isInRange$default(Lcom/vungle/ads/internal/util/q;FFFILjava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lrx/d;->last30DaysUserLtvUSD:Ljava/lang/Float;

    .line 19
    .line 20
    :cond_0
    return-object p0
.end method

.method public final setLast30DaysUserPltvUsd(F)Lrx/d;
    .locals 6

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/util/q;->INSTANCE:Lcom/vungle/ads/internal/util/q;

    .line 2
    .line 3
    const/4 v4, 0x4

    .line 4
    const/4 v5, 0x0

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    move v1, p1

    .line 8
    invoke-static/range {v0 .. v5}, Lcom/vungle/ads/internal/util/q;->isInRange$default(Lcom/vungle/ads/internal/util/q;FFFILjava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lrx/d;->last30DaysUserPltvUSD:Ljava/lang/Float;

    .line 19
    .line 20
    :cond_0
    return-object p0
.end method

.method public final setLast7DaysMeanSpendUsd(F)Lrx/d;
    .locals 6

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/util/q;->INSTANCE:Lcom/vungle/ads/internal/util/q;

    .line 2
    .line 3
    const/4 v4, 0x4

    .line 4
    const/4 v5, 0x0

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    move v1, p1

    .line 8
    invoke-static/range {v0 .. v5}, Lcom/vungle/ads/internal/util/q;->isInRange$default(Lcom/vungle/ads/internal/util/q;FFFILjava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lrx/d;->last7DaysMeanSpendUSD:Ljava/lang/Float;

    .line 19
    .line 20
    :cond_0
    return-object p0
.end method

.method public final setLast7DaysMedianSpendUsd(F)Lrx/d;
    .locals 6

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/util/q;->INSTANCE:Lcom/vungle/ads/internal/util/q;

    .line 2
    .line 3
    const/4 v4, 0x4

    .line 4
    const/4 v5, 0x0

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    move v1, p1

    .line 8
    invoke-static/range {v0 .. v5}, Lcom/vungle/ads/internal/util/q;->isInRange$default(Lcom/vungle/ads/internal/util/q;FFFILjava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lrx/d;->last7DaysMedianSpendUSD:Ljava/lang/Float;

    .line 19
    .line 20
    :cond_0
    return-object p0
.end method

.method public final setLast7DaysPlacementFillRate(F)Lrx/d;
    .locals 3

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/util/q;->INSTANCE:Lcom/vungle/ads/internal/util/q;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/high16 v2, 0x42c80000    # 100.0f

    .line 5
    .line 6
    invoke-virtual {v0, p1, v1, v2}, Lcom/vungle/ads/internal/util/q;->isInRange(FFF)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lrx/d;->last7DaysPlacementFillRate:Ljava/lang/Float;

    .line 17
    .line 18
    :cond_0
    return-object p0
.end method

.method public final setLast7DaysTotalSpendUsd(F)Lrx/d;
    .locals 6

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/util/q;->INSTANCE:Lcom/vungle/ads/internal/util/q;

    .line 2
    .line 3
    const/4 v4, 0x4

    .line 4
    const/4 v5, 0x0

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    move v1, p1

    .line 8
    invoke-static/range {v0 .. v5}, Lcom/vungle/ads/internal/util/q;->isInRange$default(Lcom/vungle/ads/internal/util/q;FFFILjava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lrx/d;->last7DaysTotalSpendUSD:Ljava/lang/Float;

    .line 19
    .line 20
    :cond_0
    return-object p0
.end method

.method public final setLast7DaysUserLtvUsd(F)Lrx/d;
    .locals 6

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/util/q;->INSTANCE:Lcom/vungle/ads/internal/util/q;

    .line 2
    .line 3
    const/4 v4, 0x4

    .line 4
    const/4 v5, 0x0

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    move v1, p1

    .line 8
    invoke-static/range {v0 .. v5}, Lcom/vungle/ads/internal/util/q;->isInRange$default(Lcom/vungle/ads/internal/util/q;FFFILjava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lrx/d;->last7DaysUserLtvUSD:Ljava/lang/Float;

    .line 19
    .line 20
    :cond_0
    return-object p0
.end method

.method public final setLast7DaysUserPltvUsd(F)Lrx/d;
    .locals 6

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/util/q;->INSTANCE:Lcom/vungle/ads/internal/util/q;

    .line 2
    .line 3
    const/4 v4, 0x4

    .line 4
    const/4 v5, 0x0

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    move v1, p1

    .line 8
    invoke-static/range {v0 .. v5}, Lcom/vungle/ads/internal/util/q;->isInRange$default(Lcom/vungle/ads/internal/util/q;FFFILjava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lrx/d;->last7DaysUserPltvUSD:Ljava/lang/Float;

    .line 19
    .line 20
    :cond_0
    return-object p0
.end method

.method public final setTopNAdomain(Ljava/util/List;)Lrx/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lrx/d;"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    check-cast p1, Ljava/util/Collection;

    .line 4
    .line 5
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    iput-object p1, p0, Lrx/d;->topNAdomain:Ljava/util/List;

    .line 12
    .line 13
    return-object p0
.end method

.method public final setTotalEarningsUsd(F)Lrx/d;
    .locals 6

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/util/q;->INSTANCE:Lcom/vungle/ads/internal/util/q;

    .line 2
    .line 3
    const/4 v4, 0x4

    .line 4
    const/4 v5, 0x0

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    move v1, p1

    .line 8
    invoke-static/range {v0 .. v5}, Lcom/vungle/ads/internal/util/q;->isInRange$default(Lcom/vungle/ads/internal/util/q;FFFILjava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lrx/d;->totalEarningsUSD:Ljava/lang/Float;

    .line 19
    .line 20
    :cond_0
    return-object p0
.end method
