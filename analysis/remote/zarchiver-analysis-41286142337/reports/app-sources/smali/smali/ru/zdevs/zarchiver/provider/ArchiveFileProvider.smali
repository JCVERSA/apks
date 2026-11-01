.class public Lru/zdevs/zarchiver/provider/ArchiveFileProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/zdevs/zarchiver/provider/ArchiveFileProvider$a;
    }
.end annotation


# static fields
.field public static final a:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/String;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    const-string v2, "_display_name"

    .line 6
    .line 7
    aput-object v2, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    const-string v2, "_size"

    .line 11
    .line 12
    aput-object v2, v0, v1

    .line 13
    .line 14
    sput-object v0, Lru/zdevs/zarchiver/provider/ArchiveFileProvider;->a:[Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method public static b(Landroid/content/Context;Landroid/net/Uri;)Lru/zdevs/zarchiver/provider/ArchiveFileProvider$a;
    .locals 12

    .line 1
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "Incorrect Uri"

    .line 6
    .line 7
    if-eqz v0, :cond_9

    .line 8
    .line 9
    const-string v2, "&FILE="

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x0

    .line 16
    const/4 v4, 0x0

    .line 17
    if-lez v2, :cond_0

    .line 18
    .line 19
    add-int/lit8 v5, v2, 0x6

    .line 20
    .line 21
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move-object v5, v3

    .line 31
    :goto_0
    const-string v2, "&L="

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    const-wide/16 v6, -0x2

    .line 38
    .line 39
    if-lez v2, :cond_1

    .line 40
    .line 41
    add-int/lit8 v8, v2, 0x3

    .line 42
    .line 43
    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v8

    .line 47
    invoke-static {v6, v7, v8}, La0/c;->j0(JLjava/lang/String;)J

    .line 48
    .line 49
    .line 50
    move-result-wide v6

    .line 51
    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    :cond_1
    move-wide v10, v6

    .line 56
    const-string v2, "&S="

    .line 57
    .line 58
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-lez v2, :cond_2

    .line 63
    .line 64
    add-int/lit8 v6, v2, 0x3

    .line 65
    .line 66
    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    invoke-static {v4, v6}, La0/c;->i0(ILjava/lang/String;)I

    .line 71
    .line 72
    .line 73
    move-result v6

    .line 74
    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    move v9, v6

    .line 79
    goto :goto_1

    .line 80
    :cond_2
    const/4 v9, 0x0

    .line 81
    :goto_1
    const-string v2, "&ID="

    .line 82
    .line 83
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    if-lez v2, :cond_3

    .line 88
    .line 89
    add-int/lit8 v6, v2, 0x4

    .line 90
    .line 91
    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    goto :goto_2

    .line 100
    :cond_3
    move-object v6, v3

    .line 101
    :goto_2
    const-string v2, "&TYPE="

    .line 102
    .line 103
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    if-lez v2, :cond_4

    .line 108
    .line 109
    add-int/lit8 v3, v2, 0x6

    .line 110
    .line 111
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    :cond_4
    invoke-virtual {p1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    if-eqz p1, :cond_5

    .line 124
    .line 125
    :try_start_0
    invoke-static {p0, v0, p1}, Lh1/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p0
    :try_end_0
    .catch Lh1/c$a; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    move-object v8, p0

    .line 130
    goto :goto_3

    .line 131
    :catch_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 132
    .line 133
    const-string p1, "Password expired"

    .line 134
    .line 135
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    throw p0

    .line 139
    :cond_5
    move-object v8, p1

    .line 140
    :goto_3
    if-nez v5, :cond_7

    .line 141
    .line 142
    if-eqz v6, :cond_6

    .line 143
    .line 144
    goto :goto_4

    .line 145
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 146
    .line 147
    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    throw p0

    .line 151
    :cond_7
    :goto_4
    new-instance v7, Lh0/h;

    .line 152
    .line 153
    if-nez v5, :cond_8

    .line 154
    .line 155
    const-string v5, ""

    .line 156
    .line 157
    :cond_8
    const-string p0, "arch"

    .line 158
    .line 159
    invoke-direct {v7, p0, v0, v5}, Lh0/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    iput-object v6, v7, Lh0/h;->d:Ljava/lang/String;

    .line 163
    .line 164
    iput-object v3, v7, Lh0/h;->b:Ljava/lang/String;

    .line 165
    .line 166
    iput v4, v7, Lh0/h;->f:I

    .line 167
    .line 168
    new-instance p0, Lru/zdevs/zarchiver/provider/ArchiveFileProvider$a;

    .line 169
    .line 170
    move-object v6, p0

    .line 171
    invoke-direct/range {v6 .. v11}, Lru/zdevs/zarchiver/provider/ArchiveFileProvider$a;-><init>(Lh0/h;Ljava/lang/String;IJ)V

    .line 172
    .line 173
    .line 174
    return-object p0

    .line 175
    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 176
    .line 177
    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    throw p0
.end method

.method public static d(Landroid/content/Context;Lh0/h;Ljava/lang/String;JLjava/lang/String;I)Landroid/net/Uri;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    iget-object v1, p1, Lh0/h;->c:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    const-string v1, "&TYPE="

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object p2, p1, Lh0/h;->d:Ljava/lang/String;

    .line 19
    .line 20
    if-eqz p2, :cond_1

    .line 21
    .line 22
    const-string p2, "&ID="

    .line 23
    .line 24
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget-object p2, p1, Lh0/h;->d:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    :cond_1
    const-string p2, "&S="

    .line 33
    .line 34
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string p2, "&L="

    .line 41
    .line 42
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string p2, "&FILE="

    .line 49
    .line 50
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    iget-object p2, p1, Lh0/h;->e:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    new-instance p2, Landroid/net/Uri$Builder;

    .line 59
    .line 60
    invoke-direct {p2}, Landroid/net/Uri$Builder;-><init>()V

    .line 61
    .line 62
    .line 63
    const-string p3, "content"

    .line 64
    .line 65
    invoke-virtual {p2, p3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    const-string p3, "ru.zdevs.zarchiver.archive"

    .line 70
    .line 71
    invoke-virtual {p2, p3}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p3

    .line 79
    invoke-virtual {p2, p3}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    iget-object p1, p1, Lh0/h;->c:Ljava/lang/String;

    .line 84
    .line 85
    if-nez p5, :cond_2

    .line 86
    .line 87
    const/4 p0, 0x0

    .line 88
    goto :goto_0

    .line 89
    :cond_2
    new-instance p3, Ljava/text/SimpleDateFormat;

    .line 90
    .line 91
    const-string p4, "yyyyMMddHHmm"

    .line 92
    .line 93
    sget-object p6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 94
    .line 95
    invoke-direct {p3, p4, p6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 96
    .line 97
    .line 98
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 99
    .line 100
    .line 101
    move-result-object p4

    .line 102
    new-instance p6, Li/a;

    .line 103
    .line 104
    invoke-direct {p6, p0}, Li/a;-><init>(Landroid/content/Context;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    invoke-virtual {p3, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    new-instance p3, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    const-string p4, "DP"

    .line 118
    .line 119
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    new-instance p4, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-static {p0}, Li/a;->c(Ljava/lang/String;)[B

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    invoke-virtual {p6, p5, p0}, Li/a;->b(Ljava/lang/String;[B)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    invoke-static {p1}, Li/a;->c(Ljava/lang/String;)[B

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-virtual {p6, p0, p1}, Li/a;->b(Ljava/lang/String;[B)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    :goto_0
    invoke-virtual {p2, p0}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    return-object p0
.end method


# virtual methods
.method public final a()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lru/zdevs/zarchiver/ZApp;->c:Lru/zdevs/zarchiver/ZApp;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    return-object v0

    .line 23
    :cond_1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0

    .line 28
    :cond_2
    const/4 v0, 0x0

    .line 29
    return-object v0
.end method

.method public final c(Landroid/net/Uri;)Lru/zdevs/zarchiver/provider/ArchiveFileProvider$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {v0, p1}, Lru/zdevs/zarchiver/provider/ArchiveFileProvider;->b(Landroid/content/Context;Landroid/net/Uri;)Lru/zdevs/zarchiver/provider/ArchiveFileProvider$a;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 13
    .line 14
    const-string v0, "No Context attached"

    .line 15
    .line 16
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p1
.end method

.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "No support updates"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lru/zdevs/zarchiver/provider/ArchiveFileProvider;->c(Landroid/net/Uri;)Lru/zdevs/zarchiver/provider/ArchiveFileProvider$a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p1, p1, Lru/zdevs/zarchiver/provider/ArchiveFileProvider$a;->a:Lh0/h;

    .line 6
    .line 7
    iget-object p1, p1, Lh0/h;->e:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {p1}, La0/c;->s(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p1}, Lv0/h;->e(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0, p1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    return-object p1

    .line 30
    :cond_0
    const-string p1, "application/octet-stream"

    .line 31
    .line 32
    return-object p1
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "No support inserts"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onCreate()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lru/zdevs/zarchiver/provider/ArchiveFileProvider;->a()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {v0}, Ln0/a;->a(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-static {v0}, Lx0/d;->e(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    return v0
.end method

.method public final openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 10

    .line 1
    invoke-virtual {p0, p1}, Lru/zdevs/zarchiver/provider/ArchiveFileProvider;->c(Landroid/net/Uri;)Lru/zdevs/zarchiver/provider/ArchiveFileProvider$a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p1, Lru/zdevs/zarchiver/provider/ArchiveFileProvider$a;->a:Lh0/h;

    .line 6
    .line 7
    iget-object v1, v0, Lh0/h;->d:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v2, -0x1

    .line 10
    invoke-static {v2, v1}, La0/c;->i0(ILjava/lang/String;)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    iget-object v3, v0, Lh0/h;->c:Ljava/lang/String;

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    const/4 v9, 0x1

    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    const-string v5, "/uri/"

    .line 21
    .line 22
    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_0

    .line 27
    .line 28
    const/4 v3, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v3, 0x0

    .line 31
    :goto_0
    if-eqz v3, :cond_1

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-static {v3}, Lru/zdevs/zarchiver/ZApp;->b(Landroid/content/Context;)Landroid/content/ContentResolver;

    .line 38
    .line 39
    .line 40
    :cond_1
    sget-boolean v3, Lru/zdevs/zarchiver/archiver/C2JBridge;->c:Z

    .line 41
    .line 42
    if-nez v3, :cond_2

    .line 43
    .line 44
    invoke-static {}, Lru/zdevs/zarchiver/archiver/C2JBridge;->e()Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-nez v3, :cond_2

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    iget v3, p1, Lru/zdevs/zarchiver/provider/ArchiveFileProvider$a;->c:I

    .line 52
    .line 53
    shr-int/lit8 v5, v3, 0x10

    .line 54
    .line 55
    invoke-static {v9, v5}, Lru/zdevs/zarchiver/archiver/C2JBridge;->cSetOption(II)V

    .line 56
    .line 57
    .line 58
    const/4 v5, 0x4

    .line 59
    invoke-static {v3, v5}, La0/c;->K(II)Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    invoke-static {v5, v3}, Lru/zdevs/zarchiver/archiver/C2JBridge;->cSetOption(II)V

    .line 64
    .line 65
    .line 66
    :goto_1
    const/16 v3, 0x72

    .line 67
    .line 68
    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(I)I

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    const/16 v5, 0x77

    .line 73
    .line 74
    if-eq v3, v2, :cond_3

    .line 75
    .line 76
    invoke-virtual {p2, v5}, Ljava/lang/String;->indexOf(I)I

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    if-ne v3, v2, :cond_3

    .line 81
    .line 82
    const/4 v3, 0x1

    .line 83
    goto :goto_2

    .line 84
    :cond_3
    const/4 v3, 0x0

    .line 85
    :goto_2
    if-eqz v3, :cond_7

    .line 86
    .line 87
    const/4 p2, 0x0

    .line 88
    :try_start_0
    iget-object v2, v0, Lh0/h;->c:Ljava/lang/String;

    .line 89
    .line 90
    iget-object v3, v0, Lh0/h;->b:Ljava/lang/String;

    .line 91
    .line 92
    iget-object p1, p1, Lru/zdevs/zarchiver/provider/ArchiveFileProvider$a;->b:Ljava/lang/String;

    .line 93
    .line 94
    invoke-static {v2, v3, p1}, Lru/zdevs/zarchiver/archiver/NArc;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lru/zdevs/zarchiver/archiver/NArc;

    .line 95
    .line 96
    .line 97
    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 98
    const/4 p1, 0x0

    .line 99
    const/4 v2, 0x0

    .line 100
    :goto_3
    const/4 v3, 0x2

    .line 101
    if-ge p1, v3, :cond_5

    .line 102
    .line 103
    if-eqz p2, :cond_5

    .line 104
    .line 105
    :try_start_1
    invoke-virtual {p0}, Lru/zdevs/zarchiver/provider/ArchiveFileProvider;->a()Landroid/content/Context;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    iget-object v6, v0, Lh0/h;->e:Ljava/lang/String;

    .line 110
    .line 111
    const/high16 v7, 0x200000

    .line 112
    .line 113
    const/4 v8, 0x1

    .line 114
    move-object v3, p2

    .line 115
    move v5, v1

    .line 116
    invoke-virtual/range {v3 .. v8}, Lru/zdevs/zarchiver/archiver/NArc;->e(Landroid/content/Context;ILjava/lang/String;IZ)Landroid/os/ParcelFileDescriptor;

    .line 117
    .line 118
    .line 119
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lru/zdevs/zarchiver/archiver/NArc$NArcPasswordException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 120
    if-eqz p1, :cond_5

    .line 121
    .line 122
    return-object p1

    .line 123
    :catch_0
    nop

    .line 124
    move v4, v2

    .line 125
    goto :goto_4

    .line 126
    :catch_1
    const p1, 0x7f0c004d

    .line 127
    .line 128
    .line 129
    :try_start_2
    invoke-static {p1}, Lru/zdevs/zarchiver/ZApp;->i(I)V

    .line 130
    .line 131
    .line 132
    goto :goto_5

    .line 133
    :catch_2
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 134
    .line 135
    .line 136
    if-ne p1, v9, :cond_4

    .line 137
    .line 138
    const/4 v2, 0x1

    .line 139
    :cond_4
    add-int/lit8 p1, p1, 0x1

    .line 140
    .line 141
    goto :goto_3

    .line 142
    :catch_3
    nop

    .line 143
    :goto_4
    move v2, v4

    .line 144
    :cond_5
    :goto_5
    invoke-static {p2}, Ln0/e;->d(Ljava/io/Closeable;)V

    .line 145
    .line 146
    .line 147
    if-eqz v2, :cond_6

    .line 148
    .line 149
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 150
    .line 151
    const-string p2, "ZArchiver: File is too big for direct open"

    .line 152
    .line 153
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    throw p1

    .line 157
    :cond_6
    new-instance p1, Ljava/io/FileNotFoundException;

    .line 158
    .line 159
    invoke-direct {p1}, Ljava/io/FileNotFoundException;-><init>()V

    .line 160
    .line 161
    .line 162
    throw p1

    .line 163
    :cond_7
    invoke-virtual {p2, v5}, Ljava/lang/String;->indexOf(I)I

    .line 164
    .line 165
    .line 166
    move-result p1

    .line 167
    if-eq p1, v2, :cond_8

    .line 168
    .line 169
    const/4 p1, 0x1

    .line 170
    goto :goto_6

    .line 171
    :cond_8
    const/4 p1, 0x0

    .line 172
    :goto_6
    if-eqz p1, :cond_e

    .line 173
    .line 174
    iget-object p1, v0, Lh0/h;->b:Ljava/lang/String;

    .line 175
    .line 176
    if-eqz p1, :cond_b

    .line 177
    .line 178
    const-string p2, "apk"

    .line 179
    .line 180
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result p2

    .line 184
    if-nez p2, :cond_9

    .line 185
    .line 186
    const-string p2, "zip"

    .line 187
    .line 188
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result p2

    .line 192
    if-nez p2, :cond_9

    .line 193
    .line 194
    const-string p2, "7z"

    .line 195
    .line 196
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result p2

    .line 200
    if-nez p2, :cond_9

    .line 201
    .line 202
    const-string p2, "tar"

    .line 203
    .line 204
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result p2

    .line 208
    if-nez p2, :cond_9

    .line 209
    .line 210
    const-string p2, "jar"

    .line 211
    .line 212
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result p2

    .line 216
    if-nez p2, :cond_9

    .line 217
    .line 218
    const-string p2, "wim"

    .line 219
    .line 220
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    move-result p1

    .line 224
    if-eqz p1, :cond_a

    .line 225
    .line 226
    :cond_9
    const/4 v4, 0x1

    .line 227
    :cond_a
    if-nez v4, :cond_c

    .line 228
    .line 229
    :cond_b
    iget-object p1, v0, Lh0/h;->b:Ljava/lang/String;

    .line 230
    .line 231
    if-nez p1, :cond_d

    .line 232
    .line 233
    iget-object p1, v0, Lh0/h;->c:Ljava/lang/String;

    .line 234
    .line 235
    invoke-static {v9, p1}, La0/c;->N(ILjava/lang/String;)Z

    .line 236
    .line 237
    .line 238
    move-result p1

    .line 239
    if-nez p1, :cond_c

    .line 240
    .line 241
    goto :goto_7

    .line 242
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 243
    .line 244
    const-string p2, "ZArchiver: Edit file is supported only in Donation/Pro version"

    .line 245
    .line 246
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    throw p1

    .line 250
    :cond_d
    :goto_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 251
    .line 252
    const-string p2, "ZArchiver: Operation not supported for this type of archive"

    .line 253
    .line 254
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    throw p1

    .line 258
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 259
    .line 260
    const-string v0, "Invalid mode: "

    .line 261
    .line 262
    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object p2

    .line 266
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    goto :goto_9

    .line 270
    :goto_8
    throw p1

    .line 271
    :goto_9
    goto :goto_8
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 17

    .line 1
    invoke-virtual/range {p0 .. p1}, Lru/zdevs/zarchiver/provider/ArchiveFileProvider;->c(Landroid/net/Uri;)Lru/zdevs/zarchiver/provider/ArchiveFileProvider$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    sget-object v1, Lru/zdevs/zarchiver/provider/ArchiveFileProvider;->a:[Ljava/lang/String;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move-object/from16 v1, p2

    .line 11
    .line 12
    :goto_0
    iget-object v2, v0, Lru/zdevs/zarchiver/provider/ArchiveFileProvider$a;->a:Lh0/h;

    .line 13
    .line 14
    invoke-virtual {v2}, Lh0/h;->e()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    array-length v3, v1

    .line 19
    new-array v4, v3, [Ljava/lang/String;

    .line 20
    .line 21
    array-length v5, v1

    .line 22
    new-array v6, v5, [Ljava/lang/Object;

    .line 23
    .line 24
    array-length v7, v1

    .line 25
    const/4 v8, 0x0

    .line 26
    const/4 v9, 0x0

    .line 27
    const/4 v10, 0x0

    .line 28
    :goto_1
    if-ge v9, v7, :cond_5

    .line 29
    .line 30
    aget-object v11, v1, v9

    .line 31
    .line 32
    aput-object v11, v4, v10

    .line 33
    .line 34
    const-string v12, "_display_name"

    .line 35
    .line 36
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v12

    .line 40
    if-eqz v12, :cond_1

    .line 41
    .line 42
    add-int/lit8 v11, v10, 0x1

    .line 43
    .line 44
    aput-object v2, v6, v10

    .line 45
    .line 46
    :goto_2
    move v10, v11

    .line 47
    goto :goto_3

    .line 48
    :cond_1
    const-string v12, "_size"

    .line 49
    .line 50
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v12

    .line 54
    if-eqz v12, :cond_3

    .line 55
    .line 56
    add-int/lit8 v11, v10, 0x1

    .line 57
    .line 58
    const-wide/16 v12, 0x0

    .line 59
    .line 60
    iget-wide v14, v0, Lru/zdevs/zarchiver/provider/ArchiveFileProvider$a;->d:J

    .line 61
    .line 62
    cmp-long v16, v14, v12

    .line 63
    .line 64
    if-lez v16, :cond_2

    .line 65
    .line 66
    move-wide v12, v14

    .line 67
    :cond_2
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 68
    .line 69
    .line 70
    move-result-object v12

    .line 71
    aput-object v12, v6, v10

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_3
    const-string v12, "mime_type"

    .line 75
    .line 76
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v11

    .line 80
    if-eqz v11, :cond_4

    .line 81
    .line 82
    add-int/lit8 v11, v10, 0x1

    .line 83
    .line 84
    invoke-static {v2}, La0/c;->x(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v12

    .line 88
    aput-object v12, v6, v10

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_4
    :goto_3
    add-int/lit8 v9, v9, 0x1

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_5
    if-ne v3, v10, :cond_6

    .line 95
    .line 96
    goto :goto_4

    .line 97
    :cond_6
    new-array v0, v10, [Ljava/lang/String;

    .line 98
    .line 99
    invoke-static {v4, v8, v0, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100
    .line 101
    .line 102
    move-object v4, v0

    .line 103
    :goto_4
    if-ne v5, v10, :cond_7

    .line 104
    .line 105
    goto :goto_5

    .line 106
    :cond_7
    new-array v0, v10, [Ljava/lang/Object;

    .line 107
    .line 108
    invoke-static {v6, v8, v0, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 109
    .line 110
    .line 111
    move-object v6, v0

    .line 112
    :goto_5
    new-instance v0, Landroid/database/MatrixCursor;

    .line 113
    .line 114
    const/4 v1, 0x1

    .line 115
    invoke-direct {v0, v4, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    return-object v0
.end method

.method public final shutdown()V
    .locals 0

    return-void
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "No support updates"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
