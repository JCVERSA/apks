.class public final Landroidx/palette/graphics/a$b;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/palette/graphics/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/util/List;

.field private final b:Landroid/graphics/Bitmap;

.field private final c:Ljava/util/List;

.field private d:I

.field private e:I

.field private f:I

.field private final g:Ljava/util/List;

.field private h:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/palette/graphics/a$b;->c:Ljava/util/List;

    .line 10
    .line 11
    const/16 v1, 0x10

    .line 12
    .line 13
    iput v1, p0, Landroidx/palette/graphics/a$b;->d:I

    .line 14
    .line 15
    const/16 v1, 0x3100

    .line 16
    .line 17
    iput v1, p0, Landroidx/palette/graphics/a$b;->e:I

    .line 18
    .line 19
    const/4 v1, -0x1

    .line 20
    iput v1, p0, Landroidx/palette/graphics/a$b;->f:I

    .line 21
    .line 22
    new-instance v1, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Landroidx/palette/graphics/a$b;->g:Ljava/util/List;

    .line 28
    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-nez v2, :cond_0

    .line 36
    .line 37
    sget-object v2, Landroidx/palette/graphics/a;->f:Landroidx/palette/graphics/a$c;

    .line 38
    .line 39
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Landroidx/palette/graphics/a$b;->b:Landroid/graphics/Bitmap;

    .line 43
    .line 44
    const/4 p1, 0x0

    .line 45
    iput-object p1, p0, Landroidx/palette/graphics/a$b;->a:Ljava/util/List;

    .line 46
    .line 47
    sget-object p1, Landroidx/palette/graphics/b;->e:Landroidx/palette/graphics/b;

    .line 48
    .line 49
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    sget-object p1, Landroidx/palette/graphics/b;->f:Landroidx/palette/graphics/b;

    .line 53
    .line 54
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    sget-object p1, Landroidx/palette/graphics/b;->g:Landroidx/palette/graphics/b;

    .line 58
    .line 59
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    sget-object p1, Landroidx/palette/graphics/b;->h:Landroidx/palette/graphics/b;

    .line 63
    .line 64
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    sget-object p1, Landroidx/palette/graphics/b;->i:Landroidx/palette/graphics/b;

    .line 68
    .line 69
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    sget-object p1, Landroidx/palette/graphics/b;->j:Landroidx/palette/graphics/b;

    .line 73
    .line 74
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 79
    .line 80
    const-string v0, "Bitmap is not valid"

    .line 81
    .line 82
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    throw p1
.end method

