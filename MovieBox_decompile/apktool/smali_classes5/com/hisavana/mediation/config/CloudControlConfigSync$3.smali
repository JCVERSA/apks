.class Lcom/hisavana/mediation/config/CloudControlConfigSync$3;
.super Lcom/cloud/hisavana/sdk/common/http/listener/CommonResponseListener;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisavana/mediation/config/CloudControlConfigSync;->o(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cloud/hisavana/sdk/common/http/listener/CommonResponseListener<",
        "Lcom/hisavana/mediation/bean/CloudControlConfig;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:J

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:I


# direct methods
.method public constructor <init>(JLjava/lang/String;I)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/hisavana/mediation/config/CloudControlConfigSync$3;->b:J

    .line 2
    .line 3
    iput-object p3, p0, Lcom/hisavana/mediation/config/CloudControlConfigSync$3;->c:Ljava/lang/String;

    .line 4
    .line 5
    iput p4, p0, Lcom/hisavana/mediation/config/CloudControlConfigSync$3;->d:I

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/http/listener/CommonResponseListener;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 10

    .line 1
    invoke-static {}, Lcom/hisavana/mediation/config/CloudControlConfigSync;->h()Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v2, "CloudControlConfigSync --> error msg "

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorMessage()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v3, "\uff0c"

    .line 38
    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorCode()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    const-string v2, ""

    .line 55
    .line 56
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    const-string v2, "sdk_init"

    .line 64
    .line 65
    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-static {}, Ll7/a;->e()Ll7/a;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    const-string v1, "cloudControlVersion"

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ll7/a;->j(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    invoke-static {}, Ll7/a;->e()Ll7/a;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    if-eqz p1, :cond_1

    .line 83
    .line 84
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorCode()I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    goto :goto_1

    .line 89
    :cond_1
    const/4 v1, -0x1

    .line 90
    :goto_1
    const-string v3, "cloud_config_error_code"

    .line 91
    .line 92
    invoke-virtual {v0, v3, v1}, Ll7/a;->p(Ljava/lang/String;I)V

    .line 93
    .line 94
    .line 95
    if-eqz p1, :cond_2

    .line 96
    .line 97
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorMessage()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    iget-wide v6, p0, Lcom/hisavana/mediation/config/CloudControlConfigSync$3;->b:J

    .line 102
    .line 103
    iget-object v8, p0, Lcom/hisavana/mediation/config/CloudControlConfigSync$3;->c:Ljava/lang/String;

    .line 104
    .line 105
    iget v9, p0, Lcom/hisavana/mediation/config/CloudControlConfigSync$3;->d:I

    .line 106
    .line 107
    const/4 v3, 0x0

    .line 108
    invoke-static/range {v3 .. v9}, Lcom/hisavana/mediation/config/CloudControlConfigSync;->f(ZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;I)V

    .line 109
    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_2
    iget-wide v6, p0, Lcom/hisavana/mediation/config/CloudControlConfigSync$3;->b:J

    .line 113
    .line 114
    iget-object v8, p0, Lcom/hisavana/mediation/config/CloudControlConfigSync$3;->c:Ljava/lang/String;

    .line 115
    .line 116
    iget v9, p0, Lcom/hisavana/mediation/config/CloudControlConfigSync$3;->d:I

    .line 117
    .line 118
    const/4 v3, 0x0

    .line 119
    const-string v4, "no message"

    .line 120
    .line 121
    invoke-static/range {v3 .. v9}, Lcom/hisavana/mediation/config/CloudControlConfigSync;->f(ZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;I)V

    .line 122
    .line 123
    .line 124
    :goto_2
    invoke-static {}, Lcom/hisavana/mediation/config/CloudControlConfigSync;->l()I

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    const/4 v1, 0x1

    .line 129
    const/16 v3, 0x1e4

    .line 130
    .line 131
    const/16 v4, 0x1e1

    .line 132
    .line 133
    if-lt v0, v1, :cond_4

    .line 134
    .line 135
    if-eqz p1, :cond_4

    .line 136
    .line 137
    invoke-static {}, Lcom/hisavana/mediation/config/CloudControlConfigSync;->p()V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorCode()I

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    if-ne v0, v4, :cond_3

    .line 145
    .line 146
    const-string v0, "request cloud network time out"

    .line 147
    .line 148
    invoke-static {v4, v0}, Lcom/hisavana/mediation/config/CloudControlConfigSync;->c(ILjava/lang/String;)V

    .line 149
    .line 150
    .line 151
    goto :goto_3

    .line 152
    :cond_3
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorCode()I

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    if-ne v0, v3, :cond_4

    .line 157
    .line 158
    const-string v0, "request cloud is host fail "

    .line 159
    .line 160
    invoke-static {v3, v0}, Lcom/hisavana/mediation/config/CloudControlConfigSync;->c(ILjava/lang/String;)V

    .line 161
    .line 162
    .line 163
    :cond_4
    :goto_3
    if-eqz p1, :cond_6

    .line 164
    .line 165
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    .line 173
    .line 174
    const-string v5, "currentCloudRetryCount = "

    .line 175
    .line 176
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-static {}, Lcom/hisavana/mediation/config/CloudControlConfigSync;->l()I

    .line 180
    .line 181
    .line 182
    move-result v5

    .line 183
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    const-string v5, " , errorCode = "

    .line 187
    .line 188
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorCode()I

    .line 192
    .line 193
    .line 194
    move-result v5

    .line 195
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    invoke-static {}, Lcom/hisavana/mediation/config/CloudControlConfigSync;->l()I

    .line 206
    .line 207
    .line 208
    move-result v0

    .line 209
    if-nez v0, :cond_6

    .line 210
    .line 211
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorCode()I

    .line 212
    .line 213
    .line 214
    move-result v0

    .line 215
    if-eq v0, v4, :cond_5

    .line 216
    .line 217
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorCode()I

    .line 218
    .line 219
    .line 220
    move-result p1

    .line 221
    if-ne p1, v3, :cond_6

    .line 222
    .line 223
    :cond_5
    invoke-static {}, Lcom/hisavana/mediation/config/CloudControlConfigSync;->n()I

    .line 224
    .line 225
    .line 226
    iget p1, p0, Lcom/hisavana/mediation/config/CloudControlConfigSync$3;->d:I

    .line 227
    .line 228
    iget-object v0, p0, Lcom/hisavana/mediation/config/CloudControlConfigSync$3;->c:Ljava/lang/String;

    .line 229
    .line 230
    invoke-static {p1, v0}, Lcom/hisavana/mediation/config/CloudControlConfigSync;->i(ILjava/lang/String;)V

    .line 231
    .line 232
    .line 233
    :cond_6
    return-void
.end method

.method public bridge synthetic g(ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/hisavana/mediation/bean/CloudControlConfig;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/hisavana/mediation/config/CloudControlConfigSync$3;->k(ILcom/hisavana/mediation/bean/CloudControlConfig;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public k(ILcom/hisavana/mediation/bean/CloudControlConfig;)V
    .locals 7

    .line 1
    invoke-static {}, Ll7/a;->e()Ll7/a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "cloud_config_error_code"

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p1, v0, v1}, Ll7/a;->p(Ljava/lang/String;I)V

    .line 9
    .line 10
    .line 11
    if-eqz p2, :cond_7

    .line 12
    .line 13
    sget-boolean p1, Lcom/hisavana/common/base/LogSwitch;->isDebug:Z

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v2, "CloudControlConfigSync --> CloudControl is: "

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-static {p2}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->d(Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const-string v2, "sdk_init"

    .line 43
    .line 44
    invoke-virtual {p1, v2, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :cond_0
    invoke-static {}, Ll7/a;->e()Ll7/a;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 52
    .line 53
    .line 54
    move-result-wide v2

    .line 55
    const-string v0, "last_req_config_time"

    .line 56
    .line 57
    invoke-virtual {p1, v0, v2, v3}, Ll7/a;->q(Ljava/lang/String;J)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2}, Lcom/hisavana/mediation/bean/CloudControlConfig;->getData()Lcom/hisavana/mediation/bean/CloudControlConfig$ConfigData;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    if-eqz p1, :cond_6

    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$ConfigData;->getCloudControlCacheInterval()Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-lez v0, :cond_1

    .line 75
    .line 76
    invoke-static {}, Ll7/a;->e()Ll7/a;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    int-to-long v3, v0

    .line 81
    const-wide/32 v5, 0x36ee80

    .line 82
    .line 83
    .line 84
    mul-long/2addr v3, v5

    .line 85
    const-string v0, "req_config_interval"

    .line 86
    .line 87
    invoke-virtual {v2, v0, v3, v4}, Ll7/a;->q(Ljava/lang/String;J)V

    .line 88
    .line 89
    .line 90
    :cond_1
    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$ConfigData;->getCodeSeats()Ljava/util/ArrayList;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    if-eqz p1, :cond_6

    .line 95
    .line 96
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-nez v0, :cond_6

    .line 101
    .line 102
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    :goto_0
    if-ge v1, v0, :cond_6

    .line 107
    .line 108
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    check-cast v2, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    .line 113
    .line 114
    if-nez v2, :cond_2

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_2
    invoke-virtual {v2}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getNetworks()Ljava/util/List;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    if-eqz v2, :cond_5

    .line 122
    .line 123
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    if-eqz v3, :cond_3

    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 135
    .line 136
    .line 137
    move-result v3

    .line 138
    if-eqz v3, :cond_5

    .line 139
    .line 140
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    check-cast v3, Lcom/hisavana/common/bean/Network;

    .line 145
    .line 146
    if-nez v3, :cond_4

    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_4
    invoke-virtual {v3}, Lcom/hisavana/common/bean/Network;->getPrice()Ljava/lang/Double;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    .line 154
    .line 155
    .line 156
    move-result-wide v4

    .line 157
    invoke-virtual {v3, v4, v5}, Lcom/hisavana/common/bean/Network;->setTempPrice(D)V

    .line 158
    .line 159
    .line 160
    invoke-static {v3}, Lcom/hisavana/common/utils/AdUtil;->overwriteAdmobNetworkPrice(Lcom/hisavana/common/bean/Network;)V

    .line 161
    .line 162
    .line 163
    goto :goto_1

    .line 164
    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 165
    .line 166
    goto :goto_0

    .line 167
    :cond_6
    sget-object p1, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    .line 168
    .line 169
    new-instance v0, Lcom/hisavana/mediation/config/CloudControlConfigSync$3$1;

    .line 170
    .line 171
    invoke-direct {v0, p0, p2}, Lcom/hisavana/mediation/config/CloudControlConfigSync$3$1;-><init>(Lcom/hisavana/mediation/config/CloudControlConfigSync$3;Lcom/hisavana/mediation/bean/CloudControlConfig;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1, v0}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->g(Ljava/lang/Runnable;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {p2}, Lcom/hisavana/mediation/bean/CloudControlConfig;->getData()Lcom/hisavana/mediation/bean/CloudControlConfig$ConfigData;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    if-eqz p1, :cond_8

    .line 182
    .line 183
    invoke-virtual {p2}, Lcom/hisavana/mediation/bean/CloudControlConfig;->getMessage()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    invoke-virtual {p2}, Lcom/hisavana/mediation/bean/CloudControlConfig;->getData()Lcom/hisavana/mediation/bean/CloudControlConfig$ConfigData;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$ConfigData;->getCloudControlVersion()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    iget-wide v3, p0, Lcom/hisavana/mediation/config/CloudControlConfigSync$3;->b:J

    .line 196
    .line 197
    iget-object v5, p0, Lcom/hisavana/mediation/config/CloudControlConfigSync$3;->c:Ljava/lang/String;

    .line 198
    .line 199
    iget v6, p0, Lcom/hisavana/mediation/config/CloudControlConfigSync$3;->d:I

    .line 200
    .line 201
    const/4 v0, 0x1

    .line 202
    invoke-static/range {v0 .. v6}, Lcom/hisavana/mediation/config/CloudControlConfigSync;->f(ZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;I)V

    .line 203
    .line 204
    .line 205
    goto :goto_3

    .line 206
    :cond_7
    invoke-static {}, Lcom/hisavana/mediation/config/CloudControlConfigSync;->h()Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 211
    .line 212
    .line 213
    invoke-static {}, Lcom/hisavana/mediation/config/CloudControlConfigSync;->p()V

    .line 214
    .line 215
    .line 216
    const/16 p1, 0x1e4

    .line 217
    .line 218
    const-string p2, "request cloud is host fail "

    .line 219
    .line 220
    invoke-static {p1, p2}, Lcom/hisavana/mediation/config/CloudControlConfigSync;->c(ILjava/lang/String;)V

    .line 221
    .line 222
    .line 223
    :cond_8
    :goto_3
    return-void
.end method
