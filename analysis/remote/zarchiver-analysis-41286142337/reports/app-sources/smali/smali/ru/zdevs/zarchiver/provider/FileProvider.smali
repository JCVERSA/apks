.class public final Lru/zdevs/zarchiver/provider/FileProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x3

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
    const/4 v1, 0x2

    .line 15
    const-string v2, "_data"

    .line 16
    .line 17
    aput-object v2, v0, v1

    .line 18
    .line 19
    sput-object v0, Lru/zdevs/zarchiver/provider/FileProvider;->a:[Ljava/lang/String;

    .line 20
    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method public static b(Landroid/net/Uri;)Lh0/h;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x3

    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const/16 v0, 0x2f

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->indexOf(II)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    new-instance v0, Lh0/h;

    .line 36
    .line 37
    const-string v3, "plugin"

    .line 38
    .line 39
    invoke-direct {v0, v3, p0, v1, v2}, Lh0/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-object v0
.end method

.method public static c(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .line 1
    new-instance v0, Landroid/net/Uri$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "content"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "ru.zdevs.zarchiver.external"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method

.method public static d(Landroid/net/Uri;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const-string v0, "/u/"

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0

    .line 14
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 15
    .line 16
    const-string v0, "Incorrect Uri"

    .line 17
    .line 18
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p0
.end method


# virtual methods
.method public final a(Landroid/net/Uri;)Ljava/io/File;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    new-instance v0, Ljava/io/File;

    .line 14
    .line 15
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-object v0

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    const-string v0, "Incorrect Uri"

    .line 22
    .line 23
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1

    .line 27
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 28
    .line 29
    const-string v0, "No Context attached"

    .line 30
    .line 31
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw p1
.end method

.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-static {p1}, Lru/zdevs/zarchiver/provider/FileProvider;->d(Landroid/net/Uri;)Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    invoke-virtual {p0, p1}, Lru/zdevs/zarchiver/provider/FileProvider;->a(Landroid/net/Uri;)Ljava/io/File;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public final e(ILjava/lang/String;JI)Landroid/os/ParcelFileDescriptor;
    .locals 8

    .line 1
    :try_start_0
    new-instance v6, Lo0/c;

    .line 2
    .line 3
    const/high16 v7, 0x10000000

    .line 4
    .line 5
    if-ne p1, v7, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    const/4 v5, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    const/4 v5, 0x0

    .line 12
    :goto_0
    move-object v0, v6

    .line 13
    move v1, p5

    .line 14
    move-object v2, p2

    .line 15
    move-wide v3, p3

    .line 16
    invoke-direct/range {v0 .. v5}, Lo0/c;-><init>(ILjava/lang/String;JZ)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    const-string p3, "storage"

    .line 24
    .line 25
    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    check-cast p2, Landroid/os/storage/StorageManager;

    .line 30
    .line 31
    if-ne p1, v7, :cond_1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    const/high16 v7, 0x20000000

    .line 35
    .line 36
    :goto_1
    new-instance p1, Landroid/os/HandlerThread;

    .line 37
    .line 38
    const-string p3, "ShellInputCallback"

    .line 39
    .line 40
    invoke-direct {p1, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iput-object p1, v6, Lo0/c;->g:Landroid/os/HandlerThread;

    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 46
    .line 47
    .line 48
    new-instance p1, Landroid/os/Handler;

    .line 49
    .line 50
    iget-object p3, v6, Lo0/c;->g:Landroid/os/HandlerThread;

    .line 51
    .line 52
    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 53
    .line 54
    .line 55
    move-result-object p3

    .line 56
    invoke-direct {p1, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2, v7, v6, p1}, Landroid/os/storage/StorageManager;->openProxyFileDescriptor(ILandroid/os/ProxyFileDescriptorCallback;Landroid/os/Handler;)Landroid/os/ParcelFileDescriptor;

    .line 60
    .line 61
    .line 62
    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    return-object p1

    .line 64
    :catch_0
    move-exception p1

    .line 65
    new-instance p2, Ljava/io/FileNotFoundException;

    .line 66
    .line 67
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-direct {p2, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw p2
.end method

.method public final getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lru/zdevs/zarchiver/provider/FileProvider;->a(Landroid/net/Uri;)Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

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
    if-nez v0, :cond_0

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

    const/4 v0, 0x1

    return v0
.end method

.method public final openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 8

    .line 1
    invoke-static {p2}, Lh1/c;->b(Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result v1

    .line 5
    invoke-static {p1}, Lru/zdevs/zarchiver/provider/FileProvider;->d(Landroid/net/Uri;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {p1}, Lru/zdevs/zarchiver/provider/FileProvider;->b(Landroid/net/Uri;)Lh0/h;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Lh0/f;->u(Lh0/h;)Lh0/f;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1, v1}, Lh0/f;->v(I)Landroid/os/ParcelFileDescriptor;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1

    .line 24
    :cond_0
    invoke-virtual {p0, p1}, Lru/zdevs/zarchiver/provider/FileProvider;->a(Landroid/net/Uri;)Ljava/io/File;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    const/high16 v3, 0x10000000

    .line 33
    .line 34
    const/4 v4, 0x0

    .line 35
    const/4 v5, 0x1

    .line 36
    if-eq v1, v3, :cond_1

    .line 37
    .line 38
    const/4 v3, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 v3, 0x0

    .line 41
    :goto_0
    invoke-static {v2}, Ln0/e;->l(Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    if-eqz v6, :cond_3

    .line 46
    .line 47
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 48
    .line 49
    const/16 v7, 0x13

    .line 50
    .line 51
    if-lt v6, v7, :cond_3

    .line 52
    .line 53
    if-nez v3, :cond_2

    .line 54
    .line 55
    :try_start_0
    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    return-object p1

    .line 60
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 61
    .line 62
    const-string p2, "ZArchiver: Edit file is supported only in Donation/Pro version"

    .line 63
    .line 64
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :catch_0
    move-exception p1

    .line 69
    new-instance p2, Ljava/io/FileNotFoundException;

    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-direct {p2, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw p2

    .line 79
    :cond_3
    invoke-virtual {p1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    if-eqz v6, :cond_4

    .line 84
    .line 85
    const-string v7, "R:"

    .line 86
    .line 87
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 88
    .line 89
    .line 90
    move-result v6

    .line 91
    if-eqz v6, :cond_4

    .line 92
    .line 93
    const/4 v6, 0x1

    .line 94
    goto :goto_1

    .line 95
    :cond_4
    const/4 v6, 0x0

    .line 96
    :goto_1
    const/16 v7, 0x1a

    .line 97
    .line 98
    if-eqz v6, :cond_6

    .line 99
    .line 100
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 101
    .line 102
    if-lt v6, v7, :cond_6

    .line 103
    .line 104
    invoke-virtual {p1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    const/16 v0, 0x3a

    .line 109
    .line 110
    invoke-static {p2, v0}, Lv0/h;->h(Ljava/lang/String;C)[Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    array-length v0, p2

    .line 115
    const/4 v2, 0x4

    .line 116
    if-lt v0, v2, :cond_5

    .line 117
    .line 118
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    aget-object p1, p2, v5

    .line 123
    .line 124
    const-wide/16 v5, 0x0

    .line 125
    .line 126
    invoke-static {v5, v6, p1}, La0/c;->j0(JLjava/lang/String;)J

    .line 127
    .line 128
    .line 129
    move-result-wide v5

    .line 130
    const/4 p1, 0x3

    .line 131
    aget-object p1, p2, p1

    .line 132
    .line 133
    invoke-static {v4, p1}, La0/c;->i0(ILjava/lang/String;)I

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    move-object v0, p0

    .line 138
    move-wide v3, v5

    .line 139
    move v5, p1

    .line 140
    invoke-virtual/range {v0 .. v5}, Lru/zdevs/zarchiver/provider/FileProvider;->e(ILjava/lang/String;JI)Landroid/os/ParcelFileDescriptor;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    return-object p1

    .line 145
    :cond_5
    new-instance p1, Ljava/io/FileNotFoundException;

    .line 146
    .line 147
    const-string p2, "Bad Uri"

    .line 148
    .line 149
    invoke-direct {p1, p2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    throw p1

    .line 153
    :cond_6
    const-string p1, "/SAF"

    .line 154
    .line 155
    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 156
    .line 157
    .line 158
    move-result p1

    .line 159
    if-nez p1, :cond_7

    .line 160
    .line 161
    if-eqz v3, :cond_8

    .line 162
    .line 163
    :cond_7
    invoke-static {v2}, Lru/zdevs/zarchiver/io/SAF;->q(Ljava/lang/String;)Z

    .line 164
    .line 165
    .line 166
    move-result p1

    .line 167
    if-eqz p1, :cond_8

    .line 168
    .line 169
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    invoke-static {p1}, Lru/zdevs/zarchiver/ZApp;->b(Landroid/content/Context;)Landroid/content/ContentResolver;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    :try_start_1
    invoke-static {v4, v2}, Lru/zdevs/zarchiver/io/SAF;->k(ILjava/lang/String;)Landroid/net/Uri;

    .line 178
    .line 179
    .line 180
    move-result-object v0
    :try_end_1
    .catch Ljava/util/InvalidPropertiesFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 181
    invoke-virtual {p1, v0, p2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    return-object p1

    .line 186
    :catch_1
    move-exception p1

    .line 187
    new-instance p2, Ljava/io/FileNotFoundException;

    .line 188
    .line 189
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    invoke-direct {p2, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    throw p2

    .line 197
    :cond_8
    const/high16 p1, 0x20000000

    .line 198
    .line 199
    if-ne v1, p1, :cond_9

    .line 200
    .line 201
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 202
    .line 203
    if-lt p1, v7, :cond_9

    .line 204
    .line 205
    invoke-static {v2}, Lt0/b;->i(Ljava/lang/String;)Z

    .line 206
    .line 207
    .line 208
    move-result p1

    .line 209
    if-eqz p1, :cond_9

    .line 210
    .line 211
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    .line 212
    .line 213
    .line 214
    move-result p1

    .line 215
    if-nez p1, :cond_9

    .line 216
    .line 217
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 218
    .line 219
    .line 220
    move-result-wide v3

    .line 221
    sget v5, Lt0/b;->m:I

    .line 222
    .line 223
    move-object v0, p0

    .line 224
    invoke-virtual/range {v0 .. v5}, Lru/zdevs/zarchiver/provider/FileProvider;->e(ILjava/lang/String;JI)Landroid/os/ParcelFileDescriptor;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    return-object p1

    .line 229
    :cond_9
    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    return-object p1
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 19

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    sget-object v0, Lru/zdevs/zarchiver/provider/FileProvider;->a:[Ljava/lang/String;

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    move-object/from16 v0, p2

    .line 7
    .line 8
    :goto_0
    array-length v1, v0

    .line 9
    new-array v2, v1, [Ljava/lang/String;

    .line 10
    .line 11
    array-length v3, v0

    .line 12
    new-array v4, v3, [Ljava/lang/Object;

    .line 13
    .line 14
    invoke-static/range {p1 .. p1}, Lru/zdevs/zarchiver/provider/FileProvider;->d(Landroid/net/Uri;)Z

    .line 15
    .line 16
    .line 17
    move-result v5

    .line 18
    const-wide/16 v6, 0x0

    .line 19
    .line 20
    const-string v10, "mime_type"

    .line 21
    .line 22
    const-string v11, "_size"

    .line 23
    .line 24
    const-string v12, "_display_name"

    .line 25
    .line 26
    const/4 v13, 0x0

    .line 27
    if-eqz v5, :cond_4

    .line 28
    .line 29
    array-length v5, v0

    .line 30
    const/4 v14, 0x0

    .line 31
    const/4 v15, 0x0

    .line 32
    :goto_1
    if-ge v14, v5, :cond_f

    .line 33
    .line 34
    aget-object v8, v0, v14

    .line 35
    .line 36
    aput-object v8, v2, v15

    .line 37
    .line 38
    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v16

    .line 42
    if-eqz v16, :cond_1

    .line 43
    .line 44
    add-int/lit8 v8, v15, 0x1

    .line 45
    .line 46
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v16

    .line 50
    invoke-static/range {v16 .. v16}, La0/c;->y(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v16

    .line 54
    aput-object v16, v4, v15

    .line 55
    .line 56
    move v15, v8

    .line 57
    move/from16 v16, v14

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_1
    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v16

    .line 64
    if-eqz v16, :cond_2

    .line 65
    .line 66
    invoke-static/range {p1 .. p1}, Lru/zdevs/zarchiver/provider/FileProvider;->b(Landroid/net/Uri;)Lh0/h;

    .line 67
    .line 68
    .line 69
    move-result-object v8

    .line 70
    invoke-static {v8, v13}, Lh0/e;->e(Lh0/h;Lv0/d;)Lh0/e$b;

    .line 71
    .line 72
    .line 73
    move-result-object v8

    .line 74
    move/from16 v16, v14

    .line 75
    .line 76
    if-eqz v8, :cond_3

    .line 77
    .line 78
    iget-wide v13, v8, Lh0/e$b;->c:J

    .line 79
    .line 80
    cmp-long v8, v13, v6

    .line 81
    .line 82
    if-lez v8, :cond_3

    .line 83
    .line 84
    add-int/lit8 v8, v15, 0x1

    .line 85
    .line 86
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 87
    .line 88
    .line 89
    move-result-object v13

    .line 90
    aput-object v13, v4, v15

    .line 91
    .line 92
    move v15, v8

    .line 93
    goto :goto_2

    .line 94
    :cond_2
    move/from16 v16, v14

    .line 95
    .line 96
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v8

    .line 100
    if-eqz v8, :cond_3

    .line 101
    .line 102
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v8

    .line 106
    invoke-static {v8}, La0/c;->y(Ljava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v8

    .line 110
    invoke-static {v8}, La0/c;->s(Ljava/lang/String;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v8

    .line 114
    invoke-static {v8}, Lv0/h;->e(Ljava/lang/String;)Z

    .line 115
    .line 116
    .line 117
    move-result v13

    .line 118
    if-nez v13, :cond_3

    .line 119
    .line 120
    add-int/lit8 v13, v15, 0x1

    .line 121
    .line 122
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    .line 123
    .line 124
    .line 125
    move-result-object v14

    .line 126
    invoke-virtual {v14, v8}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v8

    .line 130
    aput-object v8, v4, v15

    .line 131
    .line 132
    move v15, v13

    .line 133
    :cond_3
    :goto_2
    add-int/lit8 v14, v16, 0x1

    .line 134
    .line 135
    const/4 v13, 0x0

    .line 136
    goto :goto_1

    .line 137
    :cond_4
    invoke-virtual/range {p0 .. p1}, Lru/zdevs/zarchiver/provider/FileProvider;->a(Landroid/net/Uri;)Ljava/io/File;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v8

    .line 145
    if-eqz v8, :cond_5

    .line 146
    .line 147
    const-string v13, "R:"

    .line 148
    .line 149
    invoke-virtual {v8, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 150
    .line 151
    .line 152
    move-result v8

    .line 153
    if-eqz v8, :cond_5

    .line 154
    .line 155
    const/4 v8, 0x1

    .line 156
    goto :goto_3

    .line 157
    :cond_5
    const/4 v8, 0x0

    .line 158
    :goto_3
    if-eqz v8, :cond_6

    .line 159
    .line 160
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v8

    .line 164
    const/16 v13, 0x3a

    .line 165
    .line 166
    invoke-static {v8, v13}, Lv0/h;->h(Ljava/lang/String;C)[Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v13

    .line 170
    goto :goto_4

    .line 171
    :cond_6
    const/4 v13, 0x0

    .line 172
    :goto_4
    array-length v8, v0

    .line 173
    const/4 v14, 0x0

    .line 174
    const/4 v15, 0x0

    .line 175
    :goto_5
    if-ge v14, v8, :cond_f

    .line 176
    .line 177
    aget-object v6, v0, v14

    .line 178
    .line 179
    aput-object v6, v2, v15

    .line 180
    .line 181
    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v7

    .line 185
    if-eqz v7, :cond_7

    .line 186
    .line 187
    add-int/lit8 v6, v15, 0x1

    .line 188
    .line 189
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v7

    .line 193
    aput-object v7, v4, v15

    .line 194
    .line 195
    move v15, v6

    .line 196
    move/from16 v16, v8

    .line 197
    .line 198
    goto/16 :goto_a

    .line 199
    .line 200
    :cond_7
    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    move-result v7

    .line 204
    const/4 v9, 0x3

    .line 205
    if-eqz v7, :cond_9

    .line 206
    .line 207
    if-eqz v13, :cond_8

    .line 208
    .line 209
    array-length v6, v13

    .line 210
    if-lt v6, v9, :cond_8

    .line 211
    .line 212
    add-int/lit8 v6, v15, 0x1

    .line 213
    .line 214
    const/4 v7, 0x1

    .line 215
    aget-object v9, v13, v7

    .line 216
    .line 217
    move/from16 p1, v6

    .line 218
    .line 219
    const-wide/16 v6, 0x0

    .line 220
    .line 221
    invoke-static {v6, v7, v9}, La0/c;->j0(JLjava/lang/String;)J

    .line 222
    .line 223
    .line 224
    move-result-wide v16

    .line 225
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 226
    .line 227
    .line 228
    move-result-object v6

    .line 229
    aput-object v6, v4, v15

    .line 230
    .line 231
    move/from16 v15, p1

    .line 232
    .line 233
    goto :goto_6

    .line 234
    :cond_8
    add-int/lit8 v6, v15, 0x1

    .line 235
    .line 236
    invoke-virtual {v5}, Ljava/io/File;->length()J

    .line 237
    .line 238
    .line 239
    move-result-wide v16

    .line 240
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 241
    .line 242
    .line 243
    move-result-object v7

    .line 244
    aput-object v7, v4, v15

    .line 245
    .line 246
    move v15, v6

    .line 247
    :goto_6
    move/from16 v16, v8

    .line 248
    .line 249
    const-wide/16 v8, 0x0

    .line 250
    .line 251
    goto/16 :goto_a

    .line 252
    .line 253
    :cond_9
    const-string v7, "last_modified"

    .line 254
    .line 255
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    move-result v7

    .line 259
    if-eqz v7, :cond_b

    .line 260
    .line 261
    if-eqz v13, :cond_a

    .line 262
    .line 263
    array-length v6, v13

    .line 264
    if-lt v6, v9, :cond_a

    .line 265
    .line 266
    add-int/lit8 v6, v15, 0x1

    .line 267
    .line 268
    const/4 v7, 0x2

    .line 269
    aget-object v7, v13, v7

    .line 270
    .line 271
    move/from16 v16, v8

    .line 272
    .line 273
    const-wide/16 v8, 0x0

    .line 274
    .line 275
    invoke-static {v8, v9, v7}, La0/c;->j0(JLjava/lang/String;)J

    .line 276
    .line 277
    .line 278
    move-result-wide v17

    .line 279
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 280
    .line 281
    .line 282
    move-result-object v7

    .line 283
    aput-object v7, v4, v15

    .line 284
    .line 285
    goto :goto_7

    .line 286
    :cond_a
    move/from16 v16, v8

    .line 287
    .line 288
    const-wide/16 v8, 0x0

    .line 289
    .line 290
    add-int/lit8 v6, v15, 0x1

    .line 291
    .line 292
    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    .line 293
    .line 294
    .line 295
    move-result-wide v17

    .line 296
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 297
    .line 298
    .line 299
    move-result-object v7

    .line 300
    aput-object v7, v4, v15

    .line 301
    .line 302
    :goto_7
    move v15, v6

    .line 303
    goto :goto_a

    .line 304
    :cond_b
    move/from16 v16, v8

    .line 305
    .line 306
    const-wide/16 v8, 0x0

    .line 307
    .line 308
    const-string v7, "_data"

    .line 309
    .line 310
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 311
    .line 312
    .line 313
    move-result v7

    .line 314
    if-eqz v7, :cond_d

    .line 315
    .line 316
    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    goto :goto_8

    .line 321
    :catch_0
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v6

    .line 325
    :goto_8
    invoke-static {v6}, Ln0/e;->l(Ljava/lang/String;)Z

    .line 326
    .line 327
    .line 328
    move-result v7

    .line 329
    if-eqz v7, :cond_c

    .line 330
    .line 331
    goto :goto_a

    .line 332
    :cond_c
    add-int/lit8 v7, v15, 0x1

    .line 333
    .line 334
    aput-object v6, v4, v15

    .line 335
    .line 336
    goto :goto_9

    .line 337
    :cond_d
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 338
    .line 339
    .line 340
    move-result v6

    .line 341
    if-eqz v6, :cond_e

    .line 342
    .line 343
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v6

    .line 347
    invoke-static {v6}, La0/c;->s(Ljava/lang/String;)Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v6

    .line 351
    invoke-static {v6}, Lv0/h;->e(Ljava/lang/String;)Z

    .line 352
    .line 353
    .line 354
    move-result v7

    .line 355
    if-nez v7, :cond_e

    .line 356
    .line 357
    add-int/lit8 v7, v15, 0x1

    .line 358
    .line 359
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    .line 360
    .line 361
    .line 362
    move-result-object v8

    .line 363
    invoke-virtual {v8, v6}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v6

    .line 367
    aput-object v6, v4, v15

    .line 368
    .line 369
    :goto_9
    move v15, v7

    .line 370
    :cond_e
    :goto_a
    add-int/lit8 v14, v14, 0x1

    .line 371
    .line 372
    move/from16 v8, v16

    .line 373
    .line 374
    const-wide/16 v6, 0x0

    .line 375
    .line 376
    goto/16 :goto_5

    .line 377
    .line 378
    :cond_f
    if-ne v1, v15, :cond_10

    .line 379
    .line 380
    const/4 v1, 0x0

    .line 381
    goto :goto_b

    .line 382
    :cond_10
    new-array v0, v15, [Ljava/lang/String;

    .line 383
    .line 384
    const/4 v1, 0x0

    .line 385
    invoke-static {v2, v1, v0, v1, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 386
    .line 387
    .line 388
    move-object v2, v0

    .line 389
    :goto_b
    if-ne v3, v15, :cond_11

    .line 390
    .line 391
    goto :goto_c

    .line 392
    :cond_11
    new-array v0, v15, [Ljava/lang/Object;

    .line 393
    .line 394
    invoke-static {v4, v1, v0, v1, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 395
    .line 396
    .line 397
    move-object v4, v0

    .line 398
    :goto_c
    new-instance v0, Landroid/database/MatrixCursor;

    .line 399
    .line 400
    const/4 v1, 0x1

    .line 401
    invoke-direct {v0, v2, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 402
    .line 403
    .line 404
    invoke-virtual {v0, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 405
    .line 406
    .line 407
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
