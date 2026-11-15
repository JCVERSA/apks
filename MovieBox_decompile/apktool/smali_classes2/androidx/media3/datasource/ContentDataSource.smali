.class public final Landroidx/media3/datasource/ContentDataSource;
.super Lw1/a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/datasource/ContentDataSource$ContentDataSourceException;
    }
.end annotation


# instance fields
.field private final e:Landroid/content/ContentResolver;

.field private f:Landroid/net/Uri;

.field private g:Landroid/content/res/AssetFileDescriptor;

.field private h:Ljava/io/FileInputStream;

.field private i:J

.field private j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lw1/a;-><init>(Z)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Landroidx/media3/datasource/ContentDataSource;->e:Landroid/content/ContentResolver;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public a(Lw1/h;)J
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const/16 v2, 0x7d0

    .line 6
    .line 7
    :try_start_0
    iget-object v3, v0, Lw1/h;->a:Landroid/net/Uri;

    .line 8
    .line 9
    invoke-virtual {v3}, Landroid/net/Uri;->normalizeScheme()Landroid/net/Uri;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    iput-object v3, v1, Landroidx/media3/datasource/ContentDataSource;->f:Landroid/net/Uri;

    .line 14
    .line 15
    invoke-virtual/range {p0 .. p1}, Lw1/a;->f(Lw1/h;)V

    .line 16
    .line 17
    .line 18
    const-string v4, "content"

    .line 19
    .line 20
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    const/4 v5, 0x1

    .line 29
    if-eqz v4, :cond_0

    .line 30
    .line 31
    new-instance v4, Landroid/os/Bundle;

    .line 32
    .line 33
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v6, "android.provider.extra.ACCEPT_ORIGINAL_MEDIA_FORMAT"

    .line 37
    .line 38
    invoke-virtual {v4, v6, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 39
    .line 40
    .line 41
    iget-object v6, v1, Landroidx/media3/datasource/ContentDataSource;->e:Landroid/content/ContentResolver;

    .line 42
    .line 43
    const-string v7, "*/*"

    .line 44
    .line 45
    invoke-virtual {v6, v3, v7, v4}, Landroid/content/ContentResolver;->openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    goto :goto_0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    goto/16 :goto_5

    .line 52
    .line 53
    :catch_1
    move-exception v0

    .line 54
    goto/16 :goto_6

    .line 55
    .line 56
    :cond_0
    iget-object v4, v1, Landroidx/media3/datasource/ContentDataSource;->e:Landroid/content/ContentResolver;

    .line 57
    .line 58
    const-string v6, "r"

    .line 59
    .line 60
    invoke-virtual {v4, v3, v6}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    :goto_0
    iput-object v4, v1, Landroidx/media3/datasource/ContentDataSource;->g:Landroid/content/res/AssetFileDescriptor;

    .line 65
    .line 66
    if-eqz v4, :cond_b

    .line 67
    .line 68
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    .line 69
    .line 70
    .line 71
    move-result-wide v6

    .line 72
    new-instance v3, Ljava/io/FileInputStream;

    .line 73
    .line 74
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 75
    .line 76
    .line 77
    move-result-object v8

    .line 78
    invoke-direct {v3, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 79
    .line 80
    .line 81
    iput-object v3, v1, Landroidx/media3/datasource/ContentDataSource;->h:Ljava/io/FileInputStream;

    .line 82
    .line 83
    const-wide/16 v8, -0x1

    .line 84
    .line 85
    cmp-long v10, v6, v8

    .line 86
    .line 87
    const/16 v11, 0x7d8

    .line 88
    .line 89
    const/4 v12, 0x0

    .line 90
    if-eqz v10, :cond_2

    .line 91
    .line 92
    iget-wide v13, v0, Lw1/h;->g:J

    .line 93
    .line 94
    cmp-long v13, v13, v6

    .line 95
    .line 96
    if-gtz v13, :cond_1

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_1
    new-instance v0, Landroidx/media3/datasource/ContentDataSource$ContentDataSourceException;

    .line 100
    .line 101
    invoke-direct {v0, v12, v11}, Landroidx/media3/datasource/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;I)V

    .line 102
    .line 103
    .line 104
    throw v0

    .line 105
    :cond_2
    :goto_1
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    .line 106
    .line 107
    .line 108
    move-result-wide v13

    .line 109
    move-wide v15, v6

    .line 110
    iget-wide v5, v0, Lw1/h;->g:J

    .line 111
    .line 112
    add-long/2addr v5, v13

    .line 113
    invoke-virtual {v3, v5, v6}, Ljava/io/FileInputStream;->skip(J)J

    .line 114
    .line 115
    .line 116
    move-result-wide v5

    .line 117
    sub-long/2addr v5, v13

    .line 118
    iget-wide v13, v0, Lw1/h;->g:J

    .line 119
    .line 120
    cmp-long v7, v5, v13

    .line 121
    .line 122
    if-nez v7, :cond_a

    .line 123
    .line 124
    const-wide/16 v13, 0x0

    .line 125
    .line 126
    if-nez v10, :cond_5

    .line 127
    .line 128
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->size()J

    .line 133
    .line 134
    .line 135
    move-result-wide v5

    .line 136
    cmp-long v7, v5, v13

    .line 137
    .line 138
    if-nez v7, :cond_3

    .line 139
    .line 140
    iput-wide v8, v1, Landroidx/media3/datasource/ContentDataSource;->i:J

    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_3
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->position()J

    .line 144
    .line 145
    .line 146
    move-result-wide v15

    .line 147
    sub-long/2addr v5, v15

    .line 148
    iput-wide v5, v1, Landroidx/media3/datasource/ContentDataSource;->i:J

    .line 149
    .line 150
    cmp-long v3, v5, v13

    .line 151
    .line 152
    if-ltz v3, :cond_4

    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_4
    new-instance v0, Landroidx/media3/datasource/ContentDataSource$ContentDataSourceException;

    .line 156
    .line 157
    invoke-direct {v0, v12, v11}, Landroidx/media3/datasource/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;I)V

    .line 158
    .line 159
    .line 160
    throw v0

    .line 161
    :cond_5
    sub-long v6, v15, v5

    .line 162
    .line 163
    iput-wide v6, v1, Landroidx/media3/datasource/ContentDataSource;->i:J
    :try_end_0
    .catch Landroidx/media3/datasource/ContentDataSource$ContentDataSourceException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    .line 165
    cmp-long v3, v6, v13

    .line 166
    .line 167
    if-ltz v3, :cond_9

    .line 168
    .line 169
    :goto_2
    iget-wide v2, v0, Lw1/h;->h:J

    .line 170
    .line 171
    cmp-long v5, v2, v8

    .line 172
    .line 173
    if-eqz v5, :cond_7

    .line 174
    .line 175
    iget-wide v5, v1, Landroidx/media3/datasource/ContentDataSource;->i:J

    .line 176
    .line 177
    cmp-long v7, v5, v8

    .line 178
    .line 179
    if-nez v7, :cond_6

    .line 180
    .line 181
    goto :goto_3

    .line 182
    :cond_6
    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 183
    .line 184
    .line 185
    move-result-wide v2

    .line 186
    :goto_3
    iput-wide v2, v1, Landroidx/media3/datasource/ContentDataSource;->i:J

    .line 187
    .line 188
    :cond_7
    const/4 v2, 0x1

    .line 189
    iput-boolean v2, v1, Landroidx/media3/datasource/ContentDataSource;->j:Z

    .line 190
    .line 191
    invoke-virtual/range {p0 .. p1}, Lw1/a;->g(Lw1/h;)V

    .line 192
    .line 193
    .line 194
    iget-wide v2, v0, Lw1/h;->h:J

    .line 195
    .line 196
    cmp-long v0, v2, v8

    .line 197
    .line 198
    if-eqz v0, :cond_8

    .line 199
    .line 200
    goto :goto_4

    .line 201
    :cond_8
    iget-wide v2, v1, Landroidx/media3/datasource/ContentDataSource;->i:J

    .line 202
    .line 203
    :goto_4
    return-wide v2

    .line 204
    :cond_9
    :try_start_1
    new-instance v0, Landroidx/media3/datasource/ContentDataSource$ContentDataSourceException;

    .line 205
    .line 206
    invoke-direct {v0, v12, v11}, Landroidx/media3/datasource/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;I)V

    .line 207
    .line 208
    .line 209
    throw v0

    .line 210
    :cond_a
    new-instance v0, Landroidx/media3/datasource/ContentDataSource$ContentDataSourceException;

    .line 211
    .line 212
    invoke-direct {v0, v12, v11}, Landroidx/media3/datasource/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;I)V

    .line 213
    .line 214
    .line 215
    throw v0

    .line 216
    :cond_b
    new-instance v0, Landroidx/media3/datasource/ContentDataSource$ContentDataSourceException;

    .line 217
    .line 218
    new-instance v4, Ljava/io/IOException;

    .line 219
    .line 220
    new-instance v5, Ljava/lang/StringBuilder;

    .line 221
    .line 222
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 223
    .line 224
    .line 225
    const-string v6, "Could not open file descriptor for: "

    .line 226
    .line 227
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v3

    .line 237
    invoke-direct {v4, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    invoke-direct {v0, v4, v2}, Landroidx/media3/datasource/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;I)V

    .line 241
    .line 242
    .line 243
    throw v0
    :try_end_1
    .catch Landroidx/media3/datasource/ContentDataSource$ContentDataSourceException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 244
    :goto_5
    new-instance v3, Landroidx/media3/datasource/ContentDataSource$ContentDataSourceException;

    .line 245
    .line 246
    instance-of v4, v0, Ljava/io/FileNotFoundException;

    .line 247
    .line 248
    if-eqz v4, :cond_c

    .line 249
    .line 250
    const/16 v2, 0x7d5

    .line 251
    .line 252
    :cond_c
    invoke-direct {v3, v0, v2}, Landroidx/media3/datasource/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;I)V

    .line 253
    .line 254
    .line 255
    throw v3

    .line 256
    :goto_6
    throw v0
