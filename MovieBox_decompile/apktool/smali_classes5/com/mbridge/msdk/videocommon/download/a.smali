.class public Lcom/mbridge/msdk/videocommon/download/a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private A:I

.field private B:Ljava/io/File;

.field private C:I

.field private D:I

.field private E:I

.field private F:I

.field private G:Z

.field private H:Lcom/mbridge/msdk/setting/l;

.field private I:Lcom/mbridge/msdk/videocommon/setting/c;

.field private J:Lcom/mbridge/msdk/setting/l;

.field private K:Z

.field private L:Z

.field private M:Z

.field private N:Z

.field private O:Z

.field private P:Z

.field private Q:Z

.field private R:Lcom/mbridge/msdk/foundation/download/OnDownloadStateListener;

.field private S:Lcom/mbridge/msdk/foundation/download/OnProgressStateListener;

.field private a:Z

.field private b:I

.field private c:I

.field private d:Z

.field private volatile e:I

.field private f:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/mbridge/msdk/videocommon/download/c;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/mbridge/msdk/videocommon/listener/a;

.field private h:Lcom/mbridge/msdk/videocommon/listener/a;

.field private i:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

.field private j:Ljava/lang/String;

.field private k:Landroid/content/Context;

.field private l:J

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:J

.field private p:Ljava/lang/String;

.field private q:Z

.field private r:J

.field private s:I

.field private t:Z

.field private u:Lcom/mbridge/msdk/foundation/db/m;

.field private v:Z

.field private w:Ljava/lang/String;

.field private x:Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;

.field private y:I

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->a:Z

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    iput v1, p0, Lcom/mbridge/msdk/videocommon/download/a;->b:I

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->d:Z

    .line 11
    .line 12
    iput v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->e:I

    .line 13
    .line 14
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 15
    .line 16
    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v2, p0, Lcom/mbridge/msdk/videocommon/download/a;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 20
    .line 21
    const-wide/16 v2, 0x0

    .line 22
    .line 23
    iput-wide v2, p0, Lcom/mbridge/msdk/videocommon/download/a;->o:J

    .line 24
    .line 25
    iput-boolean v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->q:Z

    .line 26
    .line 27
    const/16 v2, 0x64

    .line 28
    .line 29
    iput v2, p0, Lcom/mbridge/msdk/videocommon/download/a;->s:I

    .line 30
    .line 31
    iput-boolean v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->t:Z

    .line 32
    .line 33
    iput-boolean v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->v:Z

    .line 34
    .line 35
    iput v1, p0, Lcom/mbridge/msdk/videocommon/download/a;->C:I

    .line 36
    .line 37
    iput-boolean v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->G:Z

    .line 38
    .line 39
    iput-boolean v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->K:Z

    .line 40
    .line 41
    iput-boolean v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->L:Z

    .line 42
    .line 43
    iput-boolean v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->M:Z

    .line 44
    .line 45
    iput-boolean v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->N:Z

    .line 46
    .line 47
    iput-boolean v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->O:Z

    .line 48
    .line 49
    iput-boolean v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->P:Z

    .line 50
    .line 51
    iput-boolean v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->Q:Z

    .line 52
    .line 53
    new-instance v0, Lcom/mbridge/msdk/videocommon/download/a$a;

    .line 54
    .line 55
    invoke-direct {v0, p0}, Lcom/mbridge/msdk/videocommon/download/a$a;-><init>(Lcom/mbridge/msdk/videocommon/download/a;)V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->R:Lcom/mbridge/msdk/foundation/download/OnDownloadStateListener;

    .line 59
    .line 60
    new-instance v0, Lcom/mbridge/msdk/videocommon/download/a$b;

    .line 61
    .line 62
    invoke-direct {v0, p0}, Lcom/mbridge/msdk/videocommon/download/a$b;-><init>(Lcom/mbridge/msdk/videocommon/download/a;)V

    .line 63
    .line 64
    .line 65
    iput-object v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->S:Lcom/mbridge/msdk/foundation/download/OnProgressStateListener;

    .line 66
    .line 67
    if-nez p1, :cond_0

    .line 68
    .line 69
    if-nez p2, :cond_0

    .line 70
    .line 71
    return-void

    .line 72
    :cond_0
    invoke-static {}, Lcom/mbridge/msdk/setting/h;->b()Lcom/mbridge/msdk/setting/h;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->b()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/setting/h;->b(Ljava/lang/String;)Lcom/mbridge/msdk/setting/g;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    if-eqz p1, :cond_1

    .line 89
    .line 90
    invoke-virtual {p1}, Lcom/mbridge/msdk/setting/b;->D0()Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    iput-boolean p1, p0, Lcom/mbridge/msdk/videocommon/download/a;->G:Z

    .line 95
    .line 96
    :cond_1
    sget p1, Lcom/mbridge/msdk/foundation/same/a;->u:I

    .line 97
    .line 98
    iput p1, p0, Lcom/mbridge/msdk/videocommon/download/a;->D:I

    .line 99
    .line 100
    sget p1, Lcom/mbridge/msdk/foundation/same/a;->v:I

    .line 101
    .line 102
    iput p1, p0, Lcom/mbridge/msdk/videocommon/download/a;->E:I

    .line 103
    .line 104
    sget p1, Lcom/mbridge/msdk/foundation/same/a;->t:I

    .line 105
    .line 106
    iput p1, p0, Lcom/mbridge/msdk/videocommon/download/a;->F:I

    .line 107
    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 109
    .line 110
    .line 111
    move-result-wide v0

    .line 112
    iput-wide v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->r:J

    .line 113
    .line 114
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    iput-object p1, p0, Lcom/mbridge/msdk/videocommon/download/a;->k:Landroid/content/Context;

    .line 123
    .line 124
    iput-object p2, p0, Lcom/mbridge/msdk/videocommon/download/a;->i:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 125
    .line 126
    iput-object p3, p0, Lcom/mbridge/msdk/videocommon/download/a;->j:Ljava/lang/String;

    .line 127
    .line 128
    iput p4, p0, Lcom/mbridge/msdk/videocommon/download/a;->b:I

    .line 129
    .line 130
    if-eqz p2, :cond_2

    .line 131
    .line 132
    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    iput-object p1, p0, Lcom/mbridge/msdk/videocommon/download/a;->m:Ljava/lang/String;

    .line 137
    .line 138
    :cond_2
    iget-object p1, p0, Lcom/mbridge/msdk/videocommon/download/a;->m:Ljava/lang/String;

    .line 139
    .line 140
    invoke-static {p1}, Lcom/mbridge/msdk/foundation/tools/m0;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    iput-object p1, p0, Lcom/mbridge/msdk/videocommon/download/a;->w:Ljava/lang/String;

    .line 145
    .line 146
    new-instance p1, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .line 150
    .line 151
    sget-object p2, Lcom/mbridge/msdk/foundation/same/directory/c;->c:Lcom/mbridge/msdk/foundation/same/directory/c;

    .line 152
    .line 153
    invoke-static {p2}, Lcom/mbridge/msdk/foundation/same/directory/e;->b(Lcom/mbridge/msdk/foundation/same/directory/c;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p2

    .line 157
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    sget-object p2, Ljava/io/File;->separator:Ljava/lang/String;

    .line 161
    .line 162
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    iput-object p1, p0, Lcom/mbridge/msdk/videocommon/download/a;->n:Ljava/lang/String;

    .line 170
    .line 171
    new-instance p1, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    .line 175
    .line 176
    iget-object p2, p0, Lcom/mbridge/msdk/videocommon/download/a;->n:Ljava/lang/String;

    .line 177
    .line 178
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    iget-object p2, p0, Lcom/mbridge/msdk/videocommon/download/a;->w:Ljava/lang/String;

    .line 182
    .line 183
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    iput-object p1, p0, Lcom/mbridge/msdk/videocommon/download/a;->p:Ljava/lang/String;

    .line 191
    .line 192
    new-instance p1, Ljava/lang/StringBuilder;

    .line 193
    .line 194
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 195
    .line 196
    .line 197
    iget-object p2, p0, Lcom/mbridge/msdk/videocommon/download/a;->i:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 198
    .line 199
    invoke-virtual {p2}, Lcom/mbridge/msdk/out/Campaign;->getAppName()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object p2

    .line 203
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    const-string p2, " videoLocalPath:"

    .line 207
    .line 208
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    iget-object p2, p0, Lcom/mbridge/msdk/videocommon/download/a;->p:Ljava/lang/String;

    .line 212
    .line 213
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    const-string p2, " videoUrl: "

    .line 217
    .line 218
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    iget-object p2, p0, Lcom/mbridge/msdk/videocommon/download/a;->i:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 222
    .line 223
    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object p2

    .line 227
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    const-string p2, " "

    .line 231
    .line 232
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    iget p2, p0, Lcom/mbridge/msdk/videocommon/download/a;->s:I

    .line 236
    .line 237
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object p1

    .line 244
    const-string p2, "CampaignDownLoadTask"

    .line 245
    .line 246
    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    invoke-direct {p0}, Lcom/mbridge/msdk/videocommon/download/a;->l()V

    .line 250
    .line 251
    .line 252
    return-void
.end method

.method private a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)I
    .locals 1

    if-eqz p1, :cond_0

    .line 134
    :try_start_0
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAabEntity()Lcom/mbridge/msdk/foundation/entity/AabEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAabEntity()Lcom/mbridge/msdk/foundation/entity/AabEntity;

    move-result-object p1

    iget p1, p1, Lcom/mbridge/msdk/foundation/entity/AabEntity;->h3c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 136
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CampaignDownLoadTask"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic a(Lcom/mbridge/msdk/videocommon/download/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/mbridge/msdk/videocommon/download/a;->e:I

    return p0
