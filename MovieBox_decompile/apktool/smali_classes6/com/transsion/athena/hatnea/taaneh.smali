.class public Lcom/transsion/athena/hatnea/taaneh;
.super Lcom/transsion/athena/hatnea/anateh;
.source "source.java"


# instance fields
.field private final c:J

.field private d:Ljava/io/File;

.field private final e:Lcom/transsion/athena/config/data/model/aethna;


# direct methods
.method public constructor <init>(JLjava/io/File;Lcom/transsion/athena/config/data/model/aethna;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/athena/hatnea/anateh;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/transsion/athena/hatnea/taaneh;->c:J

    .line 5
    .line 6
    iput-object p3, p0, Lcom/transsion/athena/hatnea/taaneh;->d:Ljava/io/File;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/transsion/athena/hatnea/taaneh;->e:Lcom/transsion/athena/config/data/model/aethna;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/transsion/athena/hatnea/taaneh;->d:Ljava/io/File;

    .line 3
    .line 4
    if-eqz v1, :cond_1

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    iget-object v1, p0, Lcom/transsion/athena/hatnea/taaneh;->d:Ljava/io/File;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    iget-object v1, p0, Lcom/transsion/athena/hatnea/taaneh;->d:Ljava/io/File;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const-string v2, "upload"

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    iget-object v1, p0, Lcom/transsion/athena/hatnea/taaneh;->d:Ljava/io/File;

    .line 35
    .line 36
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-nez v2, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    new-instance v2, Lcom/transsion/athena/anateh/aethna;

    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-direct {v2, v1}, Lcom/transsion/athena/anateh/aethna;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2}, Lcom/transsion/athena/anateh/aethna;->a()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    goto :goto_1

    .line 57
    :catch_0
    :goto_0
    const-string v1, ""

    .line 58
    .line 59
    :goto_1
    const-string v2, "\n"

    .line 60
    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    array-length v2, v2

    .line 66
    goto :goto_2

    .line 67
    :cond_1
    const/4 v1, 0x0

    .line 68
    move v2, v0

    .line 69
    :goto_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    if-nez v3, :cond_3

    .line 74
    .line 75
    if-lez v2, :cond_3

    .line 76
    .line 77
    iget-wide v3, p0, Lcom/transsion/athena/hatnea/taaneh;->c:J

    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    iget-object v5, p0, Lcom/transsion/athena/hatnea/taaneh;->e:Lcom/transsion/athena/config/data/model/aethna;

    .line 84
    .line 85
    invoke-static {v3, v4, v1, v2, v5}, Lcom/transsion/athena/hatnea/anehat;->a(J[BILcom/transsion/athena/config/data/model/aethna;)Lcom/transsion/athena/hatnea/ehanat;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    iget v1, v1, Lcom/transsion/athena/hatnea/ehanat;->a:I

    .line 90
    .line 91
    if-eqz v1, :cond_2

    .line 92
    .line 93
    const-string v0, "PostEventFileTask requestByPost error"

    .line 94
    .line 95
    invoke-static {v0}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :cond_2
    iget-object v1, p0, Lcom/transsion/athena/hatnea/taaneh;->d:Ljava/io/File;

    .line 100
    .line 101
    if-eqz v1, :cond_3

    .line 102
    .line 103
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->J()Landroid/content/Context;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    iget-object v3, p0, Lcom/transsion/athena/hatnea/taaneh;->d:Ljava/io/File;

    .line 108
    .line 109
    invoke-static {v1, v3}, Lcom/transsion/athena/taaneh/athena;->b(Landroid/content/Context;Ljava/io/File;)Z

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    iget-wide v3, p0, Lcom/transsion/athena/hatnea/taaneh;->c:J

    .line 114
    .line 115
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    const/4 v4, 0x3

    .line 128
    new-array v4, v4, [Ljava/lang/Object;

    .line 129
    .line 130
    aput-object v3, v4, v0

    .line 131
    .line 132
    const/4 v0, 0x1

    .line 133
    aput-object v2, v4, v0

    .line 134
    .line 135
    const/4 v0, 0x2

    .line 136
    aput-object v1, v4, v0

    .line 137
    .line 138
    const-string v0, "PostEventFileTask lines : %d, deleteFile : %s"

    .line 139
    .line 140
    invoke-static {v0, v4}, Lcom/transsion/athena/taaneh/aethna;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    :cond_3
    return-void
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Upload-File"

    .line 2
    .line 3
    return-object v0
.end method
