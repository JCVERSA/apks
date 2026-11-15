.class public final enum Lcom/vungle/ads/fpd/MedianHomeValueUSD;
.super Ljava/lang/Enum;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/fpd/MedianHomeValueUSD$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vungle/ads/fpd/MedianHomeValueUSD;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0016\u0008\u0086\u0001\u0018\u0000 \u000e2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u000fB\u0019\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0008\u001a\u0004\u0008\t\u0010\nR\u0017\u0010\u0005\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u000b\u001a\u0004\u0008\u000c\u0010\rj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018j\u0002\u0008\u0019\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/vungle/ads/fpd/MedianHomeValueUSD;",
        "",
        "",
        "id",
        "Lkotlin/ranges/IntRange;",
        "range",
        "<init>",
        "(Ljava/lang/String;IILkotlin/ranges/IntRange;)V",
        "I",
        "getId",
        "()I",
        "Lkotlin/ranges/IntRange;",
        "getRange",
        "()Lkotlin/ranges/IntRange;",
        "Companion",
        "a",
        "UNDER_100K",
        "FROM_100K_TO_300K",
        "FROM_300K_TO_500K",
        "FROM_500K_TO_700K",
        "FROM_700K_TO_900K",
        "FROM_900K_TO_1M1",
        "FROM_1M1_TO_1M3",
        "FROM_1M3_TO_1M5",
        "FROM_1M5_TO_1M7",
        "OVER_1M7",
        "vungle-ads_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/vungle/ads/fpd/MedianHomeValueUSD;

.field public static final Companion:Lcom/vungle/ads/fpd/MedianHomeValueUSD$a;

.field public static final enum FROM_100K_TO_300K:Lcom/vungle/ads/fpd/MedianHomeValueUSD;

.field public static final enum FROM_1M1_TO_1M3:Lcom/vungle/ads/fpd/MedianHomeValueUSD;

.field public static final enum FROM_1M3_TO_1M5:Lcom/vungle/ads/fpd/MedianHomeValueUSD;

.field public static final enum FROM_1M5_TO_1M7:Lcom/vungle/ads/fpd/MedianHomeValueUSD;

.field public static final enum FROM_300K_TO_500K:Lcom/vungle/ads/fpd/MedianHomeValueUSD;

.field public static final enum FROM_500K_TO_700K:Lcom/vungle/ads/fpd/MedianHomeValueUSD;

.field public static final enum FROM_700K_TO_900K:Lcom/vungle/ads/fpd/MedianHomeValueUSD;

.field public static final enum FROM_900K_TO_1M1:Lcom/vungle/ads/fpd/MedianHomeValueUSD;

.field public static final enum OVER_1M7:Lcom/vungle/ads/fpd/MedianHomeValueUSD;

.field public static final enum UNDER_100K:Lcom/vungle/ads/fpd/MedianHomeValueUSD;


# instance fields
.field private final id:I

.field private final range:Lkotlin/ranges/IntRange;


