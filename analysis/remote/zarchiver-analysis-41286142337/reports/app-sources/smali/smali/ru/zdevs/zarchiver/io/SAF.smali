.class public Lru/zdevs/zarchiver/io/SAF;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/zdevs/zarchiver/io/SAF$a;,
        Lru/zdevs/zarchiver/io/SAF$DIR;,
        Lru/zdevs/zarchiver/io/SAF$STAT;
    }
.end annotation


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[Ljava/lang/String;

.field public static final c:[Ljava/lang/String;

.field public static final d:[Ljava/lang/String;

.field public static e:I


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/String;

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    const-string v3, "mime_type"

    .line 6
    .line 7
    aput-object v3, v1, v2

    .line 8
    .line 9
    sput-object v1, Lru/zdevs/zarchiver/io/SAF;->a:[Ljava/lang/String;

    .line 10
    .line 11
    const/4 v1, 0x5

    .line 12
    new-array v1, v1, [Ljava/lang/String;

    .line 13
    .line 14
    const-string v4, "_display_name"

    .line 15
    .line 16
    aput-object v4, v1, v2

    .line 17
    .line 18
    aput-object v3, v1, v0

    .line 19
    .line 20
    const/4 v5, 0x2

    .line 21
    const-string v6, "_size"

    .line 22
    .line 23
    aput-object v6, v1, v5

    .line 24
    .line 25
    const/4 v7, 0x3

    .line 26
    const-string v8, "last_modified"

    .line 27
    .line 28
    aput-object v8, v1, v7

    .line 29
    .line 30
    const/4 v9, 0x4

    .line 31
    const-string v10, "document_id"

    .line 32
    .line 33
    aput-object v10, v1, v9

    .line 34
    .line 35
    sput-object v1, Lru/zdevs/zarchiver/io/SAF;->b:[Ljava/lang/String;

    .line 36
    .line 37
    new-array v1, v7, [Ljava/lang/String;

    .line 38
    .line 39
    aput-object v3, v1, v2

    .line 40
    .line 41
    aput-object v8, v1, v0

    .line 42
    .line 43
    aput-object v6, v1, v5

    .line 44
    .line 45
    sput-object v1, Lru/zdevs/zarchiver/io/SAF;->c:[Ljava/lang/String;

    .line 46
    .line 47
    new-array v1, v7, [Ljava/lang/String;

    .line 48
    .line 49
    aput-object v4, v1, v2

    .line 50
    .line 51
    aput-object v3, v1, v0

    .line 52
    .line 53
    aput-object v6, v1, v5

    .line 54
    .line 55
    sput-object v1, Lru/zdevs/zarchiver/io/SAF;->d:[Ljava/lang/String;

    .line 56
    .line 57
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x3

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x1

    .line 5
    if-ne p2, v3, :cond_0

    .line 6
    .line 7
    new-array p2, v1, [Ljava/lang/Object;

    .line 8
    .line 9
    aput-object p0, p2, v2

    .line 10
    .line 11
    aput-object p0, p2, v3

    .line 12
    .line 13
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    aput-object p0, p2, v0

    .line 18
    .line 19
    const-string p0, "content://com.android.externalstorage.documents/tree/%s/document/%s%s/children"

    .line 20
    .line 21
    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0

    .line 30
    :cond_0
    if-nez p2, :cond_1

    .line 31
    .line 32
    new-array p2, v1, [Ljava/lang/Object;

    .line 33
    .line 34
    aput-object p0, p2, v2

    .line 35
    .line 36
    aput-object p0, p2, v3

    .line 37
    .line 38
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    aput-object p0, p2, v0

    .line 43
    .line 44
    const-string p0, "content://com.android.externalstorage.documents/tree/%s/document/%s%s"

    .line 45
    .line 46
    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    return-object p0

    .line 55
    :cond_1
    new-array p1, v3, [Ljava/lang/Object;

    .line 56
    .line 57
    aput-object p0, p1, v2

    .line 58
    .line 59
    const-string p0, "content://com.android.externalstorage.documents/tree/%s"

    .line 60
    .line 61
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    return-object p0
.end method

.method public static b(Landroid/net/Uri;[Ljava/lang/String;Lh0/e$b;Lv0/d;I)V
    .locals 5

    .line 1
    const/16 v0, 0x1e

    .line 2
    .line 3
    if-le p4, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {p0}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {p0, v0}, Landroid/provider/DocumentsContract;->buildChildDocumentsUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0, p1}, Lru/zdevs/zarchiver/io/SAF;->s(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_4

    .line 26
    .line 27
    if-eqz p3, :cond_2

    .line 28
    .line 29
    invoke-interface {p3}, Lv0/d;->isCancelled()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    return-void

    .line 36
    :cond_2
    const/4 v1, 0x0

    .line 37
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const-string v2, "vnd.android.document/directory"

    .line 42
    .line 43
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    const/4 v2, 0x1

    .line 48
    if-eqz v1, :cond_3

    .line 49
    .line 50
    const/4 v1, 0x2

    .line 51
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-static {p0, v1}, Landroid/provider/DocumentsContract;->buildDocumentUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    add-int/2addr v2, p4

    .line 60
    invoke-static {v1, p1, p2, p3, v2}, Lru/zdevs/zarchiver/io/SAF;->b(Landroid/net/Uri;[Ljava/lang/String;Lh0/e$b;Lv0/d;I)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    iget v1, p2, Lh0/e$b;->d:I

    .line 65
    .line 66
    add-int/2addr v1, v2

    .line 67
    iput v1, p2, Lh0/e$b;->d:I

    .line 68
    .line 69
    iget-wide v3, p2, Lh0/e$b;->c:J

    .line 70
    .line 71
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    .line 72
    .line 73
    .line 74
    move-result-wide v1

    .line 75
    add-long/2addr v1, v3

    .line 76
    iput-wide v1, p2, Lh0/e$b;->c:J

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_4
    invoke-static {v0}, Ln0/e;->b(Landroid/database/Cursor;)V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method public static c(Ljava/lang/String;)I
    .locals 4

    .line 1
    invoke-static {p0}, La0/c;->b0(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, La0/c;->Y(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-string v0, "Android/"

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz v0, :cond_3

    .line 17
    .line 18
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 19
    .line 20
    const/16 v2, 0x21

    .line 21
    .line 22
    if-lt v0, v2, :cond_0

    .line 23
    .line 24
    const/4 v0, 0x3

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x2

    .line 27
    :goto_0
    const/4 v2, 0x0

    .line 28
    :goto_1
    if-ge v1, v0, :cond_2

    .line 29
    .line 30
    add-int/lit8 v2, v2, 0x1

    .line 31
    .line 32
    const/16 v3, 0x2f

    .line 33
    .line 34
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->indexOf(II)I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-gez v2, :cond_1

    .line 39
    .line 40
    add-int/lit8 v1, v1, 0x1

    .line 41
    .line 42
    if-ne v1, v0, :cond_2

    .line 43
    .line 44
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    goto :goto_2

    .line 49
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    move v1, v2

    .line 53
    :cond_3
    :goto_2
    return v1
.end method

.method public static close(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static d(Ljava/lang/Exception;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_17

    .line 6
    .line 7
    const-string v1, "Permission denied"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_16

    .line 14
    .line 15
    const-string v1, "There are no permissions"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_16

    .line 22
    .line 23
    const-string v1, "EACCES"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    goto/16 :goto_a

    .line 32
    .line 33
    :cond_0
    const-string v1, "No such file or directory"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_15

    .line 40
    .line 41
    const-string v1, "ENOENT"

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    goto/16 :goto_9

    .line 50
    .line 51
    :cond_1
    const-string v1, "I/O error"

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-nez v1, :cond_14

    .line 58
    .line 59
    const-string v1, "EIO"

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-eqz v1, :cond_2

    .line 66
    .line 67
    goto/16 :goto_8

    .line 68
    .line 69
    :cond_2
    const-string v1, "Not a directory"

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-nez v1, :cond_13

    .line 76
    .line 77
    const-string v1, "ENOTDIR"

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-eqz v1, :cond_3

    .line 84
    .line 85
    goto/16 :goto_7

    .line 86
    .line 87
    :cond_3
    const-string v1, "Invalid argument"

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-nez v1, :cond_12

    .line 94
    .line 95
    const-string v1, "EINVAL"

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-eqz v1, :cond_4

    .line 102
    .line 103
    goto/16 :goto_6

    .line 104
    .line 105
    :cond_4
    const-string v1, "No space left on device"

    .line 106
    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    if-nez v1, :cond_11

    .line 112
    .line 113
    const-string v1, "ENOSPC"

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    if-eqz v1, :cond_5

    .line 120
    .line 121
    goto/16 :goto_5

    .line 122
    .line 123
    :cond_5
    const-string v1, "Read only file system"

    .line 124
    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    if-nez v1, :cond_10

    .line 130
    .line 131
    const-string v1, "EROFS"

    .line 132
    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    if-eqz v1, :cond_6

    .line 138
    .line 139
    goto :goto_4

    .line 140
    :cond_6
    const-string v1, "Illegal seek"

    .line 141
    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    if-nez v1, :cond_f

    .line 147
    .line 148
    const-string v1, "ESPIPE"

    .line 149
    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    if-eqz v1, :cond_7

    .line 155
    .line 156
    goto :goto_3

    .line 157
    :cond_7
    const-string v1, "Bad file number"

    .line 158
    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 160
    .line 161
    .line 162
    move-result v1

    .line 163
    if-nez v1, :cond_e

    .line 164
    .line 165
    const-string v1, "EBADF"

    .line 166
    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    if-eqz v1, :cond_8

    .line 172
    .line 173
    goto :goto_2

    .line 174
    :cond_8
    const-string v1, "Bad address"

    .line 175
    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    if-nez v1, :cond_d

    .line 181
    .line 182
    const-string v1, "EFAULT"

    .line 183
    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    if-eqz v1, :cond_9

    .line 189
    .line 190
    goto :goto_1

    .line 191
    :cond_9
    const-string v1, "File exists"

    .line 192
    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    if-nez v1, :cond_c

    .line 198
    .line 199
    const-string v1, "EEXIST"

    .line 200
    .line 201
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 202
    .line 203
    .line 204
    move-result v1

    .line 205
    if-eqz v1, :cond_a

    .line 206
    .line 207
    goto :goto_0

    .line 208
    :cond_a
    const-string v1, "Is a directory"

    .line 209
    .line 210
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 211
    .line 212
    .line 213
    move-result v1

    .line 214
    if-nez v1, :cond_b

    .line 215
    .line 216
    const-string v1, "EISDIR"

    .line 217
    .line 218
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 219
    .line 220
    .line 221
    move-result v0

    .line 222
    if-eqz v0, :cond_17

    .line 223
    .line 224
    :cond_b
    sget p0, Landroid/system/OsConstants;->EISDIR:I

    .line 225
    .line 226
    return p0

    .line 227
    :cond_c
    :goto_0
    sget p0, Landroid/system/OsConstants;->EEXIST:I

    .line 228
    .line 229
    return p0

    .line 230
    :cond_d
    :goto_1
    sget p0, Landroid/system/OsConstants;->EFAULT:I

    .line 231
    .line 232
    return p0

    .line 233
    :cond_e
    :goto_2
    sget p0, Landroid/system/OsConstants;->EBADF:I

    .line 234
    .line 235
    return p0

    .line 236
    :cond_f
    :goto_3
    sget p0, Landroid/system/OsConstants;->ESPIPE:I

    .line 237
    .line 238
    return p0

    .line 239
    :cond_10
    :goto_4
    sget p0, Landroid/system/OsConstants;->EROFS:I

    .line 240
    .line 241
    return p0

    .line 242
    :cond_11
    :goto_5
    sget p0, Landroid/system/OsConstants;->ENOSPC:I

    .line 243
    .line 244
    return p0

    .line 245
    :cond_12
    :goto_6
    sget p0, Landroid/system/OsConstants;->EINVAL:I

    .line 246
    .line 247
    return p0

    .line 248
    :cond_13
    :goto_7
    sget p0, Landroid/system/OsConstants;->ENOTDIR:I

    .line 249
    .line 250
    return p0

    .line 251
    :cond_14
    :goto_8
    sget p0, Landroid/system/OsConstants;->EIO:I

    .line 252
    .line 253
    return p0

    .line 254
    :cond_15
    :goto_9
    sget p0, Landroid/system/OsConstants;->ENOENT:I

    .line 255
    .line 256
    return p0

    .line 257
    :cond_16
    :goto_a
    sget p0, Landroid/system/OsConstants;->EACCES:I

    .line 258
    .line 259
    return p0

    .line 260
    :cond_17
    instance-of v0, p0, Ljava/lang/IllegalStateException;

    .line 261
    .line 262
    if-eqz v0, :cond_18

    .line 263
    .line 264
    sget p0, Landroid/system/OsConstants;->EACCES:I

    .line 265
    .line 266
    return p0

    .line 267
    :cond_18
    instance-of v0, p0, Ljava/util/InvalidPropertiesFormatException;

    .line 268
    .line 269
    if-eqz v0, :cond_19

    .line 270
    .line 271
    sget p0, Landroid/system/OsConstants;->EINVAL:I

    .line 272
    .line 273
    return p0

    .line 274
    :cond_19
    instance-of p0, p0, Ljava/io/IOException;

    .line 275
    .line 276
    if-eqz p0, :cond_1a

    .line 277
    .line 278
    sget p0, Landroid/system/OsConstants;->EIO:I

    .line 279
    .line 280
    return p0

    .line 281
    :cond_1a
    sget p0, Landroid/system/OsConstants;->EPERM:I

    .line 282
    .line 283
    return p0
.end method

.method public static e(Ljava/lang/String;)Lru/zdevs/zarchiver/io/SAF$a;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0, p0}, Lru/zdevs/zarchiver/io/SAF;->l(ILjava/lang/String;)Landroid/net/Uri;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    const/4 v1, 0x0

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    sget-object v2, Lru/zdevs/zarchiver/io/SAF;->b:[Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {p0, v2}, Lru/zdevs/zarchiver/io/SAF;->s(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_2

    .line 24
    .line 25
    new-instance v1, Lru/zdevs/zarchiver/io/SAF$a;

    .line 26
    .line 27
    invoke-direct {v1}, Lru/zdevs/zarchiver/io/SAF$a;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iput-object v0, v1, Lru/zdevs/zarchiver/io/SAF$a;->a:Ljava/lang/String;

    .line 35
    .line 36
    const/4 v0, 0x1

    .line 37
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const-string v3, "vnd.android.document/directory"

    .line 42
    .line 43
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    iput-boolean v0, v1, Lru/zdevs/zarchiver/io/SAF$a;->b:Z

    .line 48
    .line 49
    const/4 v0, 0x3

    .line 50
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 51
    .line 52
    .line 53
    move-result-wide v3

    .line 54
    iput-wide v3, v1, Lru/zdevs/zarchiver/io/SAF$a;->c:J

    .line 55
    .line 56
    const/4 v0, 0x2

    .line 57
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 58
    .line 59
    .line 60
    move-result-wide v3

    .line 61
    iput-wide v3, v1, Lru/zdevs/zarchiver/io/SAF$a;->d:J

    .line 62
    .line 63
    const/4 v0, 0x4

    .line 64
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    if-eqz v0, :cond_2

    .line 69
    .line 70
    invoke-static {p0, v0}, Landroid/provider/DocumentsContract;->buildDocumentUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    iput-object p0, v1, Lru/zdevs/zarchiver/io/SAF$a;->e:Landroid/net/Uri;

    .line 75
    .line 76
    :cond_2
    invoke-static {v2}, Ln0/e;->b(Landroid/database/Cursor;)V

    .line 77
    .line 78
    .line 79
    :goto_0
    return-object v1
.end method

.method public static errno()I
    .locals 1

    sget v0, Lru/zdevs/zarchiver/io/SAF;->e:I

    return v0
.end method

.method public static f(Landroid/net/Uri;)Lru/zdevs/zarchiver/io/SAF$a;
    .locals 5

    .line 1
    sget-object v0, Lru/zdevs/zarchiver/io/SAF;->d:[Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p0, v0}, Lru/zdevs/zarchiver/io/SAF;->s(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    return-object v1

    .line 11
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_3

    .line 16
    .line 17
    new-instance v1, Lru/zdevs/zarchiver/io/SAF$a;

    .line 18
    .line 19
    invoke-direct {v1}, Lru/zdevs/zarchiver/io/SAF$a;-><init>()V

    .line 20
    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    aget-object v0, v0, v2

    .line 24
    .line 25
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const/4 v2, -0x1

    .line 30
    if-eq v0, v2, :cond_1

    .line 31
    .line 32
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iput-object v0, v1, Lru/zdevs/zarchiver/io/SAF$a;->a:Ljava/lang/String;

    .line 37
    .line 38
    :cond_1
    sget-object v0, Lru/zdevs/zarchiver/io/SAF;->b:[Ljava/lang/String;

    .line 39
    .line 40
    const/4 v3, 0x1

    .line 41
    aget-object v3, v0, v3

    .line 42
    .line 43
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-eq v3, v2, :cond_2

    .line 48
    .line 49
    const-string v4, "vnd.android.document/directory"

    .line 50
    .line 51
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    iput-boolean v3, v1, Lru/zdevs/zarchiver/io/SAF$a;->b:Z

    .line 60
    .line 61
    :cond_2
    const/4 v3, 0x2

    .line 62
    aget-object v0, v0, v3

    .line 63
    .line 64
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eq v0, v2, :cond_3

    .line 69
    .line 70
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 71
    .line 72
    .line 73
    move-result-wide v2

    .line 74
    iput-wide v2, v1, Lru/zdevs/zarchiver/io/SAF$a;->d:J

    .line 75
    .line 76
    :cond_3
    invoke-static {p0}, Ln0/e;->b(Landroid/database/Cursor;)V

    .line 77
    .line 78
    .line 79
    return-object v1
.end method

.method public static g(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    .line 1
    if-eqz p0, :cond_5

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x6

    .line 8
    if-lt v0, v1, :cond_5

    .line 9
    .line 10
    const-string v0, "/SAF"

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto :goto_2

    .line 19
    :cond_0
    const/16 v0, 0x2f

    .line 20
    .line 21
    const/4 v1, 0x5

    .line 22
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->indexOf(II)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const-string v2, "%3A"

    .line 27
    .line 28
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    const/4 v3, -0x1

    .line 33
    if-lez v0, :cond_1

    .line 34
    .line 35
    if-le v2, v0, :cond_1

    .line 36
    .line 37
    const/4 v2, -0x1

    .line 38
    :cond_1
    const/4 v4, 0x2

    .line 39
    new-array v4, v4, [Ljava/lang/String;

    .line 40
    .line 41
    const/4 v5, 0x0

    .line 42
    if-eq v2, v3, :cond_3

    .line 43
    .line 44
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    aput-object v1, v4, v5

    .line 49
    .line 50
    add-int/lit8 v2, v2, 0x3

    .line 51
    .line 52
    if-eq v0, v3, :cond_2

    .line 53
    .line 54
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    goto :goto_0

    .line 59
    :cond_2
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    :goto_0
    invoke-static {p0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    const/4 v0, 0x1

    .line 68
    aput-object p0, v4, v0

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_3
    if-eq v0, v3, :cond_4

    .line 72
    .line 73
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    aput-object p0, v4, v5

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_4
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    aput-object p0, v4, v5

    .line 85
    .line 86
    :goto_1
    return-object v4

    .line 87
    :cond_5
    :goto_2
    const/4 p0, 0x0

    .line 88
    return-object p0
.end method

.method public static h(Landroid/content/Context;Lh0/h;Z)Landroid/net/Uri;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lh0/h;->r()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "/SAF"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-static {v1, v0}, Lru/zdevs/zarchiver/io/SAF;->l(ILjava/lang/String;)Landroid/net/Uri;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    return-object v1

    .line 21
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 22
    .line 23
    const/16 v2, 0x18

    .line 24
    .line 25
    if-lt v1, v2, :cond_2

    .line 26
    .line 27
    if-eqz p2, :cond_1

    .line 28
    .line 29
    invoke-static {v0}, Ln0/e;->l(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-nez p1, :cond_1

    .line 34
    .line 35
    invoke-static {}, Lv0/b;->h()Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    invoke-static {p0, v0}, Lru/zdevs/zarchiver/io/SAF;->j(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    if-eqz p0, :cond_1

    .line 46
    .line 47
    return-object p0

    .line 48
    :cond_1
    invoke-static {v0}, Lru/zdevs/zarchiver/provider/FileProvider;->c(Ljava/lang/String;)Landroid/net/Uri;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0

    .line 53
    :cond_2
    invoke-static {p1}, Lru/zdevs/zarchiver/io/KitKatExtSD;->c(Lh0/h;)Landroid/net/Uri;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    return-object p0
.end method

.method public static i(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_2

    .line 3
    .line 4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    .line 6
    const/16 v2, 0x1e

    .line 7
    .line 8
    if-ge v1, v2, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-static {p0}, Lru/zdevs/zarchiver/io/SAF;->c(Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-gez v1, :cond_1

    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_1
    const/4 v0, 0x0

    .line 19
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0

    .line 24
    :cond_2
    :goto_0
    return-object v0
.end method

.method public static j(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {p1}, La0/c;->E(Ljava/lang/String;)B

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    const/16 v2, 0xe

    .line 7
    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v2, 0x7

    .line 14
    if-ne v1, v2, :cond_1

    .line 15
    .line 16
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/16 v2, 0x9

    .line 20
    .line 21
    if-ne v1, v2, :cond_2

    .line 22
    .line 23
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    const-string v1, "external"

    .line 27
    .line 28
    invoke-static {v1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    const/4 p0, 0x1

    .line 37
    new-array v4, p0, [Ljava/lang/String;

    .line 38
    .line 39
    const-string v3, "_id"

    .line 40
    .line 41
    const/4 v8, 0x0

    .line 42
    aput-object v3, v4, v8

    .line 43
    .line 44
    const-string v5, "_data=? "

    .line 45
    .line 46
    new-array v6, p0, [Ljava/lang/String;

    .line 47
    .line 48
    aput-object p1, v6, v8

    .line 49
    .line 50
    const/4 v7, 0x0

    .line 51
    move-object v3, v1

    .line 52
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 53
    .line 54
    .line 55
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 56
    if-nez p0, :cond_3

    .line 57
    .line 58
    invoke-static {p0}, Ln0/e;->b(Landroid/database/Cursor;)V

    .line 59
    .line 60
    .line 61
    return-object v0

    .line 62
    :cond_3
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-eqz p1, :cond_4

    .line 67
    .line 68
    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-static {v1, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 73
    .line 74
    .line 75
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    invoke-static {p0}, Ln0/e;->b(Landroid/database/Cursor;)V

    .line 77
    .line 78
    .line 79
    return-object p1

    .line 80
    :cond_4
    invoke-static {p0}, Ln0/e;->b(Landroid/database/Cursor;)V

    .line 81
    .line 82
    .line 83
    return-object v0

    .line 84
    :catchall_0
    move-exception p1

    .line 85
    move-object v0, p0

    .line 86
    move-object p0, p1

    .line 87
    goto :goto_1

    .line 88
    :catchall_1
    move-exception p0

    .line 89
    :goto_1
    invoke-static {v0}, Ln0/e;->b(Landroid/database/Cursor;)V

    .line 90
    .line 91
    .line 92
    throw p0

    .line 93
    :catch_0
    move-object p0, v0

    .line 94
    :catch_1
    invoke-static {p0}, Ln0/e;->b(Landroid/database/Cursor;)V

    .line 95
    .line 96
    .line 97
    return-object v0
.end method

.method public static k(ILjava/lang/String;)Landroid/net/Uri;
    .locals 7

    .line 1
    if-eqz p1, :cond_e

    .line 2
    .line 3
    const-string v0, "/SAF"

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const-string v1, ""

    .line 10
    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x5

    .line 18
    if-le v2, v3, :cond_1

    .line 19
    .line 20
    const/16 v2, 0x2f

    .line 21
    .line 22
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->indexOf(II)I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const/4 v4, -0x1

    .line 27
    if-ne v2, v4, :cond_0

    .line 28
    .line 29
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-static {v2}, La0/c;->Y(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    new-instance p0, Ljava/util/InvalidPropertiesFormatException;

    .line 48
    .line 49
    const-string p1, "Invalid SAF path"

    .line 50
    .line 51
    invoke-direct {p0, p1}, Ljava/util/InvalidPropertiesFormatException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p0

    .line 55
    :cond_2
    invoke-static {p1}, Lx0/d;->i(Ljava/lang/String;)Lx0/d$a;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    if-eqz v2, :cond_d

    .line 60
    .line 61
    const/4 v3, 0x0

    .line 62
    invoke-virtual {v2, v3}, Lx0/d$a;->d(Ljava/lang/String;)Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-nez v3, :cond_4

    .line 67
    .line 68
    invoke-virtual {v2}, Lx0/d$a;->e()Z

    .line 69
    .line 70
    .line 71
    move-result p0

    .line 72
    if-eqz p0, :cond_3

    .line 73
    .line 74
    new-instance p0, Ljava/util/InvalidPropertiesFormatException;

    .line 75
    .line 76
    const-string p1, "Incorrect SAF Storage found"

    .line 77
    .line 78
    invoke-direct {p0, p1}, Ljava/util/InvalidPropertiesFormatException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw p0

    .line 82
    :cond_3
    new-instance p0, Ljava/io/FileNotFoundException;

    .line 83
    .line 84
    new-instance p1, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    const-string v0, "There are no permissions to access the SAF: "

    .line 87
    .line 88
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    iget-object v0, v2, Lx0/d$a;->b:Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw p0

    .line 104
    :cond_4
    invoke-virtual {v2}, Lx0/d$a;->a()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    if-eqz v3, :cond_c

    .line 109
    .line 110
    invoke-virtual {v2, p1}, Lx0/d$a;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    if-nez v2, :cond_5

    .line 115
    .line 116
    move-object v2, v3

    .line 117
    :goto_0
    move-object v3, v1

    .line 118
    goto :goto_2

    .line 119
    :cond_5
    :goto_1
    move-object v6, v3

    .line 120
    move-object v3, v2

    .line 121
    move-object v2, v6

    .line 122
    :goto_2
    const-string v4, "%3A"

    .line 123
    .line 124
    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 125
    .line 126
    .line 127
    move-result v5

    .line 128
    if-nez v5, :cond_6

    .line 129
    .line 130
    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    :cond_6
    const/4 v4, 0x2

    .line 135
    const/4 v5, 0x3

    .line 136
    if-eq p0, v4, :cond_8

    .line 137
    .line 138
    if-ne p0, v5, :cond_7

    .line 139
    .line 140
    goto :goto_3

    .line 141
    :cond_7
    invoke-static {v2, v3, p0}, Lru/zdevs/zarchiver/io/SAF;->a(Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    return-object p0

    .line 146
    :cond_8
    :goto_3
    const/4 v4, 0x0

    .line 147
    if-eqz v0, :cond_9

    .line 148
    .line 149
    invoke-static {v2, v3, v4}, Lru/zdevs/zarchiver/io/SAF;->a(Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    invoke-static {p1}, Lru/zdevs/zarchiver/io/SAF;->p(Landroid/net/Uri;)Z

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    if-eqz v0, :cond_a

    .line 158
    .line 159
    return-object p1

    .line 160
    :cond_9
    invoke-static {p1}, Ln0/e;->k(Ljava/lang/String;)Z

    .line 161
    .line 162
    .line 163
    move-result p1

    .line 164
    if-eqz p1, :cond_a

    .line 165
    .line 166
    invoke-static {v2, v3, v4}, Lru/zdevs/zarchiver/io/SAF;->a(Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    return-object p0

    .line 171
    :cond_a
    invoke-static {v3}, La0/c;->A(Ljava/lang/String;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    invoke-static {v2, p1, v4}, Lru/zdevs/zarchiver/io/SAF;->a(Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    invoke-static {}, Lru/zdevs/zarchiver/ZApp;->a()Landroid/content/ContentResolver;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    if-ne p0, v5, :cond_b

    .line 184
    .line 185
    const-string v1, "vnd.android.document/directory"

    .line 186
    .line 187
    :cond_b
    invoke-static {v3}, La0/c;->y(Ljava/lang/String;)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p0

    .line 191
    invoke-static {v0, p1, v1, p0}, Landroid/provider/DocumentsContract;->createDocument(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 192
    .line 193
    .line 194
    move-result-object p0

    .line 195
    return-object p0

    .line 196
    :cond_c
    new-instance p0, Ljava/util/InvalidPropertiesFormatException;

    .line 197
    .line 198
    const-string p1, "Incorrect Storage ID"

    .line 199
    .line 200
    invoke-direct {p0, p1}, Ljava/util/InvalidPropertiesFormatException;-><init>(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    throw p0

    .line 204
    :cond_d
    new-instance p0, Ljava/util/InvalidPropertiesFormatException;

    .line 205
    .line 206
    const-string p1, "SAF Storage not found"

    .line 207
    .line 208
    invoke-direct {p0, p1}, Ljava/util/InvalidPropertiesFormatException;-><init>(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    throw p0

    .line 212
    :cond_e
    new-instance p0, Ljava/util/InvalidPropertiesFormatException;

    .line 213
    .line 214
    const-string p1, "Path is NULL"

    .line 215
    .line 216
    invoke-direct {p0, p1}, Ljava/util/InvalidPropertiesFormatException;-><init>(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    throw p0
.end method

.method public static l(ILjava/lang/String;)Landroid/net/Uri;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sput v0, Lru/zdevs/zarchiver/io/SAF;->e:I

    .line 3
    .line 4
    invoke-static {p0, p1}, Lru/zdevs/zarchiver/io/SAF;->k(ILjava/lang/String;)Landroid/net/Uri;

    .line 5
    .line 6
    .line 7
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    return-object p0

    .line 9
    :catch_0
    move-exception p0

    .line 10
    invoke-static {p0}, Lru/zdevs/zarchiver/io/SAF;->d(Ljava/lang/Exception;)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    sput p0, Lru/zdevs/zarchiver/io/SAF;->e:I

    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    return-object p0
.end method

.method public static m(Ljava/lang/String;Ljava/lang/String;ZZ)Lh0/h;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_5

    .line 3
    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    goto :goto_2

    .line 7
    :cond_0
    if-eqz p2, :cond_1

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    goto :goto_0

    .line 14
    :cond_1
    invoke-static {p1}, Lru/zdevs/zarchiver/io/SAF;->c(Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    :goto_0
    if-gez p2, :cond_2

    .line 19
    .line 20
    return-object v0

    .line 21
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v1, "/SAF/"

    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string p0, ":"

    .line 37
    .line 38
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const/4 p0, 0x0

    .line 42
    invoke-virtual {p1, p0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-static {p0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    if-eqz p3, :cond_3

    .line 61
    .line 62
    const-string p0, "%2F"

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_3
    const-string p0, ""

    .line 66
    .line 67
    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 75
    .line 76
    .line 77
    move-result p3

    .line 78
    if-ge p2, p3, :cond_4

    .line 79
    .line 80
    new-instance p3, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    :cond_4
    new-instance p1, Lh0/h;

    .line 100
    .line 101
    const-string p2, "saf"

    .line 102
    .line 103
    invoke-direct {p1, p2, p0}, Lh0/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    return-object p1

    .line 107
    :cond_5
    :goto_2
    return-object v0
.end method

.method public static mkdir(Ljava/lang/String;)I
    .locals 2

    .line 1
    sget-boolean v0, Lx0/d;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_4

    .line 4
    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    const-string v0, "/SAF"

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    return v1

    .line 18
    :cond_1
    const/4 v0, 0x3

    .line 19
    invoke-static {v0, p0}, Lru/zdevs/zarchiver/io/SAF;->l(ILjava/lang/String;)Landroid/net/Uri;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    if-eqz p0, :cond_2

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_2
    sget p0, Lru/zdevs/zarchiver/io/SAF;->e:I

    .line 27
    .line 28
    if-eqz p0, :cond_3

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_3
    sget p0, Landroid/system/OsConstants;->EPERM:I

    .line 32
    .line 33
    :goto_0
    neg-int v1, p0

    .line 34
    :goto_1
    return v1

    .line 35
    :cond_4
    :goto_2
    sget p0, Landroid/system/OsConstants;->EACCES:I

    .line 36
    .line 37
    neg-int p0, p0

    .line 38
    return p0
.end method

.method public static mkdirs(Ljava/lang/String;I)I
    .locals 6

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    sget p0, Landroid/system/OsConstants;->EPERM:I

    .line 4
    .line 5
    :goto_0
    neg-int p0, p0

    .line 6
    return p0

    .line 7
    :cond_0
    const-string v0, "/SAF"

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/16 v1, 0x2f

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    invoke-static {v2, p0}, Lru/zdevs/zarchiver/io/SAF;->l(ILjava/lang/String;)Landroid/net/Uri;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Lru/zdevs/zarchiver/io/SAF;->p(Landroid/net/Uri;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    return v2

    .line 29
    :cond_1
    const/4 v0, 0x5

    .line 30
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(II)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    goto :goto_1

    .line 35
    :cond_2
    new-instance v0, Ljava/io/File;

    .line 36
    .line 37
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    return v2

    .line 47
    :cond_3
    invoke-static {p0}, Lx0/d;->i(Ljava/lang/String;)Lx0/d$a;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    if-eqz v0, :cond_4

    .line 52
    .line 53
    iget-object v0, v0, Lx0/d$a;->b:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    goto :goto_1

    .line 60
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    sub-int/2addr v3, p1

    .line 69
    if-le v3, v0, :cond_6

    .line 70
    .line 71
    if-eqz p1, :cond_6

    .line 72
    .line 73
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-eq p1, v1, :cond_5

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_5
    move v0, v3

    .line 81
    :cond_6
    :goto_2
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-static {v2, p1}, Lru/zdevs/zarchiver/io/SAF;->l(ILjava/lang/String;)Landroid/net/Uri;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    if-nez p1, :cond_8

    .line 90
    .line 91
    sget p0, Lru/zdevs/zarchiver/io/SAF;->e:I

    .line 92
    .line 93
    if-eqz p0, :cond_7

    .line 94
    .line 95
    goto :goto_3

    .line 96
    :cond_7
    sget p0, Landroid/system/OsConstants;->EPERM:I

    .line 97
    .line 98
    :goto_3
    neg-int p0, p0

    .line 99
    return p0

    .line 100
    :cond_8
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    invoke-static {p0, v1}, Lv0/h;->h(Ljava/lang/String;C)[Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    const/4 v0, 0x0

    .line 109
    const/4 v1, 0x0

    .line 110
    :goto_4
    array-length v3, p0

    .line 111
    if-ge v1, v3, :cond_a

    .line 112
    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    new-instance v3, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    const-string v4, "/"

    .line 124
    .line 125
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    aget-object v4, p0, v1

    .line 129
    .line 130
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-static {v0}, Lru/zdevs/zarchiver/io/SAF;->p(Landroid/net/Uri;)Z

    .line 153
    .line 154
    .line 155
    move-result v3

    .line 156
    if-nez v3, :cond_9

    .line 157
    .line 158
    goto :goto_5

    .line 159
    :cond_9
    add-int/lit8 v1, v1, 0x1

    .line 160
    .line 161
    move-object v5, v0

    .line 162
    move-object v0, p1

    .line 163
    move-object p1, v5

    .line 164
    goto :goto_4

    .line 165
    :cond_a
    move-object p1, v0

    .line 166
    :goto_5
    :try_start_0
    array-length v0, p0

    .line 167
    if-ge v1, v0, :cond_b

    .line 168
    .line 169
    if-eqz p1, :cond_b

    .line 170
    .line 171
    invoke-static {}, Lru/zdevs/zarchiver/ZApp;->a()Landroid/content/ContentResolver;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    const-string v3, "vnd.android.document/directory"

    .line 176
    .line 177
    aget-object v4, p0, v1

    .line 178
    .line 179
    invoke-static {v0, p1, v3, v4}, Landroid/provider/DocumentsContract;->createDocument(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 180
    .line 181
    .line 182
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    add-int/lit8 v1, v1, 0x1

    .line 184
    .line 185
    goto :goto_5

    .line 186
    :cond_b
    return v2

    .line 187
    :catch_0
    move-exception p0

    .line 188
    invoke-static {p0}, Lru/zdevs/zarchiver/io/SAF;->d(Ljava/lang/Exception;)I

    .line 189
    .line 190
    .line 191
    move-result p0

    .line 192
    goto/16 :goto_0
.end method

.method public static n(Lx0/d$a;Ljava/lang/String;)Lh0/h;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lx0/d$a;->a()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lx0/d$a;->a()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-static {p0, p1, v0, v0}, Lru/zdevs/zarchiver/io/SAF;->m(Ljava/lang/String;Ljava/lang/String;ZZ)Lh0/h;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public static o(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1e

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-lt v0, v1, :cond_2

    .line 7
    .line 8
    const/16 v1, 0x22

    .line 9
    .line 10
    if-ge v0, v1, :cond_2

    .line 11
    .line 12
    if-eqz p0, :cond_2

    .line 13
    .line 14
    const-string v0, "/SAF"

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    const/16 v0, 0x2f

    .line 24
    .line 25
    const/4 v1, 0x5

    .line 26
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->indexOf(II)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const/4 v3, -0x1

    .line 31
    if-ne v0, v3, :cond_1

    .line 32
    .line 33
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    :goto_0
    const-string v0, "primary"

    .line 43
    .line 44
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-nez v0, :cond_2

    .line 49
    .line 50
    const-string v0, "%3AAndroid"

    .line 51
    .line 52
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    const-string v0, "%3A"

    .line 59
    .line 60
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    const/4 v1, 0x0

    .line 65
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    return-object p0

    .line 70
    :cond_2
    :goto_1
    return-object v2
.end method

.method public static open(Ljava/lang/String;I)I
    .locals 4

    .line 1
    sget-boolean v0, Lx0/d;->c:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, -0x1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sput v1, Lru/zdevs/zarchiver/io/SAF;->e:I

    .line 8
    .line 9
    return v2

    .line 10
    :cond_0
    :try_start_0
    sget v0, Landroid/system/OsConstants;->O_CREAT:I

    .line 11
    .line 12
    sget v3, Landroid/system/OsConstants;->O_WRONLY:I

    .line 13
    .line 14
    or-int/2addr v0, v3

    .line 15
    and-int/2addr v0, p1

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    const/4 v0, 0x2

    .line 19
    invoke-static {v0, p0}, Lru/zdevs/zarchiver/io/SAF;->k(ILjava/lang/String;)Landroid/net/Uri;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    invoke-static {v1, p0}, Lru/zdevs/zarchiver/io/SAF;->k(ILjava/lang/String;)Landroid/net/Uri;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    :goto_0
    invoke-static {}, Lru/zdevs/zarchiver/ZApp;->a()Landroid/content/ContentResolver;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :try_start_1
    invoke-static {p1}, Lru/zdevs/zarchiver/io/ZAIO;->d(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {v0, p0, p1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    if-nez p0, :cond_2

    .line 42
    .line 43
    sget p0, Landroid/system/OsConstants;->EIO:I

    .line 44
    .line 45
    sput p0, Lru/zdevs/zarchiver/io/SAF;->e:I

    .line 46
    .line 47
    monitor-exit v0

    .line 48
    return v2

    .line 49
    :cond_2
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    monitor-exit v0

    .line 54
    return p0

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 58
    :catch_0
    move-exception p0

    .line 59
    invoke-static {p0}, Lru/zdevs/zarchiver/io/SAF;->d(Ljava/lang/Exception;)I

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    sput p0, Lru/zdevs/zarchiver/io/SAF;->e:I

    .line 64
    .line 65
    return v2
.end method

.method public static opendir(Ljava/lang/String;)[Lru/zdevs/zarchiver/io/SAF$DIR;
    .locals 13

    .line 1
    sget-boolean v0, Lx0/d;->c:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    sget p0, Landroid/system/OsConstants;->EACCES:I

    .line 7
    .line 8
    sput p0, Lru/zdevs/zarchiver/io/SAF;->e:I

    .line 9
    .line 10
    return-object v1

    .line 11
    :cond_0
    if-eqz p0, :cond_6

    .line 12
    .line 13
    const-string v0, "/SAF"

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    goto :goto_3

    .line 22
    :cond_1
    const/4 v0, 0x1

    .line 23
    invoke-static {v0, p0}, Lru/zdevs/zarchiver/io/SAF;->l(ILjava/lang/String;)Landroid/net/Uri;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    if-nez p0, :cond_2

    .line 28
    .line 29
    move-object p0, v1

    .line 30
    goto :goto_0

    .line 31
    :cond_2
    sget-object v2, Lru/zdevs/zarchiver/io/SAF;->b:[Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {p0, v2}, Lru/zdevs/zarchiver/io/SAF;->s(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    :goto_0
    if-nez p0, :cond_3

    .line 38
    .line 39
    sget p0, Landroid/system/OsConstants;->EPERM:I

    .line 40
    .line 41
    sput p0, Lru/zdevs/zarchiver/io/SAF;->e:I

    .line 42
    .line 43
    return-object v1

    .line 44
    :cond_3
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    new-array v1, v1, [Lru/zdevs/zarchiver/io/SAF$DIR;

    .line 49
    .line 50
    const/4 v2, 0x0

    .line 51
    const/4 v3, 0x0

    .line 52
    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-eqz v4, :cond_5

    .line 57
    .line 58
    add-int/lit8 v4, v3, 0x1

    .line 59
    .line 60
    new-instance v12, Lru/zdevs/zarchiver/io/SAF$DIR;

    .line 61
    .line 62
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    const-string v7, "vnd.android.document/directory"

    .line 71
    .line 72
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    if-eqz v5, :cond_4

    .line 77
    .line 78
    const/4 v5, 0x4

    .line 79
    const/4 v7, 0x4

    .line 80
    goto :goto_2

    .line 81
    :cond_4
    const/16 v5, 0x8

    .line 82
    .line 83
    const/16 v7, 0x8

    .line 84
    .line 85
    :goto_2
    const/4 v5, 0x2

    .line 86
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getLong(I)J

    .line 87
    .line 88
    .line 89
    move-result-wide v8

    .line 90
    const/4 v5, 0x3

    .line 91
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getLong(I)J

    .line 92
    .line 93
    .line 94
    move-result-wide v10

    .line 95
    move-object v5, v12

    .line 96
    invoke-direct/range {v5 .. v11}, Lru/zdevs/zarchiver/io/SAF$DIR;-><init>(Ljava/lang/String;IJJ)V

    .line 97
    .line 98
    .line 99
    aput-object v12, v1, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    .line 101
    move v3, v4

    .line 102
    goto :goto_1

    .line 103
    :cond_5
    invoke-static {p0}, Ln0/e;->b(Landroid/database/Cursor;)V

    .line 104
    .line 105
    .line 106
    return-object v1

    .line 107
    :catchall_0
    move-exception v0

    .line 108
    invoke-static {p0}, Ln0/e;->b(Landroid/database/Cursor;)V

    .line 109
    .line 110
    .line 111
    throw v0

    .line 112
    :cond_6
    :goto_3
    sget p0, Landroid/system/OsConstants;->EINVAL:I

    .line 113
    .line 114
    sput p0, Lru/zdevs/zarchiver/io/SAF;->e:I

    .line 115
    .line 116
    return-object v1
.end method

.method public static p(Landroid/net/Uri;)Z
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    invoke-static {}, Lru/zdevs/zarchiver/ZApp;->a()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    sget-object v4, Lru/zdevs/zarchiver/io/SAF;->a:[Ljava/lang/String;

    .line 8
    .line 9
    const/4 v5, 0x0

    .line 10
    const/4 v6, 0x0

    .line 11
    const/4 v7, 0x0

    .line 12
    move-object v3, p0

    .line 13
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 20
    .line 21
    .line 22
    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    :cond_0
    invoke-static {v1}, Ln0/e;->b(Landroid/database/Cursor;)V

    .line 27
    .line 28
    .line 29
    return v0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto :goto_0

    .line 32
    :catch_0
    :try_start_1
    invoke-static {p0}, La0/b;->e(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :goto_0
    invoke-static {v1}, Ln0/e;->b(Landroid/database/Cursor;)V

    .line 37
    .line 38
    .line 39
    throw p0

    .line 40
    :catch_1
    :goto_1
    invoke-static {v1}, Ln0/e;->b(Landroid/database/Cursor;)V

    .line 41
    .line 42
    .line 43
    return v0
.end method

.method public static q(Ljava/lang/String;)Z
    .locals 2

    .line 1
    sget-boolean v0, Lx0/d;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-string v0, "/SAF"

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x1

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    return v1

    .line 18
    :cond_1
    invoke-static {p0}, Lx0/d;->i(Ljava/lang/String;)Lx0/d$a;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    if-eqz p0, :cond_2

    .line 23
    .line 24
    iget p0, p0, Lx0/d$a;->f:I

    .line 25
    .line 26
    const/16 v0, 0x8

    .line 27
    .line 28
    invoke-static {p0, v0}, La0/c;->K(II)Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    if-eqz p0, :cond_2

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_2
    :goto_0
    const/4 v1, 0x0

    .line 36
    :goto_1
    return v1
.end method

.method public static r(Landroid/net/Uri;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    invoke-static {v0, p1}, Lru/zdevs/zarchiver/io/SAF;->l(ILjava/lang/String;)Landroid/net/Uri;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    if-nez p0, :cond_1

    .line 10
    .line 11
    return-object p1

    .line 12
    :cond_1
    invoke-static {p0}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-static {p0, v1}, Landroid/provider/DocumentsContract;->buildChildDocumentsUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    sget-object v1, Lru/zdevs/zarchiver/io/SAF;->b:[Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {p0, v1}, Lru/zdevs/zarchiver/io/SAF;->s(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    if-nez v1, :cond_2

    .line 27
    .line 28
    return-object p1

    .line 29
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 36
    .line 37
    .line 38
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_3

    .line 43
    .line 44
    new-instance v2, Lru/zdevs/zarchiver/io/SAF$a;

    .line 45
    .line 46
    invoke-direct {v2}, Lru/zdevs/zarchiver/io/SAF$a;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    iput-object v3, v2, Lru/zdevs/zarchiver/io/SAF$a;->a:Ljava/lang/String;

    .line 54
    .line 55
    const/4 v3, 0x1

    .line 56
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    const-string v4, "vnd.android.document/directory"

    .line 61
    .line 62
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    iput-boolean v3, v2, Lru/zdevs/zarchiver/io/SAF$a;->b:Z

    .line 67
    .line 68
    const/4 v3, 0x3

    .line 69
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    .line 70
    .line 71
    .line 72
    move-result-wide v3

    .line 73
    iput-wide v3, v2, Lru/zdevs/zarchiver/io/SAF$a;->c:J

    .line 74
    .line 75
    const/4 v3, 0x2

    .line 76
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    .line 77
    .line 78
    .line 79
    move-result-wide v3

    .line 80
    iput-wide v3, v2, Lru/zdevs/zarchiver/io/SAF$a;->d:J

    .line 81
    .line 82
    const/4 v3, 0x4

    .line 83
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    invoke-static {p0, v3}, Landroid/provider/DocumentsContract;->buildDocumentUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    iput-object v3, v2, Lru/zdevs/zarchiver/io/SAF$a;->e:Landroid/net/Uri;

    .line 92
    .line 93
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_3
    invoke-static {v1}, Ln0/e;->b(Landroid/database/Cursor;)V

    .line 98
    .line 99
    .line 100
    return-object p1
.end method

.method public static remove(Ljava/lang/String;)I
    .locals 2

    .line 1
    sget-boolean v0, Lx0/d;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget p0, Landroid/system/OsConstants;->EACCES:I

    .line 6
    .line 7
    :goto_0
    neg-int p0, p0

    .line 8
    return p0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    invoke-static {v0, p0}, Lru/zdevs/zarchiver/io/SAF;->l(ILjava/lang/String;)Landroid/net/Uri;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-nez p0, :cond_2

    .line 15
    .line 16
    sget p0, Lru/zdevs/zarchiver/io/SAF;->e:I

    .line 17
    .line 18
    if-eqz p0, :cond_1

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    sget p0, Landroid/system/OsConstants;->EPERM:I

    .line 22
    .line 23
    :goto_1
    neg-int p0, p0

    .line 24
    return p0

    .line 25
    :cond_2
    :try_start_0
    invoke-static {}, Lru/zdevs/zarchiver/ZApp;->a()Landroid/content/ContentResolver;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {v1, p0}, Landroid/provider/DocumentsContract;->deleteDocument(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    if-eqz p0, :cond_3

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_3
    sget p0, Landroid/system/OsConstants;->EPERM:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    neg-int v0, p0

    .line 39
    :goto_2
    return v0

    .line 40
    :catch_0
    move-exception p0

    .line 41
    invoke-static {p0}, Lru/zdevs/zarchiver/io/SAF;->d(Ljava/lang/Exception;)I

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    goto :goto_0
.end method

.method public static rename(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    .line 1
    sget-boolean v0, Lx0/d;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget p0, Landroid/system/OsConstants;->EACCES:I

    .line 6
    .line 7
    :goto_0
    neg-int p0, p0

    .line 8
    return p0

    .line 9
    :cond_0
    const/16 v0, 0x2f

    .line 10
    .line 11
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/lit8 v2, v1, 0x1

    .line 16
    .line 17
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    add-int/lit8 v1, v0, 0x1

    .line 31
    .line 32
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_1

    .line 45
    .line 46
    invoke-static {p0, v2, p1}, Lru/zdevs/zarchiver/io/SAF;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    const/4 p0, 0x1

    .line 52
    :goto_1
    if-eqz p0, :cond_2

    .line 53
    .line 54
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-nez v0, :cond_2

    .line 59
    .line 60
    invoke-static {p1, v2, v1}, Lru/zdevs/zarchiver/io/SAF;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    :cond_2
    if-eqz p0, :cond_3

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_3
    sget p0, Landroid/system/OsConstants;->EPERM:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .line 69
    neg-int v3, p0

    .line 70
    :goto_2
    return v3

    .line 71
    :catch_0
    move-exception p0

    .line 72
    invoke-static {p0}, Lru/zdevs/zarchiver/io/SAF;->d(Ljava/lang/Exception;)I

    .line 73
    .line 74
    .line 75
    move-result p0

    .line 76
    goto :goto_0
.end method

.method public static s(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    .line 1
    :try_start_0
    invoke-static {}, Lru/zdevs/zarchiver/ZApp;->a()Landroid/content/ContentResolver;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x0

    .line 7
    const/4 v5, 0x0

    .line 8
    move-object v1, p0

    .line 9
    move-object v2, p1

    .line 10
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 11
    .line 12
    .line 13
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    return-object p0

    .line 15
    :catch_0
    invoke-static {p0}, La0/b;->e(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    return-object p0
.end method

.method public static stat(Ljava/lang/String;)Lru/zdevs/zarchiver/io/SAF$STAT;
    .locals 10

    .line 1
    const-string v0, "/SAF"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    sget p0, Landroid/system/OsConstants;->EINVAL:I

    .line 11
    .line 12
    sput p0, Lru/zdevs/zarchiver/io/SAF;->e:I

    .line 13
    .line 14
    return-object v1

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    invoke-static {v0, p0}, Lru/zdevs/zarchiver/io/SAF;->l(ILjava/lang/String;)Landroid/net/Uri;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    :try_start_0
    invoke-static {}, Lru/zdevs/zarchiver/ZApp;->a()Landroid/content/ContentResolver;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    sget-object v4, Lru/zdevs/zarchiver/io/SAF;->c:[Ljava/lang/String;

    .line 25
    .line 26
    const/4 v5, 0x0

    .line 27
    const/4 v6, 0x0

    .line 28
    const/4 v7, 0x0

    .line 29
    move-object v3, p0

    .line 30
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 31
    .line 32
    .line 33
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_2

    .line 41
    .line 42
    new-instance v3, Lru/zdevs/zarchiver/io/SAF$STAT;

    .line 43
    .line 44
    const/4 v4, 0x2

    .line 45
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    .line 46
    .line 47
    .line 48
    move-result-wide v5

    .line 49
    const/4 v4, 0x1

    .line 50
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    .line 51
    .line 52
    .line 53
    move-result-wide v7

    .line 54
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    const-string v4, "vnd.android.document/directory"

    .line 59
    .line 60
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_1

    .line 65
    .line 66
    sget v0, Landroid/system/OsConstants;->S_IFDIR:I

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    sget v0, Landroid/system/OsConstants;->S_IFREG:I

    .line 70
    .line 71
    :goto_0
    move v9, v0

    .line 72
    move-object v4, v3

    .line 73
    invoke-direct/range {v4 .. v9}, Lru/zdevs/zarchiver/io/SAF$STAT;-><init>(JJI)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 74
    .line 75
    .line 76
    invoke-static {v2}, Ln0/e;->b(Landroid/database/Cursor;)V

    .line 77
    .line 78
    .line 79
    return-object v3

    .line 80
    :catch_0
    move-exception v0

    .line 81
    goto :goto_1

    .line 82
    :cond_2
    :try_start_2
    sget v0, Landroid/system/OsConstants;->EPERM:I

    .line 83
    .line 84
    sput v0, Lru/zdevs/zarchiver/io/SAF;->e:I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :catchall_0
    move-exception p0

    .line 88
    goto :goto_3

    .line 89
    :catch_1
    move-exception v0

    .line 90
    move-object v2, v1

    .line 91
    :goto_1
    :try_start_3
    invoke-static {p0}, La0/b;->b(Landroid/net/Uri;)V

    .line 92
    .line 93
    .line 94
    invoke-static {v0}, Lru/zdevs/zarchiver/io/SAF;->d(Ljava/lang/Exception;)I

    .line 95
    .line 96
    .line 97
    move-result p0

    .line 98
    sput p0, Lru/zdevs/zarchiver/io/SAF;->e:I

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :catch_2
    move-object v2, v1

    .line 102
    :catch_3
    sget p0, Landroid/system/OsConstants;->ENOENT:I

    .line 103
    .line 104
    sput p0, Lru/zdevs/zarchiver/io/SAF;->e:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 105
    .line 106
    :goto_2
    invoke-static {v2}, Ln0/e;->b(Landroid/database/Cursor;)V

    .line 107
    .line 108
    .line 109
    return-object v1

    .line 110
    :catchall_1
    move-exception p0

    .line 111
    move-object v1, v2

    .line 112
    :goto_3
    invoke-static {v1}, Ln0/e;->b(Landroid/database/Cursor;)V

    .line 113
    .line 114
    .line 115
    throw p0
.end method

.method public static t(Ljava/lang/String;)I
    .locals 2

    .line 1
    sget-boolean v0, Lx0/d;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-string v0, "/SAF"

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    return v1

    .line 18
    :cond_1
    const/4 v0, 0x3

    .line 19
    invoke-static {v0, p0}, Lru/zdevs/zarchiver/io/SAF;->k(ILjava/lang/String;)Landroid/net/Uri;

    .line 20
    .line 21
    .line 22
    return v1

    .line 23
    :cond_2
    :goto_0
    sget p0, Landroid/system/OsConstants;->EACCES:I

    .line 24
    .line 25
    neg-int p0, p0

    .line 26
    return p0
.end method

.method public static u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1
    sget-boolean v0, Lx0/d;->c:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    .line 8
    const/16 v2, 0x18

    .line 9
    .line 10
    if-lt v0, v2, :cond_1

    .line 11
    .line 12
    if-eqz p0, :cond_1

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    if-nez p2, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v2, "/"

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {v1, p1}, Lru/zdevs/zarchiver/io/SAF;->k(ILjava/lang/String;)Landroid/net/Uri;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {v1, p0}, Lru/zdevs/zarchiver/io/SAF;->k(ILjava/lang/String;)Landroid/net/Uri;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-static {v1, p2}, Lru/zdevs/zarchiver/io/SAF;->k(ILjava/lang/String;)Landroid/net/Uri;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-static {}, Lru/zdevs/zarchiver/ZApp;->a()Landroid/content/ContentResolver;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {v0, p1, p0, p2}, Landroid/provider/DocumentsContract;->moveDocument(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    if-eqz p0, :cond_1

    .line 60
    .line 61
    const/4 v1, 0x1

    .line 62
    :cond_1
    :goto_0
    return v1
.end method

.method public static v(Ljava/lang/String;Z)Ljava/io/OutputStream;
    .locals 11

    .line 1
    sget-boolean v0, Lx0/d;->c:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    invoke-static {p0}, Lru/zdevs/zarchiver/io/SAF;->o(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 12
    .line 13
    const/16 v3, 0x1e

    .line 14
    .line 15
    const/4 v4, 0x2

    .line 16
    if-lt v2, v3, :cond_4

    .line 17
    .line 18
    if-eqz v0, :cond_4

    .line 19
    .line 20
    invoke-static {v0}, Lx0/d;->j(Ljava/lang/String;)Lx0/d$a;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    invoke-static {}, Lx0/d;->m()Lx0/d$a;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :cond_1
    const-string v2, "Android/data/ru.zdevs.zarchiver/cache"

    .line 31
    .line 32
    invoke-static {v0, v2}, Lru/zdevs/zarchiver/io/SAF;->n(Lx0/d$a;Ljava/lang/String;)Lh0/h;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-nez v0, :cond_2

    .line 37
    .line 38
    return-object v1

    .line 39
    :cond_2
    iget-object v2, v0, Lh0/h;->c:Ljava/lang/String;

    .line 40
    .line 41
    const/4 v3, 0x3

    .line 42
    invoke-static {v3, v2}, Lru/zdevs/zarchiver/io/SAF;->k(ILjava/lang/String;)Landroid/net/Uri;

    .line 43
    .line 44
    .line 45
    move-result-object v8

    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    iget-object v0, v0, Lh0/h;->c:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const/16 v0, 0x2f

    .line 57
    .line 58
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-static {p0}, La0/c;->y(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-static {v4, v0}, Lru/zdevs/zarchiver/io/SAF;->k(ILjava/lang/String;)Landroid/net/Uri;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    invoke-static {}, Lru/zdevs/zarchiver/ZApp;->a()Landroid/content/ContentResolver;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v0, v7}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    if-eqz v6, :cond_3

    .line 85
    .line 86
    new-instance v0, Ln0/b;

    .line 87
    .line 88
    invoke-static {p0}, La0/c;->A(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v9

    .line 92
    move-object v5, v0

    .line 93
    move v10, p1

    .line 94
    invoke-direct/range {v5 .. v10}, Ln0/b;-><init>(Ljava/io/OutputStream;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Z)V

    .line 95
    .line 96
    .line 97
    return-object v0

    .line 98
    :cond_3
    return-object v1

    .line 99
    :cond_4
    invoke-static {v4, p0}, Lru/zdevs/zarchiver/io/SAF;->k(ILjava/lang/String;)Landroid/net/Uri;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    invoke-static {}, Lru/zdevs/zarchiver/ZApp;->a()Landroid/content/ContentResolver;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    return-object p0
.end method

.method public static w(Landroid/net/Uri;)Z
    .locals 1

    .line 1
    sget-boolean v0, Lx0/d;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-static {}, Lru/zdevs/zarchiver/ZApp;->a()Landroid/content/ContentResolver;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0, p0}, Landroid/provider/DocumentsContract;->deleteDocument(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0

    .line 17
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 18
    return p0
.end method

.method public static x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1
    sget-boolean v0, Lx0/d;->c:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_4

    .line 5
    .line 6
    if-eqz p0, :cond_4

    .line 7
    .line 8
    if-eqz p1, :cond_4

    .line 9
    .line 10
    if-nez p2, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-static {p0, p1}, La0/c;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {v1, p1}, Lru/zdevs/zarchiver/io/SAF;->k(ILjava/lang/String;)Landroid/net/Uri;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const/4 v0, 0x1

    .line 22
    :try_start_0
    invoke-static {}, Lru/zdevs/zarchiver/ZApp;->a()Landroid/content/ContentResolver;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-static {v2, p1, p2}, Landroid/provider/DocumentsContract;->renameDocument(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 27
    .line 28
    .line 29
    move-result-object p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    if-eqz p0, :cond_1

    .line 31
    .line 32
    const/4 v1, 0x1

    .line 33
    :cond_1
    return v1

    .line 34
    :catch_0
    move-exception p1

    .line 35
    const-string v1, "/SAF"

    .line 36
    .line 37
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    return v0

    .line 44
    :cond_2
    new-instance v1, Ljava/io/File;

    .line 45
    .line 46
    invoke-static {p0, p2}, La0/c;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    if-eqz p0, :cond_3

    .line 58
    .line 59
    return v0

    .line 60
    :cond_3
    throw p1

    .line 61
    :cond_4
    :goto_0
    return v1
.end method
