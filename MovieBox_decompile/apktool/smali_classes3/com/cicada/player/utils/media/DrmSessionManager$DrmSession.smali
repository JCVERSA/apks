.class Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cicada/player/utils/media/DrmSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DrmSession"
.end annotation


# instance fields
.field public drmInfo:Lcom/cicada/player/utils/media/DrmSessionManager$DrmInfo;

.field private hasProvideProvision:Z

.field public mediaDrm:Landroid/media/MediaDrm;

.field public requestHandler:Landroid/os/Handler;

.field private requestHandlerThread:Landroid/os/HandlerThread;

.field public sessionId:[B

.field public state:I

.field final synthetic this$0:Lcom/cicada/player/utils/media/DrmSessionManager;


# direct methods
.method public constructor <init>(Lcom/cicada/player/utils/media/DrmSessionManager;Lcom/cicada/player/utils/media/DrmSessionManager$DrmInfo;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->this$0:Lcom/cicada/player/utils/media/DrmSessionManager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->drmInfo:Lcom/cicada/player/utils/media/DrmSessionManager$DrmInfo;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->mediaDrm:Landroid/media/MediaDrm;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->sessionId:[B

    .line 12
    .line 13
    sget v1, Lcom/cicada/player/utils/media/DrmSessionManager;->SESSION_STATE_IDLE:I

    .line 14
    .line 15
    iput v1, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->state:I

    .line 16
    .line 17
    iput-object v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->requestHandlerThread:Landroid/os/HandlerThread;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->requestHandler:Landroid/os/Handler;

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->hasProvideProvision:Z

    .line 23
    .line 24
    iput-object p2, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->drmInfo:Lcom/cicada/player/utils/media/DrmSessionManager$DrmInfo;

    .line 25
    .line 26
    new-instance p2, Landroid/os/HandlerThread;

    .line 27
    .line 28
    const-string v0, "DrmRequestHanderThread"

    .line 29
    .line 30
    invoke-direct {p2, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iput-object p2, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->requestHandlerThread:Landroid/os/HandlerThread;

    .line 34
    .line 35
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 36
    .line 37
    .line 38
    new-instance p2, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession$1;

    .line 39
    .line 40
    iget-object v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->requestHandlerThread:Landroid/os/HandlerThread;

    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-direct {p2, p0, v0, p1}, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession$1;-><init>(Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;Landroid/os/Looper;Lcom/cicada/player/utils/media/DrmSessionManager;)V

    .line 47
    .line 48
    .line 49
    iput-object p2, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->requestHandler:Landroid/os/Handler;

    .line 50
    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->requestProvision()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$100(Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/NotProvisionedException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->requestKey()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$300(Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;I[B)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->sendRequest(I[B)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private changeState(II)V
    .locals 3

    .line 1
    iput p1, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->state:I

    .line 2
    .line 3
    invoke-static {}, Lcom/cicada/player/utils/media/DrmSessionManager;->access$200()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v2, "changeState "

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->this$0:Lcom/cicada/player/utils/media/DrmSessionManager;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/cicada/player/utils/media/DrmSessionManager;->access$400(Lcom/cicada/player/utils/media/DrmSessionManager;)J

    .line 30
    .line 31
    .line 32
    move-result-wide v1

    .line 33
    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/cicada/player/utils/media/DrmSessionManager;->native_changeState(JII)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method private requestKey()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/NotProvisionedException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/cicada/player/utils/media/DrmSessionManager;->access$200()Ljava/lang/String;

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
    const-string v2, "requestKey state = "

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget v2, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->state:I

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->state:I

    .line 28
    .line 29
    sget v1, Lcom/cicada/player/utils/media/DrmSessionManager;->SESSION_STATE_ERROR:I

    .line 30
    .line 31
    if-ne v0, v1, :cond_0

    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->drmInfo:Lcom/cicada/player/utils/media/DrmSessionManager$DrmInfo;

    .line 35
    .line 36
    iget-object v0, v0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmInfo;->keyUrl:Ljava/lang/String;

    .line 37
    .line 38
    const/16 v1, 0x2c

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const/4 v1, 0x0

    .line 49
    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    iget-object v2, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->mediaDrm:Landroid/media/MediaDrm;

    .line 54
    .line 55
    iget-object v3, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->sessionId:[B

    .line 56
    .line 57
    iget-object v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->drmInfo:Lcom/cicada/player/utils/media/DrmSessionManager$DrmInfo;

    .line 58
    .line 59
    iget-object v5, v0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmInfo;->mime:Ljava/lang/String;

    .line 60
    .line 61
    const/4 v6, 0x1

    .line 62
    const/4 v7, 0x0

    .line 63
    invoke-virtual/range {v2 .. v7}, Landroid/media/MediaDrm;->getKeyRequest([B[BLjava/lang/String;ILjava/util/HashMap;)Landroid/media/MediaDrm$KeyRequest;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iget-object v1, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->this$0:Lcom/cicada/player/utils/media/DrmSessionManager;

    .line 68
    .line 69
    invoke-static {v1}, Lcom/cicada/player/utils/media/DrmSessionManager;->access$400(Lcom/cicada/player/utils/media/DrmSessionManager;)J

    .line 70
    .line 71
    .line 72
    move-result-wide v2

    .line 73
    invoke-virtual {v0}, Landroid/media/MediaDrm$KeyRequest;->getDefaultUrl()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    invoke-virtual {v0}, Landroid/media/MediaDrm$KeyRequest;->getData()[B

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/cicada/player/utils/media/DrmSessionManager;->native_requestKey(JLjava/lang/String;[B)[B

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-static {}, Lcom/cicada/player/utils/media/DrmSessionManager;->access$200()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    new-instance v3, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    const-string v4, "requestKey result = "

    .line 95
    .line 96
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    new-instance v4, Ljava/lang/String;

    .line 100
    .line 101
    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([B)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    invoke-static {v2, v3}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    if-nez v1, :cond_1

    .line 115
    .line 116
    invoke-static {}, Lcom/cicada/player/utils/media/DrmSessionManager;->access$200()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .line 124
    .line 125
    const-string v3, "requestKey fail: data = null , url : "

    .line 126
    .line 127
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0}, Landroid/media/MediaDrm$KeyRequest;->getDefaultUrl()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-static {v1, v0}, Lcom/cicada/player/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    sget v0, Lcom/cicada/player/utils/media/DrmSessionManager;->SESSION_STATE_ERROR:I

    .line 145
    .line 146
    sget v1, Lcom/cicada/player/utils/media/DrmSessionManager;->ERROR_CODE_KEY_RESPONSE_NULL:I

    .line 147
    .line 148
    invoke-direct {p0, v0, v1}, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->changeState(II)V

    .line 149
    .line 150
    .line 151
    return-void

    .line 152
    :catch_0
    move-exception v0

    .line 153
    goto :goto_0

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->mediaDrm:Landroid/media/MediaDrm;

    .line 155
    .line 156
    iget-object v2, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->sessionId:[B

    .line 157
    .line 158
    invoke-virtual {v0, v2, v1}, Landroid/media/MediaDrm;->provideKeyResponse([B[B)[B

    .line 159
    .line 160
    .line 161
    sget v0, Lcom/cicada/player/utils/media/DrmSessionManager;->SESSION_STATE_OPENED:I

    .line 162
    .line 163
    sget v1, Lcom/cicada/player/utils/media/DrmSessionManager;->ERROR_CODE_NONE:I

    .line 164
    .line 165
    invoke-direct {p0, v0, v1}, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->changeState(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    .line 167
    .line 168
    goto :goto_1

    .line 169
    :goto_0
    invoke-static {}, Lcom/cicada/player/utils/media/DrmSessionManager;->access$200()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    new-instance v2, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    .line 177
    .line 178
    const-string v3, "requestKey fail: "

    .line 179
    .line 180
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    invoke-static {v1, v0}, Lcom/cicada/player/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    sget v0, Lcom/cicada/player/utils/media/DrmSessionManager;->SESSION_STATE_ERROR:I

    .line 198
    .line 199
    sget v1, Lcom/cicada/player/utils/media/DrmSessionManager;->ERROR_CODE_DENIED_BY_SERVER:I

    .line 200
    .line 201
    invoke-direct {p0, v0, v1}, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->changeState(II)V

    .line 202
    .line 203
    .line 204
    :goto_1
    return-void
.end method

.method private requestProvision()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/cicada/player/utils/media/DrmSessionManager;->access$200()Ljava/lang/String;

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
    const-string v2, "requestProvision  state = "

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget v2, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->state:I

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-boolean v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->hasProvideProvision:Z

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->mediaDrm:Landroid/media/MediaDrm;

    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/media/MediaDrm;->getProvisionRequest()Landroid/media/MediaDrm$ProvisionRequest;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->this$0:Lcom/cicada/player/utils/media/DrmSessionManager;

    .line 39
    .line 40
    invoke-static {v1}, Lcom/cicada/player/utils/media/DrmSessionManager;->access$400(Lcom/cicada/player/utils/media/DrmSessionManager;)J

    .line 41
    .line 42
    .line 43
    move-result-wide v2

    .line 44
    invoke-virtual {v0}, Landroid/media/MediaDrm$ProvisionRequest;->getDefaultUrl()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-virtual {v0}, Landroid/media/MediaDrm$ProvisionRequest;->getData()[B

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/cicada/player/utils/media/DrmSessionManager;->native_requestProvision(JLjava/lang/String;[B)[B

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    if-nez v1, :cond_1

    .line 57
    .line 58
    invoke-static {}, Lcom/cicada/player/utils/media/DrmSessionManager;->access$200()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    const-string v3, "requestProvision fail: data = null , url : "

    .line 68
    .line 69
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Landroid/media/MediaDrm$ProvisionRequest;->getDefaultUrl()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-static {v1, v0}, Lcom/cicada/player/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    sget v0, Lcom/cicada/player/utils/media/DrmSessionManager;->SESSION_STATE_ERROR:I

    .line 87
    .line 88
    sget v1, Lcom/cicada/player/utils/media/DrmSessionManager;->ERROR_CODE_PROVISION_RESPONSE_NULL:I

    .line 89
    .line 90
    invoke-direct {p0, v0, v1}, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->changeState(II)V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :cond_1
    invoke-static {}, Lcom/cicada/player/utils/media/DrmSessionManager;->access$200()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    .line 103
    const-string v3, "requestProvision : data =  "

    .line 104
    .line 105
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    new-instance v3, Ljava/lang/String;

    .line 109
    .line 110
    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-static {v0, v2}, Lcom/cicada/player/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->mediaDrm:Landroid/media/MediaDrm;

    .line 124
    .line 125
    invoke-virtual {v0, v1}, Landroid/media/MediaDrm;->provideProvisionResponse([B)V

    .line 126
    .line 127
    .line 128
    const/4 v0, 0x1

    .line 129
    iput-boolean v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->hasProvideProvision:Z

    .line 130
    .line 131
    iget v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->state:I

    .line 132
    .line 133
    sget v1, Lcom/cicada/player/utils/media/DrmSessionManager;->SESSION_STATE_IDLE:I

    .line 134
    .line 135
    if-ne v0, v1, :cond_2

    .line 136
    .line 137
    const/4 v0, 0x0

    .line 138
    invoke-virtual {p0, v0}, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->prepare(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .line 140
    .line 141
    goto :goto_0

    .line 142
    :catch_0
    move-exception v0

    .line 143
    invoke-static {}, Lcom/cicada/player/utils/media/DrmSessionManager;->access$200()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    new-instance v2, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .line 151
    .line 152
    const-string v3, "requestProvision fail: "

    .line 153
    .line 154
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-static {v1, v0}, Lcom/cicada/player/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    sget v0, Lcom/cicada/player/utils/media/DrmSessionManager;->SESSION_STATE_ERROR:I

    .line 172
    .line 173
    sget v1, Lcom/cicada/player/utils/media/DrmSessionManager;->ERROR_CODE_PROVISION_FAIL:I

    .line 174
    .line 175
    invoke-direct {p0, v0, v1}, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->changeState(II)V

    .line 176
    .line 177
    .line 178
    :cond_2
    :goto_0
    return-void
.end method

.method private sendRequest(I[B)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->requestHandler:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object p2, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->requestHandler:Landroid/os/Handler;

    .line 8
    .line 9
    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public isForceInsecureDecoder()Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public prepare(Z)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->mediaDrm:Landroid/media/MediaDrm;

    .line 2
    .line 3
    const-string v1, " prepare fail : "

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    :try_start_0
    const-string v0, "urn:uuid:edef8ba9-79d6-4ace-a3c8-27dcd51d21ed"

    .line 9
    .line 10
    iget-object v3, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->drmInfo:Lcom/cicada/player/utils/media/DrmSessionManager$DrmInfo;

    .line 11
    .line 12
    iget-object v3, v3, Lcom/cicada/player/utils/media/DrmSessionManager$DrmInfo;->keyFormat:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    new-instance v0, Landroid/media/MediaDrm;

    .line 21
    .line 22
    sget-object v3, Lcom/cicada/player/utils/media/DrmSessionManager;->WIDEVINE_UUID:Ljava/util/UUID;

    .line 23
    .line 24
    invoke-direct {v0, v3}, Landroid/media/MediaDrm;-><init>(Ljava/util/UUID;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->mediaDrm:Landroid/media/MediaDrm;
    :try_end_0
    .catch Landroid/media/UnsupportedSchemeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    new-instance v3, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession$2;

    .line 30
    .line 31
    invoke-direct {v3, p0}, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession$2;-><init>(Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v3}, Landroid/media/MediaDrm;->setOnEventListener(Landroid/media/MediaDrm$OnEventListener;)V

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :catch_0
    move-exception p1

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/cicada/player/utils/media/DrmSessionManager;->access$200()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string v3, " prepare fail : not support format :"

    .line 50
    .line 51
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    iget-object v3, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->drmInfo:Lcom/cicada/player/utils/media/DrmSessionManager$DrmInfo;

    .line 55
    .line 56
    iget-object v3, v3, Lcom/cicada/player/utils/media/DrmSessionManager$DrmInfo;->keyFormat:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-static {p1, v0}, Lcom/cicada/player/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    sget p1, Lcom/cicada/player/utils/media/DrmSessionManager;->SESSION_STATE_ERROR:I

    .line 69
    .line 70
    sget v0, Lcom/cicada/player/utils/media/DrmSessionManager;->ERROR_CODE_UNSUPPORT_SCHEME:I

    .line 71
    .line 72
    invoke-direct {p0, p1, v0}, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->changeState(II)V
    :try_end_1
    .catch Landroid/media/UnsupportedSchemeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 73
    .line 74
    .line 75
    return v2

    .line 76
    :goto_0
    invoke-static {}, Lcom/cicada/player/utils/media/DrmSessionManager;->access$200()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    new-instance v3, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-static {v0, p1}, Lcom/cicada/player/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    sget p1, Lcom/cicada/player/utils/media/DrmSessionManager;->SESSION_STATE_ERROR:I

    .line 103
    .line 104
    sget v0, Lcom/cicada/player/utils/media/DrmSessionManager;->ERROR_CODE_UNSUPPORT_SCHEME:I

    .line 105
    .line 106
    invoke-direct {p0, p1, v0}, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->changeState(II)V

    .line 107
    .line 108
    .line 109
    return v2

    .line 110
    :cond_1
    :goto_1
    const/4 v0, 0x1

    .line 111
    :try_start_2
    iget-object v3, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->mediaDrm:Landroid/media/MediaDrm;

    .line 112
    .line 113
    invoke-virtual {v3}, Landroid/media/MediaDrm;->openSession()[B

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    iput-object v3, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->sessionId:[B

    .line 118
    .line 119
    iget-object v3, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->this$0:Lcom/cicada/player/utils/media/DrmSessionManager;

    .line 120
    .line 121
    invoke-static {v3}, Lcom/cicada/player/utils/media/DrmSessionManager;->access$400(Lcom/cicada/player/utils/media/DrmSessionManager;)J

    .line 122
    .line 123
    .line 124
    move-result-wide v4

    .line 125
    iget-object v6, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->sessionId:[B

    .line 126
    .line 127
    invoke-virtual {v3, v4, v5, v6}, Lcom/cicada/player/utils/media/DrmSessionManager;->native_updateSessionId(J[B)V

    .line 128
    .line 129
    .line 130
    sget v3, Lcom/cicada/player/utils/media/DrmSessionManager;->SESSION_STATE_IDLE:I

    .line 131
    .line 132
    sget v4, Lcom/cicada/player/utils/media/DrmSessionManager;->ERROR_CODE_NONE:I

    .line 133
    .line 134
    invoke-direct {p0, v3, v4}, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->changeState(II)V

    .line 135
    .line 136
    .line 137
    iget-object v3, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->sessionId:[B

    .line 138
    .line 139
    const/4 v4, 0x2

    .line 140
    invoke-direct {p0, v4, v3}, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->sendRequest(I[B)V
    :try_end_2
    .catch Landroid/media/NotProvisionedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 141
    .line 142
    .line 143
    return v0

    .line 144
    :catch_1
    move-exception p1

    .line 145
    goto :goto_2

    .line 146
    :catch_2
    move-exception v1

    .line 147
    goto :goto_3

    .line 148
    :goto_2
    invoke-static {}, Lcom/cicada/player/utils/media/DrmSessionManager;->access$200()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    new-instance v3, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    invoke-static {v0, p1}, Lcom/cicada/player/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    sget p1, Lcom/cicada/player/utils/media/DrmSessionManager;->SESSION_STATE_ERROR:I

    .line 175
    .line 176
    sget v0, Lcom/cicada/player/utils/media/DrmSessionManager;->ERROR_CODE_RESOURCE_BUSY:I

    .line 177
    .line 178
    invoke-direct {p0, p1, v0}, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->changeState(II)V

    .line 179
    .line 180
    .line 181
    return v2

    .line 182
    :goto_3
    invoke-static {}, Lcom/cicada/player/utils/media/DrmSessionManager;->access$200()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    new-instance v4, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    .line 190
    .line 191
    const-string v5, " prepare NotProvisionedException : "

    .line 192
    .line 193
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    invoke-static {v3, v1}, Lcom/cicada/player/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    if-eqz p1, :cond_2

    .line 211
    .line 212
    const/4 p1, 0x0

    .line 213
    invoke-direct {p0, v0, p1}, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->sendRequest(I[B)V

    .line 214
    .line 215
    .line 216
    goto :goto_4

    .line 217
    :cond_2
    sget p1, Lcom/cicada/player/utils/media/DrmSessionManager;->SESSION_STATE_ERROR:I

    .line 218
    .line 219
    sget v0, Lcom/cicada/player/utils/media/DrmSessionManager;->ERROR_CODE_PROVISION_FAIL:I

    .line 220
    .line 221
    invoke-direct {p0, p1, v0}, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->changeState(II)V

    .line 222
    .line 223
    .line 224
    :goto_4
    return v2
.end method

.method public release()Z
    .locals 4

    .line 1
    sget v0, Lcom/cicada/player/utils/media/DrmSessionManager;->SESSION_STATE_ERROR:I

    .line 2
    .line 3
    sget v1, Lcom/cicada/player/utils/media/DrmSessionManager;->ERROR_CODE_RELEASED:I

    .line 4
    .line 5
    invoke-direct {p0, v0, v1}, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->changeState(II)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->requestHandlerThread:Landroid/os/HandlerThread;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->mediaDrm:Landroid/media/MediaDrm;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    :try_start_0
    iget-object v1, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->sessionId:[B

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/media/MediaDrm;->closeSession([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception v0

    .line 26
    invoke-static {}, Lcom/cicada/player/utils/media/DrmSessionManager;->access$200()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v3, " closeSession fail : "

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-static {v1, v0}, Lcom/cicada/player/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->mediaDrm:Landroid/media/MediaDrm;

    .line 55
    .line 56
    invoke-virtual {v0}, Landroid/media/MediaDrm;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :catch_1
    move-exception v0

    .line 61
    invoke-static {}, Lcom/cicada/player/utils/media/DrmSessionManager;->access$200()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    const-string v3, " release fail : "

    .line 71
    .line 72
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-static {v1, v0}, Lcom/cicada/player/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    :goto_1
    const/4 v0, 0x0

    .line 90
    iput-object v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->mediaDrm:Landroid/media/MediaDrm;

    .line 91
    .line 92
    :cond_1
    const/4 v0, 0x1

    .line 93
    return v0
.end method
