.class public final Llu/n;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/subtitle_download/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llu/n$a;
    }
.end annotation


# instance fields
.field private final a:Llu/n$a;

.field private b:Lcom/transsion/ugcvideodetail/hepler/subtitle/b;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Lht/a;

.field private f:Z


# direct methods
.method public constructor <init>(Llu/n$a;)V
    .locals 1

    .line 1
    const-string v0, "host"

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
    iput-object p1, p0, Llu/n;->a:Llu/n$a;

    .line 10
    .line 11
    return-void
.end method

.method public static synthetic a(Llu/n;Lht/a;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Llu/n;->k(Llu/n;Lht/a;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Llu/n;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Llu/n;->j(Llu/n;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c(Llu/n;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Llu/n;->l(Llu/n;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(Llu/n;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Llu/n;->m(Llu/n;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final h(Lht/a;)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Llu/n;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object p1, Lfh/b;->a:Lfh/b$a;

    .line 6
    .line 7
    sget v0, Lcom/transsion/subtitle/R$string;->subtitle_is_downloading:I

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lfh/b$a;->d(I)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    sget-object v0, Lyg/l;->a:Lyg/l;

    .line 14
    .line 15
    invoke-virtual {v0}, Lyg/l;->e()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    sget-object p1, Lfh/b;->a:Lfh/b$a;

    .line 22
    .line 23
    sget v0, Lcom/tn/lib/widget/R$string;->no_network_toast:I

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Lfh/b$a;->d(I)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    sget-object v0, Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/b;->a:Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/b$a;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/b$a;->b()Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/b;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-interface {v1, p0}, Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/b;->b(Lcom/transsion/subtitle_download/a;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const/4 v2, 0x2

    .line 43
    invoke-virtual {v1, v2}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->setStatus(I)V

    .line 44
    .line 45
    .line 46
    const/4 v1, 0x1

    .line 47
    iput-boolean v1, p0, Llu/n;->f:Z

    .line 48
    .line 49
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 50
    .line 51
    iget-object v1, p0, Llu/n;->a:Llu/n$a;

    .line 52
    .line 53
    invoke-interface {v1}, Llu/n$a;->getLogTag()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    const-class v1, Llu/n;

    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {p1}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-virtual {v4}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getName()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-virtual {p1}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    invoke-virtual {v5}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getType()I

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    invoke-virtual {p1}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    invoke-virtual {v6}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getSubtitleName()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    invoke-virtual {p1}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 88
    .line 89
    .line 90
    move-result-object v7

    .line 91
    invoke-virtual {v7}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getResourceId()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v7

    .line 95
    new-instance v8, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v1, " --> downloadSubtitle() --> \u5185\u7f6e\u5b57\u5e55\u5217\u8868\uff0c\u4e0b\u8f7d\u5b57\u5e55\uff0cname = "

    .line 104
    .line 105
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string v1, ", subtype = "

    .line 112
    .line 113
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    const-string v1, ",download subtitleName = "

    .line 120
    .line 121
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    const-string v1, ", subResourceId = "

    .line 128
    .line 129
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    const-string v1, "~"

    .line 136
    .line 137
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    const/4 v6, 0x4

    .line 145
    const/4 v7, 0x0

    .line 146
    const/4 v5, 0x0

    .line 147
    invoke-static/range {v2 .. v7}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    const/4 v2, 0x0

    .line 155
    invoke-virtual {v1, v2}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->setAutoDownload(Z)V

    .line 156
    .line 157
    .line 158
    iput-object p1, p0, Llu/n;->e:Lht/a;

    .line 159
    .line 160
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/b$a;->b()Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/b;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    invoke-interface {v0, p1}, Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/b;->h(Lht/a;)V

    .line 165
    .line 166
    .line 167
    return-void
.end method

.method private static final j(Llu/n;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    iput-boolean p1, p0, Llu/n;->c:Z

    .line 2
    .line 3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    return-object p0
.end method

.method private static final k(Llu/n;Lht/a;)Lkotlin/Unit;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLanName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v1, v0

    .line 16
    :goto_0
    const/4 v2, 0x1

    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    const/4 v1, 0x0

    .line 27
    goto :goto_2

    .line 28
    :cond_2
    :goto_1
    move v1, v2

    .line 29
    :goto_2
    xor-int/2addr v1, v2

    .line 30
    iput-boolean v1, p0, Llu/n;->c:Z

    .line 31
    .line 32
    if-eqz p1, :cond_3

    .line 33
    .line 34
    invoke-virtual {p1}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    if-eqz p1, :cond_3

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLanName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    :cond_3
    iput-object v0, p0, Llu/n;->d:Ljava/lang/String;

    .line 45
    .line 46
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 47
    .line 48
    return-object p0
.end method

.method private static final l(Llu/n;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V
    .locals 8

    .line 1
    iget-object v0, p0, Llu/n;->e:Lht/a;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLan()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    invoke-virtual {p1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLan()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 30
    .line 31
    iget-object v0, p0, Llu/n;->a:Llu/n$a;

    .line 32
    .line 33
    invoke-interface {v0}, Llu/n$a;->getLogTag()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {p1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {p1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getResourceId()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {p1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getName()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-virtual {p1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLan()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    invoke-virtual {p1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getStatus()I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    new-instance v6, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    const-string v7, "\u5185\u7f6e\u5b57\u5e55\u70b9\u51fb\u4e0b\u8f7d\u6210\u529f\uff0cname = "

    .line 63
    .line 64
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v0, ", videoResourceId = "

    .line 71
    .line 72
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v0, ", download subtitleName = "

    .line 79
    .line 80
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v0, ", lan = "

    .line 87
    .line 88
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v0, "\uff0c status:"

    .line 95
    .line 96
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string p1, "~"

    .line 103
    .line 104
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    const/4 v5, 0x4

    .line 112
    const/4 v6, 0x0

    .line 113
    const/4 v4, 0x0

    .line 114
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    iget-object p1, p0, Llu/n;->e:Lht/a;

    .line 118
    .line 119
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0, p1}, Llu/n;->o(Lht/a;)V

    .line 123
    .line 124
    .line 125
    :cond_1
    return-void
.end method

.method private static final m(Llu/n;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V
    .locals 7

    .line 1
    iget-object v0, p0, Llu/n;->e:Lht/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lht/a;->h(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 9
    .line 10
    iget-object p0, p0, Llu/n;->a:Llu/n$a;

    .line 11
    .line 12
    invoke-interface {p0}, Llu/n$a;->getLogTag()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const-class p0, Llu/n;

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getResourceId()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {p1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-virtual {p1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLan()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    invoke-virtual {p1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getStatus()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    new-instance v6, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string p0, " --> onFail() --> \u5185\u7f6e\u5b57\u5e55\u70b9\u51fb\u4e0b\u8f7d\u5931\u8d25TnT\uff0cname = "

    .line 51
    .line 52
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string p0, ", videoResourceId = "

    .line 59
    .line 60
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string p0, ", download subtitleName = "

    .line 67
    .line 68
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string p0, ", lan = "

    .line 75
    .line 76
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string p0, "\uff0c status:"

    .line 83
    .line 84
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string p0, "~"

    .line 91
    .line 92
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    const/4 v5, 0x4

    .line 100
    const/4 v6, 0x0

    .line 101
    const/4 v4, 0x0

    .line 102
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    return-void
.end method


# virtual methods
.method public final e()V
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/b;->a:Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/b$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/b$a;->b()Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p0}, Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/b;->b(Lcom/transsion/subtitle_download/a;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final f()V
    .locals 1

    .line 1
    iget-object v0, p0, Llu/n;->b:Lcom/transsion/ugcvideodetail/hepler/subtitle/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/transsion/ugcvideodetail/hepler/subtitle/b;->e()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final g()V
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/b;->a:Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/b$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/b$a;->b()Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p0}, Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/b;->c(Lcom/transsion/subtitle_download/a;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final i(Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayStream;)V
    .locals 9

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    iget-object v1, p0, Llu/n;->a:Llu/n$a;

    .line 4
    .line 5
    invoke-interface {v1}, Llu/n$a;->getLogTag()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v4, 0x4

    .line 10
    const/4 v5, 0x0

    .line 11
    const-string v2, ">>>>>>>--------------------initLanguage subtitle, position:"

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Llu/n;->a:Llu/n$a;

    .line 18
    .line 19
    invoke-interface {v0}, Llu/n$a;->c()Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    invoke-virtual {v2}, Landroid/app/Activity;->isDestroyed()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_1

    .line 36
    .line 37
    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iget-object v0, p0, Llu/n;->a:Llu/n$a;

    .line 45
    .line 46
    invoke-interface {v0}, Llu/n$a;->getData()Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    sget-object v1, Lcom/transsion/ugcvideodetail/hepler/subtitle/b;->g1:Lcom/transsion/ugcvideodetail/hepler/subtitle/b$a;

    .line 53
    .line 54
    iget-object v0, p0, Llu/n;->a:Llu/n$a;

    .line 55
    .line 56
    invoke-interface {v0}, Llu/n$a;->a()Liu/r;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iget-object v4, v0, Liu/r;->g:Landroid/widget/FrameLayout;

    .line 61
    .line 62
    const-string v0, "flUgcImmSubtitle"

    .line 63
    .line 64
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Llu/n;->a:Llu/n$a;

    .line 68
    .line 69
    invoke-interface {v0}, Llu/n$a;->a()Liu/r;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iget-object v5, v0, Liu/r;->M:Lcom/avery/subtitle/widget/SimpleSubtitleView;

    .line 74
    .line 75
    const-string v0, "vUgcImmSubtitle"

    .line 76
    .line 77
    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Llu/n;->a:Llu/n$a;

    .line 81
    .line 82
    invoke-interface {v0}, Llu/n$a;->b()Lcom/transsion/ugcvideodetail/hepler/subtitle/a;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    iget-object v0, p0, Llu/n;->a:Llu/n$a;

    .line 87
    .line 88
    invoke-interface {v0}, Llu/n$a;->getData()Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    .line 89
    .line 90
    .line 91
    move-result-object v7

    .line 92
    const-string v3, "/ugc_video/immersive_detail"

    .line 93
    .line 94
    move-object v8, p1

    .line 95
    invoke-virtual/range {v1 .. v8}, Lcom/transsion/ugcvideodetail/hepler/subtitle/b$a;->a(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Landroid/view/ViewGroup;Lcom/avery/subtitle/widget/SimpleSubtitleView;Lcom/transsion/ugcvideodetail/hepler/subtitle/a;Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayStream;)Lcom/transsion/ugcvideodetail/hepler/subtitle/b;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-interface {p1}, Lcom/transsion/ugcvideodetail/hepler/subtitle/b;->e()V

    .line 100
    .line 101
    .line 102
    new-instance v0, Llu/j;

    .line 103
    .line 104
    invoke-direct {v0, p0}, Llu/j;-><init>(Llu/n;)V

    .line 105
    .line 106
    .line 107
    invoke-interface {p1, v0}, Lcom/transsion/ugcvideodetail/hepler/subtitle/b;->a(Lkotlin/jvm/functions/Function1;)V

    .line 108
    .line 109
    .line 110
    new-instance v0, Llu/k;

    .line 111
    .line 112
    invoke-direct {v0, p0}, Llu/k;-><init>(Llu/n;)V

    .line 113
    .line 114
    .line 115
    invoke-interface {p1, v0}, Lcom/transsion/ugcvideodetail/hepler/subtitle/b;->b(Lkotlin/jvm/functions/Function1;)V

    .line 116
    .line 117
    .line 118
    iput-object p1, p0, Llu/n;->b:Lcom/transsion/ugcvideodetail/hepler/subtitle/b;

    .line 119
    .line 120
    :cond_1
    :goto_0
    return-void
.end method

.method public final n()V
    .locals 1

    .line 1
    iget-object v0, p0, Llu/n;->b:Lcom/transsion/ugcvideodetail/hepler/subtitle/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/transsion/ugcvideodetail/hepler/subtitle/b;->onDestroy()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Llu/n;->b:Lcom/transsion/ugcvideodetail/hepler/subtitle/b;

    .line 10
    .line 11
    return-void
.end method

.method public final o(Lht/a;)V
    .locals 7

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 7
    .line 8
    iget-object v0, p0, Llu/n;->a:Llu/n$a;

    .line 9
    .line 10
    invoke-interface {v0}, Llu/n$a;->getLogTag()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const/4 v5, 0x4

    .line 15
    const/4 v6, 0x0

    .line 16
    const-string v3, "onSubtitleSelect"

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lht/a;->d()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    invoke-direct {p0, p1}, Llu/n;->h(Lht/a;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    iget-object v0, p0, Llu/n;->b:Lcom/transsion/ugcvideodetail/hepler/subtitle/b;

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-interface {v0, p1}, Lcom/transsion/ugcvideodetail/hepler/subtitle/b;->f(Lht/a;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    const/4 p1, 0x0

    .line 40
    iput-object p1, p0, Llu/n;->e:Lht/a;

    .line 41
    .line 42
    return-void
.end method

.method public onComplete(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V
    .locals 1

    .line 1
    const-string v0, "stDownloadTable"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Llu/n;->f:Z

    .line 8
    .line 9
    new-instance v0, Llu/l;

    .line 10
    .line 11
    invoke-direct {v0, p0, p1}, Llu/l;-><init>(Llu/n;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->j(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onDownloading(ILcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V
    .locals 0

    .line 1
    const-string p1, "stDownloadTable"

    .line 2
    .line 3
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onFail(Ljava/lang/Exception;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V
    .locals 1

    .line 1
    const-string v0, "e"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "dbBean"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Llu/n;->f:Z

    .line 13
    .line 14
    new-instance p1, Llu/m;

    .line 15
    .line 16
    invoke-direct {p1, p0, p2}, Llu/m;-><init>(Llu/n;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Lcom/blankj/utilcode/util/ThreadUtils;->j(Ljava/lang/Runnable;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public onSaveDownload(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/subtitle_download/a$a;->a(Lcom/transsion/subtitle_download/a;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onUnGzZip(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/subtitle_download/a$a;->b(Lcom/transsion/subtitle_download/a;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final p(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Llu/n;->b:Lcom/transsion/ugcvideodetail/hepler/subtitle/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/transsion/ugcvideodetail/hepler/subtitle/b;->c(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final q(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Llu/n;->b:Lcom/transsion/ugcvideodetail/hepler/subtitle/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/transsion/ugcvideodetail/hepler/subtitle/b;->d(J)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
