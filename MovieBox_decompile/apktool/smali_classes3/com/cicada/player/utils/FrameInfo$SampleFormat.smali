.class public final enum Lcom/cicada/player/utils/FrameInfo$SampleFormat;
.super Ljava/lang/Enum;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cicada/player/utils/FrameInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SampleFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cicada/player/utils/FrameInfo$SampleFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cicada/player/utils/FrameInfo$SampleFormat;

.field public static final enum AF_SAMPLE_FMT_DBL:Lcom/cicada/player/utils/FrameInfo$SampleFormat;

.field public static final enum AF_SAMPLE_FMT_DBLP:Lcom/cicada/player/utils/FrameInfo$SampleFormat;

.field public static final enum AF_SAMPLE_FMT_FLT:Lcom/cicada/player/utils/FrameInfo$SampleFormat;

.field public static final enum AF_SAMPLE_FMT_FLTP:Lcom/cicada/player/utils/FrameInfo$SampleFormat;

.field public static final enum AF_SAMPLE_FMT_NB:Lcom/cicada/player/utils/FrameInfo$SampleFormat;

.field public static final enum AF_SAMPLE_FMT_NONE:Lcom/cicada/player/utils/FrameInfo$SampleFormat;

.field public static final enum AF_SAMPLE_FMT_S16:Lcom/cicada/player/utils/FrameInfo$SampleFormat;

.field public static final enum AF_SAMPLE_FMT_S16P:Lcom/cicada/player/utils/FrameInfo$SampleFormat;

.field public static final enum AF_SAMPLE_FMT_S32:Lcom/cicada/player/utils/FrameInfo$SampleFormat;

.field public static final enum AF_SAMPLE_FMT_S32P:Lcom/cicada/player/utils/FrameInfo$SampleFormat;

.field public static final enum AF_SAMPLE_FMT_U8:Lcom/cicada/player/utils/FrameInfo$SampleFormat;