.method private d(Landroid/graphics/Bitmap;)[I
    .locals 10

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v8

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 6
    .line 7
    .line 8
    move-result v7

    .line 9
    mul-int v0, v8, v7

    .line 10
    .line 11
    new-array v9, v0, [I

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    const/4 v5, 0x0

    .line 15
    const/4 v2, 0x0

    .line 16
    move-object v0, p1

    .line 17
    move-object v1, v9

    .line 18
    move v3, v8

    .line 19
    move v6, v8

    .line 20
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Landroidx/palette/graphics/a$b;->h:Landroid/graphics/Rect;

    .line 24
    .line 25
    if-nez p1, :cond_0

    .line 26
    .line 27
    return-object v9

    .line 28
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    iget-object v0, p0, Landroidx/palette/graphics/a$b;->h:Landroid/graphics/Rect;

    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    mul-int v1, p1, v0

    .line 39
    .line 40
    new-array v1, v1, [I

    .line 41
    .line 42
    const/4 v2, 0x0

    .line 43
    :goto_0
    if-ge v2, v0, :cond_1

    .line 44
    .line 45
    iget-object v3, p0, Landroidx/palette/graphics/a$b;->h:Landroid/graphics/Rect;

    .line 46
    .line 47
    iget v4, v3, Landroid/graphics/Rect;->top:I

    .line 48
    .line 49
    add-int/2addr v4, v2

    .line 50
    mul-int/2addr v4, v8

    .line 51
    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 52
    .line 53
    add-int/2addr v4, v3

    .line 54
    mul-int v3, v2, p1

    .line 55
    .line 56
    invoke-static {v9, v4, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    .line 58
    .line 59
    add-int/lit8 v2, v2, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    return-object v1
.end method

.method private e(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5

    .line 1
    iget v0, p0, Landroidx/palette/graphics/a$b;->e:I

    .line 2
    .line 3
    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    .line 4
    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    mul-int/2addr v0, v3

    .line 16
    iget v3, p0, Landroidx/palette/graphics/a$b;->e:I

    .line 17
    .line 18
    if-le v0, v3, :cond_1

    .line 19
    .line 20
    int-to-double v1, v3

    .line 21
    int-to-double v3, v0

    .line 22
    div-double/2addr v1, v3

    .line 23
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    .line 24
    .line 25
    .line 26
    move-result-wide v1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget v0, p0, Landroidx/palette/graphics/a$b;->f:I

    .line 29
    .line 30
    if-lez v0, :cond_1

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    iget v3, p0, Landroidx/palette/graphics/a$b;->f:I

    .line 45
    .line 46
    if-le v0, v3, :cond_1

    .line 47
    .line 48
    int-to-double v1, v3

    .line 49
    int-to-double v3, v0

    .line 50
    div-double/2addr v1, v3

    .line 51
    :cond_1
    :goto_0
    const-wide/16 v3, 0x0

    .line 52
    .line 53
    cmpg-double v0, v1, v3

    .line 54
    .line 55
    if-gtz v0, :cond_2

    .line 56
    .line 57
    return-object p1

    .line 58
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    int-to-double v3, v0

    .line 63
    mul-double/2addr v3, v1

    .line 64
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    .line 65
    .line 66
    .line 67
    move-result-wide v3

    .line 68
    double-to-int v0, v3

    .line 69
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    int-to-double v3, v3

    .line 74
    mul-double/2addr v3, v1

    .line 75
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    .line 76
    .line 77
    .line 78
    move-result-wide v1

    .line 79
    double-to-int v1, v1

    .line 80
    const/4 v2, 0x0

    .line 81
    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    return-object p1
.end method


# virtual methods
.method public a()Landroidx/palette/graphics/a$b;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/palette/graphics/a$b;->g:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public b(Landroidx/palette/graphics/a$d;)Landroid/os/AsyncTask;
    .locals 4

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    new-instance v0, Landroidx/palette/graphics/a$b$a;

    .line 4
    .line 5
    invoke-direct {v0, p0, p1}, Landroidx/palette/graphics/a$b$a;-><init>(Landroidx/palette/graphics/a$b;Landroidx/palette/graphics/a$d;)V

    .line 6
    .line 7
    .line 8
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/palette/graphics/a$b;->b:Landroid/graphics/Bitmap;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    new-array v2, v2, [Landroid/graphics/Bitmap;

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    aput-object v1, v2, v3

    .line 17
    .line 18
    invoke-virtual {v0, p1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1

    .line 23
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 24
    .line 25
    const-string v0, "listener can not be null"

    .line 26
    .line 27
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p1
.end method

.method public c()Landroidx/palette/graphics/a;
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/palette/graphics/a$b;->b:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    invoke-direct {p0, v0}, Landroidx/palette/graphics/a$b;->e(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Landroidx/palette/graphics/a$b;->h:Landroid/graphics/Rect;

    .line 10
    .line 11
    iget-object v2, p0, Landroidx/palette/graphics/a$b;->b:Landroid/graphics/Bitmap;

    .line 12
    .line 13
    if-eq v0, v2, :cond_0

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    int-to-double v2, v2

    .line 22
    iget-object v4, p0, Landroidx/palette/graphics/a$b;->b:Landroid/graphics/Bitmap;

    .line 23
    .line 24
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    int-to-double v4, v4

    .line 29
    div-double/2addr v2, v4

    .line 30
    iget v4, v1, Landroid/graphics/Rect;->left:I

    .line 31
    .line 32
    int-to-double v4, v4

    .line 33
    mul-double/2addr v4, v2

    .line 34
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    .line 35
    .line 36
    .line 37
    move-result-wide v4

    .line 38
    double-to-int v4, v4

    .line 39
    iput v4, v1, Landroid/graphics/Rect;->left:I

    .line 40
    .line 41
    iget v4, v1, Landroid/graphics/Rect;->top:I

    .line 42
    .line 43
    int-to-double v4, v4

    .line 44
    mul-double/2addr v4, v2

    .line 45
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    .line 46
    .line 47
    .line 48
    move-result-wide v4

    .line 49
    double-to-int v4, v4

    .line 50
    iput v4, v1, Landroid/graphics/Rect;->top:I

    .line 51
    .line 52
    iget v4, v1, Landroid/graphics/Rect;->right:I

    .line 53
    .line 54
    int-to-double v4, v4

    .line 55
    mul-double/2addr v4, v2

    .line 56
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    .line 57
    .line 58
    .line 59
    move-result-wide v4

    .line 60
    double-to-int v4, v4

    .line 61
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    iput v4, v1, Landroid/graphics/Rect;->right:I

    .line 70
    .line 71
    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    .line 72
    .line 73
    int-to-double v4, v4

    .line 74
    mul-double/2addr v4, v2

    .line 75
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    .line 76
    .line 77
    .line 78
    move-result-wide v2

    .line 79
    double-to-int v2, v2

    .line 80
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 89
    .line 90
    :cond_0
    new-instance v1, Landroidx/palette/graphics/ColorCutQuantizer;

    .line 91
    .line 92
    invoke-direct {p0, v0}, Landroidx/palette/graphics/a$b;->d(Landroid/graphics/Bitmap;)[I

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    iget v3, p0, Landroidx/palette/graphics/a$b;->d:I

    .line 97
    .line 98
    iget-object v4, p0, Landroidx/palette/graphics/a$b;->g:Ljava/util/List;

    .line 99
    .line 100
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    if-eqz v4, :cond_1

    .line 105
    .line 106
    const/4 v4, 0x0

    .line 107
    goto :goto_0

    .line 108
    :cond_1
    iget-object v4, p0, Landroidx/palette/graphics/a$b;->g:Ljava/util/List;

    .line 109
    .line 110
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 111
    .line 112
    .line 113
    move-result v5

    .line 114
    new-array v5, v5, [Landroidx/palette/graphics/a$c;

    .line 115
    .line 116
    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    check-cast v4, [Landroidx/palette/graphics/a$c;

    .line 121
    .line 122
    :goto_0
    invoke-direct {v1, v2, v3, v4}, Landroidx/palette/graphics/ColorCutQuantizer;-><init>([II[Landroidx/palette/graphics/a$c;)V

    .line 123
    .line 124
    .line 125
    iget-object v2, p0, Landroidx/palette/graphics/a$b;->b:Landroid/graphics/Bitmap;

    .line 126
    .line 127
    if-eq v0, v2, :cond_2

    .line 128
    .line 129
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 130
    .line 131
    .line 132
    :cond_2
    invoke-virtual {v1}, Landroidx/palette/graphics/ColorCutQuantizer;->d()Ljava/util/List;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    goto :goto_1

    .line 137
    :cond_3
    iget-object v0, p0, Landroidx/palette/graphics/a$b;->a:Ljava/util/List;

    .line 138
    .line 139
    if-eqz v0, :cond_4

    .line 140
    .line 141
    :goto_1
    new-instance v1, Landroidx/palette/graphics/a;

    .line 142
    .line 143
    iget-object v2, p0, Landroidx/palette/graphics/a$b;->c:Ljava/util/List;

    .line 144
    .line 145
    invoke-direct {v1, v0, v2}, Landroidx/palette/graphics/a;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1}, Landroidx/palette/graphics/a;->c()V

    .line 149
    .line 150
    .line 151
    return-object v1

    .line 152
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    .line 153
    .line 154
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .line 155
    .line 156
    .line 157
    throw v0
.end method
