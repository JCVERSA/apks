.class public final Lru/zdevs/zarchiver/ZTextEditor$q;
.super Lw0/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/zdevs/zarchiver/ZTextEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "q"
.end annotation


# instance fields
.field public final e:Landroid/net/Uri;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Lru/zdevs/zarchiver/ui/editor/b;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Lru/zdevs/zarchiver/ui/editor/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lw0/c;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lru/zdevs/zarchiver/ZTextEditor$q;->e:Landroid/net/Uri;

    .line 5
    .line 6
    iput-object p2, p0, Lru/zdevs/zarchiver/ZTextEditor$q;->f:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lru/zdevs/zarchiver/ZTextEditor$q;->g:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lru/zdevs/zarchiver/ZTextEditor$q;->h:Lru/zdevs/zarchiver/ui/editor/b;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final f()Lw0/a$b;
    .locals 12

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/ZTextEditor$q;->h:Lru/zdevs/zarchiver/ui/editor/b;

    .line 2
    .line 3
    iget-object v1, p0, Lru/zdevs/zarchiver/ZTextEditor$q;->e:Landroid/net/Uri;

    .line 4
    .line 5
    const-string v2, "Failed to load file: "

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    :try_start_0
    const-string v4, "file"

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v5

    .line 14
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    const-string v5, "File size is too large (> 10MB)"

    .line 19
    .line 20
    const-wide/32 v6, 0xa00000

    .line 21
    .line 22
    .line 23
    if-eqz v4, :cond_3

    .line 24
    .line 25
    :try_start_1
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    new-instance v8, Ljava/io/File;

    .line 30
    .line 31
    invoke-direct {v8, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v8}, Ljava/io/File;->length()J

    .line 35
    .line 36
    .line 37
    move-result-wide v9

    .line 38
    cmp-long v11, v9, v6

    .line 39
    .line 40
    if-gtz v11, :cond_2

    .line 41
    .line 42
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    invoke-virtual {v8}, Ljava/io/File;->canRead()Z

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    if-nez v6, :cond_1

    .line 51
    .line 52
    invoke-static {v4}, Lt0/b;->i(Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-nez v4, :cond_0

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    sget v4, Lt0/b;->m:I

    .line 60
    .line 61
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    invoke-static {v4, v6}, Ln0/f;->a(ILjava/lang/String;)Ln0/f;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    goto :goto_3

    .line 70
    :cond_1
    :goto_0
    new-instance v4, Ljava/io/FileInputStream;

    .line 71
    .line 72
    invoke-direct {v4, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 73
    .line 74
    .line 75
    move-object v3, v4

    .line 76
    goto :goto_3

    .line 77
    :cond_2
    new-instance v0, Ljava/io/IOException;

    .line 78
    .line 79
    invoke-direct {v0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw v0

    .line 83
    :catchall_0
    move-exception v0

    .line 84
    goto :goto_6

    .line 85
    :catch_0
    move-exception v0

    .line 86
    goto :goto_5

    .line 87
    :cond_3
    invoke-static {v1}, Lru/zdevs/zarchiver/io/SAF;->f(Landroid/net/Uri;)Lru/zdevs/zarchiver/io/SAF$a;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    if-eqz v4, :cond_5

    .line 92
    .line 93
    iget-wide v8, v4, Lru/zdevs/zarchiver/io/SAF$a;->d:J

    .line 94
    .line 95
    cmp-long v10, v8, v6

    .line 96
    .line 97
    if-gtz v10, :cond_4

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_4
    new-instance v0, Ljava/io/IOException;

    .line 101
    .line 102
    invoke-direct {v0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw v0

    .line 106
    :cond_5
    :goto_1
    if-eqz v4, :cond_6

    .line 107
    .line 108
    iget-object v4, v4, Lru/zdevs/zarchiver/io/SAF$a;->a:Ljava/lang/String;

    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_6
    const-string v4, ""

    .line 112
    .line 113
    :goto_2
    move-object v5, v4

    .line 114
    invoke-static {}, Lru/zdevs/zarchiver/ZApp;->a()Landroid/content/ContentResolver;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    invoke-virtual {v4, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    :goto_3
    invoke-virtual {v0}, Lru/zdevs/zarchiver/ui/editor/b;->clear()V

    .line 123
    .line 124
    .line 125
    sget v4, Lt0/b;->n:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    .line 127
    const/16 v6, 0x40

    .line 128
    .line 129
    and-int/2addr v4, v6

    .line 130
    if-ne v4, v6, :cond_7

    .line 131
    .line 132
    const/4 v4, 0x1

    .line 133
    goto :goto_4

    .line 134
    :cond_7
    const/4 v4, 0x0

    .line 135
    :goto_4
    iget-object v6, p0, Lru/zdevs/zarchiver/ZTextEditor$q;->f:Ljava/lang/String;

    .line 136
    .line 137
    if-eqz v4, :cond_8

    .line 138
    .line 139
    :try_start_2
    invoke-static {v5, v6}, Ld1/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    move-result v4

    .line 143
    invoke-virtual {v0, v4}, Lru/zdevs/zarchiver/ui/editor/b;->p(I)Z

    .line 144
    .line 145
    .line 146
    :cond_8
    iget-object v4, p0, Lru/zdevs/zarchiver/ZTextEditor$q;->g:Ljava/lang/String;

    .line 147
    .line 148
    invoke-static {v3, v0, v4, p0}, Ln0/e;->m(Ljava/io/InputStream;Lru/zdevs/zarchiver/ui/editor/b;Ljava/lang/String;Lv0/d;)Ln0/e$a;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    new-instance v4, Lru/zdevs/zarchiver/ZTextEditor$p;

    .line 153
    .line 154
    invoke-direct {v4, v5, v0, v1, v6}, Lru/zdevs/zarchiver/ZTextEditor$p;-><init>(Ljava/lang/String;Ln0/e$a;Landroid/net/Uri;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 155
    .line 156
    .line 157
    invoke-static {v3}, Ln0/e;->d(Ljava/io/Closeable;)V

    .line 158
    .line 159
    .line 160
    return-object v4

    .line 161
    :goto_5
    :try_start_3
    new-instance v1, Lru/zdevs/zarchiver/ZTextEditor$o;

    .line 162
    .line 163
    new-instance v4, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    invoke-direct {v1, v0}, Lru/zdevs/zarchiver/ZTextEditor$o;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 180
    .line 181
    .line 182
    invoke-static {v3}, Ln0/e;->d(Ljava/io/Closeable;)V

    .line 183
    .line 184
    .line 185
    return-object v1

    .line 186
    :goto_6
    invoke-static {v3}, Ln0/e;->d(Ljava/io/Closeable;)V

    .line 187
    .line 188
    .line 189
    throw v0
.end method

.method public final j()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