.end method

.method static synthetic a(Lcom/mbridge/msdk/videocommon/download/a;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/mbridge/msdk/videocommon/download/a;->e:I

    return p1
.end method

.method static synthetic a(Lcom/mbridge/msdk/videocommon/download/a;J)J
    .locals 0

    .line 6
    iput-wide p1, p0, Lcom/mbridge/msdk/videocommon/download/a;->l:J

    return-wide p1
.end method

.method static synthetic a(Lcom/mbridge/msdk/videocommon/download/a;Lcom/mbridge/msdk/foundation/db/m;)Lcom/mbridge/msdk/foundation/db/m;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/mbridge/msdk/videocommon/download/a;->u:Lcom/mbridge/msdk/foundation/db/m;

    return-object p1
.end method

.method private a(Lcom/mbridge/msdk/foundation/download/DownloadMessage;Lcom/mbridge/msdk/foundation/download/OnDownloadStateListener;Lcom/mbridge/msdk/foundation/download/OnProgressStateListener;Ljava/lang/String;)Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mbridge/msdk/foundation/download/DownloadMessage;",
            "Lcom/mbridge/msdk/foundation/download/OnDownloadStateListener;",
            "Lcom/mbridge/msdk/foundation/download/OnProgressStateListener;",
            "Ljava/lang/String;",
            ")",
            "Lcom/mbridge/msdk/foundation/download/core/DownloadRequest<",
            "*>;"
        }
    .end annotation

    .line 48
    invoke-static {}, Lcom/mbridge/msdk/foundation/download/MBDownloadManager;->getInstance()Lcom/mbridge/msdk/foundation/download/MBDownloadManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/foundation/download/MBDownloadManager;->download(Lcom/mbridge/msdk/foundation/download/DownloadMessage;)Lcom/mbridge/msdk/foundation/download/core/DownloadRequestBuilder;

    move-result-object p1

    iget v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->D:I

    int-to-long v0, v0

    .line 49
    invoke-virtual {p1, v0, v1}, Lcom/mbridge/msdk/foundation/download/core/DownloadRequestBuilder;->withReadTimeout(J)Lcom/mbridge/msdk/foundation/download/core/DownloadRequestBuilder;

    move-result-object p1

    iget v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->F:I

    int-to-long v0, v0

    .line 50
    invoke-virtual {p1, v0, v1}, Lcom/mbridge/msdk/foundation/download/core/DownloadRequestBuilder;->withConnectTimeout(J)Lcom/mbridge/msdk/foundation/download/core/DownloadRequestBuilder;

    move-result-object p1

    iget v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->E:I

    int-to-long v0, v0

    .line 51
    invoke-virtual {p1, v0, v1}, Lcom/mbridge/msdk/foundation/download/core/DownloadRequestBuilder;->withWriteTimeout(J)Lcom/mbridge/msdk/foundation/download/core/RequestBuilder;

    move-result-object p1

    sget-object v0, Lcom/mbridge/msdk/foundation/download/DownloadPriority;->HIGH:Lcom/mbridge/msdk/foundation/download/DownloadPriority;

    .line 52
    invoke-interface {p1, v0}, Lcom/mbridge/msdk/foundation/download/core/RequestBuilder;->withDownloadPriority(Lcom/mbridge/msdk/foundation/download/DownloadPriority;)Lcom/mbridge/msdk/foundation/download/core/RequestBuilder;

    move-result-object p1

    const/4 v0, 0x1

    .line 53
    invoke-interface {p1, v0}, Lcom/mbridge/msdk/foundation/download/core/RequestBuilder;->withHttpRetryCounter(I)Lcom/mbridge/msdk/foundation/download/core/RequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->n:Ljava/lang/String;

    .line 54
    invoke-interface {p1, v0}, Lcom/mbridge/msdk/foundation/download/core/RequestBuilder;->withDirectoryPathInternal(Ljava/lang/String;)Lcom/mbridge/msdk/foundation/download/core/RequestBuilder;

    move-result-object p1

    .line 55
    invoke-interface {p1, p2}, Lcom/mbridge/msdk/foundation/download/core/RequestBuilder;->withDownloadStateListener(Lcom/mbridge/msdk/foundation/download/OnDownloadStateListener;)Lcom/mbridge/msdk/foundation/download/core/RequestBuilder;

    move-result-object p1

    .line 56
    invoke-interface {p1, p3}, Lcom/mbridge/msdk/foundation/download/core/RequestBuilder;->withProgressStateListener(Lcom/mbridge/msdk/foundation/download/OnProgressStateListener;)Lcom/mbridge/msdk/foundation/download/core/RequestBuilder;

    move-result-object p1

    const-wide/32 p2, 0xea60

    .line 57
    invoke-interface {p1, p2, p3}, Lcom/mbridge/msdk/foundation/download/core/RequestBuilder;->withTimeout(J)Lcom/mbridge/msdk/foundation/download/core/RequestBuilder;

    move-result-object p1

    iget-boolean p2, p0, Lcom/mbridge/msdk/videocommon/download/a;->G:Z

    .line 58
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p2

    const-string p3, "do_us_fi_re"

    invoke-interface {p1, p3, p2}, Lcom/mbridge/msdk/foundation/download/core/RequestBuilder;->with(Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/foundation/download/core/RequestBuilder;

    move-result-object p1

    .line 59
    const-string p2, "download_scene"

    const-string p3, "download_video"

    invoke-interface {p1, p2, p3}, Lcom/mbridge/msdk/foundation/download/core/RequestBuilder;->with(Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/foundation/download/core/RequestBuilder;

    move-result-object p1

    iget p2, p0, Lcom/mbridge/msdk/videocommon/download/a;->s:I

    .line 60
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "ready_rate"

    invoke-interface {p1, p3, p2}, Lcom/mbridge/msdk/foundation/download/core/RequestBuilder;->with(Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/foundation/download/core/RequestBuilder;

    move-result-object p1

    .line 61
    const-string p2, "scenes"

    invoke-interface {p1, p2, p4}, Lcom/mbridge/msdk/foundation/download/core/RequestBuilder;->with(Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/foundation/download/core/RequestBuilder;

    move-result-object p1

    invoke-interface {p1}, Lcom/mbridge/msdk/foundation/download/core/RequestBuilder;->build()Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;

    move-result-object p1

    return-object p1
.end method

.method private a()V
    .locals 4

    .line 103
    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->u:Lcom/mbridge/msdk/foundation/db/m;

    if-nez v0, :cond_0

    .line 104
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/db/g;->a(Landroid/content/Context;)Lcom/mbridge/msdk/foundation/db/g;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/db/m;->a(Lcom/mbridge/msdk/foundation/db/f;)Lcom/mbridge/msdk/foundation/db/m;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->u:Lcom/mbridge/msdk/foundation/db/m;

    :cond_0
    const/4 v0, 0x0

    .line 105
    :try_start_0
    iget-object v1, p0, Lcom/mbridge/msdk/videocommon/download/a;->u:Lcom/mbridge/msdk/foundation/db/m;

    iget-object v2, p0, Lcom/mbridge/msdk/videocommon/download/a;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/foundation/db/m;->a(Ljava/lang/String;)V

    .line 106
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/q0;->a()Lcom/mbridge/msdk/foundation/tools/q0;

    move-result-object v1

    const-string v2, "r_d_v_b_l"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/mbridge/msdk/foundation/tools/q0;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 107
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/mbridge/msdk/videocommon/download/a;->p:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 109
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    :cond_1
    iput v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->e:I

    goto :goto_0

    .line 111
    :catchall_0
    :try_start_1
    const-string v1, "CampaignDownLoadTask"

    const-string v2, "del DB or file failed"

    invoke-static {v1, v2}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 112
    iput v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->e:I

    :goto_0
    return-void

    :catchall_1
    move-exception v1

    iput v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->e:I

    .line 113
    throw v1
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 12

    .line 114
    iget-wide v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->r:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    .line 115
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mbridge/msdk/videocommon/download/a;->r:J

    sub-long v2, v0, v2

    .line 116
    :goto_0
    new-instance v0, Lcom/mbridge/msdk/foundation/entity/m;

    iget-object v5, p0, Lcom/mbridge/msdk/videocommon/download/a;->k:Landroid/content/Context;

    iget-object v6, p0, Lcom/mbridge/msdk/videocommon/download/a;->i:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    iget-wide v9, p0, Lcom/mbridge/msdk/videocommon/download/a;->l:J

    iget v11, p0, Lcom/mbridge/msdk/videocommon/download/a;->A:I

    move-object v4, v0

    move v7, p1

    invoke-direct/range {v4 .. v11}, Lcom/mbridge/msdk/foundation/entity/m;-><init>(Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;ILjava/lang/String;JI)V

    .line 117
    iget-object p1, p0, Lcom/mbridge/msdk/videocommon/download/a;->i:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/foundation/entity/m;->b(Ljava/lang/String;)V

    .line 118
    iget-object p1, p0, Lcom/mbridge/msdk/videocommon/download/a;->i:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/foundation/entity/m;->v(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v0, p2}, Lcom/mbridge/msdk/foundation/entity/m;->m(Ljava/lang/String;)V

    .line 120
    iget-object p1, p0, Lcom/mbridge/msdk/videocommon/download/a;->i:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/foundation/entity/m;->n(Ljava/lang/String;)V

    .line 121
    iget-object p1, p0, Lcom/mbridge/msdk/videocommon/download/a;->i:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCurrentLocalRid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/foundation/entity/m;->k(Ljava/lang/String;)V

    .line 122
    iget-object p1, p0, Lcom/mbridge/msdk/videocommon/download/a;->i:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/foundation/entity/m;->o(Ljava/lang/String;)V

    .line 123
    iget-object p1, p0, Lcom/mbridge/msdk/videocommon/download/a;->j:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/foundation/entity/m;->u(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v0, p3}, Lcom/mbridge/msdk/foundation/entity/m;->q(Ljava/lang/String;)V

    .line 125
    iget p1, p0, Lcom/mbridge/msdk/videocommon/download/a;->s:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "ready_rate"

    invoke-virtual {v0, p2, p1}, Lcom/mbridge/msdk/foundation/entity/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object p1, p0, Lcom/mbridge/msdk/videocommon/download/a;->i:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object p1

    const-string p2, "url"

    invoke-virtual {v0, p2, p1}, Lcom/mbridge/msdk/foundation/entity/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x4

    .line 127
    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/foundation/entity/m;->e(I)V

    .line 128
    iget-object p1, p0, Lcom/mbridge/msdk/videocommon/download/a;->x:Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;

    if-eqz p1, :cond_1

    .line 129
    const-string p2, "scenes"

    const-string p3, ""

    invoke-virtual {p1, p2, p3}, Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lcom/mbridge/msdk/foundation/entity/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object p1, p0, Lcom/mbridge/msdk/videocommon/download/a;->x:Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;

    const-string p2, "resumed_breakpoint"

    invoke-virtual {p1, p2, p3}, Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lcom/mbridge/msdk/foundation/entity/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :cond_1
    iget p1, p0, Lcom/mbridge/msdk/videocommon/download/a;->A:I

    const/16 p2, 0x5e

    if-eq p1, p2, :cond_2

    const/16 p2, 0x11f

    if-eq p1, p2, :cond_2

    .line 132
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/db/g;->a(Landroid/content/Context;)Lcom/mbridge/msdk/foundation/db/g;

    move-result-object p1

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/db/n;->a(Lcom/mbridge/msdk/foundation/db/f;)Lcom/mbridge/msdk/foundation/db/n;

    move-result-object p1

    .line 133
    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/foundation/db/n;->a(Lcom/mbridge/msdk/foundation/entity/m;)J

    :cond_2
    return-void
.end method

.method private a(IZLjava/lang/String;)V
    .locals 4

    .line 137
    const-string p2, "resumed_breakpoint"

    const-string v0, "scenes"

    const-string v1, ""

    iget-boolean v2, p0, Lcom/mbridge/msdk/videocommon/download/a;->P:Z

    if-eqz v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x1

    .line 138
    :try_start_0
    iput-boolean v2, p0, Lcom/mbridge/msdk/videocommon/download/a;->P:Z

    .line 139
    new-instance v2, Lcom/mbridge/msdk/foundation/same/report/metrics/e;

    invoke-direct {v2}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;-><init>()V

    .line 140
    iget-object v3, p0, Lcom/mbridge/msdk/videocommon/download/a;->x:Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;

    if-eqz v3, :cond_1

    .line 141
    invoke-virtual {v3, v0, v1}, Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 142
    const-string v0, "url"

    iget-object v3, p0, Lcom/mbridge/msdk/videocommon/download/a;->m:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 143
    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->x:Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;

    invoke-virtual {v0, p2, v1}, Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p2, v0}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 144
    const-string p2, "h3c"

    invoke-virtual {v2, p2, v1}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 145
    :cond_1
    :goto_0
    const-string p2, "resource_type"

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, p2, v0}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 146
    const-string p2, "file_size"

    iget-wide v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->l:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, p2, v0}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 147
    const-string p2, "ready_rate"

    iget v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->s:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, p2, v0}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 148
    const-string p2, "result"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p2, p1}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 149
    const-string p1, "reason"

    invoke-virtual {v2, p1, p3}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 150
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->b()Lcom/mbridge/msdk/foundation/same/report/metrics/d;

    move-result-object p1

    const-string p2, "m_download_end"

    iget-object p3, p0, Lcom/mbridge/msdk/videocommon/download/a;->i:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1, p2, p3, v2}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/foundation/same/report/metrics/e;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 151
    :goto_1
    sget-boolean p2, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz p2, :cond_2

    .line 152
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_2
    return-void
