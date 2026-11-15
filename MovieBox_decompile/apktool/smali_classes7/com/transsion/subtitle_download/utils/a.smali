.class public final Lcom/transsion/subtitle_download/utils/a;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcom/transsion/subtitle_download/utils/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/subtitle_download/utils/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/subtitle_download/utils/a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/subtitle_download/utils/a;->a:Lcom/transsion/subtitle_download/utils/a;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .line 1
    const-string v0, "zipFilePath"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "destFilePath"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/16 v0, 0x400

    .line 12
    .line 13
    new-array v0, v0, [B

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    const/4 v2, 0x0

    .line 17
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    .line 18
    .line 19
    invoke-direct {v3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 20
    .line 21
    .line 22
    :try_start_1
    new-instance p2, Ljava/io/FileInputStream;

    .line 23
    .line 24
    invoke-direct {p2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 25
    .line 26
    .line 27
    :try_start_2
    new-instance p1, Ljava/util/zip/GZIPInputStream;

    .line 28
    .line 29
    invoke-direct {p1, p2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 30
    .line 31
    .line 32
    :goto_0
    :try_start_3
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    const/4 v4, -0x1

    .line 37
    if-eq v2, v4, :cond_0

    .line 38
    .line 39
    invoke-virtual {v3, v0, v1, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception v0

    .line 44
    :goto_1
    move-object v2, v3

    .line 45
    goto :goto_3

    .line 46
    :cond_0
    :try_start_4
    invoke-virtual {p1}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 53
    .line 54
    .line 55
    goto :goto_2

    .line 56
    :catchall_1
    move-exception p1

    .line 57
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 58
    .line 59
    .line 60
    :goto_2
    const/4 v1, 0x1

    .line 61
    goto :goto_6

    .line 62
    :catchall_2
    move-exception v0

    .line 63
    move-object p1, v2

    .line 64
    goto :goto_1

    .line 65
    :catchall_3
    move-exception v0

    .line 66
    move-object p1, v2

    .line 67
    move-object p2, p1

    .line 68
    goto :goto_1

    .line 69
    :catchall_4
    move-exception v0

    .line 70
    move-object p1, v2

    .line 71
    move-object p2, p1

    .line 72
    :goto_3
    :try_start_5
    sget-object v3, Lcom/transsion/subtitle_download/utils/b;->a:Lcom/transsion/subtitle_download/utils/b;

    .line 73
    .line 74
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    new-instance v4, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    const-string v5, "GzipUti --> unGzip() --> "

    .line 84
    .line 85
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {v3, v0}, Lcom/transsion/subtitle_download/utils/b;->b(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    .line 96
    .line 97
    .line 98
    if-eqz p1, :cond_1

    .line 99
    .line 100
    :try_start_6
    invoke-virtual {p1}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 101
    .line 102
    .line 103
    goto :goto_4

    .line 104
    :catchall_5
    move-exception p1

    .line 105
    goto :goto_5

    .line 106
    :cond_1
    :goto_4
    if-eqz v2, :cond_2

    .line 107
    .line 108
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 109
    .line 110
    .line 111
    :cond_2
    if-eqz p2, :cond_3

    .line 112
    .line 113
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 114
    .line 115
    .line 116
    goto :goto_6

    .line 117
    :goto_5
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 118
    .line 119
    .line 120
    :cond_3
    :goto_6
    return v1

    .line 121
    :catchall_6
    move-exception v0

    .line 122
    if-eqz p1, :cond_4

    .line 123
    .line 124
    :try_start_7
    invoke-virtual {p1}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 125
    .line 126
    .line 127
    goto :goto_7

    .line 128
    :catchall_7
    move-exception p1

    .line 129
    goto :goto_8

    .line 130
    :cond_4
    :goto_7
    if-eqz v2, :cond_5

    .line 131
    .line 132
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 133
    .line 134
    .line 135
    :cond_5
    if-eqz p2, :cond_6

    .line 136
    .line 137
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 138
    .line 139
    .line 140
    goto :goto_9

    .line 141
    :goto_8
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 142
    .line 143
    .line 144
    :cond_6
    :goto_9
    throw v0
.end method
