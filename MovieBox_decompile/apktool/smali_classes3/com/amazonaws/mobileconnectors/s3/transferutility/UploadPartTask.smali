.class Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask$UploadPartTaskProgressListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final f:Lcom/amazonaws/logging/Log;


# instance fields
.field private final a:Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;

.field private final b:Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadTaskProgressListener;

.field private final c:Lcom/amazonaws/services/s3/model/UploadPartRequest;

.field private final d:Lcom/amazonaws/services/s3/AmazonS3;

.field private final e:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/amazonaws/logging/LogFactory;->b(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->f:Lcom/amazonaws/logging/Log;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadTaskProgressListener;Lcom/amazonaws/services/s3/model/UploadPartRequest;Lcom/amazonaws/services/s3/AmazonS3;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->a:Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadTaskProgressListener;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->c:Lcom/amazonaws/services/s3/model/UploadPartRequest;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->d:Lcom/amazonaws/services/s3/AmazonS3;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->e:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    .line 13
    .line 14
    return-void
.end method

.method static synthetic a()Lcom/amazonaws/logging/Log;
    .locals 1

    .line 1
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->f:Lcom/amazonaws/logging/Log;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic b(Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;)Lcom/amazonaws/services/s3/model/UploadPartRequest;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->c:Lcom/amazonaws/services/s3/model/UploadPartRequest;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public c()Ljava/lang/Boolean;
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->a:Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;

    .line 2
    .line 3
    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->IN_PROGRESS:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 4
    .line 5
    iput-object v1, v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->c:Lcom/amazonaws/services/s3/model/UploadPartRequest;

    .line 8
    .line 9
    new-instance v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask$UploadPartTaskProgressListener;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadTaskProgressListener;

    .line 12
    .line 13
    invoke-direct {v1, p0, v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask$UploadPartTaskProgressListener;-><init>(Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadTaskProgressListener;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/amazonaws/AmazonWebServiceRequest;->setGeneralProgressListener(Lcom/amazonaws/event/ProgressListener;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->d:Lcom/amazonaws/services/s3/AmazonS3;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->c:Lcom/amazonaws/services/s3/model/UploadPartRequest;

    .line 22
    .line 23
    invoke-interface {v0, v1}, Lcom/amazonaws/services/s3/AmazonS3;->a(Lcom/amazonaws/services/s3/model/UploadPartRequest;)Lcom/amazonaws/services/s3/model/UploadPartResult;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->a:Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;

    .line 28
    .line 29
    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->PART_COMPLETED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 30
    .line 31
    iput-object v2, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 32
    .line 33
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->e:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    .line 34
    .line 35
    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->c:Lcom/amazonaws/services/s3/model/UploadPartRequest;

    .line 36
    .line 37
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getId()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    invoke-virtual {v1, v3, v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->s(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)I

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->e:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    .line 45
    .line 46
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->c:Lcom/amazonaws/services/s3/model/UploadPartRequest;

    .line 47
    .line 48
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getId()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/UploadPartResult;->getETag()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v1, v2, v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->q(ILjava/lang/String;)I

    .line 57
    .line 58
    .line 59
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    return-object v0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->f:Lcom/amazonaws/logging/Log;

    .line 64
    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    const-string v3, "Upload part interrupted: "

    .line 71
    .line 72
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-interface {v1, v2}, Lcom/amazonaws/logging/Log;->f(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    new-instance v2, Lcom/amazonaws/event/ProgressEvent;

    .line 86
    .line 87
    const-wide/16 v3, 0x0

    .line 88
    .line 89
    invoke-direct {v2, v3, v4}, Lcom/amazonaws/event/ProgressEvent;-><init>(J)V

    .line 90
    .line 91
    .line 92
    const/16 v5, 0x20

    .line 93
    .line 94
    invoke-virtual {v2, v5}, Lcom/amazonaws/event/ProgressEvent;->c(I)V

    .line 95
    .line 96
    .line 97
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadTaskProgressListener;

    .line 98
    .line 99
    new-instance v5, Lcom/amazonaws/event/ProgressEvent;

    .line 100
    .line 101
    invoke-direct {v5, v3, v4}, Lcom/amazonaws/event/ProgressEvent;-><init>(J)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2, v5}, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadTaskProgressListener;->a(Lcom/amazonaws/event/ProgressEvent;)V

    .line 105
    .line 106
    .line 107
    :try_start_1
    invoke-static {}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->c()Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    if-eqz v2, :cond_0

    .line 112
    .line 113
    invoke-static {}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->c()Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-virtual {v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->e()Z

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    if-nez v2, :cond_0

    .line 122
    .line 123
    new-instance v2, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .line 127
    .line 128
    const-string v3, "Thread: ["

    .line 129
    .line 130
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    .line 138
    .line 139
    .line 140
    move-result-wide v3

    .line 141
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    const-string v3, "]: Network wasn\'t available."

    .line 145
    .line 146
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    invoke-interface {v1, v2}, Lcom/amazonaws/logging/Log;->d(Ljava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->a:Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;

    .line 157
    .line 158
    sget-object v3, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->WAITING_FOR_NETWORK:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 159
    .line 160
    iput-object v3, v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 161
    .line 162
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->e:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    .line 163
    .line 164
    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->c:Lcom/amazonaws/services/s3/model/UploadPartRequest;

    .line 165
    .line 166
    invoke-virtual {v4}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getId()I

    .line 167
    .line 168
    .line 169
    move-result v4

    .line 170
    invoke-virtual {v2, v4, v3}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->s(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)I

    .line 171
    .line 172
    .line 173
    const-string v2, "Network Connection Interrupted: Moving the TransferState to WAITING_FOR_NETWORK"

    .line 174
    .line 175
    invoke-interface {v1, v2}, Lcom/amazonaws/logging/Log;->d(Ljava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_1
    .catch Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 179
    .line 180
    return-object v0

    .line 181
    :catch_1
    move-exception v1

    .line 182
    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->f:Lcom/amazonaws/logging/Log;

    .line 183
    .line 184
    new-instance v3, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    .line 188
    .line 189
    const-string v4, "TransferUtilityException: ["

    .line 190
    .line 191
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    const-string v1, "]"

    .line 198
    .line 199
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    invoke-interface {v2, v1}, Lcom/amazonaws/logging/Log;->f(Ljava/lang/Object;)V

    .line 207
    .line 208
    .line 209
    :cond_0
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->a:Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;

    .line 210
    .line 211
    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->FAILED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 212
    .line 213
    iput-object v2, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 214
    .line 215
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->e:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    .line 216
    .line 217
    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->c:Lcom/amazonaws/services/s3/model/UploadPartRequest;

    .line 218
    .line 219
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getId()I

    .line 220
    .line 221
    .line 222
    move-result v3

    .line 223
    invoke-virtual {v1, v3, v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->s(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)I

    .line 224
    .line 225
    .line 226
    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->f:Lcom/amazonaws/logging/Log;

    .line 227
    .line 228
    const-string v2, "Encountered error uploading part "

    .line 229
    .line 230
    invoke-interface {v1, v2, v0}, Lcom/amazonaws/logging/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 231
    .line 232
    .line 233
    throw v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->c()Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
