.class public final Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field public OooO:I

.field public final OooO00o:Ljava/lang/String;

.field public OooO0O0:Ljava/lang/String;

.field public final OooO0OO:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final OooO0Oo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public OooO0o:I

.field public final OooO0o0:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;",
            ">;"
        }
    .end annotation
.end field

.field public OooO0oO:I

.field public OooO0oo:I

.field public OooOO0:Z

.field public OooOO0O:Ljava/lang/String;

.field public OooOO0o:Ljava/lang/String;

.field public OooOOO:Ljava/lang/String;

.field public OooOOO0:Ljava/lang/String;

.field public OooOOOO:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;IIIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;",
            ">;IIIIZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    move-object v2, p3

    .line 4
    move-object v3, p4

    .line 5
    move-object v4, p5

    .line 6
    move-object/from16 v5, p11

    .line 7
    .line 8
    move-object/from16 v6, p12

    .line 9
    .line 10
    move-object/from16 v7, p13

    .line 11
    .line 12
    move-object/from16 v8, p14

    .line 13
    .line 14
    const-string v9, "appId"

    .line 15
    .line 16
    invoke-static {p1, v9}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v9, "chainsStartMap"

    .line 20
    .line 21
    invoke-static {p3, v9}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string v9, "chainsEndMap"

    .line 25
    .line 26
    invoke-static {p4, v9}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string v9, "pages"

    .line 30
    .line 31
    invoke-static {p5, v9}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-string v9, "h5ProgressCollectList"

    .line 35
    .line 36
    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string v9, "isDomContentLoaded"

    .line 40
    .line 41
    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const-string v9, "navigationType"

    .line 45
    .line 46
    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const-string v9, "homePageRandomIdByGAId"

    .line 50
    .line 51
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    .line 56
    .line 57
    iput-object v1, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO00o:Ljava/lang/String;

    .line 58
    .line 59
    move-object v1, p2

    .line 60
    iput-object v1, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0O0:Ljava/lang/String;

    .line 61
    .line 62
    iput-object v2, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0OO:Ljava/util/Map;

    .line 63
    .line 64
    iput-object v3, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0Oo:Ljava/util/Map;

    .line 65
    .line 66
    iput-object v4, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0o0:Ljava/util/Map;

    .line 67
    .line 68
    move/from16 v1, p6

    .line 69
    .line 70
    iput v1, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0o:I

    .line 71
    .line 72
    move/from16 v1, p7

    .line 73
    .line 74
    iput v1, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0oO:I

    .line 75
    .line 76
    move/from16 v1, p8

    .line 77
    .line 78
    iput v1, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0oo:I

    .line 79
    .line 80
    move/from16 v1, p9

    .line 81
    .line 82
    iput v1, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO:I

    .line 83
    .line 84
    move/from16 v1, p10

    .line 85
    .line 86
    iput-boolean v1, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOO0:Z

    .line 87
    .line 88
    iput-object v5, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOO0O:Ljava/lang/String;

    .line 89
    .line 90
    iput-object v6, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOO0o:Ljava/lang/String;

    .line 91
    .line 92
    iput-object v7, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOOO0:Ljava/lang/String;

    .line 93
    .line 94
    iput-object v8, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOOO:Ljava/lang/String;

    .line 95
    .line 96
    move/from16 v1, p15

    .line 97
    .line 98
    iput-boolean v1, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOOOO:Z

    .line 99
    .line 100
    return-void
.end method


# virtual methods
.method public final OooO()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOOOO:Z

    .line 2
    .line 3
    return v0
.end method

.method public final OooO00o()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0Oo:Ljava/util/Map;

    return-object v0
.end method