.end method

.method private a(JI)V
    .locals 6

    .line 80
    iput-wide p1, p0, Lcom/mbridge/msdk/videocommon/download/a;->o:J

    .line 81
    iget v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->s:I

    int-to-long v1, v0

    iget-wide v3, p0, Lcom/mbridge/msdk/videocommon/download/a;->l:J

    mul-long/2addr v1, v3

    const-wide/16 v3, 0x64

    mul-long/2addr v3, p1

    cmp-long v1, v3, v1

    const/4 v2, 0x1

    if-ltz v1, :cond_4

    .line 82
    iget-boolean v1, p0, Lcom/mbridge/msdk/videocommon/download/a;->t:Z

    if-nez v1, :cond_4

    const/4 v1, 0x4

    if-eq p3, v1, :cond_4

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    if-eq p3, v0, :cond_0

    .line 83
    iput v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->e:I

    return-void

    .line 84
    :cond_0
    iput-boolean v2, p0, Lcom/mbridge/msdk/videocommon/download/a;->t:Z

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UpdateListener : state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " progress : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CampaignDownLoadTask"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lcom/mbridge/msdk/videocommon/download/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 87
    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->g:Lcom/mbridge/msdk/videocommon/listener/a;

    if-eqz v0, :cond_1

    .line 88
    iget-object v1, p0, Lcom/mbridge/msdk/videocommon/download/a;->m:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/mbridge/msdk/videocommon/listener/a;->a(Ljava/lang/String;)V

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->h:Lcom/mbridge/msdk/videocommon/listener/a;

    if-eqz v0, :cond_4

    .line 90
    iget-object v1, p0, Lcom/mbridge/msdk/videocommon/download/a;->m:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/mbridge/msdk/videocommon/listener/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :cond_2
    iget-object v1, p0, Lcom/mbridge/msdk/videocommon/download/a;->g:Lcom/mbridge/msdk/videocommon/listener/a;

    const-string v3, "file is not effective "

    if-eqz v1, :cond_3

    .line 92
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/mbridge/msdk/videocommon/download/a;->m:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Lcom/mbridge/msdk/videocommon/listener/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_3
    iget-object v1, p0, Lcom/mbridge/msdk/videocommon/download/a;->h:Lcom/mbridge/msdk/videocommon/listener/a;

    if-eqz v1, :cond_4

    .line 94
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/mbridge/msdk/videocommon/download/a;->m:Ljava/lang/String;

    invoke-interface {v1, v0, v3}, Lcom/mbridge/msdk/videocommon/listener/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_4
    :goto_0
    iget-boolean v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->a:Z

    if-nez v0, :cond_6

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_6

    .line 96
    iput-boolean v2, p0, Lcom/mbridge/msdk/videocommon/download/a;->a:Z

    .line 97
    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->u:Lcom/mbridge/msdk/foundation/db/m;

    if-nez v0, :cond_5

    .line 98
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/db/g;->a(Landroid/content/Context;)Lcom/mbridge/msdk/foundation/db/g;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/db/m;->a(Lcom/mbridge/msdk/foundation/db/f;)Lcom/mbridge/msdk/foundation/db/m;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->u:Lcom/mbridge/msdk/foundation/db/m;

    .line 99
    :cond_5
    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->u:Lcom/mbridge/msdk/foundation/db/m;

    iget-object v1, p0, Lcom/mbridge/msdk/videocommon/download/a;->m:Ljava/lang/String;

    iget v2, p0, Lcom/mbridge/msdk/videocommon/download/a;->e:I

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/mbridge/msdk/foundation/db/m;->a(Ljava/lang/String;JI)J

    .line 100
    :cond_6
    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_8

    .line 101
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mbridge/msdk/videocommon/download/c;

    if-eqz v1, :cond_7

    .line 102
    invoke-interface {v1, p1, p2, p3}, Lcom/mbridge/msdk/videocommon/download/c;->onProgress(JI)V

    goto :goto_1

    :cond_8
    return-void
.end method