# direct methods
.method private static final synthetic $values()[Lcom/vungle/ads/fpd/MedianHomeValueUSD;
    .locals 3

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    new-array v0, v0, [Lcom/vungle/ads/fpd/MedianHomeValueUSD;

    .line 4
    .line 5
    sget-object v1, Lcom/vungle/ads/fpd/MedianHomeValueUSD;->UNDER_100K:Lcom/vungle/ads/fpd/MedianHomeValueUSD;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    aput-object v1, v0, v2

    .line 9
    .line 10
    sget-object v1, Lcom/vungle/ads/fpd/MedianHomeValueUSD;->FROM_100K_TO_300K:Lcom/vungle/ads/fpd/MedianHomeValueUSD;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    aput-object v1, v0, v2

    .line 14
    .line 15
    sget-object v1, Lcom/vungle/ads/fpd/MedianHomeValueUSD;->FROM_300K_TO_500K:Lcom/vungle/ads/fpd/MedianHomeValueUSD;

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    aput-object v1, v0, v2

    .line 19
    .line 20
    sget-object v1, Lcom/vungle/ads/fpd/MedianHomeValueUSD;->FROM_500K_TO_700K:Lcom/vungle/ads/fpd/MedianHomeValueUSD;

    .line 21
    .line 22
    const/4 v2, 0x3

    .line 23
    aput-object v1, v0, v2

    .line 24
    .line 25
    sget-object v1, Lcom/vungle/ads/fpd/MedianHomeValueUSD;->FROM_700K_TO_900K:Lcom/vungle/ads/fpd/MedianHomeValueUSD;

    .line 26
    .line 27
    const/4 v2, 0x4

    .line 28
    aput-object v1, v0, v2

    .line 29
    .line 30
    sget-object v1, Lcom/vungle/ads/fpd/MedianHomeValueUSD;->FROM_900K_TO_1M1:Lcom/vungle/ads/fpd/MedianHomeValueUSD;

    .line 31
    .line 32
    const/4 v2, 0x5

    .line 33
    aput-object v1, v0, v2

    .line 34
    .line 35
    sget-object v1, Lcom/vungle/ads/fpd/MedianHomeValueUSD;->FROM_1M1_TO_1M3:Lcom/vungle/ads/fpd/MedianHomeValueUSD;

    .line 36
    .line 37
    const/4 v2, 0x6

    .line 38
    aput-object v1, v0, v2

    .line 39
    .line 40
    sget-object v1, Lcom/vungle/ads/fpd/MedianHomeValueUSD;->FROM_1M3_TO_1M5:Lcom/vungle/ads/fpd/MedianHomeValueUSD;

    .line 41
    .line 42
    const/4 v2, 0x7

    .line 43
    aput-object v1, v0, v2

    .line 44
    .line 45
    sget-object v1, Lcom/vungle/ads/fpd/MedianHomeValueUSD;->FROM_1M5_TO_1M7:Lcom/vungle/ads/fpd/MedianHomeValueUSD;

    .line 46
    .line 47
    const/16 v2, 0x8

    .line 48
    .line 49
    aput-object v1, v0, v2

    .line 50
    .line 51
    sget-object v1, Lcom/vungle/ads/fpd/MedianHomeValueUSD;->OVER_1M7:Lcom/vungle/ads/fpd/MedianHomeValueUSD;

    .line 52
    .line 53
    const/16 v2, 0x9

    .line 54
    .line 55
    aput-object v1, v0, v2

    .line 56
    .line 57
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/vungle/ads/fpd/MedianHomeValueUSD;

    .line 2
    .line 3
    new-instance v1, Lkotlin/ranges/IntRange;

    .line 4
    .line 5
    const/high16 v2, -0x80000000

    .line 6
    .line 7
    const v3, 0x186a0

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, v2, v3}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 11
    .line 12
    .line 13
    const-string v2, "UNDER_100K"

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-direct {v0, v2, v3, v3, v1}, Lcom/vungle/ads/fpd/MedianHomeValueUSD;-><init>(Ljava/lang/String;IILkotlin/ranges/IntRange;)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/vungle/ads/fpd/MedianHomeValueUSD;->UNDER_100K:Lcom/vungle/ads/fpd/MedianHomeValueUSD;

    .line 20
    .line 21
    new-instance v0, Lcom/vungle/ads/fpd/MedianHomeValueUSD;

    .line 22
    .line 23
    new-instance v1, Lkotlin/ranges/IntRange;

    .line 24
    .line 25
    const v2, 0x186a1

    .line 26
    .line 27
    .line 28
    const v3, 0x493e0

    .line 29
    .line 30
    .line 31
    invoke-direct {v1, v2, v3}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 32
    .line 33
    .line 34
    const-string v2, "FROM_100K_TO_300K"

    .line 35
    .line 36
    const/4 v3, 0x1

    .line 37
    invoke-direct {v0, v2, v3, v3, v1}, Lcom/vungle/ads/fpd/MedianHomeValueUSD;-><init>(Ljava/lang/String;IILkotlin/ranges/IntRange;)V

    .line 38
    .line 39
    .line 40
    sput-object v0, Lcom/vungle/ads/fpd/MedianHomeValueUSD;->FROM_100K_TO_300K:Lcom/vungle/ads/fpd/MedianHomeValueUSD;

    .line 41
    .line 42
    new-instance v0, Lcom/vungle/ads/fpd/MedianHomeValueUSD;

    .line 43
    .line 44
    new-instance v1, Lkotlin/ranges/IntRange;

    .line 45
    .line 46
    const v2, 0x493e1

    .line 47
    .line 48
    .line 49
    const v3, 0x7a120

    .line 50
    .line 51
    .line 52
    invoke-direct {v1, v2, v3}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 53
    .line 54
    .line 55
    const-string v2, "FROM_300K_TO_500K"

    .line 56
    .line 57
    const/4 v3, 0x2

    .line 58
    invoke-direct {v0, v2, v3, v3, v1}, Lcom/vungle/ads/fpd/MedianHomeValueUSD;-><init>(Ljava/lang/String;IILkotlin/ranges/IntRange;)V

    .line 59
    .line 60
    .line 61
    sput-object v0, Lcom/vungle/ads/fpd/MedianHomeValueUSD;->FROM_300K_TO_500K:Lcom/vungle/ads/fpd/MedianHomeValueUSD;

    .line 62
    .line 63
    new-instance v0, Lcom/vungle/ads/fpd/MedianHomeValueUSD;

    .line 64
    .line 65
    new-instance v1, Lkotlin/ranges/IntRange;

    .line 66
    .line 67
    const v2, 0x7a121

    .line 68
    .line 69
    .line 70
    const v3, 0xaae60

    .line 71
    .line 72
    .line 73
    invoke-direct {v1, v2, v3}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 74
    .line 75
    .line 76
    const-string v2, "FROM_500K_TO_700K"

    .line 77
    .line 78
    const/4 v3, 0x3

    .line 79
    invoke-direct {v0, v2, v3, v3, v1}, Lcom/vungle/ads/fpd/MedianHomeValueUSD;-><init>(Ljava/lang/String;IILkotlin/ranges/IntRange;)V

    .line 80
    .line 81
    .line 82
    sput-object v0, Lcom/vungle/ads/fpd/MedianHomeValueUSD;->FROM_500K_TO_700K:Lcom/vungle/ads/fpd/MedianHomeValueUSD;

    .line 83
    .line 84
    new-instance v0, Lcom/vungle/ads/fpd/MedianHomeValueUSD;

    .line 85
    .line 86
    new-instance v1, Lkotlin/ranges/IntRange;

    .line 87
    .line 88
    const v2, 0xaae61

    .line 89
    .line 90
    .line 91
    const v3, 0xdbba0

    .line 92
    .line 93
    .line 94
    invoke-direct {v1, v2, v3}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 95
    .line 96
    .line 97
    const-string v2, "FROM_700K_TO_900K"

    .line 98
    .line 99
    const/4 v3, 0x4

    .line 100
    invoke-direct {v0, v2, v3, v3, v1}, Lcom/vungle/ads/fpd/MedianHomeValueUSD;-><init>(Ljava/lang/String;IILkotlin/ranges/IntRange;)V

    .line 101
    .line 102
    .line 103
    sput-object v0, Lcom/vungle/ads/fpd/MedianHomeValueUSD;->FROM_700K_TO_900K:Lcom/vungle/ads/fpd/MedianHomeValueUSD;

    .line 104
    .line 105
    new-instance v0, Lcom/vungle/ads/fpd/MedianHomeValueUSD;

    .line 106
    .line 107
    new-instance v1, Lkotlin/ranges/IntRange;

    .line 108
    .line 109
    const v2, 0xdbba1

    .line 110
    .line 111
    .line 112
    const v3, 0x10c8e0

    .line 113
    .line 114
    .line 115
    invoke-direct {v1, v2, v3}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 116
    .line 117
    .line 118
    const-string v2, "FROM_900K_TO_1M1"

    .line 119
    .line 120
    const/4 v3, 0x5

    .line 121
    invoke-direct {v0, v2, v3, v3, v1}, Lcom/vungle/ads/fpd/MedianHomeValueUSD;-><init>(Ljava/lang/String;IILkotlin/ranges/IntRange;)V

    .line 122
    .line 123
    .line 124
    sput-object v0, Lcom/vungle/ads/fpd/MedianHomeValueUSD;->FROM_900K_TO_1M1:Lcom/vungle/ads/fpd/MedianHomeValueUSD;

    .line 125
    .line 126
    new-instance v0, Lcom/vungle/ads/fpd/MedianHomeValueUSD;

    .line 127
    .line 128
    new-instance v1, Lkotlin/ranges/IntRange;

    .line 129
    .line 130
    const v2, 0x10c8e1

    .line 131
    .line 132
    .line 133
    const v3, 0x13d620

    .line 134
    .line 135
    .line 136
    invoke-direct {v1, v2, v3}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 137
    .line 138
    .line 139
    const-string v2, "FROM_1M1_TO_1M3"

    .line 140
    .line 141
    const/4 v3, 0x6

    .line 142
    invoke-direct {v0, v2, v3, v3, v1}, Lcom/vungle/ads/fpd/MedianHomeValueUSD;-><init>(Ljava/lang/String;IILkotlin/ranges/IntRange;)V

    .line 143
    .line 144
    .line 145
    sput-object v0, Lcom/vungle/ads/fpd/MedianHomeValueUSD;->FROM_1M1_TO_1M3:Lcom/vungle/ads/fpd/MedianHomeValueUSD;

    .line 146
    .line 147
    new-instance v0, Lcom/vungle/ads/fpd/MedianHomeValueUSD;

    .line 148
    .line 149
    new-instance v1, Lkotlin/ranges/IntRange;

    .line 150
    .line 151
    const v2, 0x13d621

    .line 152
    .line 153
    .line 154
    const v3, 0x16e360

    .line 155
    .line 156
    .line 157
    invoke-direct {v1, v2, v3}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 158
    .line 159
    .line 160
    const-string v2, "FROM_1M3_TO_1M5"

    .line 161
    .line 162
    const/4 v3, 0x7

    .line 163
    invoke-direct {v0, v2, v3, v3, v1}, Lcom/vungle/ads/fpd/MedianHomeValueUSD;-><init>(Ljava/lang/String;IILkotlin/ranges/IntRange;)V

    .line 164
    .line 165
    .line 166
    sput-object v0, Lcom/vungle/ads/fpd/MedianHomeValueUSD;->FROM_1M3_TO_1M5:Lcom/vungle/ads/fpd/MedianHomeValueUSD;

    .line 167
    .line 168
    new-instance v0, Lcom/vungle/ads/fpd/MedianHomeValueUSD;

    .line 169
    .line 170
    new-instance v1, Lkotlin/ranges/IntRange;

    .line 171
    .line 172
    const v2, 0x16e361

    .line 173
    .line 174
    .line 175
    const v3, 0x19f0a0

    .line 176
    .line 177
    .line 178
    invoke-direct {v1, v2, v3}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 179
    .line 180
    .line 181
    const-string v2, "FROM_1M5_TO_1M7"

    .line 182
    .line 183
    const/16 v3, 0x8

    .line 184
    .line 185
    invoke-direct {v0, v2, v3, v3, v1}, Lcom/vungle/ads/fpd/MedianHomeValueUSD;-><init>(Ljava/lang/String;IILkotlin/ranges/IntRange;)V

    .line 186
    .line 187
    .line 188
    sput-object v0, Lcom/vungle/ads/fpd/MedianHomeValueUSD;->FROM_1M5_TO_1M7:Lcom/vungle/ads/fpd/MedianHomeValueUSD;

    .line 189
    .line 190
    new-instance v0, Lcom/vungle/ads/fpd/MedianHomeValueUSD;

    .line 191
    .line 192
    new-instance v1, Lkotlin/ranges/IntRange;

    .line 193
    .line 194
    const v2, 0x19f0a1

    .line 195
    .line 196
    .line 197
    const v3, 0x7fffffff

    .line 198
    .line 199
    .line 200
    invoke-direct {v1, v2, v3}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 201
    .line 202
    .line 203
    const-string v2, "OVER_1M7"

    .line 204
    .line 205
    const/16 v3, 0x9

    .line 206
    .line 207
    invoke-direct {v0, v2, v3, v3, v1}, Lcom/vungle/ads/fpd/MedianHomeValueUSD;-><init>(Ljava/lang/String;IILkotlin/ranges/IntRange;)V

    .line 208
    .line 209
    .line 210
    sput-object v0, Lcom/vungle/ads/fpd/MedianHomeValueUSD;->OVER_1M7:Lcom/vungle/ads/fpd/MedianHomeValueUSD;

    .line 211
    .line 212
    invoke-static {}, Lcom/vungle/ads/fpd/MedianHomeValueUSD;->$values()[Lcom/vungle/ads/fpd/MedianHomeValueUSD;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    sput-object v0, Lcom/vungle/ads/fpd/MedianHomeValueUSD;->$VALUES:[Lcom/vungle/ads/fpd/MedianHomeValueUSD;

    .line 217
    .line 218
    new-instance v0, Lcom/vungle/ads/fpd/MedianHomeValueUSD$a;

    .line 219
    .line 220
    const/4 v1, 0x0

    .line 221
    invoke-direct {v0, v1}, Lcom/vungle/ads/fpd/MedianHomeValueUSD$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 222
    .line 223
    .line 224
    sput-object v0, Lcom/vungle/ads/fpd/MedianHomeValueUSD;->Companion:Lcom/vungle/ads/fpd/MedianHomeValueUSD$a;

    .line 225
    .line 226
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILkotlin/ranges/IntRange;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/ranges/IntRange;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/vungle/ads/fpd/MedianHomeValueUSD;->id:I

    .line 5
    .line 6
    iput-object p4, p0, Lcom/vungle/ads/fpd/MedianHomeValueUSD;->range:Lkotlin/ranges/IntRange;

    .line 7
    .line 8
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vungle/ads/fpd/MedianHomeValueUSD;
    .locals 1

    .line 1
    const-class v0, Lcom/vungle/ads/fpd/MedianHomeValueUSD;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/vungle/ads/fpd/MedianHomeValueUSD;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/vungle/ads/fpd/MedianHomeValueUSD;
    .locals 1

    .line 1
    sget-object v0, Lcom/vungle/ads/fpd/MedianHomeValueUSD;->$VALUES:[Lcom/vungle/ads/fpd/MedianHomeValueUSD;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/vungle/ads/fpd/MedianHomeValueUSD;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/vungle/ads/fpd/MedianHomeValueUSD;->id:I

    .line 2
    .line 3
    return v0
.end method

.method public final getRange()Lkotlin/ranges/IntRange;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/fpd/MedianHomeValueUSD;->range:Lkotlin/ranges/IntRange;

    .line 2
    .line 3
    return-object v0
.end method
