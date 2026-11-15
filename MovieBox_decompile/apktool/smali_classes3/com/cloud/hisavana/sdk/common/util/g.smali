.class public Lcom/cloud/hisavana/sdk/common/util/g;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getPslinkInfo()Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->getIconUrl()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v1, p1}, Lcom/cloud/hisavana/sdk/J0;->E(Ljava/lang/String;I)Landroid/net/Uri;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    return v0

    .line 20
    :cond_1
    invoke-virtual {p0, v1}, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->setIconUri(Landroid/net/Uri;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->getImgList()Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_4

    .line 36
    .line 37
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Lcom/cloud/hisavana/sdk/common/bean/ImgListDTO;

    .line 42
    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/bean/ImgListDTO;->getUrl()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-nez v2, :cond_2

    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/bean/ImgListDTO;->getUrl()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-static {v2, p1}, Lcom/cloud/hisavana/sdk/J0;->E(Ljava/lang/String;I)Landroid/net/Uri;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    if-nez v2, :cond_3

    .line 64
    .line 65
    return v0

    .line 66
    :cond_3
    invoke-virtual {v1, v2}, Lcom/cloud/hisavana/sdk/common/bean/ImgListDTO;->setUri(Landroid/net/Uri;)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_4
    const/4 p0, 0x1

    .line 71
    return p0
.end method

.method public static b(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getSource()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x4

    .line 10
    const/4 v3, 0x0

    .line 11
    if-ne v1, v2, :cond_1

    .line 12
    .line 13
    return v3

    .line 14
    :cond_1
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdLaunchTypes()Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-ne v1, v0, :cond_2

    .line 23
    .line 24
    invoke-static {p0}, Lc7/c;->a(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    xor-int/2addr p0, v0

    .line 29
    return p0

    .line 30
    :cond_2
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getOfflineAdStartDate()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    if-eqz v1, :cond_4

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getOfflineAdLaunchDate()Ljava/lang/Long;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    if-nez v1, :cond_3

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_3
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 44
    .line 45
    const-string v2, "yyyy-MM-dd"

    .line 46
    .line 47
    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getOfflineAdStartDate()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    .line 59
    .line 60
    .line 61
    move-result-wide v1

    .line 62
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-virtual {p0, v4}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setOfflineAdStartDateLong(Ljava/lang/Long;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getOfflineAdLaunchDate()Ljava/lang/Long;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 74
    .line 75
    .line 76
    move-result-wide v4

    .line 77
    invoke-static {v4, v5}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    invoke-virtual {p0, v4}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setOfflineAdLaunchDateStr(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    const-string v5, "1"

    .line 85
    .line 86
    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    add-int/2addr v4, v0

    .line 91
    int-to-long v4, v4

    .line 92
    const-wide/32 v6, 0x5265c00

    .line 93
    .line 94
    .line 95
    mul-long/2addr v4, v6

    .line 96
    add-long/2addr v1, v4

    .line 97
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {p0, v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setOfflineAdExpireTime(Ljava/lang/Long;)V

    .line 102
    .line 103
    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 105
    .line 106
    .line 107
    move-result-wide v1

    .line 108
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getOfflineAdExpireTime()Ljava/lang/Long;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 113
    .line 114
    .line 115
    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    cmp-long p0, v1, v4

    .line 117
    .line 118
    if-gtz p0, :cond_4

    .line 119
    .line 120
    return v3

    .line 121
    :catch_0
    move-exception p0

    .line 122
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    const-string v2, "CacheAdExpiredUtil"

    .line 131
    .line 132
    invoke-virtual {v1, v2, p0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    :cond_4
    :goto_0
    return v0
.end method

.method public static c(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Z)I
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/16 p0, 0xe

    .line 4
    .line 5
    return p0

    .line 6
    :cond_0
    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/util/g;->b(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    const/4 p0, 0x1

    .line 13
    return p0

    .line 14
    :cond_1
    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/util/g;->f(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_2

    .line 19
    .line 20
    const/4 p0, 0x2

    .line 21
    return p0

    .line 22
    :cond_2
    invoke-static {p0, p1}, Lcom/cloud/hisavana/sdk/common/util/g;->e(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Z)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-nez p1, :cond_3

    .line 27
    .line 28
    const/4 p0, 0x4

    .line 29
    return p0

    .line 30
    :cond_3
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isOfflineAd()Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_4

    .line 35
    .line 36
    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/util/g;->g(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    if-eqz p0, :cond_4

    .line 41
    .line 42
    const/4 p0, 0x3

    .line 43
    return p0

    .line 44
    :cond_4
    const/4 p0, 0x0

    .line 45
    return p0
.end method

.method public static d(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getOfflineH5Url()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    return v2

    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isH5Zip()Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-eqz p0, :cond_1

    .line 18
    .line 19
    new-instance p0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v1}, Lcom/cloud/hisavana/sdk/common/util/m;->b(Landroid/content/Context;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v2, "offline_zip"

    .line 41
    .line 42
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/util/a0;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    new-instance v0, Ljava/io/File;

    .line 60
    .line 61
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    goto :goto_0

    .line 69
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    if-nez p0, :cond_2

    .line 74
    .line 75
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/J0;->C(Ljava/lang/String;)Z

    .line 76
    .line 77
    .line 78
    move-result p0

    .line 79
    if-eqz p0, :cond_2

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_2
    const/4 v2, 0x0

    .line 83
    :goto_0
    return v2
.end method

.method public static e(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Z)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isVastTypeAd()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    if-nez p1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getAdType()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-static {v1}, Lcom/cloud/hisavana/sdk/common/constant/Constants;->a(I)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_3

    .line 22
    .line 23
    :cond_1
    invoke-static {p0}, Lcom/cloud/hisavana/sdk/w2;->i(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const/4 v2, 0x3

    .line 28
    invoke-static {v1, v2}, Lcom/cloud/hisavana/sdk/J0;->O(Ljava/lang/String;I)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    return v0

    .line 35
    :cond_2
    invoke-static {p0}, Lcom/cloud/hisavana/sdk/w2;->e(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-static {v1}, Lcom/cloud/hisavana/sdk/J0;->C(Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_3

    .line 44
    .line 45
    return v0

    .line 46
    :cond_3
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdChoiceImageUrl()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-static {v1}, Lcom/cloud/hisavana/sdk/J0;->C(Ljava/lang/String;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {p0, v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setACReady(Ljava/lang/Boolean;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getExt()Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    if-eqz v1, :cond_5

    .line 66
    .line 67
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;->getStoreFlag()Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-lez v2, :cond_5

    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getImpBeanRequest()Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    if-eqz v2, :cond_5

    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getImpBeanRequest()Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    iget v2, v2, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->adt:I

    .line 88
    .line 89
    const/4 v3, 0x6

    .line 90
    if-eq v2, v3, :cond_5

    .line 91
    .line 92
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;->getStoreImageurl()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    if-eqz v2, :cond_4

    .line 101
    .line 102
    return v0

    .line 103
    :cond_4
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;->getStoreImageurl()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-static {v1}, Lcom/cloud/hisavana/sdk/J0;->C(Ljava/lang/String;)Z

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    if-nez v1, :cond_5

    .line 112
    .line 113
    return v0

    .line 114
    :cond_5
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getPslinkInfoStatus()Z

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    const/4 v2, 0x1

    .line 119
    if-eqz v1, :cond_8

    .line 120
    .line 121
    if-eqz p1, :cond_6

    .line 122
    .line 123
    invoke-static {p0, v2}, Lcom/cloud/hisavana/sdk/common/util/g;->a(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)Z

    .line 124
    .line 125
    .line 126
    move-result p0

    .line 127
    if-eqz p0, :cond_7

    .line 128
    .line 129
    :cond_6
    move v0, v2

    .line 130
    :cond_7
    return v0

    .line 131
    :cond_8
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isH5Zip()Z

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    if-eqz v1, :cond_9

    .line 136
    .line 137
    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/util/g;->d(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z

    .line 138
    .line 139
    .line 140
    move-result p0

    .line 141
    return p0

    .line 142
    :cond_9
    if-eqz p1, :cond_a

    .line 143
    .line 144
    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/util/g;->d(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z

    .line 145
    .line 146
    .line 147
    move-result p0

    .line 148
    if-eqz p0, :cond_b

    .line 149
    .line 150
    :cond_a
    move v0, v2

    .line 151
    :cond_b
    return v0
.end method

.method public static f(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z
    .locals 8

    .line 1
    const-string v0, "CacheAdExpiredUtil"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isOfflineAd()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x1

    .line 12
    if-nez v2, :cond_1

    .line 13
    .line 14
    return v3

    .line 15
    :cond_1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide v4

    .line 19
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getOfflineAdStartDateLong()Ljava/lang/Long;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 24
    .line 25
    .line 26
    move-result-wide v6

    .line 27
    sub-long/2addr v4, v6

    .line 28
    const-wide/32 v6, 0x5265c00

    .line 29
    .line 30
    .line 31
    div-long/2addr v4, v6

    .line 32
    long-to-int v2, v4

    .line 33
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getOfflineAdLaunchDateStr()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    const/16 v2, 0x31

    .line 42
    .line 43
    if-eq p0, v2, :cond_2

    .line 44
    .line 45
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    const-string v2, "isOfflineAdEfficient false: today is not delivered."

    .line 50
    .line 51
    invoke-virtual {p0, v0, v2}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    .line 54
    return v1

    .line 55
    :catch_0
    move-exception p0

    .line 56
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-virtual {v1, v0, p0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    :cond_2
    return v3
.end method

.method public static g(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    return p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getShowNum()Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-static {p0, v0}, Lcom/cloud/hisavana/sdk/common/util/g;->h(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public static h(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getViewJsonData()Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    return v0

    .line 12
    :cond_1
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;->getOffline()Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson$OfflineJson;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    if-nez v2, :cond_2

    .line 17
    .line 18
    return v0

    .line 19
    :cond_2
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;->getOffline()Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson$OfflineJson;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson$OfflineJson;->getMaxShowPPPD()Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-lt p1, v2, :cond_3

    .line 32
    .line 33
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    new-instance v3, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v4, "isReachedDisplayTimes, id: "

    .line 43
    .line 44
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdCreativeId()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string p0, ", showNum: "

    .line 55
    .line 56
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string p0, ", getMaxShowPPPD: "

    .line 63
    .line 64
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;->getOffline()Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson$OfflineJson;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson$OfflineJson;->getMaxShowPPPD()Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    const-string p1, "CacheAdExpiredUtil"

    .line 83
    .line 84
    invoke-virtual {v2, p1, p0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    return v0

    .line 88
    :cond_3
    const/4 p0, 0x0

    .line 89
    return p0
.end method
