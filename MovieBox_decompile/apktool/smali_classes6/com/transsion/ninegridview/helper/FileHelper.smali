.class public final Lcom/transsion/ninegridview/helper/FileHelper;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/ninegridview/helper/FileHelper$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/transsion/ninegridview/helper/FileHelper;

.field private static final b:Ljava/lang/String;

.field private static final c:I

.field private static d:Lkotlinx/coroutines/t1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/ninegridview/helper/FileHelper;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/ninegridview/helper/FileHelper;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/ninegridview/helper/FileHelper;->a:Lcom/transsion/ninegridview/helper/FileHelper;

    .line 7
    .line 8
    sget-object v0, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    .line 9
    .line 10
    sput-object v0, Lcom/transsion/ninegridview/helper/FileHelper;->b:Ljava/lang/String;

    .line 11
    .line 12
    const/16 v0, 0x64

    .line 13
    .line 14
    sput v0, Lcom/transsion/ninegridview/helper/FileHelper;->c:I

    .line 15
    .line 16
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

.method public static synthetic a(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;Landroid/graphics/Bitmap;Lkotlin/jvm/functions/Function2;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/ninegridview/helper/FileHelper;->s(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;Landroid/graphics/Bitmap;Lkotlin/jvm/functions/Function2;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic b(Lcom/transsion/ninegridview/helper/FileHelper;Ljava/io/File;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/transsion/ninegridview/helper/FileHelper;->e(Ljava/io/File;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic c(Lcom/transsion/ninegridview/helper/FileHelper;Ljava/io/InputStream;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/transsion/ninegridview/helper/FileHelper;->u(Ljava/io/InputStream;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final d(Landroidx/appcompat/app/AppCompatActivity;Lkotlin/jvm/functions/Function0;)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 12
    .line 13
    invoke-static {p1, v0}, Landroidx/core/content/b;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 20
    .line 21
    invoke-static {p1, v0}, Landroidx/core/content/b;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-direct {p0, p1}, Lcom/transsion/ninegridview/helper/FileHelper;->q(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void
.end method

.method private final e(Ljava/io/File;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12

    .line 1
    move-object v0, p1

    .line 2
    move-object/from16 v1, p6

    .line 3
    .line 4
    instance-of v2, v1, Lcom/transsion/ninegridview/helper/FileHelper$copyToAlbum$1;

    .line 5
    .line 6
    if-eqz v2, :cond_0

    .line 7
    .line 8
    move-object v2, v1

    .line 9
    check-cast v2, Lcom/transsion/ninegridview/helper/FileHelper$copyToAlbum$1;

    .line 10
    .line 11
    iget v3, v2, Lcom/transsion/ninegridview/helper/FileHelper$copyToAlbum$1;->label:I

    .line 12
    .line 13
    const/high16 v4, -0x80000000

    .line 14
    .line 15
    and-int v5, v3, v4

    .line 16
    .line 17
    if-eqz v5, :cond_0

    .line 18
    .line 19
    sub-int/2addr v3, v4

    .line 20
    iput v3, v2, Lcom/transsion/ninegridview/helper/FileHelper$copyToAlbum$1;->label:I

    .line 21
    .line 22
    move-object v3, p0

    .line 23
    :goto_0
    move-object v10, v2

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    new-instance v2, Lcom/transsion/ninegridview/helper/FileHelper$copyToAlbum$1;

    .line 26
    .line 27
    move-object v3, p0

    .line 28
    invoke-direct {v2, p0, v1}, Lcom/transsion/ninegridview/helper/FileHelper$copyToAlbum$1;-><init>(Lcom/transsion/ninegridview/helper/FileHelper;Lkotlin/coroutines/Continuation;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :goto_1
    iget-object v1, v10, Lcom/transsion/ninegridview/helper/FileHelper$copyToAlbum$1;->result:Ljava/lang/Object;

    .line 33
    .line 34
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    iget v4, v10, Lcom/transsion/ninegridview/helper/FileHelper$copyToAlbum$1;->label:I

    .line 39
    .line 40
    const/4 v5, 0x1

    .line 41
    const/4 v11, 0x0

    .line 42
    if-eqz v4, :cond_2

    .line 43
    .line 44
    if-ne v4, v5, :cond_1

    .line 45
    .line 46
    iget-object v0, v10, Lcom/transsion/ninegridview/helper/FileHelper$copyToAlbum$1;->L$0:Ljava/lang/Object;

    .line 47
    .line 48
    move-object v2, v0

    .line 49
    check-cast v2, Ljava/io/Closeable;

    .line 50
    .line 51
    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .line 53
    .line 54
    goto :goto_3

    .line 55
    :catchall_0
    move-exception v0

    .line 56
    :goto_2
    move-object v1, v0

    .line 57
    goto :goto_4

    .line 58
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 59
    .line 60
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 61
    .line 62
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw v0

    .line 66
    :cond_2
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-eqz v1, :cond_5

    .line 74
    .line 75
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-nez v1, :cond_3

    .line 80
    .line 81
    goto :goto_5

    .line 82
    :cond_3
    new-instance v1, Ljava/io/FileInputStream;

    .line 83
    .line 84
    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 85
    .line 86
    .line 87
    :try_start_2
    sget-object v4, Lcom/transsion/ninegridview/helper/FileHelper;->a:Lcom/transsion/ninegridview/helper/FileHelper;

    .line 88
    .line 89
    iput-object v1, v10, Lcom/transsion/ninegridview/helper/FileHelper$copyToAlbum$1;->L$0:Ljava/lang/Object;

    .line 90
    .line 91
    iput v5, v10, Lcom/transsion/ninegridview/helper/FileHelper$copyToAlbum$1;->label:I

    .line 92
    .line 93
    move-object v5, v1

    .line 94
    move-object v6, p2

    .line 95
    move-object v7, p3

    .line 96
    move-object/from16 v8, p4

    .line 97
    .line 98
    move/from16 v9, p5

    .line 99
    .line 100
    invoke-direct/range {v4 .. v10}, Lcom/transsion/ninegridview/helper/FileHelper;->u(Ljava/io/InputStream;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 104
    if-ne v0, v2, :cond_4

    .line 105
    .line 106
    return-object v2

    .line 107
    :cond_4
    move-object v2, v1

    .line 108
    move-object v1, v0

    .line 109
    :goto_3
    :try_start_3
    check-cast v1, Landroid/net/Uri;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 110
    .line 111
    :try_start_4
    invoke-static {v2, v11}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 112
    .line 113
    .line 114
    return-object v1

    .line 115
    :catch_0
    move-exception v0

    .line 116
    goto :goto_6

    .line 117
    :catchall_1
    move-exception v0

    .line 118
    move-object v2, v1

    .line 119
    goto :goto_2

    .line 120
    :goto_4
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 121
    :catchall_2
    move-exception v0

    .line 122
    move-object v4, v0

    .line 123
    :try_start_6
    invoke-static {v2, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 124
    .line 125
    .line 126
    throw v4

    .line 127
    :cond_5
    :goto_5
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 128
    .line 129
    const-string v2, "FileHelper"

    .line 130
    .line 131
    new-instance v4, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .line 135
    .line 136
    const-string v5, "check: read file error: "

    .line 137
    .line 138
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    const/4 v4, 0x4

    .line 149
    const/4 v5, 0x0

    .line 150
    const/4 v6, 0x0

    .line 151
    move-object p1, v1

    .line 152
    move-object p2, v2

    .line 153
    move-object p3, v0

    .line 154
    move/from16 p4, v6

    .line 155
    .line 156
    move/from16 p5, v4

    .line 157
    .line 158
    move-object/from16 p6, v5

    .line 159
    .line 160
    invoke-static/range {p1 .. p6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 161
    .line 162
    .line 163
    return-object v11

    .line 164
    :goto_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 165
    .line 166
    .line 167
    return-object v11
.end method

.method public static synthetic g(Lcom/transsion/ninegridview/helper/FileHelper;Ljava/io/File;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 6

    .line 1
    and-int/lit8 p6, p6, 0x10

    .line 2
    .line 3
    if-eqz p6, :cond_0

    .line 4
    .line 5
    const/4 p5, 0x1

    .line 6
    :cond_0
    move v5, p5

    .line 7
    move-object v0, p0

    .line 8
    move-object v1, p1

    .line 9
    move-object v2, p2

    .line 10
    move-object v3, p3

    .line 11
    move-object v4, p4

    .line 12
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/ninegridview/helper/FileHelper;->f(Ljava/io/File;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private final h(Landroid/net/Uri;Landroid/content/Context;Landroid/content/ContentResolver;Ljava/io/File;)V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4
    .line 5
    .line 6
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    .line 8
    const/16 v2, 0x1d

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    if-ge v1, v2, :cond_1

    .line 12
    .line 13
    if-eqz p4, :cond_0

    .line 14
    .line 15
    invoke-virtual {p4}, Ljava/io/File;->length()J

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 20
    .line 21
    .line 22
    move-result-object p4

    .line 23
    const-string v1, "_size"

    .line 24
    .line 25
    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-virtual {p3, p1, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    new-instance p3, Landroid/content/Intent;

    .line 32
    .line 33
    const-string p4, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    .line 34
    .line 35
    invoke-direct {p3, p4, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2, p3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const/4 p2, 0x0

    .line 43
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    const-string p4, "is_pending"

    .line 48
    .line 49
    invoke-virtual {v0, p4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p3, p1, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    :goto_0
    return-void
.end method

.method private final i(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;
    .locals 4

    .line 1
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string v0, "toLowerCase(...)"

    .line 8
    .line 9
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v0, ".png"

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x2

    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    const-string v0, ".jpg"

    .line 27
    .line 28
    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_4

    .line 33
    .line 34
    const-string v0, ".jpeg"

    .line 35
    .line 36
    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const-string v0, ".webp"

    .line 44
    .line 45
    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-eqz p1, :cond_3

    .line 50
    .line 51
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 52
    .line 53
    const/16 v0, 0x1e

    .line 54
    .line 55
    if-lt p1, v0, :cond_2

    .line 56
    .line 57
    invoke-static {}, Lcom/cloud/tmc/integration/utils/compress/a;->a()Landroid/graphics/Bitmap$CompressFormat;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    goto :goto_1

    .line 62
    :cond_2
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_3
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_4
    :goto_0
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 69
    .line 70
    :goto_1
    return-object p1
.end method

.method private final k(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string v0, "toLowerCase(...)"

    .line 8
    .line 9
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v0, ".png"

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x2

    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    const-string v3, "image/png"

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    const-string v0, ".jpg"

    .line 27
    .line 28
    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_3

    .line 33
    .line 34
    const-string v0, ".jpeg"

    .line 35
    .line 36
    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const-string v0, ".webp"

    .line 44
    .line 45
    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    const-string v3, "image/webp"

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    const-string v0, ".gif"

    .line 55
    .line 56
    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-eqz p1, :cond_4

    .line 61
    .line 62
    const-string v3, "image/gif"

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_3
    :goto_0
    const-string v3, "image/jpeg"

    .line 66
    .line 67
    :cond_4
    :goto_1
    return-object v3
.end method

.method private final o(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/io/OutputStream;
    .locals 6

    .line 1
    :try_start_0
    invoke-virtual {p2, p1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    .line 2
    .line 3
    .line 4
    move-result-object p1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    goto :goto_0

    .line 6
    :catch_0
    move-exception p1

    .line 7
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 8
    .line 9
    new-instance p2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v1, "save: open stream error: "

    .line 15
    .line 16
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    const/4 v4, 0x4

    .line 27
    const/4 v5, 0x0

    .line 28
    const-string v1, "FileHelper"

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    const/4 p1, 0x0

    .line 35
    :goto_0
    return-object p1
.end method

.method private final p(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/net/Uri;
    .locals 11

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    return-object v2

    .line 9
    :cond_0
    new-instance v0, Ljava/io/File;

    .line 10
    .line 11
    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const-string v3, "query: path: "

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    sget-object v4, Lwf/a;->a:Lwf/a$a;

    .line 29
    .line 30
    new-instance p1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string p2, " exists"

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    const/4 v8, 0x4

    .line 51
    const/4 v9, 0x0

    .line 52
    const-string v5, "FileHelper"

    .line 53
    .line 54
    const/4 v7, 0x0

    .line 55
    invoke-static/range {v4 .. v9}, Lwf/a$a;->v(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    return-object p1

    .line 63
    :cond_1
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 64
    .line 65
    const-string v1, "_data"

    .line 66
    .line 67
    const-string v10, "_id"

    .line 68
    .line 69
    filled-new-array {v10, v1}, [Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    filled-new-array {p2}, [Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v8

    .line 77
    const/4 v9, 0x0

    .line 78
    const-string v7, "_data == ?"

    .line 79
    .line 80
    move-object v4, p1

    .line 81
    move-object v5, v0

    .line 82
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    if-eqz p1, :cond_3

    .line 87
    .line 88
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-eqz v1, :cond_2

    .line 93
    .line 94
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    .line 99
    .line 100
    .line 101
    move-result-wide v4

    .line 102
    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    const-string v1, "withAppendedId(...)"

    .line 107
    .line 108
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    sget-object v4, Lwf/a;->a:Lwf/a$a;

    .line 112
    .line 113
    const-string v5, "FileHelper"

    .line 114
    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string p2, " exists uri: "

    .line 127
    .line 128
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v6

    .line 138
    const/4 v8, 0x4

    .line 139
    const/4 v9, 0x0

    .line 140
    const/4 v7, 0x0

    .line 141
    invoke-static/range {v4 .. v9}, Lwf/a$a;->v(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    .line 143
    .line 144
    invoke-static {p1, v2}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 145
    .line 146
    .line 147
    return-object v0

    .line 148
    :catchall_0
    move-exception p2

    .line 149
    goto :goto_0

    .line 150
    :cond_2
    :try_start_1
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    .line 152
    invoke-static {p1, v2}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 153
    .line 154
    .line 155
    goto :goto_1

    .line 156
    :goto_0
    :try_start_2
    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 157
    :catchall_1
    move-exception v0

    .line 158
    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 159
    .line 160
    .line 161
    throw v0

    .line 162
    :cond_3
    :goto_1
    return-object v2
.end method

.method private final q(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 2

    .line 1
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 2
    .line 3
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget v1, Lcom/transsion/ninegridview/helper/FileHelper;->c:I

    .line 10
    .line 11
    invoke-static {p1, v0, v1}, Landroidx/core/app/ActivityCompat;->g(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private static final s(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;Landroid/graphics/Bitmap;Lkotlin/jvm/functions/Function2;)Lkotlin/Unit;
    .locals 11

    .line 1
    sget-object v0, Lcom/transsion/ninegridview/helper/FileHelper;->d:Lkotlinx/coroutines/t1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/t1$a;->b(Lkotlinx/coroutines/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-static {p0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    new-instance v0, Lcom/transsion/ninegridview/helper/FileHelper$saveBitmapToPicture$1$1;

    .line 19
    .line 20
    const/4 v10, 0x0

    .line 21
    move-object v5, v0

    .line 22
    move-object v6, p1

    .line 23
    move-object v7, p2

    .line 24
    move-object v8, p0

    .line 25
    move-object v9, p3

    .line 26
    invoke-direct/range {v5 .. v10}, Lcom/transsion/ninegridview/helper/FileHelper$saveBitmapToPicture$1$1;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;Landroidx/appcompat/app/AppCompatActivity;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    .line 27
    .line 28
    .line 29
    const/4 v7, 0x2

    .line 30
    const/4 v8, 0x0

    .line 31
    const/4 v5, 0x0

    .line 32
    move-object v6, v0

    .line 33
    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    sput-object p0, Lcom/transsion/ninegridview/helper/FileHelper;->d:Lkotlinx/coroutines/t1;

    .line 38
    .line 39
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 40
    .line 41
    return-object p0
.end method

.method private final u(Ljava/io/InputStream;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12

    .line 1
    move-object v1, p0

    .line 2
    move-object v2, p1

    .line 3
    move-object/from16 v0, p6

    .line 4
    .line 5
    instance-of v3, v0, Lcom/transsion/ninegridview/helper/FileHelper$saveToAlbum$1;

    .line 6
    .line 7
    if-eqz v3, :cond_0

    .line 8
    .line 9
    move-object v3, v0

    .line 10
    check-cast v3, Lcom/transsion/ninegridview/helper/FileHelper$saveToAlbum$1;

    .line 11
    .line 12
    iget v4, v3, Lcom/transsion/ninegridview/helper/FileHelper$saveToAlbum$1;->label:I

    .line 13
    .line 14
    const/high16 v5, -0x80000000

    .line 15
    .line 16
    and-int v6, v4, v5

    .line 17
    .line 18
    if-eqz v6, :cond_0

    .line 19
    .line 20
    sub-int/2addr v4, v5

    .line 21
    iput v4, v3, Lcom/transsion/ninegridview/helper/FileHelper$saveToAlbum$1;->label:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v3, Lcom/transsion/ninegridview/helper/FileHelper$saveToAlbum$1;

    .line 25
    .line 26
    invoke-direct {v3, p0, v0}, Lcom/transsion/ninegridview/helper/FileHelper$saveToAlbum$1;-><init>(Lcom/transsion/ninegridview/helper/FileHelper;Lkotlin/coroutines/Continuation;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v0, v3, Lcom/transsion/ninegridview/helper/FileHelper$saveToAlbum$1;->result:Ljava/lang/Object;

    .line 30
    .line 31
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    iget v5, v3, Lcom/transsion/ninegridview/helper/FileHelper$saveToAlbum$1;->label:I

    .line 36
    .line 37
    const/4 v6, 0x1

    .line 38
    const/4 v7, 0x0

    .line 39
    if-eqz v5, :cond_2

    .line 40
    .line 41
    if-ne v5, v6, :cond_1

    .line 42
    .line 43
    iget-object v2, v3, Lcom/transsion/ninegridview/helper/FileHelper$saveToAlbum$1;->L$2:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v2, Ljava/io/Closeable;

    .line 46
    .line 47
    iget-object v4, v3, Lcom/transsion/ninegridview/helper/FileHelper$saveToAlbum$1;->L$1:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v4, Ljava/io/Closeable;

    .line 50
    .line 51
    iget-object v3, v3, Lcom/transsion/ninegridview/helper/FileHelper$saveToAlbum$1;->L$0:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v3, Landroid/net/Uri;

    .line 54
    .line 55
    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .line 57
    .line 58
    goto/16 :goto_1

    .line 59
    .line 60
    :catchall_0
    move-exception v0

    .line 61
    move-object v3, v0

    .line 62
    goto/16 :goto_2

    .line 63
    .line 64
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 65
    .line 66
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 67
    .line 68
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw v0

    .line 72
    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    new-instance v5, Lcom/transsion/ninegridview/helper/FileHelper$a;

    .line 80
    .line 81
    invoke-direct {v5, v7, v6, v7}, Lcom/transsion/ninegridview/helper/FileHelper$a;-><init>(Ljava/io/File;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 82
    .line 83
    .line 84
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    move-object v8, p3

    .line 88
    move-object/from16 v9, p4

    .line 89
    .line 90
    invoke-virtual {p0, v0, p3, v9, v5}, Lcom/transsion/ninegridview/helper/FileHelper;->n(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ninegridview/helper/FileHelper$a;)Landroid/net/Uri;

    .line 91
    .line 92
    .line 93
    move-result-object v8

    .line 94
    if-nez v8, :cond_3

    .line 95
    .line 96
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 97
    .line 98
    const/4 v2, 0x4

    .line 99
    const/4 v3, 0x0

    .line 100
    const-string v4, "FileHelper"

    .line 101
    .line 102
    const-string v5, "insert: error: uri == null"

    .line 103
    .line 104
    const/4 v6, 0x0

    .line 105
    move-object p1, v0

    .line 106
    move-object p2, v4

    .line 107
    move-object p3, v5

    .line 108
    move/from16 p4, v6

    .line 109
    .line 110
    move/from16 p5, v2

    .line 111
    .line 112
    move-object/from16 p6, v3

    .line 113
    .line 114
    invoke-static/range {p1 .. p6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    return-object v7

    .line 118
    :cond_3
    invoke-direct {p0, v8, v0}, Lcom/transsion/ninegridview/helper/FileHelper;->o(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/io/OutputStream;

    .line 119
    .line 120
    .line 121
    move-result-object v9

    .line 122
    if-nez v9, :cond_4

    .line 123
    .line 124
    return-object v7

    .line 125
    :cond_4
    const/4 v10, 0x2

    .line 126
    const/4 v11, 0x0

    .line 127
    :try_start_1
    invoke-static {p1, v9, v11, v10, v7}, Lkotlin/io/ByteStreamsKt;->b(Ljava/io/InputStream;Ljava/io/OutputStream;IILjava/lang/Object;)J

    .line 128
    .line 129
    .line 130
    sget-object v10, Lcom/transsion/ninegridview/helper/FileHelper;->a:Lcom/transsion/ninegridview/helper/FileHelper;

    .line 131
    .line 132
    invoke-virtual {v5}, Lcom/transsion/ninegridview/helper/FileHelper$a;->a()Ljava/io/File;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    move-object v11, p2

    .line 137
    invoke-direct {v10, v8, p2, v0, v5}, Lcom/transsion/ninegridview/helper/FileHelper;->h(Landroid/net/Uri;Landroid/content/Context;Landroid/content/ContentResolver;Ljava/io/File;)V

    .line 138
    .line 139
    .line 140
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    new-instance v5, Lcom/transsion/ninegridview/helper/FileHelper$saveToAlbum$2$1$1;

    .line 145
    .line 146
    move/from16 v10, p5

    .line 147
    .line 148
    invoke-direct {v5, v10, v7}, Lcom/transsion/ninegridview/helper/FileHelper$saveToAlbum$2$1$1;-><init>(ZLkotlin/coroutines/Continuation;)V

    .line 149
    .line 150
    .line 151
    iput-object v8, v3, Lcom/transsion/ninegridview/helper/FileHelper$saveToAlbum$1;->L$0:Ljava/lang/Object;

    .line 152
    .line 153
    iput-object v9, v3, Lcom/transsion/ninegridview/helper/FileHelper$saveToAlbum$1;->L$1:Ljava/lang/Object;

    .line 154
    .line 155
    iput-object v2, v3, Lcom/transsion/ninegridview/helper/FileHelper$saveToAlbum$1;->L$2:Ljava/lang/Object;

    .line 156
    .line 157
    iput v6, v3, Lcom/transsion/ninegridview/helper/FileHelper$saveToAlbum$1;->label:I

    .line 158
    .line 159
    invoke-static {v0, v5, v3}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 163
    if-ne v0, v4, :cond_5

    .line 164
    .line 165
    return-object v4

    .line 166
    :cond_5
    move-object v3, v8

    .line 167
    move-object v4, v9

    .line 168
    :goto_1
    :try_start_2
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 169
    .line 170
    :try_start_3
    invoke-static {v2, v7}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 171
    .line 172
    .line 173
    invoke-static {v4, v7}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 174
    .line 175
    .line 176
    return-object v3

    .line 177
    :catchall_1
    move-exception v0

    .line 178
    move-object v2, v0

    .line 179
    goto :goto_3

    .line 180
    :catchall_2
    move-exception v0

    .line 181
    move-object v3, v0

    .line 182
    move-object v4, v9

    .line 183
    :goto_2
    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 184
    :catchall_3
    move-exception v0

    .line 185
    move-object v5, v0

    .line 186
    :try_start_5
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 187
    .line 188
    .line 189
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 190
    :goto_3
    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 191
    :catchall_4
    move-exception v0

    .line 192
    move-object v3, v0

    .line 193
    invoke-static {v4, v2}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 194
    .line 195
    .line 196
    throw v3
.end method

.method public static synthetic v(Lcom/transsion/ninegridview/helper/FileHelper;Landroid/graphics/Bitmap;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)Landroid/net/Uri;
    .locals 6

    .line 1
    and-int/lit8 p7, p6, 0x4

    .line 2
    .line 3
    if-eqz p7, :cond_0

    .line 4
    .line 5
    const-string p4, "MovieBox"

    .line 6
    .line 7
    :cond_0
    move-object v4, p4

    .line 8
    and-int/lit8 p4, p6, 0x8

    .line 9
    .line 10
    if-eqz p4, :cond_1

    .line 11
    .line 12
    const/16 p5, 0x4b

    .line 13
    .line 14
    :cond_1
    move v5, p5

    .line 15
    move-object v0, p0

    .line 16
    move-object v1, p1

    .line 17
    move-object v2, p2

    .line 18
    move-object v3, p3

    .line 19
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/ninegridview/helper/FileHelper;->t(Landroid/graphics/Bitmap;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method


# virtual methods
.method public final f(Ljava/io/File;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 10

    .line 1
    const-string v0, "file"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "context"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "fileName"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 17
    .line 18
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    new-instance v0, Lcom/transsion/ninegridview/helper/FileHelper$copyToAlbumAsync$1$1;

    .line 27
    .line 28
    const/4 v9, 0x0

    .line 29
    move-object v2, v0

    .line 30
    move-object v3, p0

    .line 31
    move-object v4, p1

    .line 32
    move-object v5, p2

    .line 33
    move-object v6, p3

    .line 34
    move-object v7, p4

    .line 35
    move v8, p5

    .line 36
    invoke-direct/range {v2 .. v9}, Lcom/transsion/ninegridview/helper/FileHelper$copyToAlbumAsync$1$1;-><init>(Lcom/transsion/ninegridview/helper/FileHelper;Ljava/io/File;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)V

    .line 37
    .line 38
    .line 39
    const/4 v5, 0x3

    .line 40
    const/4 v6, 0x0

    .line 41
    const/4 v2, 0x0

    .line 42
    const/4 v3, 0x0

    .line 43
    move-object v4, v0

    .line 44
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception p1

    .line 53
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 54
    .line 55
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    :goto_0
    return-void
.end method

.method public final j(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    const-string v0, ".jpg"

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1

    .line 25
    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 34
    .line 35
    new-instance v2, Lkotlin/text/Regex;

    .line 36
    .line 37
    const-string v3, "[?]"

    .line 38
    .line 39
    invoke-direct {v2, v3}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const/4 v3, 0x0

    .line 43
    invoke-virtual {v2, p1, v3}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    const/4 v4, 0x1

    .line 52
    if-nez v2, :cond_2

    .line 53
    .line 54
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    invoke-interface {p1, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    :goto_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    if-eqz v5, :cond_2

    .line 67
    .line 68
    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    check-cast v5, Ljava/lang/String;

    .line 73
    .line 74
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    if-nez v5, :cond_1

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_1
    check-cast p1, Ljava/lang/Iterable;

    .line 82
    .line 83
    invoke-interface {v2}, Ljava/util/ListIterator;->nextIndex()I

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    add-int/2addr v2, v4

    .line 88
    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->K0(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    goto :goto_1

    .line 93
    :cond_2
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    :goto_1
    check-cast p1, Ljava/util/Collection;

    .line 98
    .line 99
    new-array v2, v3, [Ljava/lang/String;

    .line 100
    .line 101
    invoke-interface {p1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    check-cast p1, [Ljava/lang/String;

    .line 106
    .line 107
    array-length v2, p1

    .line 108
    if-nez v2, :cond_3

    .line 109
    .line 110
    move v2, v4

    .line 111
    goto :goto_2

    .line 112
    :cond_3
    move v2, v3

    .line 113
    :goto_2
    if-nez v2, :cond_7

    .line 114
    .line 115
    aget-object p1, p1, v3

    .line 116
    .line 117
    new-instance v2, Lkotlin/text/Regex;

    .line 118
    .line 119
    const-string v5, "/"

    .line 120
    .line 121
    invoke-direct {v2, v5}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v2, p1, v3}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    if-nez v2, :cond_5

    .line 133
    .line 134
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    invoke-interface {p1, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    :goto_3
    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 143
    .line 144
    .line 145
    move-result v5

    .line 146
    if-eqz v5, :cond_5

    .line 147
    .line 148
    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v5

    .line 152
    check-cast v5, Ljava/lang/String;

    .line 153
    .line 154
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 155
    .line 156
    .line 157
    move-result v5

    .line 158
    if-nez v5, :cond_4

    .line 159
    .line 160
    goto :goto_3

    .line 161
    :cond_4
    check-cast p1, Ljava/lang/Iterable;

    .line 162
    .line 163
    invoke-interface {v2}, Ljava/util/ListIterator;->nextIndex()I

    .line 164
    .line 165
    .line 166
    move-result v2

    .line 167
    add-int/2addr v2, v4

    .line 168
    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->K0(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    goto :goto_4

    .line 173
    :cond_5
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    :goto_4
    check-cast p1, Ljava/util/Collection;

    .line 178
    .line 179
    new-array v2, v3, [Ljava/lang/String;

    .line 180
    .line 181
    invoke-interface {p1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    check-cast p1, [Ljava/lang/String;

    .line 186
    .line 187
    array-length v2, p1

    .line 188
    if-nez v2, :cond_6

    .line 189
    .line 190
    move v3, v4

    .line 191
    :cond_6
    if-nez v3, :cond_7

    .line 192
    .line 193
    array-length v0, p1

    .line 194
    sub-int/2addr v0, v4

    .line 195
    aget-object p1, p1, v0

    .line 196
    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    .line 198
    .line 199
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    const-string v1, "_"

    .line 206
    .line 207
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    return-object p1

    .line 218
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 219
    .line 220
    .line 221
    move-result-wide v1

    .line 222
    new-instance p1, Ljava/lang/StringBuilder;

    .line 223
    .line 224
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    .line 226
    .line 227
    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    return-object p1
.end method

.method public final l()I
    .locals 1

    .line 1
    sget v0, Lcom/transsion/ninegridview/helper/FileHelper;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public final m(Ljava/lang/String;)Ljava/io/File;
    .locals 5

    .line 1
    const-string v0, "fileName"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Ljava/io/File;

    .line 13
    .line 14
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    .line 15
    .line 16
    new-instance v3, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v4, "MovieBox"

    .line 22
    .line 23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-object v1
.end method

.method public final n(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ninegridview/helper/FileHelper$a;)Landroid/net/Uri;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    move-object/from16 v4, p4

    .line 10
    .line 11
    const-string v5, "<this>"

    .line 12
    .line 13
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v5, "fileName"

    .line 17
    .line 18
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance v5, Landroid/content/ContentValues;

    .line 22
    .line 23
    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 24
    .line 25
    .line 26
    sget-object v6, Lcom/transsion/ninegridview/helper/FileHelper;->a:Lcom/transsion/ninegridview/helper/FileHelper;

    .line 27
    .line 28
    invoke-direct {v6, v2}, Lcom/transsion/ninegridview/helper/FileHelper;->k(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    if-eqz v6, :cond_0

    .line 33
    .line 34
    const-string v7, "mime_type"

    .line 35
    .line 36
    invoke-virtual {v5, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 40
    .line 41
    .line 42
    move-result-wide v6

    .line 43
    const/16 v8, 0x3e8

    .line 44
    .line 45
    int-to-long v8, v8

    .line 46
    div-long/2addr v6, v8

    .line 47
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 48
    .line 49
    .line 50
    move-result-object v8

    .line 51
    const-string v9, "date_added"

    .line 52
    .line 53
    invoke-virtual {v5, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 54
    .line 55
    .line 56
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    const-string v7, "date_modified"

    .line 61
    .line 62
    invoke-virtual {v5, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 63
    .line 64
    .line 65
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 66
    .line 67
    const/16 v7, 0x1d

    .line 68
    .line 69
    const/4 v8, 0x0

    .line 70
    const-string v9, "_display_name"

    .line 71
    .line 72
    const/4 v10, 0x1

    .line 73
    if-lt v6, v7, :cond_2

    .line 74
    .line 75
    if-eqz v3, :cond_1

    .line 76
    .line 77
    sget-object v4, Lcom/transsion/ninegridview/helper/FileHelper;->b:Ljava/lang/String;

    .line 78
    .line 79
    new-instance v6, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v4, "/"

    .line 88
    .line 89
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    goto :goto_0

    .line 100
    :cond_1
    sget-object v3, Lcom/transsion/ninegridview/helper/FileHelper;->b:Ljava/lang/String;

    .line 101
    .line 102
    :goto_0
    invoke-virtual {v5, v9, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    const-string v2, "relative_path"

    .line 106
    .line 107
    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    const-string v3, "is_pending"

    .line 115
    .line 116
    invoke-virtual {v5, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 117
    .line 118
    .line 119
    const-string v2, "external_primary"

    .line 120
    .line 121
    invoke-static {v2}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    const-string v3, "getContentUri(...)"

    .line 126
    .line 127
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    goto/16 :goto_2

    .line 131
    .line 132
    :cond_2
    sget-object v6, Lcom/transsion/ninegridview/helper/FileHelper;->b:Ljava/lang/String;

    .line 133
    .line 134
    invoke-static {v6}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    .line 135
    .line 136
    .line 137
    move-result-object v6

    .line 138
    if-eqz v3, :cond_3

    .line 139
    .line 140
    new-instance v7, Ljava/io/File;

    .line 141
    .line 142
    invoke-direct {v7, v6, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    move-object v6, v7

    .line 146
    :cond_3
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    .line 147
    .line 148
    .line 149
    move-result v3

    .line 150
    if-nez v3, :cond_4

    .line 151
    .line 152
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 153
    .line 154
    .line 155
    move-result v3

    .line 156
    if-nez v3, :cond_4

    .line 157
    .line 158
    sget-object v11, Lwf/a;->a:Lwf/a$a;

    .line 159
    .line 160
    const/4 v15, 0x4

    .line 161
    const/16 v16, 0x0

    .line 162
    .line 163
    const-string v12, "FileHelper"

    .line 164
    .line 165
    const-string v13, "save: error: can\'t create Pictures directory"

    .line 166
    .line 167
    const/4 v14, 0x0

    .line 168
    invoke-static/range {v11 .. v16}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    return-object v8

    .line 172
    :cond_4
    new-instance v3, Ljava/io/File;

    .line 173
    .line 174
    invoke-direct {v3, v6, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    invoke-static {v3}, Lkotlin/io/FilesKt;->x(Ljava/io/File;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    invoke-static {v3}, Lkotlin/io/FilesKt;->w(Ljava/io/File;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v7

    .line 185
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v11

    .line 189
    const-string v12, "getAbsolutePath(...)"

    .line 190
    .line 191
    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    invoke-direct {v0, v1, v11}, Lcom/transsion/ninegridview/helper/FileHelper;->p(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/net/Uri;

    .line 195
    .line 196
    .line 197
    move-result-object v11

    .line 198
    :goto_1
    if-eqz v11, :cond_5

    .line 199
    .line 200
    add-int/lit8 v3, v10, 0x1

    .line 201
    .line 202
    new-instance v11, Ljava/lang/StringBuilder;

    .line 203
    .line 204
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    const-string v13, "("

    .line 211
    .line 212
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    const-string v10, ")."

    .line 219
    .line 220
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v10

    .line 230
    new-instance v11, Ljava/io/File;

    .line 231
    .line 232
    invoke-direct {v11, v6, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v10

    .line 239
    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    invoke-direct {v0, v1, v10}, Lcom/transsion/ninegridview/helper/FileHelper;->p(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/net/Uri;

    .line 243
    .line 244
    .line 245
    move-result-object v10

    .line 246
    move-object/from16 v17, v10

    .line 247
    .line 248
    move v10, v3

    .line 249
    move-object v3, v11

    .line 250
    move-object/from16 v11, v17

    .line 251
    .line 252
    goto :goto_1

    .line 253
    :cond_5
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v2

    .line 257
    invoke-virtual {v5, v9, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v2

    .line 264
    sget-object v9, Lwf/a;->a:Lwf/a$a;

    .line 265
    .line 266
    new-instance v6, Ljava/lang/StringBuilder;

    .line 267
    .line 268
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 269
    .line 270
    .line 271
    const-string v7, "save file: "

    .line 272
    .line 273
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v11

    .line 283
    const/4 v13, 0x4

    .line 284
    const/4 v14, 0x0

    .line 285
    const-string v10, "FileHelper"

    .line 286
    .line 287
    const/4 v12, 0x0

    .line 288
    invoke-static/range {v9 .. v14}, Lwf/a$a;->v(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 289
    .line 290
    .line 291
    const-string v6, "_data"

    .line 292
    .line 293
    invoke-virtual {v5, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    if-eqz v4, :cond_6

    .line 297
    .line 298
    invoke-virtual {v4, v3}, Lcom/transsion/ninegridview/helper/FileHelper$a;->b(Ljava/io/File;)V

    .line 299
    .line 300
    .line 301
    :cond_6
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 302
    .line 303
    const-string v3, "EXTERNAL_CONTENT_URI"

    .line 304
    .line 305
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    :goto_2
    :try_start_0
    invoke-virtual {v1, v2, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 309
    .line 310
    .line 311
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    return-object v1

    .line 313
    :catchall_0
    return-object v8
.end method

.method public final r(Landroidx/appcompat/app/AppCompatActivity;Landroid/graphics/Bitmap;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V
    .locals 1

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "fileName"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    if-nez p2, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance v0, Lcom/transsion/ninegridview/helper/a;

    .line 15
    .line 16
    invoke-direct {v0, p1, p3, p2, p4}, Lcom/transsion/ninegridview/helper/a;-><init>(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;Landroid/graphics/Bitmap;Lkotlin/jvm/functions/Function2;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, p1, v0}, Lcom/transsion/ninegridview/helper/FileHelper;->d(Landroidx/appcompat/app/AppCompatActivity;Lkotlin/jvm/functions/Function0;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final t(Landroid/graphics/Bitmap;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;
    .locals 10

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "context"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "fileName"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "relativePath"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    new-instance v1, Lcom/transsion/ninegridview/helper/FileHelper$a;

    .line 26
    .line 27
    const/4 v2, 0x1

    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-direct {v1, v3, v2, v3}, Lcom/transsion/ninegridview/helper/FileHelper$a;-><init>(Ljava/io/File;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 30
    .line 31
    .line 32
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v0, p3, p4, v1}, Lcom/transsion/ninegridview/helper/FileHelper;->n(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ninegridview/helper/FileHelper$a;)Landroid/net/Uri;

    .line 36
    .line 37
    .line 38
    move-result-object p4

    .line 39
    if-nez p4, :cond_0

    .line 40
    .line 41
    sget-object v4, Lwf/a;->a:Lwf/a$a;

    .line 42
    .line 43
    const/4 v8, 0x4

    .line 44
    const/4 v9, 0x0

    .line 45
    const-string v5, "FileHelper"

    .line 46
    .line 47
    const-string v6, "insert: error: uri == null"

    .line 48
    .line 49
    const/4 v7, 0x0

    .line 50
    invoke-static/range {v4 .. v9}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    return-object v3

    .line 54
    :cond_0
    invoke-direct {p0, p4, v0}, Lcom/transsion/ninegridview/helper/FileHelper;->o(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/io/OutputStream;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    if-nez v2, :cond_1

    .line 59
    .line 60
    return-object v3

    .line 61
    :cond_1
    :try_start_0
    sget-object v4, Lcom/transsion/ninegridview/helper/FileHelper;->a:Lcom/transsion/ninegridview/helper/FileHelper;

    .line 62
    .line 63
    invoke-direct {v4, p3}, Lcom/transsion/ninegridview/helper/FileHelper;->i(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    .line 64
    .line 65
    .line 66
    move-result-object p3

    .line 67
    invoke-virtual {p1, p3, p5, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, Lcom/transsion/ninegridview/helper/FileHelper$a;->a()Ljava/io/File;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-direct {v4, p4, p2, v0, p1}, Lcom/transsion/ninegridview/helper/FileHelper;->h(Landroid/net/Uri;Landroid/content/Context;Landroid/content/ContentResolver;Ljava/io/File;)V

    .line 75
    .line 76
    .line 77
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    .line 79
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 80
    .line 81
    .line 82
    return-object p4

    .line 83
    :catchall_0
    move-exception p1

    .line 84
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 85
    :catchall_1
    move-exception p2

    .line 86
    invoke-static {v2, p1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 87
    .line 88
    .line 89
    throw p2
.end method