.method private a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/foundation/same/report/metrics/e;)V
    .locals 4

    .line 153
    iget-boolean v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->O:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    .line 154
    iput-boolean v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->O:Z

    .line 155
    :try_start_0
    const-string v0, "resource_type"

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 156
    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->x:Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "resumed_breakpoint"

    const-string v2, "1"

    const-string v3, "scenes"

    if-eqz v0, :cond_1

    .line 157
    :try_start_1
    invoke-virtual {v0, v3, v2}, Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v3, v0}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 158
    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->x:Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 159
    :cond_1
    invoke-virtual {p2, v3, v2}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 160
    invoke-virtual {p2, v1, v2}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 161
    :goto_0
    const-string v0, "url"

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 162
    const-string v0, "ready_rate"

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/videocommon/download/a;->c(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 163
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->b()Lcom/mbridge/msdk/foundation/same/report/metrics/d;

    move-result-object v0

    const-string v1, "m_download_start"

    invoke-virtual {v0, v1, p1, p2}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/foundation/same/report/metrics/e;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 164
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CampaignDownLoadTask"

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/videocommon/download/a;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/mbridge/msdk/videocommon/download/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/videocommon/download/a;IZLjava/lang/String;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/mbridge/msdk/videocommon/download/a;->a(IZLjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/videocommon/download/a;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/foundation/same/report/metrics/e;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/mbridge/msdk/videocommon/download/a;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/foundation/same/report/metrics/e;)V

    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/videocommon/download/a;Z)Z
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/mbridge/msdk/videocommon/download/a;->d:Z

    return p1
.end method

.method private b(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)I
    .locals 1

    .line 18
    :try_start_0
    iget-object p1, p0, Lcom/mbridge/msdk/videocommon/download/a;->J:Lcom/mbridge/msdk/setting/l;

    if-eqz p1, :cond_0

    .line 19
    invoke-virtual {p1}, Lcom/mbridge/msdk/setting/c;->C()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 20
    sget-boolean v0, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CampaignDownLoadTask"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/16 p1, 0x64

    :goto_0
    return p1
.end method