.method public final OooO00o(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOO0:Z

    return-void
.end method

.method public final OooO0O0()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0OO:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public final OooO0OO()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0oO:I

    .line 2
    .line 3
    return v0
.end method

.method public final OooO0Oo()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0o:I

    .line 2
    .line 3
    return v0
.end method

.method public final OooO0o()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0O0:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final OooO0o0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOO0O:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final OooO0oO()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOOO:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final OooO0oo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOOO0:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final OooOO0()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0o0:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public final OooOO0O()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO:I

    .line 2
    .line 3
    return v0
.end method

.method public final OooOO0o()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0oo:I

    .line 2
    .line 3
    return v0
.end method

.method public final OooOOO()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOO0:Z

    .line 2
    .line 3
    return v0
.end method

.method public final OooOOO0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOO0o:Ljava/lang/String;

    .line 2
    .line 3
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
    instance-of v1, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

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
    check-cast p1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO00o:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO00o:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0O0:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v3, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0O0:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0OO:Ljava/util/Map;

    .line 36
    .line 37
    iget-object v3, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0OO:Ljava/util/Map;

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
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0Oo:Ljava/util/Map;

    .line 47
    .line 48
    iget-object v3, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0Oo:Ljava/util/Map;

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
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0o0:Ljava/util/Map;

    .line 58
    .line 59
    iget-object v3, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0o0:Ljava/util/Map;

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
    iget v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0o:I

    .line 69
    .line 70
    iget v3, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0o:I

    .line 71
    .line 72
    if-eq v1, v3, :cond_7

    .line 73
    .line 74
    return v2

    .line 75
    :cond_7
    iget v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0oO:I

    .line 76
    .line 77
    iget v3, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0oO:I

    .line 78
    .line 79
    if-eq v1, v3, :cond_8

    .line 80
    .line 81
    return v2

    .line 82
    :cond_8
    iget v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0oo:I

    .line 83
    .line 84
    iget v3, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0oo:I

    .line 85
    .line 86
    if-eq v1, v3, :cond_9

    .line 87
    .line 88
    return v2

    .line 89
    :cond_9
    iget v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO:I

    .line 90
    .line 91
    iget v3, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO:I

    .line 92
    .line 93
    if-eq v1, v3, :cond_a

    .line 94
    .line 95
    return v2

    .line 96
    :cond_a
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOO0:Z

    .line 97
    .line 98
    iget-boolean v3, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOO0:Z

    .line 99
    .line 100
    if-eq v1, v3, :cond_b

    .line 101
    .line 102
    return v2

    .line 103
    :cond_b
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOO0O:Ljava/lang/String;

    .line 104
    .line 105
    iget-object v3, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOO0O:Ljava/lang/String;

    .line 106
    .line 107
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    if-nez v1, :cond_c

    .line 112
    .line 113
    return v2

    .line 114
    :cond_c
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOO0o:Ljava/lang/String;

    .line 115
    .line 116
    iget-object v3, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOO0o:Ljava/lang/String;

    .line 117
    .line 118
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    if-nez v1, :cond_d

    .line 123
    .line 124
    return v2

    .line 125
    :cond_d
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOOO0:Ljava/lang/String;

    .line 126
    .line 127
    iget-object v3, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOOO0:Ljava/lang/String;

    .line 128
    .line 129
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    if-nez v1, :cond_e

    .line 134
    .line 135
    return v2

    .line 136
    :cond_e
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOOO:Ljava/lang/String;

    .line 137
    .line 138
    iget-object v3, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOOO:Ljava/lang/String;

    .line 139
    .line 140
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    if-nez v1, :cond_f

    .line 145
    .line 146
    return v2

    .line 147
    :cond_f
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOOOO:Z

    .line 148
    .line 149
    iget-boolean p1, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOOOO:Z

    .line 150
    .line 151
    if-eq v1, p1, :cond_10

    .line 152
    .line 153
    return v2

    .line 154
    :cond_10
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO00o:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0O0:Ljava/lang/String;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    :goto_0
    add-int/2addr v0, v1

    .line 20
    mul-int/lit8 v0, v0, 0x1f

    .line 21
    .line 22
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0OO:Ljava/util/Map;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    add-int/2addr v1, v0

    .line 29
    mul-int/lit8 v1, v1, 0x1f

    .line 30
    .line 31
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0Oo:Ljava/util/Map;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    add-int/2addr v0, v1

    .line 38
    mul-int/lit8 v0, v0, 0x1f

    .line 39
    .line 40
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0o0:Ljava/util/Map;

    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    add-int/2addr v1, v0

    .line 47
    mul-int/lit8 v1, v1, 0x1f

    .line 48
    .line 49
    iget v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0o:I

    .line 50
    .line 51
    add-int/2addr v0, v1

    .line 52
    mul-int/lit8 v0, v0, 0x1f

    .line 53
    .line 54
    iget v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0oO:I

    .line 55
    .line 56
    add-int/2addr v1, v0

    .line 57
    mul-int/lit8 v1, v1, 0x1f

    .line 58
    .line 59
    iget v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0oo:I

    .line 60
    .line 61
    add-int/2addr v0, v1

    .line 62
    mul-int/lit8 v0, v0, 0x1f

    .line 63
    .line 64
    iget v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO:I

    .line 65
    .line 66
    add-int/2addr v1, v0

    .line 67
    mul-int/lit8 v1, v1, 0x1f

    .line 68
    .line 69
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOO0:Z

    .line 70
    .line 71
    const/4 v2, 0x1

    .line 72
    if-eqz v0, :cond_1

    .line 73
    .line 74
    move v0, v2

    .line 75
    :cond_1
    add-int/2addr v1, v0

    .line 76
    mul-int/lit8 v1, v1, 0x1f

    .line 77
    .line 78
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOO0O:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    add-int/2addr v0, v1

    .line 85
    mul-int/lit8 v0, v0, 0x1f

    .line 86
    .line 87
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOO0o:Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    add-int/2addr v1, v0

    .line 94
    mul-int/lit8 v1, v1, 0x1f

    .line 95
    .line 96
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOOO0:Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    add-int/2addr v0, v1

    .line 103
    mul-int/lit8 v0, v0, 0x1f

    .line 104
    .line 105
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOOO:Ljava/lang/String;

    .line 106
    .line 107
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    add-int/2addr v1, v0

    .line 112
    mul-int/lit8 v1, v1, 0x1f

    .line 113
    .line 114
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOOOO:Z

    .line 115
    .line 116
    if-eqz v0, :cond_2

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_2
    move v2, v0

    .line 120
    :goto_1
    add-int/2addr v1, v2

    .line 121
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO00o:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0O0:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0OO:Ljava/util/Map;

    .line 8
    .line 9
    iget-object v4, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0Oo:Ljava/util/Map;

    .line 10
    .line 11
    iget-object v5, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0o0:Ljava/util/Map;

    .line 12
    .line 13
    iget v6, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0o:I

    .line 14
    .line 15
    iget v7, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0oO:I

    .line 16
    .line 17
    iget v8, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0oo:I

    .line 18
    .line 19
    iget v9, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO:I

    .line 20
    .line 21
    iget-boolean v10, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOO0:Z

    .line 22
    .line 23
    iget-object v11, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOO0O:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v12, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOO0o:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v13, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOOO0:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v14, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOOO:Ljava/lang/String;

    .line 30
    .line 31
    iget-boolean v15, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOOOO:Z

    .line 32
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    move/from16 v16, v15

    .line 39
    .line 40
    const-string v15, "AppChainData(appId="

    .line 41
    .line 42
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v1, ", homePagePath="

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, ", chainsStartMap="

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v1, ", chainsEndMap="

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v1, ", pages="

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v1, ", downloadFrameworkMode="

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v1, ", downloadAppMode="

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v1, ", zipFrameworkMode="

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v1, ", zipAppMode="

    .line 105
    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string v1, ", isReport="

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string v1, ", h5ProgressCollectList="

    .line 121
    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const-string v1, ", isDomContentLoaded="

    .line 129
    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string v1, ", navigationType="

    .line 137
    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    const-string v1, ", homePageRandomIdByGAId="

    .line 145
    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    const-string v1, ", offScreenRender="

    .line 153
    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    move/from16 v1, v16

    .line 158
    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    const-string v1, ")"

    .line 163
    .line 164
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    return-object v0
.end method
