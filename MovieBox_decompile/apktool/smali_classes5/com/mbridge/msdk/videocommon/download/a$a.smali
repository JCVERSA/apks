.class Lcom/mbridge/msdk/videocommon/download/a$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/mbridge/msdk/foundation/download/OnDownloadStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/videocommon/download/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/videocommon/download/a;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/videocommon/download/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/videocommon/download/a$a;->a:Lcom/mbridge/msdk/videocommon/download/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onCancelDownload(Lcom/mbridge/msdk/foundation/download/DownloadMessage;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onDownloadComplete(Lcom/mbridge/msdk/foundation/download/DownloadMessage;)V
    .locals 7

    .line 1
    const-string v0, "CampaignDownLoadTask"

    .line 2
    .line 3
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "onDownloadComplete callback : "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Lcom/mbridge/msdk/videocommon/download/a$a;->a:Lcom/mbridge/msdk/videocommon/download/a;

    .line 14
    .line 15
    invoke-static {v2}, Lcom/mbridge/msdk/videocommon/download/a;->l(Lcom/mbridge/msdk/videocommon/download/a;)J

    .line 16
    .line 17
    .line 18
    move-result-wide v2

    .line 19
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v2, "    "

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget-object v2, p0, Lcom/mbridge/msdk/videocommon/download/a$a;->a:Lcom/mbridge/msdk/videocommon/download/a;

    .line 28
    .line 29
    invoke-static {v2}, Lcom/mbridge/msdk/videocommon/download/a;->j(Lcom/mbridge/msdk/videocommon/download/a;)J

    .line 30
    .line 31
    .line 32
    move-result-wide v2

    .line 33
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lcom/mbridge/msdk/videocommon/download/a$a;->a:Lcom/mbridge/msdk/videocommon/download/a;

    .line 44
    .line 45
    invoke-static {v1}, Lcom/mbridge/msdk/videocommon/download/a;->b(Lcom/mbridge/msdk/videocommon/download/a;)Lcom/mbridge/msdk/foundation/db/m;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    if-nez v1, :cond_0

    .line 50
    .line 51
    iget-object v1, p0, Lcom/mbridge/msdk/videocommon/download/a$a;->a:Lcom/mbridge/msdk/videocommon/download/a;

    .line 52
    .line 53
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-static {v2}, Lcom/mbridge/msdk/foundation/db/g;->a(Landroid/content/Context;)Lcom/mbridge/msdk/foundation/db/g;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-static {v2}, Lcom/mbridge/msdk/foundation/db/m;->a(Lcom/mbridge/msdk/foundation/db/f;)Lcom/mbridge/msdk/foundation/db/m;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-static {v1, v2}, Lcom/mbridge/msdk/videocommon/download/a;->a(Lcom/mbridge/msdk/videocommon/download/a;Lcom/mbridge/msdk/foundation/db/m;)Lcom/mbridge/msdk/foundation/db/m;

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :catch_0
    move-exception p1

    .line 74
    goto :goto_2

    .line 75
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/mbridge/msdk/videocommon/download/a$a;->a:Lcom/mbridge/msdk/videocommon/download/a;

    .line 76
    .line 77
    invoke-static {v1}, Lcom/mbridge/msdk/videocommon/download/a;->b(Lcom/mbridge/msdk/videocommon/download/a;)Lcom/mbridge/msdk/foundation/db/m;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    iget-object v2, p0, Lcom/mbridge/msdk/videocommon/download/a$a;->a:Lcom/mbridge/msdk/videocommon/download/a;

    .line 82
    .line 83
    invoke-static {v2}, Lcom/mbridge/msdk/videocommon/download/a;->m(Lcom/mbridge/msdk/videocommon/download/a;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    iget-object v3, p0, Lcom/mbridge/msdk/videocommon/download/a$a;->a:Lcom/mbridge/msdk/videocommon/download/a;

    .line 88
    .line 89
    invoke-static {v3}, Lcom/mbridge/msdk/videocommon/download/a;->l(Lcom/mbridge/msdk/videocommon/download/a;)J

    .line 90
    .line 91
    .line 92
    move-result-wide v3

    .line 93
    const/4 v5, 0x5

    .line 94
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/mbridge/msdk/foundation/db/m;->a(Ljava/lang/String;JI)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .line 96
    .line 97
    const-string v1, ""

    .line 98
    .line 99
    if-eqz p1, :cond_1

    .line 100
    .line 101
    :try_start_1
    const-string v2, "responseHeaders"

    .line 102
    .line 103
    invoke-virtual {p1, v2}, Lcom/mbridge/msdk/foundation/download/DownloadMessage;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    check-cast p1, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :catchall_0
    move-exception p1

    .line 111
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    :cond_1
    move-object p1, v1

    .line 119
    :goto_1
    iget-object v2, p0, Lcom/mbridge/msdk/videocommon/download/a$a;->a:Lcom/mbridge/msdk/videocommon/download/a;

    .line 120
    .line 121
    invoke-static {v2}, Lcom/mbridge/msdk/videocommon/download/a;->l(Lcom/mbridge/msdk/videocommon/download/a;)J

    .line 122
    .line 123
    .line 124
    move-result-wide v3

    .line 125
    const/4 v6, 0x1

    .line 126
    invoke-virtual {v2, v3, v4, v6, p1}, Lcom/mbridge/msdk/videocommon/download/a;->a(JZLjava/lang/String;)V

    .line 127
    .line 128
    .line 129
    iget-object p1, p0, Lcom/mbridge/msdk/videocommon/download/a$a;->a:Lcom/mbridge/msdk/videocommon/download/a;

    .line 130
    .line 131
    invoke-static {p1}, Lcom/mbridge/msdk/videocommon/download/a;->b(Lcom/mbridge/msdk/videocommon/download/a;)Lcom/mbridge/msdk/foundation/db/m;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    iget-object v2, p0, Lcom/mbridge/msdk/videocommon/download/a$a;->a:Lcom/mbridge/msdk/videocommon/download/a;

    .line 136
    .line 137
    invoke-static {v2}, Lcom/mbridge/msdk/videocommon/download/a;->m(Lcom/mbridge/msdk/videocommon/download/a;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    iget-object v3, p0, Lcom/mbridge/msdk/videocommon/download/a$a;->a:Lcom/mbridge/msdk/videocommon/download/a;

    .line 142
    .line 143
    invoke-static {v3}, Lcom/mbridge/msdk/videocommon/download/a;->l(Lcom/mbridge/msdk/videocommon/download/a;)J

    .line 144
    .line 145
    .line 146
    move-result-wide v3

    .line 147
    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/mbridge/msdk/foundation/db/m;->a(Ljava/lang/String;JI)J

    .line 148
    .line 149
    .line 150
    iget-object p1, p0, Lcom/mbridge/msdk/videocommon/download/a$a;->a:Lcom/mbridge/msdk/videocommon/download/a;

    .line 151
    .line 152
    invoke-static {p1}, Lcom/mbridge/msdk/videocommon/download/a;->l(Lcom/mbridge/msdk/videocommon/download/a;)J

    .line 153
    .line 154
    .line 155
    move-result-wide v2

    .line 156
    invoke-virtual {p1, v2, v3, v6, v1}, Lcom/mbridge/msdk/videocommon/download/a;->a(JZLjava/lang/String;)V

    .line 157
    .line 158
    .line 159
    iget-object p1, p0, Lcom/mbridge/msdk/videocommon/download/a$a;->a:Lcom/mbridge/msdk/videocommon/download/a;

    .line 160
    .line 161
    invoke-static {p1, v6, v6, v1}, Lcom/mbridge/msdk/videocommon/download/a;->a(Lcom/mbridge/msdk/videocommon/download/a;IZLjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 162
    .line 163
    .line 164
    goto :goto_3

    .line 165
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    :goto_3
    return-void
.end method

.method public onDownloadError(Lcom/mbridge/msdk/foundation/download/DownloadMessage;Lcom/mbridge/msdk/foundation/download/DownloadError;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/mbridge/msdk/videocommon/download/a$a;->a:Lcom/mbridge/msdk/videocommon/download/a;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/mbridge/msdk/videocommon/download/a;->n(Lcom/mbridge/msdk/videocommon/download/a;)Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    iget-object p1, p0, Lcom/mbridge/msdk/videocommon/download/a$a;->a:Lcom/mbridge/msdk/videocommon/download/a;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/mbridge/msdk/videocommon/download/a;->n(Lcom/mbridge/msdk/videocommon/download/a;)Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;->getStatus()Lcom/mbridge/msdk/foundation/download/DownloadStatus;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    sget-object v0, Lcom/mbridge/msdk/foundation/download/DownloadStatus;->CANCELLED:Lcom/mbridge/msdk/foundation/download/DownloadStatus;

    .line 20
    .line 21
    if-eq p1, v0, :cond_1

    .line 22
    .line 23
    new-instance p1, Lcom/mbridge/msdk/foundation/same/report/metrics/e;

    .line 24
    .line 25
    invoke-direct {p1}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;-><init>()V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/a$a;->a:Lcom/mbridge/msdk/videocommon/download/a;

    .line 29
    .line 30
    invoke-static {v0}, Lcom/mbridge/msdk/videocommon/download/a;->n(Lcom/mbridge/msdk/videocommon/download/a;)Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v1, "2"

    .line 35
    .line 36
    const-string v2, "cache"

    .line 37
    .line 38
    invoke-virtual {v0, v2, v1}, Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p1, v2, v0}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/a$a;->a:Lcom/mbridge/msdk/videocommon/download/a;

    .line 46
    .line 47
    invoke-static {v0}, Lcom/mbridge/msdk/videocommon/download/a;->i(Lcom/mbridge/msdk/videocommon/download/a;)Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-static {v0, v1, p1}, Lcom/mbridge/msdk/videocommon/download/a;->a(Lcom/mbridge/msdk/videocommon/download/a;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/foundation/same/report/metrics/e;)V

    .line 52
    .line 53
    .line 54
    if-eqz p2, :cond_0

    .line 55
    .line 56
    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/download/DownloadError;->getException()Ljava/lang/Exception;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    if-eqz p1, :cond_0

    .line 61
    .line 62
    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/download/DownloadError;->getException()Ljava/lang/Exception;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    goto :goto_0

    .line 71
    :cond_0
    const-string p1, "Video Download Error"

    .line 72
    .line 73
    :goto_0
    iget-object p2, p0, Lcom/mbridge/msdk/videocommon/download/a$a;->a:Lcom/mbridge/msdk/videocommon/download/a;

    .line 74
    .line 75
    invoke-static {p2}, Lcom/mbridge/msdk/videocommon/download/a;->c(Lcom/mbridge/msdk/videocommon/download/a;)V

    .line 76
    .line 77
    .line 78
    iget-object p2, p0, Lcom/mbridge/msdk/videocommon/download/a$a;->a:Lcom/mbridge/msdk/videocommon/download/a;

    .line 79
    .line 80
    const-string v0, ""

    .line 81
    .line 82
    const/4 v1, 0x3

    .line 83
    invoke-static {p2, v1, p1, v0}, Lcom/mbridge/msdk/videocommon/download/a;->a(Lcom/mbridge/msdk/videocommon/download/a;ILjava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-object p2, p0, Lcom/mbridge/msdk/videocommon/download/a$a;->a:Lcom/mbridge/msdk/videocommon/download/a;

    .line 87
    .line 88
    invoke-virtual {p2, p1}, Lcom/mbridge/msdk/videocommon/download/a;->b(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    iget-object p2, p0, Lcom/mbridge/msdk/videocommon/download/a$a;->a:Lcom/mbridge/msdk/videocommon/download/a;

    .line 92
    .line 93
    invoke-static {p2}, Lcom/mbridge/msdk/videocommon/download/a;->d(Lcom/mbridge/msdk/videocommon/download/a;)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    invoke-static {p2, v1, v0, p1}, Lcom/mbridge/msdk/videocommon/download/a;->a(Lcom/mbridge/msdk/videocommon/download/a;IZLjava/lang/String;)V

    .line 98
    .line 99
    .line 100
    :cond_1
    return-void
.end method

.method public onDownloadStart(Lcom/mbridge/msdk/foundation/download/DownloadMessage;)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/mbridge/msdk/videocommon/download/a$a;->a:Lcom/mbridge/msdk/videocommon/download/a;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-static {p1, v0}, Lcom/mbridge/msdk/videocommon/download/a;->a(Lcom/mbridge/msdk/videocommon/download/a;I)I

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/mbridge/msdk/videocommon/download/a$a;->a:Lcom/mbridge/msdk/videocommon/download/a;

    .line 8
    .line 9
    invoke-static {p1}, Lcom/mbridge/msdk/videocommon/download/a;->b(Lcom/mbridge/msdk/videocommon/download/a;)Lcom/mbridge/msdk/foundation/db/m;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lcom/mbridge/msdk/videocommon/download/a$a;->a:Lcom/mbridge/msdk/videocommon/download/a;

    .line 16
    .line 17
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Lcom/mbridge/msdk/foundation/db/g;->a(Landroid/content/Context;)Lcom/mbridge/msdk/foundation/db/g;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v0}, Lcom/mbridge/msdk/foundation/db/m;->a(Lcom/mbridge/msdk/foundation/db/f;)Lcom/mbridge/msdk/foundation/db/m;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {p1, v0}, Lcom/mbridge/msdk/videocommon/download/a;->a(Lcom/mbridge/msdk/videocommon/download/a;Lcom/mbridge/msdk/foundation/db/m;)Lcom/mbridge/msdk/foundation/db/m;

    .line 34
    .line 35
    .line 36
    :cond_0
    iget-object p1, p0, Lcom/mbridge/msdk/videocommon/download/a$a;->a:Lcom/mbridge/msdk/videocommon/download/a;

    .line 37
    .line 38
    invoke-static {p1}, Lcom/mbridge/msdk/videocommon/download/a;->b(Lcom/mbridge/msdk/videocommon/download/a;)Lcom/mbridge/msdk/foundation/db/m;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget-object p1, p0, Lcom/mbridge/msdk/videocommon/download/a$a;->a:Lcom/mbridge/msdk/videocommon/download/a;

    .line 43
    .line 44
    invoke-static {p1}, Lcom/mbridge/msdk/videocommon/download/a;->i(Lcom/mbridge/msdk/videocommon/download/a;)Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    iget-object p1, p0, Lcom/mbridge/msdk/videocommon/download/a$a;->a:Lcom/mbridge/msdk/videocommon/download/a;

    .line 49
    .line 50
    invoke-static {p1}, Lcom/mbridge/msdk/videocommon/download/a;->j(Lcom/mbridge/msdk/videocommon/download/a;)J

    .line 51
    .line 52
    .line 53
    move-result-wide v2

    .line 54
    iget-object p1, p0, Lcom/mbridge/msdk/videocommon/download/a$a;->a:Lcom/mbridge/msdk/videocommon/download/a;

    .line 55
    .line 56
    invoke-static {p1}, Lcom/mbridge/msdk/videocommon/download/a;->k(Lcom/mbridge/msdk/videocommon/download/a;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    iget-object p1, p0, Lcom/mbridge/msdk/videocommon/download/a$a;->a:Lcom/mbridge/msdk/videocommon/download/a;

    .line 61
    .line 62
    invoke-static {p1}, Lcom/mbridge/msdk/videocommon/download/a;->a(Lcom/mbridge/msdk/videocommon/download/a;)I

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    invoke-virtual/range {v0 .. v5}, Lcom/mbridge/msdk/foundation/db/m;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;JLjava/lang/String;I)J

    .line 67
    .line 68
    .line 69
    return-void
.end method
