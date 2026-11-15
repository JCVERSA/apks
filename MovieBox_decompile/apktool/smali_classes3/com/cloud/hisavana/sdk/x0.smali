.class public abstract Lcom/cloud/hisavana/sdk/x0;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static a:Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;

.field private static b:Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method private static a(Z)Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;
    .locals 4

    .line 1
    new-instance v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/cloud/hisavana/sdk/data/bean/request/ApplicationDTO;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/cloud/hisavana/sdk/data/bean/request/ApplicationDTO;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->d()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v1, v2}, Lcom/cloud/hisavana/sdk/data/bean/request/ApplicationDTO;->setPackageName(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/b;->a()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v1, v2}, Lcom/cloud/hisavana/sdk/data/bean/request/ApplicationDTO;->setInstallTime(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-static {}, Lk7/c;->p()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v1, v2}, Lcom/cloud/hisavana/sdk/data/bean/request/ApplicationDTO;->setVersionInt(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-static {}, Lk7/c;->q()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v1, v2}, Lcom/cloud/hisavana/sdk/data/bean/request/ApplicationDTO;->setVersion(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-static {}, Lk7/c;->l()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v1, v2}, Lcom/cloud/hisavana/sdk/data/bean/request/ApplicationDTO;->setSdkVersion(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const v2, 0x57abc

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v2}, Lcom/cloud/hisavana/sdk/data/bean/request/ApplicationDTO;->setSdkVersionCode(I)V

    .line 50
    .line 51
    .line 52
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/r;->c()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v1, v2}, Lcom/cloud/hisavana/sdk/data/bean/request/ApplicationDTO;->setUserAgent(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-static {v2}, Lcom/cloud/hisavana/sdk/common/util/h0;->c(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    if-nez v2, :cond_0

    .line 68
    .line 69
    const-wide/16 v2, 0x0

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 73
    .line 74
    int-to-long v2, v2

    .line 75
    :goto_0
    invoke-virtual {v1, v2, v3}, Lcom/cloud/hisavana/sdk/data/bean/request/ApplicationDTO;->setPsVersion(J)V

    .line 76
    .line 77
    .line 78
    const-string v2, "Online"

    .line 79
    .line 80
    invoke-virtual {v1, v2}, Lcom/cloud/hisavana/sdk/data/bean/request/ApplicationDTO;->setPsChannel(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    const-string v2, "1.0.7"

    .line 84
    .line 85
    invoke-virtual {v1, v2}, Lcom/cloud/hisavana/sdk/data/bean/request/ApplicationDTO;->setPsApiVersion(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iput-object v1, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;->application:Lcom/cloud/hisavana/sdk/data/bean/request/ApplicationDTO;

    .line 89
    .line 90
    new-instance v1, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;

    .line 91
    .line 92
    invoke-direct {v1}, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;-><init>()V

    .line 93
    .line 94
    .line 95
    invoke-static {}, Lk7/c;->o()I

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    invoke-virtual {v1, v2}, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->setType(I)V

    .line 100
    .line 101
    .line 102
    invoke-static {}, Lk7/c;->a()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-virtual {v1, v2}, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->setBrand(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-static {}, Lk7/c;->f()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-virtual {v1, v2}, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->setModel(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-static {}, Lk7/c;->c()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-virtual {v1, v2}, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->setMaker(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->e()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    invoke-virtual {v1, v2}, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->setGaid(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    const/4 v2, 0x1

    .line 131
    invoke-virtual {v1, v2}, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->setOsType(I)V

    .line 132
    .line 133
    .line 134
    invoke-static {}, Lk7/c;->h()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    invoke-virtual {v1, v2}, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->setOsVersion(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-static {}, Lk7/c;->k()I

    .line 142
    .line 143
    .line 144
    move-result v2

    .line 145
    invoke-virtual {v1, v2}, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->setScreenWidth(I)V

    .line 146
    .line 147
    .line 148
    invoke-static {}, Lk7/c;->j()I

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    invoke-virtual {v1, v2}, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->setScreenHeight(I)V

    .line 153
    .line 154
    .line 155
    invoke-static {}, Lk7/c;->i()I

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    invoke-virtual {v1, v2}, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->setScreenDensity(I)V

    .line 160
    .line 161
    .line 162
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->f()I

    .line 163
    .line 164
    .line 165
    move-result v2

    .line 166
    invoke-virtual {v1, v2}, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->setTurnOffPerAds(I)V

    .line 167
    .line 168
    .line 169
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->c()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    invoke-virtual {v1, v2}, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->setCpu(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    new-instance v2, Ljava/lang/StringBuilder;

    .line 177
    .line 178
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    .line 180
    .line 181
    const-string v3, ""

    .line 182
    .line 183
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-static {}, Lk7/c;->g()I

    .line 187
    .line 188
    .line 189
    move-result v3

    .line 190
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    invoke-virtual {v1, v2}, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->setOsApiLevel(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    if-nez p0, :cond_1

    .line 201
    .line 202
    invoke-static {}, Lk7/a;->h0()Z

    .line 203
    .line 204
    .line 205
    move-result p0

    .line 206
    if-eqz p0, :cond_1

    .line 207
    .line 208
    invoke-static {}, Lk7/a;->m()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object p0

    .line 212
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 213
    .line 214
    .line 215
    move-result v2

    .line 216
    if-nez v2, :cond_1

    .line 217
    .line 218
    invoke-virtual {v1, p0}, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->setAntifraud(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    :cond_1
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->n()J

    .line 222
    .line 223
    .line 224
    move-result-wide v2

    .line 225
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 226
    .line 227
    .line 228
    move-result-object p0

    .line 229
    invoke-virtual {v1, p0}, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->setTotalRam(Ljava/lang/Long;)V

    .line 230
    .line 231
    .line 232
    iput-object v1, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;->device:Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;

    .line 233
    .line 234
    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Lcom/cloud/hisavana/sdk/x0;->f()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-instance v1, Lcom/cloud/hisavana/sdk/data/bean/request/ConfigRequestBody;

    .line 6
    .line 7
    invoke-direct {v1}, Lcom/cloud/hisavana/sdk/data/bean/request/ConfigRequestBody;-><init>()V

    .line 8
    .line 9
    .line 10
    sget-object v2, Lcom/cloud/hisavana/sdk/x0;->b:Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;

    .line 11
    .line 12
    iget-object v3, v2, Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;->application:Lcom/cloud/hisavana/sdk/data/bean/request/ApplicationDTO;

    .line 13
    .line 14
    iput-object v3, v1, Lcom/cloud/hisavana/sdk/data/bean/request/ConfigRequestBody;->application:Lcom/cloud/hisavana/sdk/data/bean/request/ApplicationDTO;

    .line 15
    .line 16
    iget-object v2, v2, Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;->device:Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;

    .line 17
    .line 18
    iput-object v2, v1, Lcom/cloud/hisavana/sdk/data/bean/request/ConfigRequestBody;->device:Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;

    .line 19
    .line 20
    new-instance v2, Lcom/cloud/hisavana/sdk/data/bean/request/UserDTO;

    .line 21
    .line 22
    invoke-direct {v2}, Lcom/cloud/hisavana/sdk/data/bean/request/UserDTO;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v2, v1, Lcom/cloud/hisavana/sdk/data/bean/request/ConfigRequestBody;->user:Lcom/cloud/hisavana/sdk/data/bean/request/UserDTO;

    .line 26
    .line 27
    sget-object v2, Lc7/b;->b:Ljava/lang/String;

    .line 28
    .line 29
    iput-object v2, v1, Lcom/cloud/hisavana/sdk/data/bean/request/ConfigRequestBody;->applicationId:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {}, Lc7/b;->m()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    iput-boolean v2, v1, Lcom/cloud/hisavana/sdk/data/bean/request/ConfigRequestBody;->testRequest:Z

    .line 36
    .line 37
    if-nez v0, :cond_0

    .line 38
    .line 39
    iget-object v0, v1, Lcom/cloud/hisavana/sdk/data/bean/request/ConfigRequestBody;->device:Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;

    .line 40
    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->getGaid()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_0

    .line 52
    .line 53
    iget-object v0, v1, Lcom/cloud/hisavana/sdk/data/bean/request/ConfigRequestBody;->device:Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;

    .line 54
    .line 55
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->e()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v0, v2}, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->setGaid(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catchall_0
    move-exception v0

    .line 64
    goto :goto_1

    .line 65
    :cond_0
    :goto_0
    iget-object v0, v1, Lcom/cloud/hisavana/sdk/data/bean/request/ConfigRequestBody;->user:Lcom/cloud/hisavana/sdk/data/bean/request/UserDTO;

    .line 66
    .line 67
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->g()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v0, v2}, Lcom/cloud/hisavana/sdk/data/bean/request/UserDTO;->setBaseStation(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iget-object v0, v1, Lcom/cloud/hisavana/sdk/data/bean/request/ConfigRequestBody;->user:Lcom/cloud/hisavana/sdk/data/bean/request/UserDTO;

    .line 75
    .line 76
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/d;->d()D

    .line 77
    .line 78
    .line 79
    move-result-wide v2

    .line 80
    invoke-virtual {v0, v2, v3}, Lcom/cloud/hisavana/sdk/data/bean/request/UserDTO;->setLatitude(D)V

    .line 81
    .line 82
    .line 83
    iget-object v0, v1, Lcom/cloud/hisavana/sdk/data/bean/request/ConfigRequestBody;->user:Lcom/cloud/hisavana/sdk/data/bean/request/UserDTO;

    .line 84
    .line 85
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/d;->f()D

    .line 86
    .line 87
    .line 88
    move-result-wide v2

    .line 89
    invoke-virtual {v0, v2, v3}, Lcom/cloud/hisavana/sdk/data/bean/request/UserDTO;->setLongitude(D)V

    .line 90
    .line 91
    .line 92
    iget-object v0, v1, Lcom/cloud/hisavana/sdk/data/bean/request/ConfigRequestBody;->user:Lcom/cloud/hisavana/sdk/data/bean/request/UserDTO;

    .line 93
    .line 94
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/d;->c()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-virtual {v0, v2}, Lcom/cloud/hisavana/sdk/data/bean/request/UserDTO;->setCoordTime(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/util/h0;->f(Landroid/content/Context;)Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    iput-boolean v0, v1, Lcom/cloud/hisavana/sdk/data/bean/request/ConfigRequestBody;->ascribeEnable:Z

    .line 110
    .line 111
    invoke-static {}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomCloudControlKey;->getCustomRequestKeys()Ljava/util/List;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    iput-object v0, v1, Lcom/cloud/hisavana/sdk/data/bean/request/ConfigRequestBody;->customKeys:Ljava/util/List;

    .line 116
    .line 117
    invoke-static {v1}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->d(Ljava/lang/Object;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    return-object v0

    .line 122
    :goto_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    const-string v0, ""

    .line 134
    .line 135
    return-object v0
.end method

.method public static c(Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0}, Lcom/cloud/hisavana/sdk/x0;->d(Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method public static d(Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;)Ljava/lang/String;
    .locals 6

    .line 1
    :try_start_0
    invoke-static {}, Lcom/cloud/hisavana/sdk/x0;->e()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-object v1, Lcom/cloud/hisavana/sdk/x0;->a:Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;

    .line 6
    .line 7
    invoke-static {v1}, Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;->copy(Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;)Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->requestId:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->requestId:Ljava/lang/String;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto/16 :goto_1

    .line 24
    .line 25
    :cond_0
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->o()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    :goto_0
    iput-object v2, v1, Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;->requestId:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {}, Lc7/b;->m()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    iput-object v2, v1, Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;->testRequest:Ljava/lang/Boolean;

    .line 40
    .line 41
    sget-object v2, Lc7/b;->b:Ljava/lang/String;

    .line 42
    .line 43
    iput-object v2, v1, Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;->applicationId:Ljava/lang/String;

    .line 44
    .line 45
    const/4 v2, 0x1

    .line 46
    iput v2, v1, Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;->apiType:I

    .line 47
    .line 48
    const/4 v3, 0x0

    .line 49
    iput-boolean v3, v1, Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;->defaultAd:Z

    .line 50
    .line 51
    iget-boolean v4, p0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->offlineAd:Z

    .line 52
    .line 53
    iput-boolean v4, v1, Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;->offlineAd:Z

    .line 54
    .line 55
    iget v4, p0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->cacheAdCount:I

    .line 56
    .line 57
    iput v4, v1, Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;->cachedAdCount:I

    .line 58
    .line 59
    iget-object v4, v1, Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;->codeSeat:Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;

    .line 60
    .line 61
    iget-object v5, p0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->pmid:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v4, v5}, Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;->setId(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget-object v4, v1, Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;->codeSeat:Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;

    .line 67
    .line 68
    iget v5, p0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->adt:I

    .line 69
    .line 70
    invoke-virtual {v4, v5}, Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;->setType(I)V

    .line 71
    .line 72
    .line 73
    iget-object v4, v1, Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;->codeSeat:Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;

    .line 74
    .line 75
    iget v5, p0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->mAdCount:I

    .line 76
    .line 77
    invoke-virtual {v4, v5}, Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;->setAdCount(I)V

    .line 78
    .line 79
    .line 80
    iget-object v4, v1, Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;->codeSeat:Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;

    .line 81
    .line 82
    invoke-virtual {v4, v3}, Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;->setWidth(I)V

    .line 83
    .line 84
    .line 85
    iget-object v4, v1, Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;->codeSeat:Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;

    .line 86
    .line 87
    invoke-virtual {v4, v3}, Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;->setHeight(I)V

    .line 88
    .line 89
    .line 90
    iget-object v4, v1, Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;->codeSeat:Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;

    .line 91
    .line 92
    iget-object v5, p0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->gameName:Ljava/lang/String;

    .line 93
    .line 94
    invoke-virtual {v4, v5}, Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;->setGameName(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    iget-object v4, v1, Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;->codeSeat:Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;

    .line 98
    .line 99
    iget-object v5, p0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->gameScene:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {v4, v5}, Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;->setGameScene(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    iget-object v4, v1, Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;->codeSeat:Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;

    .line 105
    .line 106
    iget-object v5, p0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->extInfo:Ljava/util/Map;

    .line 107
    .line 108
    invoke-virtual {v4, v5}, Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;->setExtInfo(Ljava/util/Map;)V

    .line 109
    .line 110
    .line 111
    iget-object v4, v1, Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;->codeSeat:Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;

    .line 112
    .line 113
    iget-boolean v5, p0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->supportEw:Z

    .line 114
    .line 115
    invoke-virtual {v4, v5}, Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;->setAdPriority(I)V

    .line 116
    .line 117
    .line 118
    iget-object v4, v1, Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;->codeSeat:Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;

    .line 119
    .line 120
    iget-boolean p0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->offlineAdEnable:Z

    .line 121
    .line 122
    invoke-virtual {v4, p0}, Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;->setOfflineAdEnable(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    .line 124
    .line 125
    if-eqz p1, :cond_1

    .line 126
    .line 127
    :try_start_1
    iget-object p0, v1, Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;->codeSeat:Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;

    .line 128
    .line 129
    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;->setWebPageInfo(Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 130
    .line 131
    .line 132
    :catchall_1
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/cloud/hisavana/sdk/g1;->o()Lcom/cloud/hisavana/sdk/g1;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/g1;->r()Z

    .line 137
    .line 138
    .line 139
    move-result p0

    .line 140
    if-eqz p0, :cond_2

    .line 141
    .line 142
    new-instance p0, Lcom/cloud/hisavana/sdk/data/bean/request/OmSdk;

    .line 143
    .line 144
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/data/bean/request/OmSdk;-><init>()V

    .line 145
    .line 146
    .line 147
    new-array p1, v2, [Ljava/lang/Integer;

    .line 148
    .line 149
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/request/OmSdk;->api:[Ljava/lang/Integer;

    .line 150
    .line 151
    const/4 v2, 0x7

    .line 152
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    aput-object v2, p1, v3

    .line 157
    .line 158
    const-string p1, "hisavana"

    .line 159
    .line 160
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/request/OmSdk;->omidpn:Ljava/lang/String;

    .line 161
    .line 162
    invoke-static {}, Lie/a;->b()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/request/OmSdk;->omidpv:Ljava/lang/String;

    .line 167
    .line 168
    iget-object p1, v1, Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;->codeSeat:Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;

    .line 169
    .line 170
    invoke-virtual {p1, p0}, Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;->setOmSdk(Lcom/cloud/hisavana/sdk/data/bean/request/OmSdk;)V

    .line 171
    .line 172
    .line 173
    :cond_2
    iget-object p0, v1, Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;->device:Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;

    .line 174
    .line 175
    if-eqz v0, :cond_3

    .line 176
    .line 177
    if-eqz p0, :cond_3

    .line 178
    .line 179
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->h()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->setIpAddress(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->j()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->setOneid(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    :cond_3
    if-eqz p0, :cond_4

    .line 194
    .line 195
    invoke-static {}, Lk7/c;->d()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->setImsi(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->setLanguage(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    new-instance p1, Ljava/lang/StringBuilder;

    .line 214
    .line 215
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    .line 217
    .line 218
    invoke-static {}, Lk7/c;->e()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-static {}, Lk7/c;->d()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->setOperatorType(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->e()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object p1

    .line 243
    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->setGaid(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 247
    .line 248
    .line 249
    move-result-object p1

    .line 250
    invoke-static {p1}, Lcom/cloud/sdk/commonutil/util/MitNetUtil;->a(Landroid/content/Context;)Lcom/cloud/sdk/commonutil/util/MitNetUtil$NetworkType;

    .line 251
    .line 252
    .line 253
    move-result-object p1

    .line 254
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 255
    .line 256
    .line 257
    move-result p1

    .line 258
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object p1

    .line 262
    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->setNetworkConnectionType(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->d()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object p1

    .line 269
    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->setPsCountryCode(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    :cond_4
    iget-object p0, v1, Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;->user:Lcom/cloud/hisavana/sdk/data/bean/request/UserDTO;

    .line 273
    .line 274
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->g()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object p1

    .line 278
    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/data/bean/request/UserDTO;->setBaseStation(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    iget-object p0, v1, Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;->user:Lcom/cloud/hisavana/sdk/data/bean/request/UserDTO;

    .line 282
    .line 283
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/d;->d()D

    .line 284
    .line 285
    .line 286
    move-result-wide v2

    .line 287
    invoke-virtual {p0, v2, v3}, Lcom/cloud/hisavana/sdk/data/bean/request/UserDTO;->setLatitude(D)V

    .line 288
    .line 289
    .line 290
    iget-object p0, v1, Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;->user:Lcom/cloud/hisavana/sdk/data/bean/request/UserDTO;

    .line 291
    .line 292
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/d;->f()D

    .line 293
    .line 294
    .line 295
    move-result-wide v2

    .line 296
    invoke-virtual {p0, v2, v3}, Lcom/cloud/hisavana/sdk/data/bean/request/UserDTO;->setLongitude(D)V

    .line 297
    .line 298
    .line 299
    iget-object p0, v1, Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;->user:Lcom/cloud/hisavana/sdk/data/bean/request/UserDTO;

    .line 300
    .line 301
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/d;->c()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object p1

    .line 305
    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/data/bean/request/UserDTO;->setCoordTime(Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    invoke-static {v1}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->d(Ljava/lang/Object;)Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 312
    return-object p0

    .line 313
    :goto_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 314
    .line 315
    .line 316
    move-result-object p1

    .line 317
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object p0

    .line 321
    invoke-virtual {p1, p0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    const-string p0, ""

    .line 325
    .line 326
    return-object p0
.end method

.method private static declared-synchronized e()Z
    .locals 4

    .line 1
    const-class v0, Lcom/cloud/hisavana/sdk/x0;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/cloud/hisavana/sdk/x0;->a:Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-static {v2}, Lcom/cloud/hisavana/sdk/x0;->a(Z)Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    sput-object v1, Lcom/cloud/hisavana/sdk/x0;->a:Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    monitor-exit v0

    .line 16
    const/4 v0, 0x1

    .line 17
    return v0

    .line 18
    :catchall_0
    move-exception v1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    :try_start_1
    iget-object v1, v1, Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;->device:Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->getAntifraud()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    invoke-static {}, Lk7/a;->h0()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    invoke-static {}, Lk7/a;->m()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-nez v3, :cond_1

    .line 49
    .line 50
    sget-object v3, Lcom/cloud/hisavana/sdk/x0;->a:Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;

    .line 51
    .line 52
    iget-object v3, v3, Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;->device:Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;

    .line 53
    .line 54
    invoke-virtual {v3, v1}, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->setAntifraud(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    .line 56
    .line 57
    :cond_1
    monitor-exit v0

    .line 58
    return v2

    .line 59
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 60
    throw v1
.end method

.method private static declared-synchronized f()Z
    .locals 3

    .line 1
    const-class v0, Lcom/cloud/hisavana/sdk/x0;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/cloud/hisavana/sdk/x0;->b:Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-static {v1}, Lcom/cloud/hisavana/sdk/x0;->a(Z)Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    sput-object v2, Lcom/cloud/hisavana/sdk/x0;->b:Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    monitor-exit v0

    .line 16
    return v1

    .line 17
    :catchall_0
    move-exception v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    monitor-exit v0

    .line 20
    const/4 v0, 0x0

    .line 21
    return v0

    .line 22
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    throw v1
.end method
