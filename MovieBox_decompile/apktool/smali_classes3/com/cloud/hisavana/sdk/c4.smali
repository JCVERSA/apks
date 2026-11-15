.class public abstract Lcom/cloud/hisavana/sdk/c4;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/hisavana/sdk/j4;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/sdk/c4$a;
    }
.end annotation


# static fields
.field public static final d:Lcom/cloud/hisavana/sdk/c4$a;


# instance fields
.field private a:Z

.field private b:I

.field private c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/cloud/hisavana/sdk/c4$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/cloud/hisavana/sdk/c4$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/cloud/hisavana/sdk/c4;->d:Lcom/cloud/hisavana/sdk/c4$a;

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

.method public constructor <init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/c4;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/c4;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    return-void
.end method

.method private final f()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/c4;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getVideoInfo()Lcom/cloud/hisavana/sdk/common/bean/VastData;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->getProgressData()Lcom/cloud/hisavana/sdk/common/bean/ProgressData;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object v2, v1

    .line 18
    :goto_0
    if-nez v2, :cond_2

    .line 19
    .line 20
    new-instance v2, Lcom/cloud/hisavana/sdk/common/bean/ProgressData;

    .line 21
    .line 22
    const/16 v8, 0xf

    .line 23
    .line 24
    const/4 v9, 0x0

    .line 25
    const/4 v4, 0x0

    .line 26
    const/4 v5, 0x0

    .line 27
    const/4 v6, 0x0

    .line 28
    const/4 v7, 0x0

    .line 29
    move-object v3, v2

    .line 30
    invoke-direct/range {v3 .. v9}, Lcom/cloud/hisavana/sdk/common/bean/ProgressData;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 31
    .line 32
    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    invoke-virtual {v0, v2}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->setProgressData(Lcom/cloud/hisavana/sdk/common/bean/ProgressData;)V

    .line 37
    .line 38
    .line 39
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->getDuration()Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    :cond_3
    if-nez v1, :cond_4

    .line 46
    .line 47
    const/4 v0, 0x0

    .line 48
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    :cond_4
    invoke-virtual {v2, v1}, Lcom/cloud/hisavana/sdk/common/bean/ProgressData;->setDuration(Ljava/lang/Integer;)V

    .line 53
    .line 54
    .line 55
    :cond_5
    return-void
.end method