.method static synthetic b(Lcom/mbridge/msdk/videocommon/download/a;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/mbridge/msdk/videocommon/download/a;->y:I

    return p1
.end method

.method static synthetic b(Lcom/mbridge/msdk/videocommon/download/a;J)J
    .locals 0

    .line 3
    iput-wide p1, p0, Lcom/mbridge/msdk/videocommon/download/a;->o:J

    return-wide p1
.end method

.method static synthetic b(Lcom/mbridge/msdk/videocommon/download/a;)Lcom/mbridge/msdk/foundation/db/m;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/videocommon/download/a;->u:Lcom/mbridge/msdk/foundation/db/m;

    return-object p0
.end method

.method private c(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)I
    .locals 4

    const/16 v0, 0x64

    if-nez p1, :cond_0

    return v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getReady_rate()I

    move-result v1

    const/4 v2, -0x1

    const-string v3, "CampaignDownLoadTask"

    if-eq v1, v2, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getReady_rate()I

    move-result p1

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ready_rate(campaign): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-direct {p0, p1}, Lcom/mbridge/msdk/videocommon/download/a;->d(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)I

    move-result p1

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ready_rate(reward_unit_setting): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v1, 0x0

    .line 10
    :try_start_0
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v0
.end method

.method static synthetic c(Lcom/mbridge/msdk/videocommon/download/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mbridge/msdk/videocommon/download/a;->m()V

    return-void
.end method

.method private d(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)I
    .locals 4

    const/16 v0, 0x64

    if-nez p1, :cond_0

    return v0

    .line 6
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAdType()I

    move-result v1

    const/16 v2, 0x12a

    if-ne v1, v2, :cond_2

    .line 7
    iget-object p1, p0, Lcom/mbridge/msdk/videocommon/download/a;->H:Lcom/mbridge/msdk/setting/l;

    if-nez p1, :cond_1

    .line 8
    invoke-static {}, Lcom/mbridge/msdk/setting/h;->b()Lcom/mbridge/msdk/setting/h;

    move-result-object p1

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/a;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mbridge/msdk/videocommon/download/a;->j:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/mbridge/msdk/setting/h;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/setting/l;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/videocommon/download/a;->H:Lcom/mbridge/msdk/setting/l;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 9
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/mbridge/msdk/videocommon/download/a;->H:Lcom/mbridge/msdk/setting/l;

    invoke-virtual {p1}, Lcom/mbridge/msdk/setting/c;->C()I

    move-result p1

    return p1

    .line 10
    :cond_2
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAdType()I

    move-result p1

    const/16 v1, 0x2a

    if-ne p1, v1, :cond_4

    .line 11
    iget-object p1, p0, Lcom/mbridge/msdk/videocommon/download/a;->J:Lcom/mbridge/msdk/setting/l;

    if-nez p1, :cond_3

    .line 12
    invoke-static {}, Lcom/mbridge/msdk/setting/h;->b()Lcom/mbridge/msdk/setting/h;

    move-result-object p1

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/a;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mbridge/msdk/videocommon/download/a;->j:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/mbridge/msdk/setting/h;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/setting/l;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/videocommon/download/a;->J:Lcom/mbridge/msdk/setting/l;

    :cond_3
    const/4 p1, 0x0

    .line 13
    invoke-direct {p0, p1}, Lcom/mbridge/msdk/videocommon/download/a;->b(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)I

    move-result p1

    return p1

    .line 14
    :cond_4
    iget-object p1, p0, Lcom/mbridge/msdk/videocommon/download/a;->I:Lcom/mbridge/msdk/videocommon/setting/c;

    if-nez p1, :cond_5

    .line 15
    invoke-static {}, Lcom/mbridge/msdk/videocommon/setting/b;->b()Lcom/mbridge/msdk/videocommon/setting/b;

    move-result-object p1

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/a;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mbridge/msdk/videocommon/download/a;->j:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Lcom/mbridge/msdk/videocommon/setting/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/mbridge/msdk/videocommon/setting/c;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/videocommon/download/a;->I:Lcom/mbridge/msdk/videocommon/setting/c;

    .line 16
    :cond_5
    iget-object p1, p0, Lcom/mbridge/msdk/videocommon/download/a;->I:Lcom/mbridge/msdk/videocommon/setting/c;

    invoke-virtual {p1}, Lcom/mbridge/msdk/videocommon/setting/c;->w()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    .line 17
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CampaignDownLoadTask"

    invoke-static {v2, v1, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method static synthetic d(Lcom/mbridge/msdk/videocommon/download/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/mbridge/msdk/videocommon/download/a;->z:Z

    return p0
.end method

.method static synthetic e(Lcom/mbridge/msdk/videocommon/download/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/mbridge/msdk/videocommon/download/a;->s:I

    return p0
.end method

.method static synthetic f(Lcom/mbridge/msdk/videocommon/download/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/mbridge/msdk/videocommon/download/a;->c:I

    return p0
.end method

.method static synthetic g(Lcom/mbridge/msdk/videocommon/download/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/mbridge/msdk/videocommon/download/a;->d:Z

    return p0
.end method

.method static synthetic h(Lcom/mbridge/msdk/videocommon/download/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/mbridge/msdk/videocommon/download/a;->C:I

    return p0
.end method

.method static synthetic i(Lcom/mbridge/msdk/videocommon/download/a;)Lcom/mbridge/msdk/foundation/entity/CampaignEx;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/videocommon/download/a;->i:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    return-object p0
.end method

.method static synthetic j(Lcom/mbridge/msdk/videocommon/download/a;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->l:J

    return-wide v0
.end method

.method static synthetic k(Lcom/mbridge/msdk/videocommon/download/a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/videocommon/download/a;->p:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic l(Lcom/mbridge/msdk/videocommon/download/a;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->o:J

    return-wide v0
.end method

.method private l()V
    .locals 3

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/mbridge/msdk/videocommon/download/a;->n:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 6
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    if-eqz v0, :cond_4

    .line 7
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 8
    iget-object v1, p0, Lcom/mbridge/msdk/videocommon/download/a;->B:Ljava/io/File;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_4

    .line 9
    :cond_3
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "/.nomedia"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/mbridge/msdk/videocommon/download/a;->B:Ljava/io/File;

    .line 10
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4

    .line 11
    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->B:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 12
    :cond_4
    invoke-direct {p0}, Lcom/mbridge/msdk/videocommon/download/a;->u()V

    .line 13
    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->m:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/videocommon/download/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 14
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CampaignDownLoadTask"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method static synthetic m(Lcom/mbridge/msdk/videocommon/download/a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/videocommon/download/a;->m:Ljava/lang/String;

    return-object p0
.end method

.method private m()V
    .locals 3

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->j:Ljava/lang/String;

    iget-object v1, p0, Lcom/mbridge/msdk/videocommon/download/a;->i:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    sget v2, Lcom/mbridge/msdk/foundation/same/a;->x:I

    invoke-static {v0, v1, v2}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CampaignDownLoadTask"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic n(Lcom/mbridge/msdk/videocommon/download/a;)Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/videocommon/download/a;->x:Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;

    return-object p0
.end method

.method private u()V
    .locals 8

    .line 1
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/mbridge/msdk/foundation/db/g;->a(Landroid/content/Context;)Lcom/mbridge/msdk/foundation/db/g;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Lcom/mbridge/msdk/foundation/db/m;->a(Lcom/mbridge/msdk/foundation/db/f;)Lcom/mbridge/msdk/foundation/db/m;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/mbridge/msdk/videocommon/download/a;->m:Ljava/lang/String;

    .line 18
    .line 19
    const-string v2, ""

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Lcom/mbridge/msdk/foundation/db/m;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/foundation/entity/l;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const/4 v2, 0x5

    .line 26
    const-wide/16 v3, 0x0

    .line 27
    .line 28
    const/4 v5, 0x1

    .line 29
    if-eqz v1, :cond_5

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/l;->c()J

    .line 32
    .line 33
    .line 34
    move-result-wide v6

    .line 35
    iput-wide v6, p0, Lcom/mbridge/msdk/videocommon/download/a;->o:J

    .line 36
    .line 37
    iget v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->e:I

    .line 38
    .line 39
    const/4 v6, 0x2

    .line 40
    if-eq v0, v6, :cond_0

    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/l;->b()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    iput v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->e:I

    .line 47
    .line 48
    :cond_0
    iget v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->e:I

    .line 49
    .line 50
    if-ne v0, v5, :cond_1

    .line 51
    .line 52
    iput v6, p0, Lcom/mbridge/msdk/videocommon/download/a;->e:I

    .line 53
    .line 54
    :cond_1
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/l;->d()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    int-to-long v6, v0

    .line 59
    iput-wide v6, p0, Lcom/mbridge/msdk/videocommon/download/a;->l:J

    .line 60
    .line 61
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/l;->a()J

    .line 62
    .line 63
    .line 64
    move-result-wide v6

    .line 65
    cmp-long v0, v6, v3

    .line 66
    .line 67
    if-lez v0, :cond_2

    .line 68
    .line 69
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/l;->a()J

    .line 70
    .line 71
    .line 72
    move-result-wide v0

    .line 73
    iput-wide v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->r:J

    .line 74
    .line 75
    :cond_2
    iget v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->e:I

    .line 76
    .line 77
    if-ne v0, v2, :cond_4

    .line 78
    .line 79
    new-instance v0, Ljava/io/File;

    .line 80
    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    .line 86
    iget-object v6, p0, Lcom/mbridge/msdk/videocommon/download/a;->n:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    iget-object v6, p0, Lcom/mbridge/msdk/videocommon/download/a;->w:Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    iget-object v1, p0, Lcom/mbridge/msdk/videocommon/download/a;->n:Ljava/lang/String;

    .line 104
    .line 105
    iget-object v6, p0, Lcom/mbridge/msdk/videocommon/download/a;->w:Ljava/lang/String;

    .line 106
    .line 107
    invoke-static {v0, v1, v6}, Lcom/mbridge/msdk/foundation/download/utils/Objects;->exists(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-eqz v0, :cond_3

    .line 112
    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .line 117
    .line 118
    iget-object v1, p0, Lcom/mbridge/msdk/videocommon/download/a;->n:Ljava/lang/String;

    .line 119
    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    iget-object v1, p0, Lcom/mbridge/msdk/videocommon/download/a;->w:Ljava/lang/String;

    .line 124
    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    iput-object v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->p:Ljava/lang/String;

    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_3
    invoke-direct {p0}, Lcom/mbridge/msdk/videocommon/download/a;->a()V

    .line 136
    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_4
    iget v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->e:I

    .line 140
    .line 141
    if-eqz v0, :cond_6

    .line 142
    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .line 147
    .line 148
    iget-object v1, p0, Lcom/mbridge/msdk/videocommon/download/a;->n:Ljava/lang/String;

    .line 149
    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    iget-object v1, p0, Lcom/mbridge/msdk/videocommon/download/a;->w:Ljava/lang/String;

    .line 154
    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    iput-object v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->p:Ljava/lang/String;

    .line 163
    .line 164
    goto :goto_0

    .line 165
    :cond_5
    iget-object v1, p0, Lcom/mbridge/msdk/videocommon/download/a;->m:Ljava/lang/String;

    .line 166
    .line 167
    iget-wide v6, p0, Lcom/mbridge/msdk/videocommon/download/a;->r:J

    .line 168
    .line 169
    invoke-virtual {v0, v1, v6, v7}, Lcom/mbridge/msdk/foundation/db/m;->a(Ljava/lang/String;J)V

    .line 170
    .line 171
    .line 172
    :cond_6
    :goto_0
    :try_start_0
    iget-wide v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->l:J

    .line 173
    .line 174
    cmp-long v3, v0, v3

    .line 175
    .line 176
    if-lez v3, :cond_8

    .line 177
    .line 178
    iget-wide v3, p0, Lcom/mbridge/msdk/videocommon/download/a;->o:J

    .line 179
    .line 180
    const-wide/16 v6, 0x64

    .line 181
    .line 182
    mul-long/2addr v3, v6

    .line 183
    iget-object v6, p0, Lcom/mbridge/msdk/videocommon/download/a;->i:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 184
    .line 185
    invoke-direct {p0, v6}, Lcom/mbridge/msdk/videocommon/download/a;->c(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)I

    .line 186
    .line 187
    .line 188
    move-result v6

    .line 189
    int-to-long v6, v6

    .line 190
    mul-long/2addr v0, v6

    .line 191
    cmp-long v0, v3, v0

    .line 192
    .line 193
    if-ltz v0, :cond_8

    .line 194
    .line 195
    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->i:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 196
    .line 197
    invoke-direct {p0, v0}, Lcom/mbridge/msdk/videocommon/download/a;->c(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)I

    .line 198
    .line 199
    .line 200
    move-result v0

    .line 201
    const/16 v1, 0x64

    .line 202
    .line 203
    if-eq v0, v1, :cond_7

    .line 204
    .line 205
    iget v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->e:I

    .line 206
    .line 207
    if-ne v0, v2, :cond_8

    .line 208
    .line 209
    goto :goto_1

    .line 210
    :catch_0
    move-exception v0

    .line 211
    goto :goto_2

    .line 212
    :cond_7
    :goto_1
    new-instance v0, Lcom/mbridge/msdk/foundation/same/report/metrics/e;

    .line 213
    .line 214
    invoke-direct {v0}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;-><init>()V

    .line 215
    .line 216
    .line 217
    const-string v1, "cache"

    .line 218
    .line 219
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    invoke-virtual {v0, v1, v2}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 224
    .line 225
    .line 226
    iget-object v1, p0, Lcom/mbridge/msdk/videocommon/download/a;->i:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 227
    .line 228
    invoke-direct {p0, v1, v0}, Lcom/mbridge/msdk/videocommon/download/a;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/foundation/same/report/metrics/e;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    .line 230
    .line 231
    goto :goto_3

    .line 232
    :goto_2
    sget-boolean v1, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    .line 233
    .line 234
    if-eqz v1, :cond_8

    .line 235
    .line 236
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 237
    .line 238
    .line 239
    :cond_8
    :goto_3
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 14
    iput p1, p0, Lcom/mbridge/msdk/videocommon/download/a;->A:I

    return-void
.end method

.method public a(II)V
    .locals 4

    .line 10
    iput p1, p0, Lcom/mbridge/msdk/videocommon/download/a;->e:I

    .line 11
    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->u:Lcom/mbridge/msdk/foundation/db/m;

    if-nez v0, :cond_0

    .line 12
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/db/g;->a(Landroid/content/Context;)Lcom/mbridge/msdk/foundation/db/g;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/db/m;->a(Lcom/mbridge/msdk/foundation/db/f;)Lcom/mbridge/msdk/foundation/db/m;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->u:Lcom/mbridge/msdk/foundation/db/m;

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->u:Lcom/mbridge/msdk/foundation/db/m;

    iget-object v1, p0, Lcom/mbridge/msdk/videocommon/download/a;->m:Ljava/lang/String;

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/mbridge/msdk/foundation/db/m;->a(Ljava/lang/String;JI)J

    return-void
.end method

.method public a(JZLjava/lang/String;)V
    .locals 7

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setStateToDone \u4e0b\u8f7d\u5b8c\u6210  \uff1a mProgressSize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/mbridge/msdk/videocommon/download/a;->o:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "  progressSize "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mbridge/msdk/videocommon/download/a;->y:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "%   FileSize : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/mbridge/msdk/videocommon/download/a;->l:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mbridge/msdk/videocommon/download/a;->i:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/out/Campaign;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CampaignDownLoadTask"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->s:I

    const/16 v2, 0x64

    const-wide/16 v3, 0x0

    if-ne v0, v2, :cond_1

    .line 64
    iget v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->b:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    iget-wide v5, p0, Lcom/mbridge/msdk/videocommon/download/a;->l:J

    cmp-long v0, p1, v5

    if-eqz v0, :cond_1

    if-nez p3, :cond_1

    .line 65
    new-instance p4, Ljava/io/File;

    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->p:Ljava/lang/String;

    invoke-direct {p4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->n:Ljava/lang/String;

    iget-object v2, p0, Lcom/mbridge/msdk/videocommon/download/a;->w:Ljava/lang/String;

    invoke-static {p4, v0, v2}, Lcom/mbridge/msdk/foundation/download/utils/Objects;->exists(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p4}, Ljava/io/File;->length()J

    move-result-wide v3

    .line 68
    :cond_0
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "progressSize = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " fileSize = "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p1, p0, Lcom/mbridge/msdk/videocommon/download/a;->l:J

    invoke-virtual {p4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " absFileSize = "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string p1, "File size is not match witch download size."

    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/videocommon/download/a;->b(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 p3, 0x5

    .line 70
    iput p3, p0, Lcom/mbridge/msdk/videocommon/download/a;->e:I

    .line 71
    iget-wide v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->l:J

    cmp-long p3, p1, v0

    if-nez p3, :cond_2

    const/4 p3, 0x1

    .line 72
    const-string v0, ""

    invoke-direct {p0, p3, v0, p4}, Lcom/mbridge/msdk/videocommon/download/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 73
    :cond_2
    iget-wide p3, p0, Lcom/mbridge/msdk/videocommon/download/a;->l:J

    cmp-long v0, p3, v3

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->u:Lcom/mbridge/msdk/foundation/db/m;

    if-eqz v0, :cond_3

    .line 74
    iget-object v1, p0, Lcom/mbridge/msdk/videocommon/download/a;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, p3, p4}, Lcom/mbridge/msdk/foundation/db/m;->b(Ljava/lang/String;J)J

    :cond_3
    const/4 p3, 0x0

    .line 75
    iput-boolean p3, p0, Lcom/mbridge/msdk/videocommon/download/a;->a:Z

    .line 76
    iget p3, p0, Lcom/mbridge/msdk/videocommon/download/a;->e:I

    invoke-direct {p0, p1, p2, p3}, Lcom/mbridge/msdk/videocommon/download/a;->a(JI)V

    return-void
.end method

.method public a(Lcom/mbridge/msdk/videocommon/download/c;)V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public a(Lcom/mbridge/msdk/videocommon/listener/a;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/mbridge/msdk/videocommon/download/a;->g:Lcom/mbridge/msdk/videocommon/listener/a;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 10

    .line 15
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 16
    iget-object p1, p0, Lcom/mbridge/msdk/videocommon/download/a;->h:Lcom/mbridge/msdk/videocommon/listener/a;

    const-string v0, "VideoUrl is NULL, Please check it."

    invoke-interface {p1, v0, v1}, Lcom/mbridge/msdk/videocommon/listener/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 17
    :cond_0
    iget v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->e:I

    const/4 v2, 0x1

    const-string v3, "CampaignDownLoadTask"

    if-ne v0, v2, :cond_1

    .line 18
    const-string p1, "Run : Task is RUNNING, Will return."

    invoke-static {v3, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 19
    :cond_1
    iget v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->e:I

    const/4 v4, 0x5

    const-string v5, "cache"

    if-ne v0, v4, :cond_5

    iget-wide v6, p0, Lcom/mbridge/msdk/videocommon/download/a;->l:J

    iget-wide v8, p0, Lcom/mbridge/msdk/videocommon/download/a;->o:J

    invoke-static {v6, v7, v8, v9}, Lcom/mbridge/msdk/foundation/download/utils/Utils;->getDownloadRate(JJ)I

    move-result v0

    iget v4, p0, Lcom/mbridge/msdk/videocommon/download/a;->s:I

    if-lt v0, v4, :cond_5

    .line 20
    const-string p1, "Run : Video Done, Will callback."

    invoke-static {v3, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iget-object p1, p0, Lcom/mbridge/msdk/videocommon/download/a;->g:Lcom/mbridge/msdk/videocommon/listener/a;

    if-eqz p1, :cond_2

    .line 22
    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->m:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/mbridge/msdk/videocommon/listener/a;->a(Ljava/lang/String;)V

    .line 23
    :cond_2
    iget-object p1, p0, Lcom/mbridge/msdk/videocommon/download/a;->h:Lcom/mbridge/msdk/videocommon/listener/a;

    if-eqz p1, :cond_3

    .line 24
    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->m:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/mbridge/msdk/videocommon/listener/a;->a(Ljava/lang/String;)V

    .line 25
    :cond_3
    :try_start_0
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->p:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->n:Ljava/lang/String;

    iget-object v1, p0, Lcom/mbridge/msdk/videocommon/download/a;->w:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/mbridge/msdk/foundation/download/utils/Objects;->exists(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/File;->setLastModified(J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 28
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :cond_4
    :goto_0
    new-instance p1, Lcom/mbridge/msdk/foundation/same/report/metrics/e;

    invoke-direct {p1}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;-><init>()V

    .line 30
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 31
    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->i:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-direct {p0, v0, p1}, Lcom/mbridge/msdk/videocommon/download/a;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/foundation/same/report/metrics/e;)V

    return-void

    .line 32
    :cond_5
    iget v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->b:I

    const/4 v4, 0x3

    if-ne v0, v4, :cond_6

    .line 33
    const-string p1, "Run : Dlnet is 3, Will callback."

    invoke-static {v3, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    const/4 p1, 0x0

    .line 34
    invoke-virtual {p0, v3, v4, p1, v1}, Lcom/mbridge/msdk/videocommon/download/a;->a(JZLjava/lang/String;)V

    .line 35
    new-instance p1, Lcom/mbridge/msdk/foundation/same/report/metrics/e;

    invoke-direct {p1}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;-><init>()V

    .line 36
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->i:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-direct {p0, v0, p1}, Lcom/mbridge/msdk/videocommon/download/a;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/foundation/same/report/metrics/e;)V

    return-void

    .line 38
    :cond_6
    :try_start_1
    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->i:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-direct {p0, v0}, Lcom/mbridge/msdk/videocommon/download/a;->c(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const/16 v0, 0x64

    .line 39
    :goto_1
    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/videocommon/download/a;->d(I)V

    if-nez v0, :cond_8

    .line 40
    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->g:Lcom/mbridge/msdk/videocommon/listener/a;

    if-eqz v0, :cond_7

    .line 41
    iget-object v1, p0, Lcom/mbridge/msdk/videocommon/download/a;->m:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/mbridge/msdk/videocommon/listener/a;->a(Ljava/lang/String;)V

    .line 42
    :cond_7
    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->h:Lcom/mbridge/msdk/videocommon/listener/a;

    if-eqz v0, :cond_8

    .line 43
    iget-object v1, p0, Lcom/mbridge/msdk/videocommon/download/a;->m:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/mbridge/msdk/videocommon/listener/a;->a(Ljava/lang/String;)V

    .line 44
    :cond_8
    new-instance v0, Lcom/mbridge/msdk/foundation/download/DownloadMessage;

    iget-object v3, p0, Lcom/mbridge/msdk/videocommon/download/a;->i:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v5, p0, Lcom/mbridge/msdk/videocommon/download/a;->w:Ljava/lang/String;

    sget-object v7, Lcom/mbridge/msdk/foundation/download/DownloadResourceType;->DOWNLOAD_RESOURCE_TYPE_VIDEO:Lcom/mbridge/msdk/foundation/download/DownloadResourceType;

    const/16 v6, 0x64

    move-object v2, v0

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/mbridge/msdk/foundation/download/DownloadMessage;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILcom/mbridge/msdk/foundation/download/DownloadResourceType;)V

    .line 45
    iget-object p1, p0, Lcom/mbridge/msdk/videocommon/download/a;->i:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/videocommon/download/a;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/foundation/download/DownloadMessage;->setUseCronetDownload(I)V

    const/4 p1, 0x4

    .line 46
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "resource_type"

    invoke-virtual {v0, v1, p1}, Lcom/mbridge/msdk/foundation/download/DownloadMessage;->addExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 47
    iget-object p1, p0, Lcom/mbridge/msdk/videocommon/download/a;->R:Lcom/mbridge/msdk/foundation/download/OnDownloadStateListener;

    iget-object v1, p0, Lcom/mbridge/msdk/videocommon/download/a;->S:Lcom/mbridge/msdk/foundation/download/OnProgressStateListener;

    const-string v2, "1"

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/mbridge/msdk/videocommon/download/a;->a(Lcom/mbridge/msdk/foundation/download/DownloadMessage;Lcom/mbridge/msdk/foundation/download/OnDownloadStateListener;Lcom/mbridge/msdk/foundation/download/OnProgressStateListener;Ljava/lang/String;)Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/videocommon/download/a;->x:Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 9
    iput-boolean p1, p0, Lcom/mbridge/msdk/videocommon/download/a;->K:Z

    return-void
.end method

.method public b()V
    .locals 3

    const/4 v0, 0x0

    .line 23
    :try_start_0
    invoke-direct {p0}, Lcom/mbridge/msdk/videocommon/download/a;->a()V

    .line 24
    iget-object v1, p0, Lcom/mbridge/msdk/videocommon/download/a;->i:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getPlayable_ads_without_video()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 25
    iput v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->e:I

    return-void

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 26
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/mbridge/msdk/videocommon/cache/a;->a()Lcom/mbridge/msdk/videocommon/cache/a;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 27
    iget-object v2, p0, Lcom/mbridge/msdk/videocommon/download/a;->i:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/videocommon/cache/a;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    :cond_1
    iput v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->e:I

    goto :goto_0

    .line 29
    :catch_0
    :try_start_2
    const-string v1, "CampaignDownLoadTask"

    const-string v2, "del file is failed"

    invoke-static {v1, v2}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 30
    iput v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->e:I

    :goto_0
    return-void

    :goto_1
    iput v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->e:I

    .line 31
    throw v1
.end method

.method public b(I)V
    .locals 0

    .line 4
    iput p1, p0, Lcom/mbridge/msdk/videocommon/download/a;->c:I

    return-void
.end method

.method public b(Lcom/mbridge/msdk/videocommon/listener/a;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/mbridge/msdk/videocommon/download/a;->h:Lcom/mbridge/msdk/videocommon/listener/a;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    .line 6
    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->g:Lcom/mbridge/msdk/videocommon/listener/a;

    if-eqz v0, :cond_0

    .line 7
    iget-object v1, p0, Lcom/mbridge/msdk/videocommon/download/a;->m:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/mbridge/msdk/videocommon/listener/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->h:Lcom/mbridge/msdk/videocommon/listener/a;

    if-eqz v0, :cond_1

    .line 9
    iget-object v1, p0, Lcom/mbridge/msdk/videocommon/download/a;->m:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/mbridge/msdk/videocommon/listener/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Video download stop : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CampaignDownLoadTask"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget p1, p0, Lcom/mbridge/msdk/videocommon/download/a;->e:I

    const/4 v1, 0x4

    if-eq p1, v1, :cond_3

    iget p1, p0, Lcom/mbridge/msdk/videocommon/download/a;->e:I

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    iget p1, p0, Lcom/mbridge/msdk/videocommon/download/a;->e:I

    const/4 v2, 0x5

    if-eq p1, v2, :cond_3

    .line 12
    iput v1, p0, Lcom/mbridge/msdk/videocommon/download/a;->e:I

    .line 13
    iget-object p1, p0, Lcom/mbridge/msdk/videocommon/download/a;->i:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz p1, :cond_2

    .line 14
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRsIgnoreCheckRule()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/mbridge/msdk/videocommon/download/a;->i:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRsIgnoreCheckRule()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 15
    iget-object p1, p0, Lcom/mbridge/msdk/videocommon/download/a;->i:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRsIgnoreCheckRule()Ljava/util/ArrayList;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 16
    const-string p1, "Is not check video download status"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 17
    :cond_2
    iget-wide v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->o:J

    iget p1, p0, Lcom/mbridge/msdk/videocommon/download/a;->e:I

    invoke-direct {p0, v0, v1, p1}, Lcom/mbridge/msdk/videocommon/download/a;->a(JI)V

    :cond_3
    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/mbridge/msdk/videocommon/download/a;->v:Z

    return-void
.end method

.method public c()Lcom/mbridge/msdk/foundation/entity/CampaignEx;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->i:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    return-object v0
.end method

.method public c(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/mbridge/msdk/videocommon/download/a;->b:I

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .line 11
    invoke-direct {p0}, Lcom/mbridge/msdk/videocommon/download/a;->m()V

    const/4 v0, 0x2

    .line 12
    const-string v1, ""

    invoke-direct {p0, v0, p1, v1}, Lcom/mbridge/msdk/videocommon/download/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x4

    .line 13
    iput p1, p0, Lcom/mbridge/msdk/videocommon/download/a;->e:I

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/mbridge/msdk/videocommon/download/a;->L:Z

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->m:Ljava/lang/String;

    return-object v0
.end method

.method public d(I)V
    .locals 2

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set ready rate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CampaignDownLoadTask"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iput p1, p0, Lcom/mbridge/msdk/videocommon/download/a;->s:I

    return-void
.end method

.method public d(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/mbridge/msdk/videocommon/download/a;->q:Z

    return-void
.end method

.method public e()J
    .locals 2

    .line 3
    iget-wide v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->l:J

    return-wide v0
.end method

.method public e(I)V
    .locals 0

    .line 5
    iput p1, p0, Lcom/mbridge/msdk/videocommon/download/a;->C:I

    return-void
.end method

.method public e(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/mbridge/msdk/videocommon/download/a;->i:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    return-void
.end method

.method public e(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/mbridge/msdk/videocommon/download/a;->N:Z

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 7

    .line 3
    iget v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->b:I

    const/4 v1, 0x3

    const-string v2, ""

    if-ne v0, v1, :cond_0

    return-object v2

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mbridge/msdk/videocommon/download/a;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mbridge/msdk/videocommon/download/a;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    :try_start_0
    iget-object v3, p0, Lcom/mbridge/msdk/videocommon/download/a;->n:Ljava/lang/String;

    iget-object v4, p0, Lcom/mbridge/msdk/videocommon/download/a;->w:Ljava/lang/String;

    invoke-static {v1, v3, v4}, Lcom/mbridge/msdk/foundation/download/utils/Objects;->exists(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 7
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 8
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 9
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_1

    .line 10
    iput-object v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->p:Ljava/lang/String;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    .line 11
    :cond_1
    const-string v2, "file length is 0 "

    goto :goto_1

    .line 12
    :cond_2
    const-string v2, "file can not read "

    goto :goto_1

    .line 13
    :cond_3
    const-string v2, "file is not file "

    goto :goto_1

    .line 14
    :cond_4
    const-string v2, "file is not exist "
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 15
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CampaignDownLoadTask"

    invoke-static {v2, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 17
    :goto_1
    iget v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->e:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 18
    invoke-direct {p0}, Lcom/mbridge/msdk/videocommon/download/a;->a()V

    :cond_5
    return-object v2
.end method

.method public f(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/mbridge/msdk/videocommon/download/a;->M:Z

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 4

    .line 2
    iget-boolean v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->Q:Z

    const-string v1, "CampaignDownLoadTask"

    if-eqz v0, :cond_1

    .line 3
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/mbridge/msdk/videocommon/download/a;->p:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->p:Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->m:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 7
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->m:Ljava/lang/String;

    return-object v0

    .line 9
    :cond_1
    :try_start_1
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/mbridge/msdk/videocommon/download/a;->p:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    iget-object v2, p0, Lcom/mbridge/msdk/videocommon/download/a;->n:Ljava/lang/String;

    iget-object v3, p0, Lcom/mbridge/msdk/videocommon/download/a;->w:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/mbridge/msdk/foundation/download/utils/Objects;->exists(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->p:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->m:Ljava/lang/String;

    return-object v0
.end method

.method public h()J
    .locals 2

    .line 2
    iget-wide v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->o:J

    return-wide v0
.end method

.method public i()J
    .locals 2

    .line 2
    iget-wide v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->r:J

    return-wide v0
.end method

.method public j()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->e:I

    return v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->p:Ljava/lang/String;

    return-object v0
.end method

.method public n()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->K:Z

    return v0
.end method

.method public o()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->v:Z

    .line 2
    .line 3
    return v0
.end method

.method public p()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->L:Z

    .line 2
    .line 3
    return v0
.end method

.method public q()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->Q:Z

    .line 2
    .line 3
    return v0
.end method

.method public r()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->N:Z

    .line 2
    .line 3
    return v0
.end method

.method public s()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->M:Z

    .line 2
    .line 3
    return v0
.end method

.method public t()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public v()V
    .locals 8

    .line 1
    const-string v0, "CampaignDownLoadTask"

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/mbridge/msdk/videocommon/download/a;->Q:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v1, 0x1

    .line 9
    :try_start_0
    iput-boolean v1, p0, Lcom/mbridge/msdk/videocommon/download/a;->z:Z

    .line 10
    .line 11
    iget v2, p0, Lcom/mbridge/msdk/videocommon/download/a;->C:I

    .line 12
    .line 13
    if-ne v2, v1, :cond_1

    .line 14
    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v2, "Can not call resume(), because videoCtnType = "

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget v2, p0, Lcom/mbridge/msdk/videocommon/download/a;->C:I

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :catch_0
    move-exception v1

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    iget v1, p0, Lcom/mbridge/msdk/videocommon/download/a;->b:I

    .line 41
    .line 42
    const/4 v2, 0x3

    .line 43
    if-ne v1, v2, :cond_2

    .line 44
    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    const-string v2, "Can not call resume(), because dlnet = "

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    iget v2, p0, Lcom/mbridge/msdk/videocommon/download/a;->b:I

    .line 56
    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_2
    const-string v1, "resume()"

    .line 69
    .line 70
    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    const/4 v1, 0x0

    .line 74
    iput-boolean v1, p0, Lcom/mbridge/msdk/videocommon/download/a;->O:Z

    .line 75
    .line 76
    iput-boolean v1, p0, Lcom/mbridge/msdk/videocommon/download/a;->P:Z

    .line 77
    .line 78
    new-instance v1, Lcom/mbridge/msdk/foundation/download/DownloadMessage;

    .line 79
    .line 80
    new-instance v3, Ljava/lang/Object;

    .line 81
    .line 82
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 83
    .line 84
    .line 85
    iget-object v4, p0, Lcom/mbridge/msdk/videocommon/download/a;->m:Ljava/lang/String;

    .line 86
    .line 87
    iget-object v5, p0, Lcom/mbridge/msdk/videocommon/download/a;->w:Ljava/lang/String;

    .line 88
    .line 89
    sget-object v7, Lcom/mbridge/msdk/foundation/download/DownloadResourceType;->DOWNLOAD_RESOURCE_TYPE_VIDEO:Lcom/mbridge/msdk/foundation/download/DownloadResourceType;

    .line 90
    .line 91
    const/16 v6, 0x64

    .line 92
    .line 93
    move-object v2, v1

    .line 94
    invoke-direct/range {v2 .. v7}, Lcom/mbridge/msdk/foundation/download/DownloadMessage;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILcom/mbridge/msdk/foundation/download/DownloadResourceType;)V

    .line 95
    .line 96
    .line 97
    iget-object v2, p0, Lcom/mbridge/msdk/videocommon/download/a;->i:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 98
    .line 99
    invoke-direct {p0, v2}, Lcom/mbridge/msdk/videocommon/download/a;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)I

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/foundation/download/DownloadMessage;->setUseCronetDownload(I)V

    .line 104
    .line 105
    .line 106
    iget-object v2, p0, Lcom/mbridge/msdk/videocommon/download/a;->R:Lcom/mbridge/msdk/foundation/download/OnDownloadStateListener;

    .line 107
    .line 108
    iget-object v3, p0, Lcom/mbridge/msdk/videocommon/download/a;->S:Lcom/mbridge/msdk/foundation/download/OnProgressStateListener;

    .line 109
    .line 110
    const-string v4, "2"

    .line 111
    .line 112
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/mbridge/msdk/videocommon/download/a;->a(Lcom/mbridge/msdk/foundation/download/DownloadMessage;Lcom/mbridge/msdk/foundation/download/OnDownloadStateListener;Lcom/mbridge/msdk/foundation/download/OnProgressStateListener;Ljava/lang/String;)Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    iput-object v1, p0, Lcom/mbridge/msdk/videocommon/download/a;->x:Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;

    .line 117
    .line 118
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;->start()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .line 120
    .line 121
    goto :goto_1

    .line 122
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    :goto_1
    return-void
.end method

.method public w()V
    .locals 3

    .line 1
    const-string v0, "start()"

    .line 2
    .line 3
    const-string v1, "CampaignDownLoadTask"

    .line 4
    .line 5
    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->m:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/mbridge/msdk/videocommon/download/a;->d()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    new-instance v0, Ljava/net/URL;

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/mbridge/msdk/videocommon/download/a;->d()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    .line 39
    :cond_1
    iget v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->s:I

    .line 40
    .line 41
    if-nez v0, :cond_2

    .line 42
    .line 43
    iget v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->C:I

    .line 44
    .line 45
    const/4 v2, 0x2

    .line 46
    if-ne v0, v2, :cond_2

    .line 47
    .line 48
    const-string v0, "Can not start download because readyRate is 0 and videoCtnType is 2"

    .line 49
    .line 50
    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_2
    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->x:Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;

    .line 55
    .line 56
    if-eqz v0, :cond_3

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;->start()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    :cond_3
    return-void

    .line 62
    :catchall_0
    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->g:Lcom/mbridge/msdk/videocommon/listener/a;

    .line 63
    .line 64
    const-string v1, ""

    .line 65
    .line 66
    const-string v2, "VideoUrl is not illegal, Please check it."

    .line 67
    .line 68
    if-eqz v0, :cond_4

    .line 69
    .line 70
    invoke-interface {v0, v2, v1}, Lcom/mbridge/msdk/videocommon/listener/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    :cond_4
    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->h:Lcom/mbridge/msdk/videocommon/listener/a;

    .line 74
    .line 75
    if-eqz v0, :cond_5

    .line 76
    .line 77
    invoke-interface {v0, v2, v1}, Lcom/mbridge/msdk/videocommon/listener/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    :cond_5
    return-void
.end method

.method public x()V
    .locals 6

    .line 1
    const-string v0, "startForLoadRefactor()"

    .line 2
    .line 3
    const-string v1, "CampaignDownLoadTask"

    .line 4
    .line 5
    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->m:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->g:Lcom/mbridge/msdk/videocommon/listener/a;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v1, p0, Lcom/mbridge/msdk/videocommon/download/a;->m:Ljava/lang/String;

    .line 21
    .line 22
    invoke-interface {v0, v1}, Lcom/mbridge/msdk/videocommon/listener/a;->a(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void

    .line 26
    :cond_1
    invoke-virtual {p0}, Lcom/mbridge/msdk/videocommon/download/a;->d()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    new-instance v0, Ljava/net/URL;

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/mbridge/msdk/videocommon/download/a;->d()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .line 47
    .line 48
    :cond_2
    iget v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->b:I

    .line 49
    .line 50
    const/4 v2, 0x3

    .line 51
    if-ne v0, v2, :cond_4

    .line 52
    .line 53
    const-string v0, "startForLoadRefactor: Dlnet is 3, Will callback."

    .line 54
    .line 55
    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->g:Lcom/mbridge/msdk/videocommon/listener/a;

    .line 59
    .line 60
    if-eqz v0, :cond_3

    .line 61
    .line 62
    iget-object v1, p0, Lcom/mbridge/msdk/videocommon/download/a;->m:Ljava/lang/String;

    .line 63
    .line 64
    invoke-interface {v0, v1}, Lcom/mbridge/msdk/videocommon/listener/a;->a(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    :cond_3
    return-void

    .line 68
    :cond_4
    iget v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->s:I

    .line 69
    .line 70
    if-nez v0, :cond_6

    .line 71
    .line 72
    iget v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->C:I

    .line 73
    .line 74
    const/4 v2, 0x2

    .line 75
    if-ne v0, v2, :cond_6

    .line 76
    .line 77
    const-string v0, "Can not start download because readyRate is 0 and videoCtnType is 2"

    .line 78
    .line 79
    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->g:Lcom/mbridge/msdk/videocommon/listener/a;

    .line 83
    .line 84
    if-eqz v0, :cond_5

    .line 85
    .line 86
    iget-object v1, p0, Lcom/mbridge/msdk/videocommon/download/a;->m:Ljava/lang/String;

    .line 87
    .line 88
    invoke-interface {v0, v1}, Lcom/mbridge/msdk/videocommon/listener/a;->a(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    :cond_5
    return-void

    .line 92
    :cond_6
    :try_start_1
    iget v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->e:I

    .line 93
    .line 94
    const/4 v2, 0x5

    .line 95
    if-ne v0, v2, :cond_8

    .line 96
    .line 97
    iget-wide v2, p0, Lcom/mbridge/msdk/videocommon/download/a;->l:J

    .line 98
    .line 99
    iget-wide v4, p0, Lcom/mbridge/msdk/videocommon/download/a;->o:J

    .line 100
    .line 101
    invoke-static {v2, v3, v4, v5}, Lcom/mbridge/msdk/foundation/download/utils/Utils;->getDownloadRate(JJ)I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    iget v2, p0, Lcom/mbridge/msdk/videocommon/download/a;->s:I

    .line 106
    .line 107
    if-lt v0, v2, :cond_8

    .line 108
    .line 109
    new-instance v0, Ljava/io/File;

    .line 110
    .line 111
    new-instance v2, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .line 115
    .line 116
    iget-object v3, p0, Lcom/mbridge/msdk/videocommon/download/a;->n:Ljava/lang/String;

    .line 117
    .line 118
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    iget-object v3, p0, Lcom/mbridge/msdk/videocommon/download/a;->w:Ljava/lang/String;

    .line 122
    .line 123
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    iget-object v2, p0, Lcom/mbridge/msdk/videocommon/download/a;->n:Ljava/lang/String;

    .line 134
    .line 135
    iget-object v3, p0, Lcom/mbridge/msdk/videocommon/download/a;->w:Ljava/lang/String;

    .line 136
    .line 137
    invoke-static {v0, v2, v3}, Lcom/mbridge/msdk/foundation/download/utils/Objects;->exists(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    if-eqz v0, :cond_8

    .line 142
    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .line 147
    .line 148
    iget-object v2, p0, Lcom/mbridge/msdk/videocommon/download/a;->n:Ljava/lang/String;

    .line 149
    .line 150
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    iget-object v2, p0, Lcom/mbridge/msdk/videocommon/download/a;->w:Ljava/lang/String;

    .line 154
    .line 155
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    iput-object v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->p:Ljava/lang/String;

    .line 163
    .line 164
    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->g:Lcom/mbridge/msdk/videocommon/listener/a;

    .line 165
    .line 166
    if-eqz v0, :cond_7

    .line 167
    .line 168
    iget-object v2, p0, Lcom/mbridge/msdk/videocommon/download/a;->m:Ljava/lang/String;

    .line 169
    .line 170
    invoke-interface {v0, v2}, Lcom/mbridge/msdk/videocommon/listener/a;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 171
    .line 172
    .line 173
    goto :goto_0

    .line 174
    :catch_0
    move-exception v0

    .line 175
    goto :goto_1

    .line 176
    :cond_7
    :goto_0
    return-void

    .line 177
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 178
    .line 179
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    .line 181
    .line 182
    const-string v3, "startForLoadRefactor: "

    .line 183
    .line 184
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    :cond_8
    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->x:Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;

    .line 202
    .line 203
    if-eqz v0, :cond_9

    .line 204
    .line 205
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;->start()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    :cond_9
    return-void

    .line 209
    :catchall_0
    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/a;->g:Lcom/mbridge/msdk/videocommon/listener/a;

    .line 210
    .line 211
    if-eqz v0, :cond_a

    .line 212
    .line 213
    const-string v1, "VideoUrl is not illegal, Please check it."

    .line 214
    .line 215
    const-string v2, ""

    .line 216
    .line 217
    invoke-interface {v0, v1, v2}, Lcom/mbridge/msdk/videocommon/listener/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    :cond_a
    return-void
.end method