.end method

.method public close()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/media3/datasource/ContentDataSource;->f:Landroid/net/Uri;

    .line 3
    .line 4
    const/16 v1, 0x7d0

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    :try_start_0
    iget-object v3, p0, Landroidx/media3/datasource/ContentDataSource;->h:Ljava/io/FileInputStream;

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception v3

    .line 16
    goto :goto_5

    .line 17
    :catch_0
    move-exception v3

    .line 18
    goto :goto_4

    .line 19
    :cond_0
    :goto_0
    iput-object v0, p0, Landroidx/media3/datasource/ContentDataSource;->h:Ljava/io/FileInputStream;

    .line 20
    .line 21
    :try_start_1
    iget-object v3, p0, Landroidx/media3/datasource/ContentDataSource;->g:Landroid/content/res/AssetFileDescriptor;

    .line 22
    .line 23
    if-eqz v3, :cond_1

    .line 24
    .line 25
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 26
    .line 27
    .line 28
    goto :goto_1

    .line 29
    :catchall_1
    move-exception v1

    .line 30
    goto :goto_3

    .line 31
    :catch_1
    move-exception v3

    .line 32
    goto :goto_2

    .line 33
    :cond_1
    :goto_1
    iput-object v0, p0, Landroidx/media3/datasource/ContentDataSource;->g:Landroid/content/res/AssetFileDescriptor;

    .line 34
    .line 35
    iget-boolean v0, p0, Landroidx/media3/datasource/ContentDataSource;->j:Z

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    iput-boolean v2, p0, Landroidx/media3/datasource/ContentDataSource;->j:Z

    .line 40
    .line 41
    invoke-virtual {p0}, Lw1/a;->e()V

    .line 42
    .line 43
    .line 44
    :cond_2
    return-void

    .line 45
    :goto_2
    :try_start_2
    new-instance v4, Landroidx/media3/datasource/ContentDataSource$ContentDataSourceException;

    .line 46
    .line 47
    invoke-direct {v4, v3, v1}, Landroidx/media3/datasource/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;I)V

    .line 48
    .line 49
    .line 50
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 51
    :goto_3
    iput-object v0, p0, Landroidx/media3/datasource/ContentDataSource;->g:Landroid/content/res/AssetFileDescriptor;

    .line 52
    .line 53
    iget-boolean v0, p0, Landroidx/media3/datasource/ContentDataSource;->j:Z

    .line 54
    .line 55
    if-eqz v0, :cond_3

    .line 56
    .line 57
    iput-boolean v2, p0, Landroidx/media3/datasource/ContentDataSource;->j:Z

    .line 58
    .line 59
    invoke-virtual {p0}, Lw1/a;->e()V

    .line 60
    .line 61
    .line 62
    :cond_3
    throw v1

    .line 63
    :goto_4
    :try_start_3
    new-instance v4, Landroidx/media3/datasource/ContentDataSource$ContentDataSourceException;

    .line 64
    .line 65
    invoke-direct {v4, v3, v1}, Landroidx/media3/datasource/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;I)V

    .line 66
    .line 67
    .line 68
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 69
    :goto_5
    iput-object v0, p0, Landroidx/media3/datasource/ContentDataSource;->h:Ljava/io/FileInputStream;

    .line 70
    .line 71
    :try_start_4
    iget-object v4, p0, Landroidx/media3/datasource/ContentDataSource;->g:Landroid/content/res/AssetFileDescriptor;

    .line 72
    .line 73
    if-eqz v4, :cond_4

    .line 74
    .line 75
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 76
    .line 77
    .line 78
    goto :goto_6

    .line 79
    :catchall_2
    move-exception v1

    .line 80
    goto :goto_8

    .line 81
    :catch_2
    move-exception v3

    .line 82
    goto :goto_7

    .line 83
    :cond_4
    :goto_6
    iput-object v0, p0, Landroidx/media3/datasource/ContentDataSource;->g:Landroid/content/res/AssetFileDescriptor;

    .line 84
    .line 85
    iget-boolean v0, p0, Landroidx/media3/datasource/ContentDataSource;->j:Z

    .line 86
    .line 87
    if-eqz v0, :cond_5

    .line 88
    .line 89
    iput-boolean v2, p0, Landroidx/media3/datasource/ContentDataSource;->j:Z

    .line 90
    .line 91
    invoke-virtual {p0}, Lw1/a;->e()V

    .line 92
    .line 93
    .line 94
    :cond_5
    throw v3

    .line 95
    :goto_7
    :try_start_5
    new-instance v4, Landroidx/media3/datasource/ContentDataSource$ContentDataSourceException;

    .line 96
    .line 97
    invoke-direct {v4, v3, v1}, Landroidx/media3/datasource/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;I)V

    .line 98
    .line 99
    .line 100
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 101
    :goto_8
    iput-object v0, p0, Landroidx/media3/datasource/ContentDataSource;->g:Landroid/content/res/AssetFileDescriptor;

    .line 102
    .line 103
    iget-boolean v0, p0, Landroidx/media3/datasource/ContentDataSource;->j:Z

    .line 104
    .line 105
    if-eqz v0, :cond_6

    .line 106
    .line 107
    iput-boolean v2, p0, Landroidx/media3/datasource/ContentDataSource;->j:Z

    .line 108
    .line 109
    invoke-virtual {p0}, Lw1/a;->e()V

    .line 110
    .line 111
    .line 112
    :cond_6
    throw v1
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/datasource/ContentDataSource;->f:Landroid/net/Uri;

    .line 2
    .line 3
    return-object v0
