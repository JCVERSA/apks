.class public final enum Lcom/vungle/ads/fpd/AgeRange;
.super Ljava/lang/Enum;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/fpd/AgeRange$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vungle/ads/fpd/AgeRange;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0014\u0008\u0086\u0001\u0018\u0000 \u000e2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u000fB\u0019\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0008\u001a\u0004\u0008\t\u0010\nR\u0017\u0010\u0005\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u000b\u001a\u0004\u0008\u000c\u0010\rj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/vungle/ads/fpd/AgeRange;",
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
        "AGE_18_20",
        "AGE_21_30",
        "AGE_31_40",
        "AGE_41_50",
        "AGE_51_60",
        "AGE_61_70",
        "AGE_71_75",
        "OTHERS",
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
.field private static final synthetic $VALUES:[Lcom/vungle/ads/fpd/AgeRange;

.field public static final enum AGE_18_20:Lcom/vungle/ads/fpd/AgeRange;

.field public static final enum AGE_21_30:Lcom/vungle/ads/fpd/AgeRange;

.field public static final enum AGE_31_40:Lcom/vungle/ads/fpd/AgeRange;

.field public static final enum AGE_41_50:Lcom/vungle/ads/fpd/AgeRange;

.field public static final enum AGE_51_60:Lcom/vungle/ads/fpd/AgeRange;

.field public static final enum AGE_61_70:Lcom/vungle/ads/fpd/AgeRange;

.field public static final enum AGE_71_75:Lcom/vungle/ads/fpd/AgeRange;

.field public static final Companion:Lcom/vungle/ads/fpd/AgeRange$a;

.field public static final enum OTHERS:Lcom/vungle/ads/fpd/AgeRange;


# instance fields
.field private final id:I

.field private final range:Lkotlin/ranges/IntRange;


# direct methods
.method private static final synthetic $values()[Lcom/vungle/ads/fpd/AgeRange;
    .locals 3

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    new-array v0, v0, [Lcom/vungle/ads/fpd/AgeRange;

    .line 4
    .line 5
    sget-object v1, Lcom/vungle/ads/fpd/AgeRange;->AGE_18_20:Lcom/vungle/ads/fpd/AgeRange;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    aput-object v1, v0, v2

    .line 9
    .line 10
    sget-object v1, Lcom/vungle/ads/fpd/AgeRange;->AGE_21_30:Lcom/vungle/ads/fpd/AgeRange;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    aput-object v1, v0, v2

    .line 14
    .line 15
    sget-object v1, Lcom/vungle/ads/fpd/AgeRange;->AGE_31_40:Lcom/vungle/ads/fpd/AgeRange;

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    aput-object v1, v0, v2

    .line 19
    .line 20
    sget-object v1, Lcom/vungle/ads/fpd/AgeRange;->AGE_41_50:Lcom/vungle/ads/fpd/AgeRange;

    .line 21
    .line 22
    const/4 v2, 0x3

    .line 23
    aput-object v1, v0, v2

    .line 24
    .line 25
    sget-object v1, Lcom/vungle/ads/fpd/AgeRange;->AGE_51_60:Lcom/vungle/ads/fpd/AgeRange;

    .line 26
    .line 27
    const/4 v2, 0x4

    .line 28
    aput-object v1, v0, v2

    .line 29
    .line 30
    sget-object v1, Lcom/vungle/ads/fpd/AgeRange;->AGE_61_70:Lcom/vungle/ads/fpd/AgeRange;

    .line 31
    .line 32
    const/4 v2, 0x5

    .line 33
    aput-object v1, v0, v2

    .line 34
    .line 35
    sget-object v1, Lcom/vungle/ads/fpd/AgeRange;->AGE_71_75:Lcom/vungle/ads/fpd/AgeRange;

    .line 36
    .line 37
    const/4 v2, 0x6

    .line 38
    aput-object v1, v0, v2

    .line 39
    .line 40
    sget-object v1, Lcom/vungle/ads/fpd/AgeRange;->OTHERS:Lcom/vungle/ads/fpd/AgeRange;

    .line 41
    .line 42
    const/4 v2, 0x7

    .line 43
    aput-object v1, v0, v2

    .line 44
    .line 45
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/vungle/ads/fpd/AgeRange;

    .line 2
    .line 3
    new-instance v1, Lkotlin/ranges/IntRange;

    .line 4
    .line 5
    const/16 v2, 0x12

    .line 6
    .line 7
    const/16 v3, 0x14

    .line 8
    .line 9
    invoke-direct {v1, v2, v3}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 10
    .line 11
    .line 12
    const-string v2, "AGE_18_20"

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v0, v2, v3, v4, v1}, Lcom/vungle/ads/fpd/AgeRange;-><init>(Ljava/lang/String;IILkotlin/ranges/IntRange;)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/vungle/ads/fpd/AgeRange;->AGE_18_20:Lcom/vungle/ads/fpd/AgeRange;

    .line 20
    .line 21
    new-instance v0, Lcom/vungle/ads/fpd/AgeRange;

    .line 22
    .line 23
    new-instance v1, Lkotlin/ranges/IntRange;

    .line 24
    .line 25
    const/16 v2, 0x15

    .line 26
    .line 27
    const/16 v5, 0x1e

    .line 28
    .line 29
    invoke-direct {v1, v2, v5}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 30
    .line 31
    .line 32
    const-string v2, "AGE_21_30"

    .line 33
    .line 34
    const/4 v5, 0x2

    .line 35
    invoke-direct {v0, v2, v4, v5, v1}, Lcom/vungle/ads/fpd/AgeRange;-><init>(Ljava/lang/String;IILkotlin/ranges/IntRange;)V

    .line 36
    .line 37
    .line 38
    sput-object v0, Lcom/vungle/ads/fpd/AgeRange;->AGE_21_30:Lcom/vungle/ads/fpd/AgeRange;

    .line 39
    .line 40
    new-instance v0, Lcom/vungle/ads/fpd/AgeRange;

    .line 41
    .line 42
    new-instance v1, Lkotlin/ranges/IntRange;

    .line 43
    .line 44
    const/16 v2, 0x1f

    .line 45
    .line 46
    const/16 v4, 0x28

    .line 47
    .line 48
    invoke-direct {v1, v2, v4}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 49
    .line 50
    .line 51
    const-string v2, "AGE_31_40"

    .line 52
    .line 53
    const/4 v4, 0x3

    .line 54
    invoke-direct {v0, v2, v5, v4, v1}, Lcom/vungle/ads/fpd/AgeRange;-><init>(Ljava/lang/String;IILkotlin/ranges/IntRange;)V

    .line 55
    .line 56
    .line 57
    sput-object v0, Lcom/vungle/ads/fpd/AgeRange;->AGE_31_40:Lcom/vungle/ads/fpd/AgeRange;

    .line 58
    .line 59
    new-instance v0, Lcom/vungle/ads/fpd/AgeRange;

    .line 60
    .line 61
    new-instance v1, Lkotlin/ranges/IntRange;

    .line 62
    .line 63
    const/16 v2, 0x29

    .line 64
    .line 65
    const/16 v5, 0x32

    .line 66
    .line 67
    invoke-direct {v1, v2, v5}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 68
    .line 69
    .line 70
    const-string v2, "AGE_41_50"

    .line 71
    .line 72
    const/4 v5, 0x4

    .line 73
    invoke-direct {v0, v2, v4, v5, v1}, Lcom/vungle/ads/fpd/AgeRange;-><init>(Ljava/lang/String;IILkotlin/ranges/IntRange;)V

    .line 74
    .line 75
    .line 76
    sput-object v0, Lcom/vungle/ads/fpd/AgeRange;->AGE_41_50:Lcom/vungle/ads/fpd/AgeRange;

    .line 77
    .line 78
    new-instance v0, Lcom/vungle/ads/fpd/AgeRange;

    .line 79
    .line 80
    new-instance v1, Lkotlin/ranges/IntRange;

    .line 81
    .line 82
    const/16 v2, 0x33

    .line 83
    .line 84
    const/16 v4, 0x3c

    .line 85
    .line 86
    invoke-direct {v1, v2, v4}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 87
    .line 88
    .line 89
    const-string v2, "AGE_51_60"

    .line 90
    .line 91
    const/4 v4, 0x5

    .line 92
    invoke-direct {v0, v2, v5, v4, v1}, Lcom/vungle/ads/fpd/AgeRange;-><init>(Ljava/lang/String;IILkotlin/ranges/IntRange;)V

    .line 93
    .line 94
    .line 95
    sput-object v0, Lcom/vungle/ads/fpd/AgeRange;->AGE_51_60:Lcom/vungle/ads/fpd/AgeRange;

    .line 96
    .line 97
    new-instance v0, Lcom/vungle/ads/fpd/AgeRange;

    .line 98
    .line 99
    new-instance v1, Lkotlin/ranges/IntRange;

    .line 100
    .line 101
    const/16 v2, 0x3d

    .line 102
    .line 103
    const/16 v5, 0x46

    .line 104
    .line 105
    invoke-direct {v1, v2, v5}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 106
    .line 107
    .line 108
    const-string v2, "AGE_61_70"

    .line 109
    .line 110
    const/4 v5, 0x6

    .line 111
    invoke-direct {v0, v2, v4, v5, v1}, Lcom/vungle/ads/fpd/AgeRange;-><init>(Ljava/lang/String;IILkotlin/ranges/IntRange;)V

    .line 112
    .line 113
    .line 114
    sput-object v0, Lcom/vungle/ads/fpd/AgeRange;->AGE_61_70:Lcom/vungle/ads/fpd/AgeRange;

    .line 115
    .line 116
    new-instance v0, Lcom/vungle/ads/fpd/AgeRange;

    .line 117
    .line 118
    new-instance v1, Lkotlin/ranges/IntRange;

    .line 119
    .line 120
    const/16 v2, 0x47

    .line 121
    .line 122
    const/16 v4, 0x4b

    .line 123
    .line 124
    invoke-direct {v1, v2, v4}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 125
    .line 126
    .line 127
    const-string v2, "AGE_71_75"

    .line 128
    .line 129
    const/4 v4, 0x7

    .line 130
    invoke-direct {v0, v2, v5, v4, v1}, Lcom/vungle/ads/fpd/AgeRange;-><init>(Ljava/lang/String;IILkotlin/ranges/IntRange;)V

    .line 131
    .line 132
    .line 133
    sput-object v0, Lcom/vungle/ads/fpd/AgeRange;->AGE_71_75:Lcom/vungle/ads/fpd/AgeRange;

    .line 134
    .line 135
    new-instance v0, Lcom/vungle/ads/fpd/AgeRange;

    .line 136
    .line 137
    new-instance v1, Lkotlin/ranges/IntRange;

    .line 138
    .line 139
    const/high16 v2, -0x80000000

    .line 140
    .line 141
    const v5, 0x7fffffff

    .line 142
    .line 143
    .line 144
    invoke-direct {v1, v2, v5}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 145
    .line 146
    .line 147
    const-string v2, "OTHERS"

    .line 148
    .line 149
    invoke-direct {v0, v2, v4, v3, v1}, Lcom/vungle/ads/fpd/AgeRange;-><init>(Ljava/lang/String;IILkotlin/ranges/IntRange;)V

    .line 150
    .line 151
    .line 152
    sput-object v0, Lcom/vungle/ads/fpd/AgeRange;->OTHERS:Lcom/vungle/ads/fpd/AgeRange;

    .line 153
    .line 154
    invoke-static {}, Lcom/vungle/ads/fpd/AgeRange;->$values()[Lcom/vungle/ads/fpd/AgeRange;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    sput-object v0, Lcom/vungle/ads/fpd/AgeRange;->$VALUES:[Lcom/vungle/ads/fpd/AgeRange;

    .line 159
    .line 160
    new-instance v0, Lcom/vungle/ads/fpd/AgeRange$a;

    .line 161
    .line 162
    const/4 v1, 0x0

    .line 163
    invoke-direct {v0, v1}, Lcom/vungle/ads/fpd/AgeRange$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 164
    .line 165
    .line 166
    sput-object v0, Lcom/vungle/ads/fpd/AgeRange;->Companion:Lcom/vungle/ads/fpd/AgeRange$a;

    .line 167
    .line 168
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
    iput p3, p0, Lcom/vungle/ads/fpd/AgeRange;->id:I

    .line 5
    .line 6
    iput-object p4, p0, Lcom/vungle/ads/fpd/AgeRange;->range:Lkotlin/ranges/IntRange;

    .line 7
    .line 8
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vungle/ads/fpd/AgeRange;
    .locals 1

    .line 1
    const-class v0, Lcom/vungle/ads/fpd/AgeRange;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/vungle/ads/fpd/AgeRange;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/vungle/ads/fpd/AgeRange;
    .locals 1

    .line 1
    sget-object v0, Lcom/vungle/ads/fpd/AgeRange;->$VALUES:[Lcom/vungle/ads/fpd/AgeRange;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/vungle/ads/fpd/AgeRange;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/vungle/ads/fpd/AgeRange;->id:I

    .line 2
    .line 3
    return v0
.end method

.method public final getRange()Lkotlin/ranges/IntRange;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/fpd/AgeRange;->range:Lkotlin/ranges/IntRange;

    .line 2
    .line 3
    return-object v0
.end method
