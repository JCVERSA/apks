.class public final Lcom/cloud/hisavana/sdk/w;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/sdk/w$a;
    }
.end annotation


# static fields
.field public static final d:Lcom/cloud/hisavana/sdk/w$a;


# instance fields
.field private final a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field private b:F

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/cloud/hisavana/sdk/w$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/cloud/hisavana/sdk/w$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/cloud/hisavana/sdk/w;->d:Lcom/cloud/hisavana/sdk/w$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 1

    .line 1
    const-string v0, "adsDTO"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/w;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 10
    .line 11
    return-void
.end method

.method private final a()I
    .locals 2

    .line 1
    sget-object v0, Lcom/cloud/hisavana/sdk/w2;->a:Lcom/cloud/hisavana/sdk/w2$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/w;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/w2$a;->e(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method private final b(III)I
    .locals 1

    .line 1
    sget-object v0, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    .line 2
    .line 3
    add-int/2addr p2, p1

    .line 4
    add-int/2addr p3, p2

    .line 5
    invoke-virtual {v0, p3}, Lkotlin/random/Random$Default;->nextInt(I)I

    .line 6
    .line 7
    .line 8
    move-result p3

    .line 9
    const/4 v0, 0x1

    .line 10
    add-int/2addr p3, v0

    .line 11
    if-gt p3, p1, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    if-gt p3, p2, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/4 v0, 0x2

    .line 19
    :goto_0
    return v0
.end method

.method private final c(F)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/hisavana/sdk/w2;->a:Lcom/cloud/hisavana/sdk/w2$a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/w2$a;->b(F)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method private final d(I)Ljava/lang/String;
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Ljava/text/DecimalFormat;

    .line 2
    .line 3
    const-string v1, "#.0"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/text/DecimalFormatSymbols;

    .line 9
    .line 10
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V

    .line 16
    .line 17
    .line 18
    sget-object v1, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 21
    .line 22
    .line 23
    const/16 v1, 0x3e8

    .line 24
    .line 25
    if-ge p1, v1, :cond_0

    .line 26
    .line 27
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const v1, 0xf4240

    .line 33
    .line 34
    .line 35
    if-ge p1, v1, :cond_1

    .line 36
    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    int-to-float p1, p1

    .line 43
    const/high16 v2, 0x447a0000    # 1000.0f

    .line 44
    .line 45
    div-float/2addr p1, v2

    .line 46
    float-to-double v2, p1

    .line 47
    invoke-virtual {v0, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string p1, " Thousand"

    .line 55
    .line 56
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    goto :goto_0

    .line 64
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    int-to-float p1, p1

    .line 70
    const v2, 0x49742400    # 1000000.0f

    .line 71
    .line 72
    .line 73
    div-float/2addr p1, v2

    .line 74
    float-to-double v2, p1

    .line 75
    invoke-virtual {v0, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string p1, " Million"

    .line 83
    .line 84
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_0
    return-object p1

    .line 92
    :catch_0
    const-string p1, ""

    .line 93
    .line 94
    return-object p1
.end method

.method private final e()F
    .locals 2

    .line 1
    sget-object v0, Lcom/cloud/hisavana/sdk/w2;->a:Lcom/cloud/hisavana/sdk/w2$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/w;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/w2$a;->i(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method


# virtual methods
.method public final f(I)I
    .locals 1

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sget p1, Lcom/cloud/hisavana/sdk/R$drawable;->hs_ad_download:I

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_1
    sget p1, Lcom/cloud/hisavana/sdk/R$drawable;->hs_ad_score:I

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 17
    :goto_1
    return p1
.end method

.method public final g()I
    .locals 9

    .line 1
    invoke-static {}, Lcom/cloud/hisavana/sdk/g1;->o()Lcom/cloud/hisavana/sdk/g1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/g1;->m()Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "BannerStyleHelper"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v3, "extInfo is null, style is OLD"

    .line 19
    .line 20
    invoke-virtual {v0, v1, v3}, Lcom/cloud/sdk/commonutil/util/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return v2

    .line 24
    :cond_0
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/w;->e()F

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    iput v3, p0, Lcom/cloud/hisavana/sdk/w;->b:F

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;->getScoreCount()F

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    cmpl-float v3, v3, v4

    .line 35
    .line 36
    const/4 v4, 0x1

    .line 37
    if-ltz v3, :cond_1

    .line 38
    .line 39
    move v3, v4

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    move v3, v2

    .line 42
    :goto_0
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/w;->a()I

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    iput v5, p0, Lcom/cloud/hisavana/sdk/w;->c:I

    .line 47
    .line 48
    int-to-long v5, v5

    .line 49
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;->getDownloadCount()J

    .line 50
    .line 51
    .line 52
    move-result-wide v7

    .line 53
    cmp-long v5, v5, v7

    .line 54
    .line 55
    if-ltz v5, :cond_2

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    move v4, v2

    .line 59
    :goto_1
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;->getOldStyle()I

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    if-eqz v3, :cond_3

    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;->getScoreStyle()I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    goto :goto_2

    .line 70
    :cond_3
    move v3, v2

    .line 71
    :goto_2
    if-eqz v4, :cond_4

    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;->getDownloadStyle()I

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    :cond_4
    invoke-direct {p0, v5, v3, v2}, Lcom/cloud/hisavana/sdk/w;->b(III)I

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    invoke-static {}, Lc7/b;->l()Z

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    if-eqz v3, :cond_5

    .line 86
    .line 87
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    new-instance v4, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    const-string v5, "score: "

    .line 97
    .line 98
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    iget v5, p0, Lcom/cloud/hisavana/sdk/w;->b:F

    .line 102
    .line 103
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v5, ", \ndownloadCount: "

    .line 107
    .line 108
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    iget v5, p0, Lcom/cloud/hisavana/sdk/w;->c:I

    .line 112
    .line 113
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v5, ", \nX: "

    .line 117
    .line 118
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;->getScoreCount()F

    .line 122
    .line 123
    .line 124
    move-result v5

    .line 125
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const-string v5, ", \nY: "

    .line 129
    .line 130
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;->getDownloadCount()J

    .line 134
    .line 135
    .line 136
    move-result-wide v5

    .line 137
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string v5, ", \nweightOld: "

    .line 141
    .line 142
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;->getOldStyle()I

    .line 146
    .line 147
    .line 148
    move-result v5

    .line 149
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    const-string v5, ", \nweightScore: "

    .line 153
    .line 154
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;->getScoreStyle()I

    .line 158
    .line 159
    .line 160
    move-result v5

    .line 161
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    const-string v5, ", \nweightDownload: "

    .line 165
    .line 166
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;->getDownloadStyle()I

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    const-string v0, ", \nrandomStyle: "

    .line 177
    .line 178
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    invoke-virtual {v3, v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    :cond_5
    return v2
.end method

.method public final h(I)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    if-eqz p1, :cond_2

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq p1, v1, :cond_1

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    if-eq p1, v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget p1, p0, Lcom/cloud/hisavana/sdk/w;->c:I

    .line 13
    .line 14
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/w;->d(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    iget p1, p0, Lcom/cloud/hisavana/sdk/w;->b:F

    .line 20
    .line 21
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/w;->c(F)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    :cond_2
    :goto_0
    return-object v0
.end method