.field public static final enum AF_SAMPLE_FMT_U8P:Lcom/cicada/player/utils/FrameInfo$SampleFormat;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/cicada/player/utils/FrameInfo$SampleFormat;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const-string v2, "AF_SAMPLE_FMT_NONE"

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-direct {v0, v2, v3, v1}, Lcom/cicada/player/utils/FrameInfo$SampleFormat;-><init>(Ljava/lang/String;II)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/cicada/player/utils/FrameInfo$SampleFormat;->AF_SAMPLE_FMT_NONE:Lcom/cicada/player/utils/FrameInfo$SampleFormat;

    .line 11
    .line 12
    new-instance v1, Lcom/cicada/player/utils/FrameInfo$SampleFormat;

    .line 13
    .line 14
    const-string v2, "AF_SAMPLE_FMT_U8"

    .line 15
    .line 16
    const/4 v4, 0x1

    .line 17
    invoke-direct {v1, v2, v4, v3}, Lcom/cicada/player/utils/FrameInfo$SampleFormat;-><init>(Ljava/lang/String;II)V

    .line 18
    .line 19
    .line 20
    sput-object v1, Lcom/cicada/player/utils/FrameInfo$SampleFormat;->AF_SAMPLE_FMT_U8:Lcom/cicada/player/utils/FrameInfo$SampleFormat;

    .line 21
    .line 22
    new-instance v2, Lcom/cicada/player/utils/FrameInfo$SampleFormat;

    .line 23
    .line 24
    const-string v5, "AF_SAMPLE_FMT_S16"

    .line 25
    .line 26
    const/4 v6, 0x2

    .line 27
    invoke-direct {v2, v5, v6, v4}, Lcom/cicada/player/utils/FrameInfo$SampleFormat;-><init>(Ljava/lang/String;II)V

    .line 28
    .line 29
    .line 30
    sput-object v2, Lcom/cicada/player/utils/FrameInfo$SampleFormat;->AF_SAMPLE_FMT_S16:Lcom/cicada/player/utils/FrameInfo$SampleFormat;

    .line 31
    .line 32
    new-instance v5, Lcom/cicada/player/utils/FrameInfo$SampleFormat;

    .line 33
    .line 34
    const-string v7, "AF_SAMPLE_FMT_S32"

    .line 35
    .line 36
    const/4 v8, 0x3

    .line 37
    invoke-direct {v5, v7, v8, v6}, Lcom/cicada/player/utils/FrameInfo$SampleFormat;-><init>(Ljava/lang/String;II)V

    .line 38
    .line 39
    .line 40
    sput-object v5, Lcom/cicada/player/utils/FrameInfo$SampleFormat;->AF_SAMPLE_FMT_S32:Lcom/cicada/player/utils/FrameInfo$SampleFormat;

    .line 41
    .line 42
    new-instance v7, Lcom/cicada/player/utils/FrameInfo$SampleFormat;

    .line 43
    .line 44
    const-string v9, "AF_SAMPLE_FMT_FLT"

    .line 45
    .line 46
    const/4 v10, 0x4

    .line 47
    invoke-direct {v7, v9, v10, v8}, Lcom/cicada/player/utils/FrameInfo$SampleFormat;-><init>(Ljava/lang/String;II)V

    .line 48
    .line 49
    .line 50
    sput-object v7, Lcom/cicada/player/utils/FrameInfo$SampleFormat;->AF_SAMPLE_FMT_FLT:Lcom/cicada/player/utils/FrameInfo$SampleFormat;

    .line 51
    .line 52
    new-instance v9, Lcom/cicada/player/utils/FrameInfo$SampleFormat;

    .line 53
    .line 54
    const-string v11, "AF_SAMPLE_FMT_DBL"

    .line 55
    .line 56
    const/4 v12, 0x5

    .line 57
    invoke-direct {v9, v11, v12, v10}, Lcom/cicada/player/utils/FrameInfo$SampleFormat;-><init>(Ljava/lang/String;II)V

    .line 58
    .line 59
    .line 60
    sput-object v9, Lcom/cicada/player/utils/FrameInfo$SampleFormat;->AF_SAMPLE_FMT_DBL:Lcom/cicada/player/utils/FrameInfo$SampleFormat;

    .line 61
    .line 62
    new-instance v11, Lcom/cicada/player/utils/FrameInfo$SampleFormat;

    .line 63
    .line 64
    const-string v13, "AF_SAMPLE_FMT_U8P"

    .line 65
    .line 66
    const/4 v14, 0x6

    .line 67
    invoke-direct {v11, v13, v14, v12}, Lcom/cicada/player/utils/FrameInfo$SampleFormat;-><init>(Ljava/lang/String;II)V

    .line 68
    .line 69
    .line 70
    sput-object v11, Lcom/cicada/player/utils/FrameInfo$SampleFormat;->AF_SAMPLE_FMT_U8P:Lcom/cicada/player/utils/FrameInfo$SampleFormat;

    .line 71
    .line 72
    new-instance v13, Lcom/cicada/player/utils/FrameInfo$SampleFormat;

    .line 73
    .line 74
    const-string v15, "AF_SAMPLE_FMT_S16P"

    .line 75
    .line 76
    const/4 v12, 0x7

    .line 77
    invoke-direct {v13, v15, v12, v14}, Lcom/cicada/player/utils/FrameInfo$SampleFormat;-><init>(Ljava/lang/String;II)V

    .line 78
    .line 79
    .line 80
    sput-object v13, Lcom/cicada/player/utils/FrameInfo$SampleFormat;->AF_SAMPLE_FMT_S16P:Lcom/cicada/player/utils/FrameInfo$SampleFormat;

    .line 81
    .line 82
    new-instance v15, Lcom/cicada/player/utils/FrameInfo$SampleFormat;

    .line 83
    .line 84
    const-string v14, "AF_SAMPLE_FMT_S32P"

    .line 85
    .line 86
    const/16 v10, 0x8

    .line 87
    .line 88
    invoke-direct {v15, v14, v10, v12}, Lcom/cicada/player/utils/FrameInfo$SampleFormat;-><init>(Ljava/lang/String;II)V

    .line 89
    .line 90
    .line 91
    sput-object v15, Lcom/cicada/player/utils/FrameInfo$SampleFormat;->AF_SAMPLE_FMT_S32P:Lcom/cicada/player/utils/FrameInfo$SampleFormat;

    .line 92
    .line 93
    new-instance v14, Lcom/cicada/player/utils/FrameInfo$SampleFormat;

    .line 94
    .line 95
    const-string v12, "AF_SAMPLE_FMT_FLTP"

    .line 96
    .line 97
    const/16 v8, 0x9

    .line 98
    .line 99
    invoke-direct {v14, v12, v8, v10}, Lcom/cicada/player/utils/FrameInfo$SampleFormat;-><init>(Ljava/lang/String;II)V

    .line 100
    .line 101
    .line 102
    sput-object v14, Lcom/cicada/player/utils/FrameInfo$SampleFormat;->AF_SAMPLE_FMT_FLTP:Lcom/cicada/player/utils/FrameInfo$SampleFormat;

    .line 103
    .line 104
    new-instance v12, Lcom/cicada/player/utils/FrameInfo$SampleFormat;

    .line 105
    .line 106
    const-string v10, "AF_SAMPLE_FMT_DBLP"

    .line 107
    .line 108
    const/16 v6, 0xa

    .line 109
    .line 110
    invoke-direct {v12, v10, v6, v8}, Lcom/cicada/player/utils/FrameInfo$SampleFormat;-><init>(Ljava/lang/String;II)V

    .line 111
    .line 112
    .line 113
    sput-object v12, Lcom/cicada/player/utils/FrameInfo$SampleFormat;->AF_SAMPLE_FMT_DBLP:Lcom/cicada/player/utils/FrameInfo$SampleFormat;

    .line 114
    .line 115
    new-instance v10, Lcom/cicada/player/utils/FrameInfo$SampleFormat;

    .line 116
    .line 117
    const-string v8, "AF_SAMPLE_FMT_NB"

    .line 118
    .line 119
    const/16 v4, 0xb

    .line 120
    .line 121
    invoke-direct {v10, v8, v4, v6}, Lcom/cicada/player/utils/FrameInfo$SampleFormat;-><init>(Ljava/lang/String;II)V

    .line 122
    .line 123
    .line 124
    sput-object v10, Lcom/cicada/player/utils/FrameInfo$SampleFormat;->AF_SAMPLE_FMT_NB:Lcom/cicada/player/utils/FrameInfo$SampleFormat;

    .line 125
    .line 126
    const/16 v8, 0xc

    .line 127
    .line 128
    new-array v8, v8, [Lcom/cicada/player/utils/FrameInfo$SampleFormat;

    .line 129
    .line 130
    aput-object v0, v8, v3

    .line 131
    .line 132
    const/4 v0, 0x1

    .line 133
    aput-object v1, v8, v0

    .line 134
    .line 135
    const/4 v0, 0x2

    .line 136
    aput-object v2, v8, v0

    .line 137
    .line 138
    const/4 v0, 0x3

    .line 139
    aput-object v5, v8, v0

    .line 140
    .line 141
    const/4 v0, 0x4

    .line 142
    aput-object v7, v8, v0

    .line 143
    .line 144
    const/4 v0, 0x5

    .line 145
    aput-object v9, v8, v0

    .line 146
    .line 147
    const/4 v0, 0x6

    .line 148
    aput-object v11, v8, v0

    .line 149
    .line 150
    const/4 v0, 0x7

    .line 151
    aput-object v13, v8, v0

    .line 152
    .line 153
    const/16 v0, 0x8

    .line 154
    .line 155
    aput-object v15, v8, v0

    .line 156
    .line 157
    const/16 v0, 0x9

    .line 158
    .line 159
    aput-object v14, v8, v0

    .line 160
    .line 161
    aput-object v12, v8, v6

    .line 162
    .line 163
    aput-object v10, v8, v4

    .line 164
    .line 165
    sput-object v8, Lcom/cicada/player/utils/FrameInfo$SampleFormat;->$VALUES:[Lcom/cicada/player/utils/FrameInfo$SampleFormat;

    .line 166
    .line 167
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/cicada/player/utils/FrameInfo$SampleFormat;->mValue:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cicada/player/utils/FrameInfo$SampleFormat;
    .locals 1

    .line 1
    const-class v0, Lcom/cicada/player/utils/FrameInfo$SampleFormat;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/cicada/player/utils/FrameInfo$SampleFormat;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/cicada/player/utils/FrameInfo$SampleFormat;
    .locals 1

    .line 1
    sget-object v0, Lcom/cicada/player/utils/FrameInfo$SampleFormat;->$VALUES:[Lcom/cicada/player/utils/FrameInfo$SampleFormat;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/cicada/player/utils/FrameInfo$SampleFormat;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/cicada/player/utils/FrameInfo$SampleFormat;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cicada/player/utils/FrameInfo$SampleFormat;->mValue:I

    .line 2
    .line 3
    return v0
.end method
