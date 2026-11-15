.class public abstract Lcom/hisavana/mediation/config/CloudControlConfigSync;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static b:I

.field public static c:Landroid/os/Handler;

.field public static final d:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/hisavana/mediation/config/CloudControlConfigSync;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    sput v0, Lcom/hisavana/mediation/config/CloudControlConfigSync;->b:I

    .line 10
    .line 11
    new-instance v0, Lcom/hisavana/mediation/config/CloudControlConfigSync$4;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/hisavana/mediation/config/CloudControlConfigSync$4;-><init>()V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lcom/hisavana/mediation/config/CloudControlConfigSync;->d:Ljava/lang/Runnable;

    .line 17
    .line 18
    return-void
.end method

.method public static synthetic a()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/hisavana/mediation/config/CloudControlConfigSync;->u()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static b(I)V
    .locals 8

    .line 1
    invoke-static {}, Lcom/hisavana/common/tracking/TrackingUtil;->getTriggerId()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    sput v1, Lcom/hisavana/mediation/config/CloudControlConfigSync;->b:I

    .line 7
    .line 8
    invoke-static {}, Ll7/a;->e()Ll7/a;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "cloudControlVersion"

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-virtual {v1, v2, v3}, Ll7/a;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    invoke-static {p0, v0}, Lcom/hisavana/mediation/config/CloudControlConfigSync;->o(ILjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    invoke-static {}, Lcom/hisavana/mediation/config/TAdManager;->getAhaChannel()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const-string v3, "aha"

    .line 34
    .line 35
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    const-string v3, "sdk_init"

    .line 40
    .line 41
    if-eqz v2, :cond_3

    .line 42
    .line 43
    const/4 v1, 0x1

    .line 44
    if-eq p0, v1, :cond_1

    .line 45
    .line 46
    const/4 v1, 0x5

    .line 47
    if-ne p0, v1, :cond_2

    .line 48
    .line 49
    :cond_1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string v4, "aha\u6e20\u9053\u8bf7\u6c42\u4e91\u63a7 triggerType "

    .line 59
    .line 60
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v4, " ids= "

    .line 67
    .line 68
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-static {}, Lcom/hisavana/mediation/config/TAdManager;->getCodeSeatIds()Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-virtual {v1, v3, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-static {}, Lcom/hisavana/mediation/config/TAdManager;->getCodeSeatIds()Ljava/util/List;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    if-eqz v1, :cond_2

    .line 90
    .line 91
    invoke-static {}, Lcom/hisavana/mediation/config/TAdManager;->getCodeSeatIds()Ljava/util/List;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-lez v1, :cond_2

    .line 100
    .line 101
    invoke-static {p0, v0}, Lcom/hisavana/mediation/config/CloudControlConfigSync;->o(ILjava/lang/String;)V

    .line 102
    .line 103
    .line 104
    :cond_2
    return-void

    .line 105
    :cond_3
    invoke-static {}, Ll7/a;->e()Ll7/a;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    const-string v4, "new_config_ver"

    .line 110
    .line 111
    invoke-virtual {v2, v4}, Ll7/a;->j(Ljava/lang/String;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    new-instance v4, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .line 119
    .line 120
    const-string v5, "CloudControlConfigSync - newVersion = "

    .line 121
    .line 122
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const-string v5, ",current version="

    .line 129
    .line 130
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    invoke-static {v4}, Lcom/hisavana/common/mock/RecordTestInfo;->record(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 144
    .line 145
    .line 146
    move-result v4

    .line 147
    if-nez v4, :cond_5

    .line 148
    .line 149
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    if-eqz v1, :cond_4

    .line 154
    .line 155
    goto :goto_0

    .line 156
    :cond_4
    invoke-static {p0, v0}, Lcom/hisavana/mediation/config/CloudControlConfigSync;->o(ILjava/lang/String;)V

    .line 157
    .line 158
    .line 159
    return-void

    .line 160
    :cond_5
    :goto_0
    invoke-static {}, Ll7/a;->e()Ll7/a;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    const-string v2, "last_req_config_time"

    .line 165
    .line 166
    const-wide/16 v4, 0x0

    .line 167
    .line 168
    invoke-virtual {v1, v2, v4, v5}, Ll7/a;->i(Ljava/lang/String;J)J

    .line 169
    .line 170
    .line 171
    move-result-wide v1

    .line 172
    invoke-static {}, Ll7/a;->e()Ll7/a;

    .line 173
    .line 174
    .line 175
    move-result-object v4

    .line 176
    const-string v5, "req_config_interval"

    .line 177
    .line 178
    const-wide/32 v6, 0x5265c00

    .line 179
    .line 180
    .line 181
    invoke-virtual {v4, v5, v6, v7}, Ll7/a;->i(Ljava/lang/String;J)J

    .line 182
    .line 183
    .line 184
    move-result-wide v4

    .line 185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 186
    .line 187
    .line 188
    move-result-wide v6

    .line 189
    sub-long/2addr v6, v1

    .line 190
    cmp-long v1, v6, v4

    .line 191
    .line 192
    if-lez v1, :cond_7

    .line 193
    .line 194
    invoke-static {}, Lcom/hisavana/common/utils/NetUtil;->checkNetworkState()Z

    .line 195
    .line 196
    .line 197
    move-result v1

    .line 198
    if-eqz v1, :cond_6

    .line 199
    .line 200
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    const-string v2, "request cloud config because of out of time"

    .line 205
    .line 206
    invoke-virtual {v1, v3, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    invoke-static {p0, v0}, Lcom/hisavana/mediation/config/CloudControlConfigSync;->o(ILjava/lang/String;)V

    .line 210
    .line 211
    .line 212
    :cond_6
    return-void

    .line 213
    :cond_7
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 214
    .line 215
    .line 216
    move-result-object p0

    .line 217
    const-string v0, "*----> new cloud config version is empty or is the same as current,don\'t send config request"

    .line 218
    .line 219
    invoke-virtual {p0, v3, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    return-void
.end method

.method public static synthetic c(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/hisavana/mediation/config/CloudControlConfigSync;->m(ILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static d(JLjava/lang/String;I)V
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/hisavana/mediation/config/TAdManager;->getAppId()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-string v2, "cld_app_id"

    .line 11
    .line 12
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v1, "trigger_type"

    .line 16
    .line 17
    invoke-virtual {v0, v1, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 18
    .line 19
    .line 20
    const-string p3, "cld_request_id"

    .line 21
    .line 22
    invoke-virtual {v0, p3, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string p2, "cld_request_ts"

    .line 26
    .line 27
    invoke-virtual {v0, p2, p0, p1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Lcom/hisavana/common/tracking/TrackingManager;->trackingADCldRequest(Landroid/os/Bundle;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public static synthetic e(Lcom/hisavana/mediation/bean/CloudControlConfig;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/hisavana/mediation/config/CloudControlConfigSync;->j(Lcom/hisavana/mediation/bean/CloudControlConfig;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic f(ZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;I)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Lcom/hisavana/mediation/config/CloudControlConfigSync;->k(ZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static g(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .line 1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

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
    const-string v2, "isNeedToUpdateLocalConfig newVersion="

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v2, ",curVersion="

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-string v2, "CloudControlConfigSync"

    .line 31
    .line 32
    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    const/4 v1, 0x1

    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    return v1

    .line 43
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    const/4 v3, 0x0

    .line 48
    if-nez v0, :cond_5

    .line 49
    .line 50
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    const/16 v4, 0xd

    .line 62
    .line 63
    if-le v0, v4, :cond_2

    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    sub-int/2addr v0, v4

    .line 70
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-le v0, v4, :cond_3

    .line 79
    .line 80
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    sub-int/2addr v0, v4

    .line 85
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    :cond_3
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 90
    .line 91
    .line 92
    move-result-wide v4

    .line 93
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 94
    .line 95
    .line 96
    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    cmp-long p0, p0, v4

    .line 98
    .line 99
    if-lez p0, :cond_4

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_4
    move v1, v3

    .line 103
    :goto_0
    return v1

    .line 104
    :catch_0
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    const-string p1, "not need update local config"

    .line 109
    .line 110
    invoke-virtual {p0, v2, p1}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    :cond_5
    :goto_1
    return v3
.end method

.method public static synthetic h()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 1
    sget-object v0, Lcom/hisavana/mediation/config/CloudControlConfigSync;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic i(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/hisavana/mediation/config/CloudControlConfigSync;->o(ILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static j(Lcom/hisavana/mediation/bean/CloudControlConfig;Z)V
    .locals 6

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/hisavana/mediation/bean/CloudControlConfig;->getData()Lcom/hisavana/mediation/bean/CloudControlConfig$ConfigData;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string v1, "sdk_init"

    .line 9
    .line 10
    if-eqz v0, :cond_4

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/hisavana/mediation/bean/CloudControlConfig;->getData()Lcom/hisavana/mediation/bean/CloudControlConfig$ConfigData;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/hisavana/mediation/bean/CloudControlConfig$ConfigData;->getCodeSeats()Ljava/util/ArrayList;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_4

    .line 21
    .line 22
    invoke-static {}, Lcom/hisavana/mediation/config/ConfigContentHelper;->g()Lcom/hisavana/mediation/config/ConfigContentHelper;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/hisavana/mediation/config/ConfigContentHelper;->b()V

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lcom/hisavana/mediation/config/ConfigContentHelper;->g()Lcom/hisavana/mediation/config/ConfigContentHelper;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p0}, Lcom/hisavana/mediation/bean/CloudControlConfig;->getData()Lcom/hisavana/mediation/bean/CloudControlConfig$ConfigData;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v2}, Lcom/hisavana/mediation/bean/CloudControlConfig$ConfigData;->getCodeSeats()Ljava/util/ArrayList;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v0, v2}, Lcom/hisavana/mediation/config/ConfigContentHelper;->i(Ljava/util/List;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    invoke-static {}, Lcom/hisavana/mediation/config/ConfigContentHelper;->g()Lcom/hisavana/mediation/config/ConfigContentHelper;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v2}, Lcom/hisavana/mediation/config/ConfigContentHelper;->f()J

    .line 50
    .line 51
    .line 52
    move-result-wide v2

    .line 53
    const-wide/16 v4, 0x0

    .line 54
    .line 55
    cmp-long v2, v2, v4

    .line 56
    .line 57
    if-lez v2, :cond_1

    .line 58
    .line 59
    invoke-static {}, Lcom/hisavana/mediation/config/CloudControlConfigSync;->t()V

    .line 60
    .line 61
    .line 62
    const/4 v2, 0x0

    .line 63
    const-string v3, "get cloud data success"

    .line 64
    .line 65
    invoke-static {v2, v3}, Lcom/hisavana/mediation/config/CloudControlConfigSync;->m(ILjava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :cond_1
    if-nez v0, :cond_2

    .line 69
    .line 70
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    const-string p1, "*----> CloudControlConfigSync --> save data 2 sqlite failed!!!"

    .line 75
    .line 76
    invoke-virtual {p0, v1, p1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :cond_2
    invoke-static {}, Ll7/a;->e()Ll7/a;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {p0}, Lcom/hisavana/mediation/bean/CloudControlConfig;->getData()Lcom/hisavana/mediation/bean/CloudControlConfig$ConfigData;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-virtual {v2}, Lcom/hisavana/mediation/bean/CloudControlConfig$ConfigData;->getCloudControlVersion()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    const-string v3, "cloudControlVersion"

    .line 93
    .line 94
    invoke-virtual {v0, v3, v2}, Ll7/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    if-eqz p1, :cond_3

    .line 98
    .line 99
    invoke-static {}, Ll7/a;->e()Ll7/a;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {p0}, Lcom/hisavana/mediation/bean/CloudControlConfig;->getData()Lcom/hisavana/mediation/bean/CloudControlConfig$ConfigData;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {v0}, Lcom/hisavana/mediation/bean/CloudControlConfig$ConfigData;->getCloudControlVersion()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    const-string v2, "new_config_ver"

    .line 112
    .line 113
    invoke-virtual {p1, v2, v0}, Ll7/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    :cond_3
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .line 124
    .line 125
    const-string v2, "*----> CloudControlConfigSync --> save data 2 sqlite --> \u6301\u4e45\u5316\u5f53\u524d\u4e91\u63a7\u7248\u672c\uff1a"

    .line 126
    .line 127
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0}, Lcom/hisavana/mediation/bean/CloudControlConfig;->getData()Lcom/hisavana/mediation/bean/CloudControlConfig$ConfigData;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    invoke-virtual {p0}, Lcom/hisavana/mediation/bean/CloudControlConfig$ConfigData;->getCloudControlVersion()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    invoke-virtual {p1, v1, p0}, Lcom/cloud/sdk/commonutil/util/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    goto :goto_0

    .line 149
    :cond_4
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    const-string v0, "CloudControlConfigSync --> extracted --> \u6570\u636e\u4e3a\u7a7a \u65e0\u6cd5\u4fdd\u5b58"

    .line 154
    .line 155
    invoke-virtual {p1, v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-static {}, Lcom/hisavana/mediation/config/CloudControlConfigSync;->t()V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p0}, Lcom/hisavana/mediation/bean/CloudControlConfig;->getCode()I

    .line 162
    .line 163
    .line 164
    move-result p1

    .line 165
    invoke-virtual {p0}, Lcom/hisavana/mediation/bean/CloudControlConfig;->getMessage()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    invoke-static {p1, p0}, Lcom/hisavana/mediation/config/CloudControlConfigSync;->m(ILjava/lang/String;)V

    .line 170
    .line 171
    .line 172
    :goto_0
    return-void
.end method

.method public static k(ZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;I)V
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "trigger_type"

    .line 7
    .line 8
    invoke-virtual {v0, v1, p6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 9
    .line 10
    .line 11
    const-string p6, "cld_request_id"

    .line 12
    .line 13
    invoke-virtual {v0, p6, p5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 17
    .line 18
    .line 19
    move-result-wide p5

    .line 20
    const-string v1, "cld_return_ts"

    .line 21
    .line 22
    invoke-virtual {v0, v1, p5, p6}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 23
    .line 24
    .line 25
    :try_start_0
    const-string p5, "cld_return_time_Interval"

    .line 26
    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 28
    .line 29
    .line 30
    move-result-wide v1

    .line 31
    sub-long/2addr v1, p3

    .line 32
    long-to-int p3, v1

    .line 33
    invoke-virtual {v0, p5, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    :catch_0
    const-string p3, "code"

    .line 37
    .line 38
    if-eqz p0, :cond_0

    .line 39
    .line 40
    const/4 p0, 0x0

    .line 41
    invoke-virtual {v0, p3, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const/4 p0, 0x1

    .line 46
    invoke-virtual {v0, p3, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    const-string p3, "message"

    .line 54
    .line 55
    if-eqz p0, :cond_1

    .line 56
    .line 57
    const-string p0, ""

    .line 58
    .line 59
    invoke-virtual {v0, p3, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_1
    invoke-virtual {v0, p3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    :goto_1
    const-string p0, "data"

    .line 67
    .line 68
    invoke-virtual {v0, p0, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-static {v0}, Lcom/hisavana/common/tracking/TrackingManager;->trackingCldReturn(Landroid/os/Bundle;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public static synthetic l()I
    .locals 1

    .line 1
    sget v0, Lcom/hisavana/mediation/config/CloudControlConfigSync;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public static m(ILjava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/hisavana/mediation/config/CloudControlConfigSync$b;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/hisavana/mediation/config/CloudControlConfigSync$b;-><init>(ILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/Preconditions;->d(Lcom/cloud/sdk/commonutil/util/Preconditions$a;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic n()I
    .locals 2

    .line 1
    sget v0, Lcom/hisavana/mediation/config/CloudControlConfigSync;->b:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    sput v1, Lcom/hisavana/mediation/config/CloudControlConfigSync;->b:I

    .line 6
    .line 7
    return v0
.end method

.method public static o(ILjava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/hisavana/common/utils/NetUtil;->checkNetworkState()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "sdk_init"

    .line 6
    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    sget-object v0, Lcom/hisavana/mediation/config/CloudControlConfigSync;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-nez v2, :cond_2

    .line 16
    .line 17
    invoke-static {}, Lcom/hisavana/mediation/config/TAdManager;->getAhaChannel()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const-string v3, "aha"

    .line 22
    .line 23
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    invoke-static {}, Lcom/hisavana/mediation/config/TAdManager;->getCodeSeatIds()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    invoke-static {}, Lcom/hisavana/mediation/config/TAdManager;->getCodeSeatIds()Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_1

    .line 44
    .line 45
    :cond_0
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    const-string p1, "requestCloudControl channel is aha,but codeSeatIds is empty,stop requestCloudControl"

    .line 50
    .line 51
    invoke-virtual {p0, v1, p1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_1
    const/4 v1, 0x1

    .line 56
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 57
    .line 58
    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 60
    .line 61
    .line 62
    move-result-wide v0

    .line 63
    invoke-static {v0, v1, p1, p0}, Lcom/hisavana/mediation/config/CloudControlConfigSync;->d(JLjava/lang/String;I)V

    .line 64
    .line 65
    .line 66
    const-string v2, "CloudControlConfigSync - send cloud control request"

    .line 67
    .line 68
    invoke-static {v2}, Lcom/hisavana/common/mock/RecordTestInfo;->record(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    new-instance v2, Lcom/cloud/hisavana/sdk/common/http/a;

    .line 72
    .line 73
    invoke-direct {v2}, Lcom/cloud/hisavana/sdk/common/http/a;-><init>()V

    .line 74
    .line 75
    .line 76
    new-instance v3, Lcom/hisavana/mediation/config/CloudControlConfigSync$3;

    .line 77
    .line 78
    invoke-direct {v3, v0, v1, p1, p0}, Lcom/hisavana/mediation/config/CloudControlConfigSync$3;-><init>(JLjava/lang/String;I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2, v3}, Lcom/cloud/hisavana/sdk/common/http/a;->m(Lcom/cloud/hisavana/sdk/common/http/listener/CommonResponseListener;)Lcom/cloud/hisavana/sdk/common/http/a;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    new-instance p1, Lcom/hisavana/mediation/config/CloudControlConfigSync$a;

    .line 86
    .line 87
    invoke-direct {p1}, Lcom/hisavana/mediation/config/CloudControlConfigSync$a;-><init>()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/common/http/a;->o(Lcom/cloud/hisavana/sdk/common/http/a$b;)Lcom/cloud/hisavana/sdk/common/http/a;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    invoke-static {}, Lee/l;->a()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/common/http/a;->q(Ljava/lang/String;)Lcom/cloud/hisavana/sdk/common/http/a;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    const-string p1, "2"

    .line 103
    .line 104
    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/common/http/a;->p(Ljava/lang/String;)Lcom/cloud/hisavana/sdk/common/http/a;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    if-eqz p0, :cond_3

    .line 109
    .line 110
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/http/d;->b()V

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_2
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    const-string p1, "CloudControlConfigSync --> network error or requesting"

    .line 119
    .line 120
    invoke-virtual {p0, v1, p1}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    :cond_3
    :goto_0
    return-void
.end method

.method public static synthetic p()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/hisavana/mediation/config/CloudControlConfigSync;->t()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static q()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

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
    const-string v2, "Current mode,testDevice: "

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/hisavana/mediation/config/TAdManager;->isTestDevice()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v2, ",debug: "

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-static {}, Lcom/hisavana/mediation/config/TAdManager;->isDebug()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v2, ",server: "

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-static {}, Li7/a;->c()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    const/4 v3, 0x1

    .line 44
    if-ne v2, v3, :cond_0

    .line 45
    .line 46
    const-string v2, "Test"

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const-string v2, "Release"

    .line 50
    .line 51
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    const-string v2, "sdk_init"

    .line 59
    .line 60
    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    new-instance v0, Landroid/os/Handler;

    .line 64
    .line 65
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 70
    .line 71
    .line 72
    sput-object v0, Lcom/hisavana/mediation/config/CloudControlConfigSync;->c:Landroid/os/Handler;

    .line 73
    .line 74
    invoke-static {}, Lcom/hisavana/mediation/config/CloudControlConfigSync;->r()Z

    .line 75
    .line 76
    .line 77
    invoke-static {}, Lcom/hisavana/mediation/config/CloudControlConfigSync;->s()V

    .line 78
    .line 79
    .line 80
    sget-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    .line 81
    .line 82
    new-instance v1, Lcom/hisavana/mediation/config/CloudControlConfigSync$1;

    .line 83
    .line 84
    invoke-direct {v1}, Lcom/hisavana/mediation/config/CloudControlConfigSync$1;-><init>()V

    .line 85
    .line 86
    .line 87
    const-wide/16 v2, 0x1f4

    .line 88
    .line 89
    invoke-virtual {v0, v1, v2, v3}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->j(Ljava/lang/Runnable;J)V

    .line 90
    .line 91
    .line 92
    return-void
.end method

.method public static r()Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/hisavana/mediation/config/ConfigContentHelper;->g()Lcom/hisavana/mediation/config/ConfigContentHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/hisavana/mediation/config/ConfigContentHelper;->f()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    const-wide/16 v2, 0x0

    .line 10
    .line 11
    cmp-long v0, v0, v2

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-lez v0, :cond_0

    .line 15
    .line 16
    invoke-static {}, Lcom/hisavana/mediation/config/CloudControlConfigSync;->t()V

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lcom/hisavana/mediation/config/ConfigContentHelper;->g()Lcom/hisavana/mediation/config/ConfigContentHelper;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/hisavana/mediation/config/ConfigContentHelper;->h()V

    .line 24
    .line 25
    .line 26
    const-string v0, "get cloud data success"

    .line 27
    .line 28
    invoke-static {v1, v0}, Lcom/hisavana/mediation/config/CloudControlConfigSync;->m(ILjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    return v0

    .line 33
    :cond_0
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v2, "CloudControlConfigSync"

    .line 38
    .line 39
    const-string v3, "no cloud data in db"

    .line 40
    .line 41
    invoke-virtual {v0, v2, v3}, Lcom/cloud/sdk/commonutil/util/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return v1
.end method

.method public static s()V
    .locals 7

    .line 1
    const-string v0, "host_version"

    .line 2
    .line 3
    const-string v1, "CloudControlConfigSync"

    .line 4
    .line 5
    :try_start_0
    invoke-static {}, Ll7/a;->e()Ll7/a;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-virtual {v2, v0, v3}, Ll7/a;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    new-instance v5, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v6, "cache host version: "

    .line 24
    .line 25
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v6, ", current host version: "

    .line 32
    .line 33
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-static {}, Lk7/c;->p()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    invoke-virtual {v4, v1, v5}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    if-eqz v2, :cond_0

    .line 51
    .line 52
    invoke-static {}, Lk7/c;->p()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_0

    .line 61
    .line 62
    return-void

    .line 63
    :catchall_0
    move-exception v0

    .line 64
    goto :goto_1

    .line 65
    :cond_0
    invoke-static {}, Ll7/a;->e()Ll7/a;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    const-string v4, "cloudControlVersion"

    .line 70
    .line 71
    invoke-virtual {v2, v4, v3}, Ll7/a;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :try_start_1
    const-string v3, "mediation.json"

    .line 76
    .line 77
    invoke-static {v3}, Lcom/cloud/sdk/commonutil/util/o;->j(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    :try_start_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    if-nez v4, :cond_4

    .line 86
    .line 87
    const-class v4, Lcom/hisavana/mediation/bean/CloudControlConfig;

    .line 88
    .line 89
    invoke-static {v3, v4}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    check-cast v3, Lcom/hisavana/mediation/bean/CloudControlConfig;

    .line 94
    .line 95
    if-eqz v3, :cond_3

    .line 96
    .line 97
    invoke-virtual {v3}, Lcom/hisavana/mediation/bean/CloudControlConfig;->getData()Lcom/hisavana/mediation/bean/CloudControlConfig$ConfigData;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    if-nez v4, :cond_1

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_1
    invoke-virtual {v3}, Lcom/hisavana/mediation/bean/CloudControlConfig;->getData()Lcom/hisavana/mediation/bean/CloudControlConfig$ConfigData;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    invoke-virtual {v4}, Lcom/hisavana/mediation/bean/CloudControlConfig$ConfigData;->getCloudControlVersion()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    invoke-static {v4, v2}, Lcom/hisavana/mediation/config/CloudControlConfigSync;->g(Ljava/lang/String;Ljava/lang/String;)Z

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    if-eqz v2, :cond_2

    .line 117
    .line 118
    const/4 v2, 0x0

    .line 119
    invoke-static {v3, v2}, Lcom/hisavana/mediation/config/CloudControlConfigSync;->j(Lcom/hisavana/mediation/bean/CloudControlConfig;Z)V

    .line 120
    .line 121
    .line 122
    invoke-static {}, Ll7/a;->e()Ll7/a;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    invoke-static {}, Lk7/c;->p()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    invoke-virtual {v2, v0, v3}, Ll7/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    :cond_2
    invoke-static {}, Lcom/hisavana/mediation/config/CloudControlConfigSync;->r()Z

    .line 134
    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_3
    :goto_0
    return-void

    .line 138
    :cond_4
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    const-string v2, "get nothing from mediation.json"

    .line 143
    .line 144
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    goto :goto_2

    .line 148
    :catch_0
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    const-string v2, "Failed to read default mediation.json from assets."

    .line 153
    .line 154
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    return-void

    .line 158
    :catch_1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    const-string v3, "There is no default mediation.json available locally."

    .line 163
    .line 164
    invoke-virtual {v2, v1, v3}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-static {}, Ll7/a;->e()Ll7/a;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    invoke-static {}, Lk7/c;->p()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    invoke-virtual {v2, v0, v3}, Ll7/a;->r(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 176
    .line 177
    .line 178
    return-void

    .line 179
    :goto_1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-virtual {v2, v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    :goto_2
    return-void
.end method

.method public static t()V
    .locals 2

    .line 1
    sget-object v0, Lcom/hisavana/mediation/config/CloudControlConfigSync;->c:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v1, Lcom/hisavana/mediation/config/CloudControlConfigSync;->d:Ljava/lang/Runnable;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public static u()V
    .locals 4

    .line 1
    sget-object v0, Lcom/hisavana/mediation/config/CloudControlConfigSync;->c:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v1, Lcom/hisavana/mediation/config/CloudControlConfigSync;->d:Ljava/lang/Runnable;

    .line 6
    .line 7
    const-wide/16 v2, 0x3a98

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method
