.class public Lcom/transsion/api/gateway/utils/GatewayUtils;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static L:Lcom/transsion/api/gateway/utils/ObjectLogUtils;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "gateway_sdk"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->setGlobalTag(Ljava/lang/String;)Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->setLogSwitch(Z)Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0, v1}, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->setLogHeadSwitch(Z)Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0, v1}, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->setBorderSwitch(Z)Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->create()Lcom/transsion/api/gateway/utils/ObjectLogUtils;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lcom/transsion/api/gateway/utils/GatewayUtils;->L:Lcom/transsion/api/gateway/utils/ObjectLogUtils;

    .line 30
    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static canUseGateWay(Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/transsion/api/gateway/config/b;->a()Lcom/transsion/api/gateway/config/b;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/transsion/api/gateway/config/b;->a:Lcom/transsion/api/gateway/config/a;

    .line 3
    iget-boolean v0, v0, Lcom/transsion/api/gateway/config/a;->b:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 4
    :cond_0
    invoke-static {}, Lcom/transsion/api/gateway/config/b;->a()Lcom/transsion/api/gateway/config/b;

    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/transsion/api/gateway/config/b;->a:Lcom/transsion/api/gateway/config/a;

    .line 6
    iget-object v0, v0, Lcom/transsion/api/gateway/config/a;->j:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 7
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/api/gateway/bean/GatewayHost;

    .line 9
    iget-object v2, v2, Lcom/transsion/api/gateway/bean/GatewayHost;->host:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v1
.end method

.method public static canUseGateWay(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .line 10
    invoke-static {}, Lcom/transsion/api/gateway/config/b;->a()Lcom/transsion/api/gateway/config/b;

    move-result-object v0

    .line 11
    iget-object v0, v0, Lcom/transsion/api/gateway/config/b;->a:Lcom/transsion/api/gateway/config/a;

    .line 12
    iget-boolean v0, v0, Lcom/transsion/api/gateway/config/a;->b:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 13
    :cond_0
    invoke-static {}, Lcom/transsion/api/gateway/config/b;->a()Lcom/transsion/api/gateway/config/b;

    move-result-object v0

    .line 14
    iget-object v0, v0, Lcom/transsion/api/gateway/config/b;->a:Lcom/transsion/api/gateway/config/a;

    .line 15
    iget-object v0, v0, Lcom/transsion/api/gateway/config/a;->k:Ljava/util/List;

    .line 16
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 17
    :cond_1
    invoke-static {}, Lcom/transsion/api/gateway/config/b;->a()Lcom/transsion/api/gateway/config/b;

    move-result-object v0

    .line 18
    iget-object v0, v0, Lcom/transsion/api/gateway/config/b;->a:Lcom/transsion/api/gateway/config/a;

    .line 19
    iget-object v0, v0, Lcom/transsion/api/gateway/config/a;->j:Ljava/util/List;

    if-eqz v0, :cond_8

    .line 20
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 21
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 22
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 23
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/api/gateway/bean/GatewayHost;

    .line 24
    iget-object v6, v4, Lcom/transsion/api/gateway/bean/GatewayHost;->host:Ljava/lang/String;

    invoke-virtual {v6, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 25
    iget-object v2, v4, Lcom/transsion/api/gateway/bean/GatewayHost;->enablePath:Ljava/util/List;

    .line 26
    iget-object v3, v4, Lcom/transsion/api/gateway/bean/GatewayHost;->disablePath:Ljava/util/List;

    move p0, v5

    goto :goto_0

    :cond_4
    move p0, v1

    :goto_0
    if-nez p0, :cond_5

    return v1

    .line 27
    :cond_5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_6

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_6

    return v5

    .line 28
    :cond_6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_7

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    return v5

    .line 29
    :cond_7
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_8

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    move v1, v5

    :cond_8
    :goto_1
    return v1
.end method

.method public static isExcludeRequest(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    const-string v0, "/gateway/sdk/v1/config?app="

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_2

    .line 16
    .line 17
    const-string v0, "/gateway/metric/add"

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-eqz p0, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 v1, 0x0

    .line 27
    :cond_2
    :goto_0
    return v1
.end method

.method public static isRequireSign(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/transsion/api/gateway/GateWaySdk;->getActivateSigHosts()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lcom/transsion/api/gateway/GateWaySdk;->getActivateSigPaths()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x1

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-lez v3, :cond_1

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_1

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_0

    .line 39
    .line 40
    return v2

    .line 41
    :cond_1
    if-eqz v1, :cond_3

    .line 42
    .line 43
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    if-lez p0, :cond_3

    .line 48
    .line 49
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_3

    .line 58
    .line 59
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_2

    .line 70
    .line 71
    return v2

    .line 72
    :cond_3
    const/4 p0, 0x0

    .line 73
    return p0
.end method

.method public static textToNumericFormatV4(Ljava/lang/String;)[B
    .locals 16

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v1, :cond_9

    .line 10
    .line 11
    const/16 v3, 0xf

    .line 12
    .line 13
    if-gt v1, v3, :cond_9

    .line 14
    .line 15
    const-wide/16 v3, 0x0

    .line 16
    .line 17
    move-wide v9, v3

    .line 18
    const/4 v7, 0x0

    .line 19
    const/4 v8, 0x1

    .line 20
    const/4 v11, 0x0

    .line 21
    :goto_0
    const/4 v12, 0x3

    .line 22
    const-wide/16 v13, 0xff

    .line 23
    .line 24
    if-ge v7, v1, :cond_4

    .line 25
    .line 26
    move-object/from16 v15, p0

    .line 27
    .line 28
    invoke-virtual {v15, v7}, Ljava/lang/String;->charAt(I)C

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    const/16 v6, 0x2e

    .line 33
    .line 34
    if-ne v5, v6, :cond_2

    .line 35
    .line 36
    if-nez v8, :cond_1

    .line 37
    .line 38
    cmp-long v5, v9, v3

    .line 39
    .line 40
    if-ltz v5, :cond_1

    .line 41
    .line 42
    cmp-long v5, v9, v13

    .line 43
    .line 44
    if-gtz v5, :cond_1

    .line 45
    .line 46
    if-ne v11, v12, :cond_0

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_0
    add-int/lit8 v5, v11, 0x1

    .line 50
    .line 51
    and-long v8, v9, v13

    .line 52
    .line 53
    long-to-int v6, v8

    .line 54
    int-to-byte v6, v6

    .line 55
    aput-byte v6, v0, v11

    .line 56
    .line 57
    move-wide v9, v3

    .line 58
    move v11, v5

    .line 59
    const/4 v8, 0x1

    .line 60
    goto :goto_2

    .line 61
    :cond_1
    :goto_1
    return-object v2

    .line 62
    :cond_2
    const/16 v6, 0xa

    .line 63
    .line 64
    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    if-gez v5, :cond_3

    .line 69
    .line 70
    return-object v2

    .line 71
    :cond_3
    const-wide/16 v12, 0xa

    .line 72
    .line 73
    mul-long/2addr v9, v12

    .line 74
    int-to-long v5, v5

    .line 75
    add-long/2addr v9, v5

    .line 76
    const/4 v8, 0x0

    .line 77
    :goto_2
    add-int/lit8 v7, v7, 0x1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_4
    if-nez v8, :cond_9

    .line 81
    .line 82
    cmp-long v1, v9, v3

    .line 83
    .line 84
    if-ltz v1, :cond_9

    .line 85
    .line 86
    rsub-int/lit8 v1, v11, 0x4

    .line 87
    .line 88
    const/16 v3, 0x8

    .line 89
    .line 90
    mul-int/2addr v1, v3

    .line 91
    const-wide/16 v4, 0x1

    .line 92
    .line 93
    shl-long/2addr v4, v1

    .line 94
    cmp-long v1, v9, v4

    .line 95
    .line 96
    if-gez v1, :cond_9

    .line 97
    .line 98
    const/4 v1, 0x2

    .line 99
    if-eqz v11, :cond_5

    .line 100
    .line 101
    const/4 v2, 0x1

    .line 102
    if-eq v11, v2, :cond_6

    .line 103
    .line 104
    if-eq v11, v1, :cond_7

    .line 105
    .line 106
    if-eq v11, v12, :cond_8

    .line 107
    .line 108
    goto :goto_3

    .line 109
    :cond_5
    const/16 v2, 0x18

    .line 110
    .line 111
    shr-long v4, v9, v2

    .line 112
    .line 113
    and-long/2addr v4, v13

    .line 114
    long-to-int v2, v4

    .line 115
    int-to-byte v2, v2

    .line 116
    const/4 v4, 0x0

    .line 117
    aput-byte v2, v0, v4

    .line 118
    .line 119
    :cond_6
    const/16 v2, 0x10

    .line 120
    .line 121
    shr-long v4, v9, v2

    .line 122
    .line 123
    and-long/2addr v4, v13

    .line 124
    long-to-int v2, v4

    .line 125
    int-to-byte v2, v2

    .line 126
    const/4 v4, 0x1

    .line 127
    aput-byte v2, v0, v4

    .line 128
    .line 129
    :cond_7
    shr-long v2, v9, v3

    .line 130
    .line 131
    and-long/2addr v2, v13

    .line 132
    long-to-int v2, v2

    .line 133
    int-to-byte v2, v2

    .line 134
    aput-byte v2, v0, v1

    .line 135
    .line 136
    :cond_8
    and-long v1, v9, v13

    .line 137
    .line 138
    long-to-int v1, v1

    .line 139
    int-to-byte v1, v1

    .line 140
    aput-byte v1, v0, v12

    .line 141
    .line 142
    :goto_3
    return-object v0

    .line 143
    :cond_9
    return-object v2
.end method
