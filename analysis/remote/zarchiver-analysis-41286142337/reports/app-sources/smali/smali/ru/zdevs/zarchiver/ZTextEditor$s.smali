.class public final Lru/zdevs/zarchiver/ZTextEditor$s;
.super Lw0/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/zdevs/zarchiver/ZTextEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "s"
.end annotation


# instance fields
.field public final e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Landroid/net/Uri;

.field public final g:Ln0/e$a;

.field public final h:Ljava/lang/CharSequence;

.field public final i:Z

.field public j:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Ln0/e$a;Lru/zdevs/zarchiver/ui/editor/b;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lw0/c;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lru/zdevs/zarchiver/ZTextEditor$s;->e:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    iput-object p2, p0, Lru/zdevs/zarchiver/ZTextEditor$s;->f:Landroid/net/Uri;

    .line 12
    .line 13
    iput-object p3, p0, Lru/zdevs/zarchiver/ZTextEditor$s;->g:Ln0/e$a;

    .line 14
    .line 15
    iput-object p4, p0, Lru/zdevs/zarchiver/ZTextEditor$s;->h:Ljava/lang/CharSequence;

    .line 16
    .line 17
    iput-boolean p5, p0, Lru/zdevs/zarchiver/ZTextEditor$s;->i:Z

    .line 18
    .line 19
    const-wide/16 p1, 0x0

    .line 20
    .line 21
    iput-wide p1, p0, Lru/zdevs/zarchiver/ZTextEditor$s;->j:J

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final f()Lw0/a$b;
    .locals 7

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/ZTextEditor$s;->f:Landroid/net/Uri;

    .line 2
    .line 3
    const-string v1, "Failed to save file: "

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    const-string v3, "ru.zdevs.zarchiver.external"

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v4

    .line 12
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    const-string v4, "file"

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    iget-object v5, p0, Lru/zdevs/zarchiver/ZTextEditor$s;->e:Ljava/lang/ref/WeakReference;

    .line 27
    .line 28
    if-eqz v4, :cond_0

    .line 29
    .line 30
    :try_start_1
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p0, v0}, Lru/zdevs/zarchiver/ZTextEditor$s;->m(Ljava/lang/String;)Ljava/io/OutputStream;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    :goto_0
    move-object v2, v0

    .line 39
    goto :goto_3

    .line 40
    :cond_0
    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    check-cast v4, Landroid/content/Context;

    .line 45
    .line 46
    if-nez v4, :cond_1

    .line 47
    .line 48
    new-instance v0, Lru/zdevs/zarchiver/ZTextEditor$o;

    .line 49
    .line 50
    const-string v3, "Context is null"

    .line 51
    .line 52
    invoke-direct {v0, v3}, Lru/zdevs/zarchiver/ZTextEditor$o;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    .line 54
    .line 55
    return-object v0

    .line 56
    :cond_1
    if-nez v3, :cond_2

    .line 57
    .line 58
    :try_start_2
    invoke-static {}, Lru/zdevs/zarchiver/ZApp;->a()Landroid/content/ContentResolver;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    invoke-virtual {v6, v0}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    .line 63
    .line 64
    .line 65
    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 66
    goto :goto_1

    .line 67
    :catch_0
    nop

    .line 68
    :cond_2
    :goto_1
    if-nez v2, :cond_4

    .line 69
    .line 70
    if-eqz v3, :cond_3

    .line 71
    .line 72
    :try_start_3
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    goto :goto_2

    .line 77
    :cond_3
    invoke-static {v4, v0}, Lv0/f;->f(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    :goto_2
    if-eqz v0, :cond_4

    .line 82
    .line 83
    invoke-virtual {p0, v0}, Lru/zdevs/zarchiver/ZTextEditor$s;->m(Ljava/lang/String;)Ljava/io/OutputStream;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    goto :goto_0

    .line 88
    :cond_4
    :goto_3
    if-nez v2, :cond_6

    .line 89
    .line 90
    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    check-cast v0, Landroid/content/Context;

    .line 95
    .line 96
    if-nez v0, :cond_5

    .line 97
    .line 98
    invoke-static {}, Lru/zdevs/zarchiver/ZApp;->e()Lru/zdevs/zarchiver/ZApp;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    :cond_5
    new-instance v3, Lru/zdevs/zarchiver/ZTextEditor$o;

    .line 103
    .line 104
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    const v4, 0x7f0c00d7

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-direct {v3, v0}, Lru/zdevs/zarchiver/ZTextEditor$o;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 116
    .line 117
    .line 118
    invoke-static {v2}, Ln0/e;->d(Ljava/io/Closeable;)V

    .line 119
    .line 120
    .line 121
    return-object v3

    .line 122
    :cond_6
    :try_start_4
    iget-object v0, p0, Lru/zdevs/zarchiver/ZTextEditor$s;->h:Ljava/lang/CharSequence;

    .line 123
    .line 124
    iget-object v4, p0, Lru/zdevs/zarchiver/ZTextEditor$s;->g:Ln0/e$a;

    .line 125
    .line 126
    iget-wide v5, p0, Lru/zdevs/zarchiver/ZTextEditor$s;->j:J

    .line 127
    .line 128
    invoke-static {v2, v0, v4, v5, v6}, Ln0/e;->q(Ljava/io/OutputStream;Ljava/lang/CharSequence;Ln0/e$a;J)V

    .line 129
    .line 130
    .line 131
    if-eqz v3, :cond_7

    .line 132
    .line 133
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 134
    .line 135
    .line 136
    :cond_7
    new-instance v0, Lru/zdevs/zarchiver/ZTextEditor$r;

    .line 137
    .line 138
    iget-boolean v3, p0, Lru/zdevs/zarchiver/ZTextEditor$s;->i:Z

    .line 139
    .line 140
    invoke-direct {v0, v3}, Lru/zdevs/zarchiver/ZTextEditor$r;-><init>(Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 141
    .line 142
    .line 143
    invoke-static {v2}, Ln0/e;->d(Ljava/io/Closeable;)V

    .line 144
    .line 145
    .line 146
    return-object v0

    .line 147
    :catchall_0
    move-exception v0

    .line 148
    goto :goto_4

    .line 149
    :catch_1
    move-exception v0

    .line 150
    :try_start_5
    new-instance v3, Lru/zdevs/zarchiver/ZTextEditor$o;

    .line 151
    .line 152
    new-instance v4, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-direct {v3, v0}, Lru/zdevs/zarchiver/ZTextEditor$o;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 169
    .line 170
    .line 171
    invoke-static {v2}, Ln0/e;->d(Ljava/io/Closeable;)V

    .line 172
    .line 173
    .line 174
    return-object v3

    .line 175
    :goto_4
    invoke-static {v2}, Ln0/e;->d(Ljava/io/Closeable;)V

    .line 176
    .line 177
    .line 178
    goto :goto_6

    .line 179
    :goto_5
    throw v0

    .line 180
    :goto_6
    goto :goto_5
.end method

.method public final j()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public final m(Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {p1}, Lru/zdevs/zarchiver/ZTextEditor;->a(Ljava/lang/String;)Lh0/f;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lh0/f;->d()Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    invoke-virtual {v1}, Lh0/f;->o()J

    .line 13
    .line 14
    .line 15
    move-result-wide v2

    .line 16
    iput-wide v2, p0, Lru/zdevs/zarchiver/ZTextEditor$s;->j:J

    .line 17
    .line 18
    :cond_0
    const-wide/16 v2, -0x1

    .line 19
    .line 20
    invoke-virtual {v1, v2, v3}, Lh0/f;->x(J)Ljava/io/OutputStream;

    .line 21
    .line 22
    .line 23
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    move-object v4, v1

    .line 25
    move-object v1, v0

    .line 26
    move-object v0, v4

    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception v1

    .line 29
    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    :goto_0
    if-nez v0, :cond_1

    .line 34
    .line 35
    invoke-static {}, Lt0/b;->j()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    :try_start_1
    invoke-static {p1}, Lx0/d;->n(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    sget v2, Lt0/b;->m:I

    .line 46
    .line 47
    invoke-static {v2, p1}, Lo0/d;->a(ILjava/lang/String;)Lo0/d;

    .line 48
    .line 49
    .line 50
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 51
    goto :goto_1

    .line 52
    :catch_1
    move-exception p1

    .line 53
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    :cond_1
    :goto_1
    if-nez v0, :cond_3

    .line 58
    .line 59
    if-nez v1, :cond_2

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_2
    new-instance p1, Ljava/io/FileNotFoundException;

    .line 63
    .line 64
    invoke-direct {p1, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw p1

    .line 68
    :cond_3
    :goto_2
    return-object v0
.end method
