.class public final Lcom/vungle/ads/internal/signals/a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/internal/signals/a$b;,
        Lcom/vungle/ads/internal/signals/a$a;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/vungle/ads/internal/signals/a$b;


# instance fields
.field private final sessionCount:I

.field private sessionCreationTime:J

.field private sessionDepthCounter:I

.field private sessionDuration:J

.field private final sessionId:Ljava/lang/String;

.field private signaledAd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/vungle/ads/internal/signals/b;",
            ">;"
        }
    .end annotation
.end field

.field private unclosedAd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/vungle/ads/internal/model/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/vungle/ads/internal/signals/a$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/vungle/ads/internal/signals/a$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/vungle/ads/internal/signals/a;->Companion:Lcom/vungle/ads/internal/signals/a$b;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/vungle/ads/internal/signals/a;->sessionCount:I

    .line 3
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "randomUUID().toString()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/vungle/ads/internal/signals/a;->sessionId:Ljava/lang/String;

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/vungle/ads/internal/signals/a;->sessionCreationTime:J

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/signals/a;->signaledAd:Ljava/util/List;

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/signals/a;->unclosedAd:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(IILjava/lang/String;JLjava/util/List;JILjava/util/List;Lkotlinx/serialization/internal/w1;)V
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
    .end annotation

    and-int/lit8 p11, p1, 0x1

    const/4 v0, 0x1

    if-eq v0, p11, :cond_0

    .line 7
    sget-object p11, Lcom/vungle/ads/internal/signals/a$a;->INSTANCE:Lcom/vungle/ads/internal/signals/a$a;

    invoke-virtual {p11}, Lcom/vungle/ads/internal/signals/a$a;->getDescriptor()Lkotlinx/serialization/descriptors/f;

    move-result-object p11

    invoke-static {p1, v0, p11}, Lkotlinx/serialization/internal/m1;->a(IILkotlinx/serialization/descriptors/f;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/vungle/ads/internal/signals/a;->sessionCount:I

    and-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_1

    .line 8
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "randomUUID().toString()"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iput-object p2, p0, Lcom/vungle/ads/internal/signals/a;->sessionId:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iput-object p3, p0, Lcom/vungle/ads/internal/signals/a;->sessionId:Ljava/lang/String;

    :goto_0
    and-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_2

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    const-wide/16 p4, 0x3e8

    div-long/2addr p2, p4

    .line 11
    iput-wide p2, p0, Lcom/vungle/ads/internal/signals/a;->sessionCreationTime:J

    goto :goto_1

    :cond_2
    iput-wide p4, p0, Lcom/vungle/ads/internal/signals/a;->sessionCreationTime:J

    :goto_1
    and-int/lit8 p2, p1, 0x8

    if-nez p2, :cond_3

    .line 12
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 13
    iput-object p2, p0, Lcom/vungle/ads/internal/signals/a;->signaledAd:Ljava/util/List;

    goto :goto_2

    :cond_3
    iput-object p6, p0, Lcom/vungle/ads/internal/signals/a;->signaledAd:Ljava/util/List;

    :goto_2
    and-int/lit8 p2, p1, 0x10

    if-nez p2, :cond_4

    const-wide/16 p2, 0x0

    iput-wide p2, p0, Lcom/vungle/ads/internal/signals/a;->sessionDuration:J

    goto :goto_3

    :cond_4
    iput-wide p7, p0, Lcom/vungle/ads/internal/signals/a;->sessionDuration:J

    :goto_3
    and-int/lit8 p2, p1, 0x20

    if-nez p2, :cond_5

    const/4 p2, 0x0

    iput p2, p0, Lcom/vungle/ads/internal/signals/a;->sessionDepthCounter:I

    goto :goto_4

    :cond_5
    iput p9, p0, Lcom/vungle/ads/internal/signals/a;->sessionDepthCounter:I

    :goto_4
    and-int/lit8 p1, p1, 0x40

    if-nez p1, :cond_6

    .line 14
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/vungle/ads/internal/signals/a;->unclosedAd:Ljava/util/List;

    goto :goto_5

    :cond_6
    iput-object p10, p0, Lcom/vungle/ads/internal/signals/a;->unclosedAd:Ljava/util/List;

    :goto_5
    return-void
.end method

.method public static synthetic copy$default(Lcom/vungle/ads/internal/signals/a;IILjava/lang/Object;)Lcom/vungle/ads/internal/signals/a;
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    iget p1, p0, Lcom/vungle/ads/internal/signals/a;->sessionCount:I

    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0, p1}, Lcom/vungle/ads/internal/signals/a;->copy(I)Lcom/vungle/ads/internal/signals/a;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static synthetic getSessionCount$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getSessionCreationTime$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getSessionDepthCounter$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getSessionDuration$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getSessionId$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getSignaledAd$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getUnclosedAd$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static final write$Self(Lcom/vungle/ads/internal/signals/a;Lsy/d;Lkotlinx/serialization/descriptors/f;)V
    .locals 7
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
    iget v0, p0, Lcom/vungle/ads/internal/signals/a;->sessionCount:I

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-interface {p1, p2, v1, v0}, Lsy/d;->w(Lkotlinx/serialization/descriptors/f;II)V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    invoke-interface {p1, p2, v0}, Lsy/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object v1, p0, Lcom/vungle/ads/internal/signals/a;->sessionId:Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    const-string v3, "randomUUID().toString()"

    .line 41
    .line 42
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-nez v1, :cond_1

    .line 50
    .line 51
    :goto_0
    iget-object v1, p0, Lcom/vungle/ads/internal/signals/a;->sessionId:Ljava/lang/String;

    .line 52
    .line 53
    invoke-interface {p1, p2, v0, v1}, Lsy/d;->y(Lkotlinx/serialization/descriptors/f;ILjava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    const/4 v0, 0x2

    .line 57
    invoke-interface {p1, p2, v0}, Lsy/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_2

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_2
    iget-wide v1, p0, Lcom/vungle/ads/internal/signals/a;->sessionCreationTime:J

    .line 65
    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 67
    .line 68
    .line 69
    move-result-wide v3

    .line 70
    const-wide/16 v5, 0x3e8

    .line 71
    .line 72
    div-long/2addr v3, v5

    .line 73
    cmp-long v1, v1, v3

    .line 74
    .line 75
    if-eqz v1, :cond_3

    .line 76
    .line 77
    :goto_1
    iget-wide v1, p0, Lcom/vungle/ads/internal/signals/a;->sessionCreationTime:J

    .line 78
    .line 79
    invoke-interface {p1, p2, v0, v1, v2}, Lsy/d;->F(Lkotlinx/serialization/descriptors/f;IJ)V

    .line 80
    .line 81
    .line 82
    :cond_3
    const/4 v0, 0x3

    .line 83
    invoke-interface {p1, p2, v0}, Lsy/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-eqz v1, :cond_4

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_4
    iget-object v1, p0, Lcom/vungle/ads/internal/signals/a;->signaledAd:Ljava/util/List;

    .line 91
    .line 92
    new-instance v2, Ljava/util/ArrayList;

    .line 93
    .line 94
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .line 96
    .line 97
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-nez v1, :cond_5

    .line 102
    .line 103
    :goto_2
    new-instance v1, Lkotlinx/serialization/internal/f;

    .line 104
    .line 105
    sget-object v2, Lcom/vungle/ads/internal/signals/b$a;->INSTANCE:Lcom/vungle/ads/internal/signals/b$a;

    .line 106
    .line 107
    invoke-direct {v1, v2}, Lkotlinx/serialization/internal/f;-><init>(Lkotlinx/serialization/b;)V

    .line 108
    .line 109
    .line 110
    iget-object v2, p0, Lcom/vungle/ads/internal/signals/a;->signaledAd:Ljava/util/List;

    .line 111
    .line 112
    invoke-interface {p1, p2, v0, v1, v2}, Lsy/d;->C(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    :cond_5
    const/4 v0, 0x4

    .line 116
    invoke-interface {p1, p2, v0}, Lsy/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-eqz v1, :cond_6

    .line 121
    .line 122
    goto :goto_3

    .line 123
    :cond_6
    iget-wide v1, p0, Lcom/vungle/ads/internal/signals/a;->sessionDuration:J

    .line 124
    .line 125
    const-wide/16 v3, 0x0

    .line 126
    .line 127
    cmp-long v1, v1, v3

    .line 128
    .line 129
    if-eqz v1, :cond_7

    .line 130
    .line 131
    :goto_3
    iget-wide v1, p0, Lcom/vungle/ads/internal/signals/a;->sessionDuration:J

    .line 132
    .line 133
    invoke-interface {p1, p2, v0, v1, v2}, Lsy/d;->F(Lkotlinx/serialization/descriptors/f;IJ)V

    .line 134
    .line 135
    .line 136
    :cond_7
    const/4 v0, 0x5

    .line 137
    invoke-interface {p1, p2, v0}, Lsy/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    if-eqz v1, :cond_8

    .line 142
    .line 143
    goto :goto_4

    .line 144
    :cond_8
    iget v1, p0, Lcom/vungle/ads/internal/signals/a;->sessionDepthCounter:I

    .line 145
    .line 146
    if-eqz v1, :cond_9

    .line 147
    .line 148
    :goto_4
    iget v1, p0, Lcom/vungle/ads/internal/signals/a;->sessionDepthCounter:I

    .line 149
    .line 150
    invoke-interface {p1, p2, v0, v1}, Lsy/d;->w(Lkotlinx/serialization/descriptors/f;II)V

    .line 151
    .line 152
    .line 153
    :cond_9
    const/4 v0, 0x6

    .line 154
    invoke-interface {p1, p2, v0}, Lsy/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    if-eqz v1, :cond_a

    .line 159
    .line 160
    goto :goto_5

    .line 161
    :cond_a
    iget-object v1, p0, Lcom/vungle/ads/internal/signals/a;->unclosedAd:Ljava/util/List;

    .line 162
    .line 163
    new-instance v2, Ljava/util/ArrayList;

    .line 164
    .line 165
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 166
    .line 167
    .line 168
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    if-nez v1, :cond_b

    .line 173
    .line 174
    :goto_5
    new-instance v1, Lkotlinx/serialization/internal/f;

    .line 175
    .line 176
    sget-object v2, Lcom/vungle/ads/internal/model/j$a;->INSTANCE:Lcom/vungle/ads/internal/model/j$a;

    .line 177
    .line 178
    invoke-direct {v1, v2}, Lkotlinx/serialization/internal/f;-><init>(Lkotlinx/serialization/b;)V

    .line 179
    .line 180
    .line 181
    iget-object p0, p0, Lcom/vungle/ads/internal/signals/a;->unclosedAd:Ljava/util/List;

    .line 182
    .line 183
    invoke-interface {p1, p2, v0, v1, p0}, Lsy/d;->C(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    :cond_b
    return-void
.end method


# virtual methods
.method public final component1()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/vungle/ads/internal/signals/a;->sessionCount:I

    .line 2
    .line 3
    return v0
.end method

.method public final copy(I)Lcom/vungle/ads/internal/signals/a;
    .locals 1

    .line 1
    new-instance v0, Lcom/vungle/ads/internal/signals/a;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/vungle/ads/internal/signals/a;-><init>(I)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/vungle/ads/internal/signals/a;

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
    check-cast p1, Lcom/vungle/ads/internal/signals/a;

    .line 12
    .line 13
    iget v1, p0, Lcom/vungle/ads/internal/signals/a;->sessionCount:I

    .line 14
    .line 15
    iget p1, p1, Lcom/vungle/ads/internal/signals/a;->sessionCount:I

    .line 16
    .line 17
    if-eq v1, p1, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    return v0
.end method

.method public final getSessionCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/vungle/ads/internal/signals/a;->sessionCount:I

    .line 2
    .line 3
    return v0
.end method

.method public final getSessionCreationTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/vungle/ads/internal/signals/a;->sessionCreationTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getSessionDepthCounter()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/vungle/ads/internal/signals/a;->sessionDepthCounter:I

    .line 2
    .line 3
    return v0
.end method

.method public final getSessionDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/vungle/ads/internal/signals/a;->sessionDuration:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getSessionId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/signals/a;->sessionId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSignaledAd()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/vungle/ads/internal/signals/b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/signals/a;->signaledAd:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getUnclosedAd()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/vungle/ads/internal/model/j;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/signals/a;->unclosedAd:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/vungle/ads/internal/signals/a;->sessionCount:I

    .line 2
    .line 3
    return v0
.end method

.method public final setSessionCreationTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/vungle/ads/internal/signals/a;->sessionCreationTime:J

    .line 2
    .line 3
    return-void
.end method

.method public final setSessionDepthCounter(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/vungle/ads/internal/signals/a;->sessionDepthCounter:I

    .line 2
    .line 3
    return-void
.end method

.method public final setSessionDuration(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/vungle/ads/internal/signals/a;->sessionDuration:J

    .line 2
    .line 3
    return-void
.end method

.method public final setSignaledAd(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/vungle/ads/internal/signals/b;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/vungle/ads/internal/signals/a;->signaledAd:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method

.method public final setUnclosedAd(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/vungle/ads/internal/model/j;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/vungle/ads/internal/signals/a;->unclosedAd:Ljava/util/List;

    .line 7
    .line 8
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
    const-string v1, "SessionData(sessionCount="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lcom/vungle/ads/internal/signals/a;->sessionCount:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const/16 v1, 0x29

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method