.end method

.method public read([BII)I
    .locals 8

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    :cond_0
    iget-wide v0, p0, Landroidx/media3/datasource/ContentDataSource;->i:J

    .line 6
    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long v2, v0, v2

    .line 10
    .line 11
    const/4 v3, -0x1

    .line 12
    if-nez v2, :cond_1

    .line 13
    .line 14
    return v3

    .line 15
    :cond_1
    const-wide/16 v4, -0x1

    .line 16
    .line 17
    cmp-long v2, v0, v4

    .line 18
    .line 19
    if-nez v2, :cond_2

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    int-to-long v6, p3

    .line 23
    :try_start_0
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(JJ)J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    long-to-int p3, v0

    .line 28
    :goto_0
    iget-object v0, p0, Landroidx/media3/datasource/ContentDataSource;->h:Ljava/io/FileInputStream;

    .line 29
    .line 30
    invoke-static {v0}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Ljava/io/FileInputStream;

    .line 35
    .line 36
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/FileInputStream;->read([BII)I

    .line 37
    .line 38
    .line 39
    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    if-ne p1, v3, :cond_3

    .line 41
    .line 42
    return v3

    .line 43
    :cond_3
    iget-wide p2, p0, Landroidx/media3/datasource/ContentDataSource;->i:J

    .line 44
    .line 45
    cmp-long v0, p2, v4

    .line 46
    .line 47
    if-eqz v0, :cond_4

    .line 48
    .line 49
    int-to-long v0, p1

    .line 50
    sub-long/2addr p2, v0

    .line 51
    iput-wide p2, p0, Landroidx/media3/datasource/ContentDataSource;->i:J

    .line 52
    .line 53
    :cond_4
    invoke-virtual {p0, p1}, Lw1/a;->d(I)V

    .line 54
    .line 55
    .line 56
    return p1

    .line 57
    :catch_0
    move-exception p1

    .line 58
    new-instance p2, Landroidx/media3/datasource/ContentDataSource$ContentDataSourceException;

    .line 59
    .line 60
    const/16 p3, 0x7d0

    .line 61
    .line 62
    invoke-direct {p2, p1, p3}, Landroidx/media3/datasource/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;I)V

    .line 63
    .line 64
    .line 65
    throw p2
.end method