.method private final g(I)V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/cloud/hisavana/sdk/c4;->h(II)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method private final h(II)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/c4;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getSource()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x4

    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    return-void

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/c4;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getVideoInfo()Lcom/cloud/hisavana/sdk/common/bean/VastData;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->getProgressData()Lcom/cloud/hisavana/sdk/common/bean/ProgressData;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    move-object v2, v0

    .line 30
    goto :goto_0

    .line 31
    :cond_2
    move-object v2, v1

    .line 32
    :goto_0
    if-nez v2, :cond_3

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {v2, p1}, Lcom/cloud/hisavana/sdk/common/bean/ProgressData;->setVideoPlayTimeType(Ljava/lang/Integer;)V

    .line 40
    .line 41
    .line 42
    :goto_1
    if-eqz v2, :cond_4

    .line 43
    .line 44
    const/16 v7, 0xf

    .line 45
    .line 46
    const/4 v8, 0x0

    .line 47
    const/4 v3, 0x0

    .line 48
    const/4 v4, 0x0

    .line 49
    const/4 v5, 0x0

    .line 50
    const/4 v6, 0x0

    .line 51
    invoke-static/range {v2 .. v8}, Lcom/cloud/hisavana/sdk/common/bean/ProgressData;->copy$default(Lcom/cloud/hisavana/sdk/common/bean/ProgressData;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZILjava/lang/Object;)Lcom/cloud/hisavana/sdk/common/bean/ProgressData;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    :cond_4
    if-lez p2, :cond_6

    .line 56
    .line 57
    if-nez v1, :cond_5

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_5
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {v1, p1}, Lcom/cloud/hisavana/sdk/common/bean/ProgressData;->setProgress(Ljava/lang/Integer;)V

    .line 65
    .line 66
    .line 67
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/c4;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 68
    .line 69
    invoke-static {p1, v1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->m0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/bean/ProgressData;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/c4;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getSource()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x4

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/c4;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getVideoInfo()Lcom/cloud/hisavana/sdk/common/bean/VastData;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->getVastTrack()Lcom/cloud/hisavana/sdk/common/bean/VastTracking;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/VastTracking;->getStartTrack()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 v0, 0x0

    .line 35
    :goto_0
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/c4;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 36
    .line 37
    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/Y0;->l(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 38
    .line 39
    .line 40
    const/4 v0, 0x2

    .line 41
    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/c4;->g(I)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public b(JJI)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/c4;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 2
    .line 3
    if-eqz p1, :cond_8

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getSource()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/4 p2, 0x4

    .line 10
    if-ne p1, p2, :cond_0

    .line 11
    .line 12
    goto/16 :goto_2

    .line 13
    .line 14
    :cond_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/c4;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getVideoInfo()Lcom/cloud/hisavana/sdk/common/bean/VastData;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 p1, 0x0

    .line 24
    :goto_0
    if-nez p1, :cond_2

    .line 25
    .line 26
    return-void

    .line 27
    :cond_2
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->getProgressData()Lcom/cloud/hisavana/sdk/common/bean/ProgressData;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    if-nez p2, :cond_3

    .line 32
    .line 33
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/c4;->f()V

    .line 34
    .line 35
    .line 36
    :cond_3
    if-nez p2, :cond_4

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_4
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object p3

    .line 43
    invoke-virtual {p2, p3}, Lcom/cloud/hisavana/sdk/common/bean/ProgressData;->setProgress(Ljava/lang/Integer;)V

    .line 44
    .line 45
    .line 46
    :goto_1
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->getVastTrack()Lcom/cloud/hisavana/sdk/common/bean/VastTracking;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    if-nez p1, :cond_5

    .line 51
    .line 52
    return-void

    .line 53
    :cond_5
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    new-instance p3, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    const-string p4, "progress : "

    .line 63
    .line 64
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p3

    .line 74
    const-string p4, "Rewarded"

    .line 75
    .line 76
    invoke-virtual {p2, p4, p3}, Lcom/cloud/sdk/commonutil/util/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    const/4 p2, 0x5

    .line 80
    const/16 p3, 0x19

    .line 81
    .line 82
    const/16 p4, 0x32

    .line 83
    .line 84
    if-gt p3, p5, :cond_6

    .line 85
    .line 86
    if-ge p5, p4, :cond_6

    .line 87
    .line 88
    iget p4, p0, Lcom/cloud/hisavana/sdk/c4;->b:I

    .line 89
    .line 90
    if-ge p4, p3, :cond_8

    .line 91
    .line 92
    iput p3, p0, Lcom/cloud/hisavana/sdk/c4;->b:I

    .line 93
    .line 94
    invoke-direct {p0, p2, p3}, Lcom/cloud/hisavana/sdk/c4;->h(II)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/VastTracking;->getQuarter()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/c4;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 102
    .line 103
    invoke-static {p1, p2}, Lcom/cloud/hisavana/sdk/Y0;->l(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 104
    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_6
    const/16 p3, 0x4b

    .line 108
    .line 109
    if-gt p4, p5, :cond_7

    .line 110
    .line 111
    if-ge p5, p3, :cond_7

    .line 112
    .line 113
    iget p3, p0, Lcom/cloud/hisavana/sdk/c4;->b:I

    .line 114
    .line 115
    if-ge p3, p4, :cond_8

    .line 116
    .line 117
    iput p4, p0, Lcom/cloud/hisavana/sdk/c4;->b:I

    .line 118
    .line 119
    invoke-direct {p0, p2, p4}, Lcom/cloud/hisavana/sdk/c4;->h(II)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/VastTracking;->getMidpoint()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/c4;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 127
    .line 128
    invoke-static {p1, p2}, Lcom/cloud/hisavana/sdk/Y0;->l(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 129
    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_7
    if-lt p5, p3, :cond_8

    .line 133
    .line 134
    iget p4, p0, Lcom/cloud/hisavana/sdk/c4;->b:I

    .line 135
    .line 136
    if-ge p4, p3, :cond_8

    .line 137
    .line 138
    iput p3, p0, Lcom/cloud/hisavana/sdk/c4;->b:I

    .line 139
    .line 140
    invoke-direct {p0, p2, p3}, Lcom/cloud/hisavana/sdk/c4;->h(II)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/VastTracking;->getThirdQuarter()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/c4;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 148
    .line 149
    invoke-static {p1, p2}, Lcom/cloud/hisavana/sdk/Y0;->l(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 150
    .line 151
    .line 152
    :cond_8
    :goto_2
    return-void
.end method

.method public c(Z)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "onVideoClickToPauseOrPlay isPlay "

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string v1, "AdMediaPlayerListener"

    .line 23
    .line 24
    invoke-virtual {v0, v1, p1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/c4;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 28
    .line 29
    const/4 v0, 0x4

    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getSource()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-ne p1, v0, :cond_0

    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/c4;->f()V

    .line 40
    .line 41
    .line 42
    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/c4;->g(I)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public d()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/c4;->f()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public e(Z)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "AdMediaPlayerListener"

    .line 6
    .line 7
    const-string v2, "onCompanion "

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/c4;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getSource()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x4

    .line 21
    if-ne v0, v1, :cond_0

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/c4;->f()V

    .line 25
    .line 26
    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    const/4 p1, 0x1

    .line 30
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/c4;->g(I)V

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void
.end method

.method public final i()V
    .locals 1

    .line 1
    const/4 v0, 0x6

    .line 2
    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/c4;->g(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public onComplete()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/c4;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getSource()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x4

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const/4 v0, 0x7

    .line 14
    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/c4;->g(I)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/c4;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getVideoInfo()Lcom/cloud/hisavana/sdk/common/bean/VastData;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->getVastTrack()Lcom/cloud/hisavana/sdk/common/bean/VastTracking;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/VastTracking;->getComplete()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 v0, 0x0

    .line 39
    :goto_0
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/c4;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 40
    .line 41
    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/Y0;->l(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public onIsPlayingChanged(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/c4;->a:Z

    .line 2
    .line 3
    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplayer2/PlaybackException;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/c4;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getSource()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x4

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    if-eqz p1, :cond_1

    .line 14
    .line 15
    iget v0, p1, Lcom/google/android/exoplayer2/PlaybackException;->errorCode:I

    .line 16
    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-nez v0, :cond_2

    .line 26
    .line 27
    :cond_1
    const-string v0, ""

    .line 28
    .line 29
    :cond_2
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/c4;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 30
    .line 31
    new-instance v2, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 32
    .line 33
    new-instance v3, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    if-eqz p1, :cond_3

    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    goto :goto_0

    .line 48
    :cond_3
    const/4 p1, 0x0

    .line 49
    :goto_0
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    const/16 v0, 0xbc3

    .line 57
    .line 58
    invoke-direct {v2, v0, p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;-><init>(ILjava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-static {v1, v2}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->l0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public onVideoSizeChanged(II)V
    .locals 0

    .line 1
    return-void
.end method

.method public onVolumeChanged(F)V
    .locals 0

    .line 1
    return-void
.end method
