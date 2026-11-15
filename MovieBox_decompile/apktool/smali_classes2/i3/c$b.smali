.class final Li3/c$b;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li3/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# static fields
.field private static final A:[I

.field private static final B:[Z

.field private static final C:[I

.field private static final D:[I

.field private static final E:[I

.field private static final F:[I

.field public static final v:I

.field public static final w:I

.field public static final x:I

.field private static final y:[I

.field private static final z:[I


# instance fields
.field private final a:Ljava/util/List;

.field private final b:Landroid/text/SpannableStringBuilder;

.field private c:Z

.field private d:Z

.field private e:I

.field private f:Z

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-static {v0, v0, v0, v1}, Li3/c$b;->h(IIII)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sput v0, Li3/c$b;->v:I

    .line 8
    .line 9
    invoke-static {v1, v1, v1, v1}, Li3/c$b;->h(IIII)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    sput v0, Li3/c$b;->w:I

    .line 14
    .line 15
    const/4 v2, 0x3

    .line 16
    invoke-static {v1, v1, v1, v2}, Li3/c$b;->h(IIII)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    sput v1, Li3/c$b;->x:I

    .line 21
    .line 22
    const/4 v9, 0x7

    .line 23
    new-array v2, v9, [I

    .line 24
    .line 25
    fill-array-data v2, :array_0

    .line 26
    .line 27
    .line 28
    sput-object v2, Li3/c$b;->y:[I

    .line 29
    .line 30
    new-array v2, v9, [I

    .line 31
    .line 32
    fill-array-data v2, :array_1

    .line 33
    .line 34
    .line 35
    sput-object v2, Li3/c$b;->z:[I

    .line 36
    .line 37
    new-array v2, v9, [I

    .line 38
    .line 39
    fill-array-data v2, :array_2

    .line 40
    .line 41
    .line 42
    sput-object v2, Li3/c$b;->A:[I

    .line 43
    .line 44
    new-array v2, v9, [Z

    .line 45
    .line 46
    fill-array-data v2, :array_3

    .line 47
    .line 48
    .line 49
    sput-object v2, Li3/c$b;->B:[Z

    .line 50
    .line 51
    move v2, v0

    .line 52
    move v3, v1

    .line 53
    move v4, v0

    .line 54
    move v5, v0

    .line 55
    move v6, v1

    .line 56
    move v7, v0

    .line 57
    move v8, v0

    .line 58
    filled-new-array/range {v2 .. v8}, [I

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    sput-object v2, Li3/c$b;->C:[I

    .line 63
    .line 64
    new-array v2, v9, [I

    .line 65
    .line 66
    fill-array-data v2, :array_4

    .line 67
    .line 68
    .line 69
    sput-object v2, Li3/c$b;->D:[I

    .line 70
    .line 71
    new-array v2, v9, [I

    .line 72
    .line 73
    fill-array-data v2, :array_5

    .line 74
    .line 75
    .line 76
    sput-object v2, Li3/c$b;->E:[I

    .line 77
    .line 78
    move v2, v0

    .line 79
    move v3, v0

    .line 80
    move v6, v0

    .line 81
    move v7, v1

    .line 82
    move v8, v1

    .line 83
    filled-new-array/range {v2 .. v8}, [I

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    sput-object v0, Li3/c$b;->F:[I

    .line 88
    .line 89
    return-void

    .line 90
    nop

    .line 91
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
        0x0
    .end array-data

    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
    .end array-data

    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    :array_2
    .array-data 4
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x1
    .end array-data

    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    :array_3
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
    .end array-data

    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    :array_4
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x3
        0x4
    .end array-data

    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    :array_5
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3
        0x3
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

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
    iput-object v0, p0, Li3/c$b;->a:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Li3/c$b;->b:Landroid/text/SpannableStringBuilder;

    .line 17
    .line 18
    invoke-virtual {p0}, Li3/c$b;->l()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public static g(III)I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, p2, v0}, Li3/c$b;->h(IIII)I

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    return p0
.end method

.method public static h(IIII)I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x4

    .line 3
    invoke-static {p0, v0, v1}, Landroidx/media3/common/util/a;->c(III)I

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0, v1}, Landroidx/media3/common/util/a;->c(III)I

    .line 7
    .line 8
    .line 9
    invoke-static {p2, v0, v1}, Landroidx/media3/common/util/a;->c(III)I

    .line 10
    .line 11
    .line 12
    invoke-static {p3, v0, v1}, Landroidx/media3/common/util/a;->c(III)I

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const/16 v2, 0xff

    .line 17
    .line 18
    if-eqz p3, :cond_0

    .line 19
    .line 20
    if-eq p3, v1, :cond_0

    .line 21
    .line 22
    const/4 v3, 0x2

    .line 23
    if-eq p3, v3, :cond_2

    .line 24
    .line 25
    const/4 v3, 0x3

    .line 26
    if-eq p3, v3, :cond_1

    .line 27
    .line 28
    :cond_0
    move p3, v2

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    move p3, v0

    .line 31
    goto :goto_0

    .line 32
    :cond_2
    const/16 p3, 0x7f

    .line 33
    .line 34
    :goto_0
    if-le p0, v1, :cond_3

    .line 35
    .line 36
    move p0, v2

    .line 37
    goto :goto_1

    .line 38
    :cond_3
    move p0, v0

    .line 39
    :goto_1
    if-le p1, v1, :cond_4

    .line 40
    .line 41
    move p1, v2

    .line 42
    goto :goto_2

    .line 43
    :cond_4
    move p1, v0

    .line 44
    :goto_2
    if-le p2, v1, :cond_5

    .line 45
    .line 46
    move v0, v2

    .line 47
    :cond_5
    invoke-static {p3, p0, p1, v0}, Landroid/graphics/Color;->argb(IIII)I

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    return p0
.end method


# virtual methods
.method public a(C)V
    .locals 2

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    if-ne p1, v0, :cond_6

    .line 4
    .line 5
    iget-object p1, p0, Li3/c$b;->a:Ljava/util/List;

    .line 6
    .line 7
    invoke-virtual {p0}, Li3/c$b;->d()Landroid/text/SpannableString;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Li3/c$b;->b:Landroid/text/SpannableStringBuilder;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 17
    .line 18
    .line 19
    iget p1, p0, Li3/c$b;->o:I

    .line 20
    .line 21
    const/4 v0, -0x1

    .line 22
    const/4 v1, 0x0

    .line 23
    if-eq p1, v0, :cond_0

    .line 24
    .line 25
    iput v1, p0, Li3/c$b;->o:I

    .line 26
    .line 27
    :cond_0
    iget p1, p0, Li3/c$b;->p:I

    .line 28
    .line 29
    if-eq p1, v0, :cond_1

    .line 30
    .line 31
    iput v1, p0, Li3/c$b;->p:I

    .line 32
    .line 33
    :cond_1
    iget p1, p0, Li3/c$b;->q:I

    .line 34
    .line 35
    if-eq p1, v0, :cond_2

    .line 36
    .line 37
    iput v1, p0, Li3/c$b;->q:I

    .line 38
    .line 39
    :cond_2
    iget p1, p0, Li3/c$b;->s:I

    .line 40
    .line 41
    if-eq p1, v0, :cond_3

    .line 42
    .line 43
    iput v1, p0, Li3/c$b;->s:I

    .line 44
    .line 45
    :cond_3
    :goto_0
    iget-object p1, p0, Li3/c$b;->a:Ljava/util/List;

    .line 46
    .line 47
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    iget v0, p0, Li3/c$b;->j:I

    .line 52
    .line 53
    if-ge p1, v0, :cond_5

    .line 54
    .line 55
    iget-object p1, p0, Li3/c$b;->a:Ljava/util/List;

    .line 56
    .line 57
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    const/16 v0, 0xf

    .line 62
    .line 63
    if-lt p1, v0, :cond_4

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_4
    iget-object p1, p0, Li3/c$b;->a:Ljava/util/List;

    .line 67
    .line 68
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    iput p1, p0, Li3/c$b;->u:I

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_5
    :goto_1
    iget-object p1, p0, Li3/c$b;->a:Ljava/util/List;

    .line 76
    .line 77
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_6
    iget-object v0, p0, Li3/c$b;->b:Landroid/text/SpannableStringBuilder;

    .line 82
    .line 83
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 84
    .line 85
    .line 86
    :goto_2
    return-void
.end method

.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Li3/c$b;->b:Landroid/text/SpannableStringBuilder;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Li3/c$b;->b:Landroid/text/SpannableStringBuilder;

    .line 10
    .line 11
    add-int/lit8 v2, v0, -0x1

    .line 12
    .line 13
    invoke-virtual {v1, v2, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public c()Li3/c$a;
    .locals 15

    .line 1
    invoke-virtual {p0}, Li3/c$b;->j()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    :cond_0
    new-instance v2, Landroid/text/SpannableStringBuilder;

    .line 10
    .line 11
    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    move v1, v0

    .line 16
    :goto_0
    iget-object v3, p0, Li3/c$b;->a:Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-ge v1, v3, :cond_1

    .line 23
    .line 24
    iget-object v3, p0, Li3/c$b;->a:Ljava/util/List;

    .line 25
    .line 26
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Ljava/lang/CharSequence;

    .line 31
    .line 32
    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 33
    .line 34
    .line 35
    const/16 v3, 0xa

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 38
    .line 39
    .line 40
    add-int/lit8 v1, v1, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {p0}, Li3/c$b;->d()Landroid/text/SpannableString;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 48
    .line 49
    .line 50
    iget v1, p0, Li3/c$b;->k:I

    .line 51
    .line 52
    const/4 v3, 0x2

    .line 53
    const/4 v4, 0x3

    .line 54
    const/4 v5, 0x1

    .line 55
    if-eqz v1, :cond_5

    .line 56
    .line 57
    if-eq v1, v5, :cond_4

    .line 58
    .line 59
    if-eq v1, v3, :cond_3

    .line 60
    .line 61
    if-ne v1, v4, :cond_2

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 65
    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    const-string v2, "Unexpected justification value: "

    .line 72
    .line 73
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    iget v2, p0, Li3/c$b;->k:I

    .line 77
    .line 78
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw v0

    .line 89
    :cond_3
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 90
    .line 91
    :goto_1
    move-object v6, v1

    .line 92
    goto :goto_3

    .line 93
    :cond_4
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_5
    :goto_2
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :goto_3
    iget-boolean v1, p0, Li3/c$b;->f:Z

    .line 100
    .line 101
    if-eqz v1, :cond_6

    .line 102
    .line 103
    iget v1, p0, Li3/c$b;->h:I

    .line 104
    .line 105
    int-to-float v1, v1

    .line 106
    const/high16 v7, 0x42c60000    # 99.0f

    .line 107
    .line 108
    div-float/2addr v1, v7

    .line 109
    iget v8, p0, Li3/c$b;->g:I

    .line 110
    .line 111
    int-to-float v8, v8

    .line 112
    div-float/2addr v8, v7

    .line 113
    goto :goto_4

    .line 114
    :cond_6
    iget v1, p0, Li3/c$b;->h:I

    .line 115
    .line 116
    int-to-float v1, v1

    .line 117
    const/high16 v7, 0x43510000    # 209.0f

    .line 118
    .line 119
    div-float/2addr v1, v7

    .line 120
    iget v7, p0, Li3/c$b;->g:I

    .line 121
    .line 122
    int-to-float v7, v7

    .line 123
    const/high16 v8, 0x42940000    # 74.0f

    .line 124
    .line 125
    div-float v8, v7, v8

    .line 126
    .line 127
    :goto_4
    const v7, 0x3f666666    # 0.9f

    .line 128
    .line 129
    .line 130
    mul-float/2addr v1, v7

    .line 131
    const v9, 0x3d4ccccd    # 0.05f

    .line 132
    .line 133
    .line 134
    add-float v10, v1, v9

    .line 135
    .line 136
    mul-float/2addr v8, v7

    .line 137
    add-float v7, v8, v9

    .line 138
    .line 139
    iget v1, p0, Li3/c$b;->i:I

    .line 140
    .line 141
    div-int/lit8 v8, v1, 0x3

    .line 142
    .line 143
    if-nez v8, :cond_7

    .line 144
    .line 145
    move v8, v0

    .line 146
    goto :goto_5

    .line 147
    :cond_7
    div-int/lit8 v8, v1, 0x3

    .line 148
    .line 149
    if-ne v8, v5, :cond_8

    .line 150
    .line 151
    move v8, v5

    .line 152
    goto :goto_5

    .line 153
    :cond_8
    move v8, v3

    .line 154
    :goto_5
    rem-int/lit8 v9, v1, 0x3

    .line 155
    .line 156
    if-nez v9, :cond_9

    .line 157
    .line 158
    move v9, v0

    .line 159
    goto :goto_6

    .line 160
    :cond_9
    rem-int/2addr v1, v4

    .line 161
    if-ne v1, v5, :cond_a

    .line 162
    .line 163
    move v9, v5

    .line 164
    goto :goto_6

    .line 165
    :cond_a
    move v9, v3

    .line 166
    :goto_6
    iget v1, p0, Li3/c$b;->n:I

    .line 167
    .line 168
    sget v3, Li3/c$b;->w:I

    .line 169
    .line 170
    if-eq v1, v3, :cond_b

    .line 171
    .line 172
    move v0, v5

    .line 173
    :cond_b
    new-instance v13, Li3/c$a;

    .line 174
    .line 175
    iget v11, p0, Li3/c$b;->n:I

    .line 176
    .line 177
    iget v12, p0, Li3/c$b;->e:I

    .line 178
    .line 179
    const/4 v5, 0x0

    .line 180
    const v14, -0x800001

    .line 181
    .line 182
    .line 183
    move-object v1, v13

    .line 184
    move-object v3, v6

    .line 185
    move v4, v7

    .line 186
    move v6, v8

    .line 187
    move v7, v10

    .line 188
    move v8, v9

    .line 189
    move v9, v14

    .line 190
    move v10, v0

    .line 191
    invoke-direct/range {v1 .. v12}, Li3/c$a;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIFZII)V

    .line 192
    .line 193
    .line 194
    return-object v13
.end method

.method public d()Landroid/text/SpannableString;
    .locals 6

    .line 1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .line 2
    .line 3
    iget-object v1, p0, Li3/c$b;->b:Landroid/text/SpannableStringBuilder;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-lez v1, :cond_3

    .line 13
    .line 14
    iget v2, p0, Li3/c$b;->o:I

    .line 15
    .line 16
    const/16 v3, 0x21

    .line 17
    .line 18
    const/4 v4, -0x1

    .line 19
    if-eq v2, v4, :cond_0

    .line 20
    .line 21
    new-instance v2, Landroid/text/style/StyleSpan;

    .line 22
    .line 23
    const/4 v5, 0x2

    .line 24
    invoke-direct {v2, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 25
    .line 26
    .line 27
    iget v5, p0, Li3/c$b;->o:I

    .line 28
    .line 29
    invoke-virtual {v0, v2, v5, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 30
    .line 31
    .line 32
    :cond_0
    iget v2, p0, Li3/c$b;->p:I

    .line 33
    .line 34
    if-eq v2, v4, :cond_1

    .line 35
    .line 36
    new-instance v2, Landroid/text/style/UnderlineSpan;

    .line 37
    .line 38
    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    .line 39
    .line 40
    .line 41
    iget v5, p0, Li3/c$b;->p:I

    .line 42
    .line 43
    invoke-virtual {v0, v2, v5, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 44
    .line 45
    .line 46
    :cond_1
    iget v2, p0, Li3/c$b;->q:I

    .line 47
    .line 48
    if-eq v2, v4, :cond_2

    .line 49
    .line 50
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    .line 51
    .line 52
    iget v5, p0, Li3/c$b;->r:I

    .line 53
    .line 54
    invoke-direct {v2, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 55
    .line 56
    .line 57
    iget v5, p0, Li3/c$b;->q:I

    .line 58
    .line 59
    invoke-virtual {v0, v2, v5, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 60
    .line 61
    .line 62
    :cond_2
    iget v2, p0, Li3/c$b;->s:I

    .line 63
    .line 64
    if-eq v2, v4, :cond_3

    .line 65
    .line 66
    new-instance v2, Landroid/text/style/BackgroundColorSpan;

    .line 67
    .line 68
    iget v4, p0, Li3/c$b;->t:I

    .line 69
    .line 70
    invoke-direct {v2, v4}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 71
    .line 72
    .line 73
    iget v4, p0, Li3/c$b;->s:I

    .line 74
    .line 75
    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 76
    .line 77
    .line 78
    :cond_3
    new-instance v1, Landroid/text/SpannableString;

    .line 79
    .line 80
    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 81
    .line 82
    .line 83
    return-object v1
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Li3/c$b;->a:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Li3/c$b;->b:Landroid/text/SpannableStringBuilder;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 9
    .line 10
    .line 11
    const/4 v0, -0x1

    .line 12
    iput v0, p0, Li3/c$b;->o:I

    .line 13
    .line 14
    iput v0, p0, Li3/c$b;->p:I

    .line 15
    .line 16
    iput v0, p0, Li3/c$b;->q:I

    .line 17
    .line 18
    iput v0, p0, Li3/c$b;->s:I

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput v0, p0, Li3/c$b;->u:I

    .line 22
    .line 23
    return-void
.end method

.method public f(ZIZIIIIII)V
    .locals 10

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v1, p8

    .line 3
    .line 4
    move/from16 v2, p9

    .line 5
    .line 6
    const/4 v3, 0x1

    .line 7
    iput-boolean v3, v0, Li3/c$b;->c:Z

    .line 8
    .line 9
    move v4, p1

    .line 10
    iput-boolean v4, v0, Li3/c$b;->d:Z

    .line 11
    .line 12
    move v4, p2

    .line 13
    iput v4, v0, Li3/c$b;->e:I

    .line 14
    .line 15
    move v4, p3

    .line 16
    iput-boolean v4, v0, Li3/c$b;->f:Z

    .line 17
    .line 18
    move v4, p4

    .line 19
    iput v4, v0, Li3/c$b;->g:I

    .line 20
    .line 21
    move v4, p5

    .line 22
    iput v4, v0, Li3/c$b;->h:I

    .line 23
    .line 24
    move/from16 v4, p7

    .line 25
    .line 26
    iput v4, v0, Li3/c$b;->i:I

    .line 27
    .line 28
    iget v4, v0, Li3/c$b;->j:I

    .line 29
    .line 30
    add-int/lit8 v5, p6, 0x1

    .line 31
    .line 32
    if-eq v4, v5, :cond_1

    .line 33
    .line 34
    iput v5, v0, Li3/c$b;->j:I

    .line 35
    .line 36
    :goto_0
    iget-object v4, v0, Li3/c$b;->a:Ljava/util/List;

    .line 37
    .line 38
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    iget v5, v0, Li3/c$b;->j:I

    .line 43
    .line 44
    if-ge v4, v5, :cond_0

    .line 45
    .line 46
    iget-object v4, v0, Li3/c$b;->a:Ljava/util/List;

    .line 47
    .line 48
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    const/16 v5, 0xf

    .line 53
    .line 54
    if-lt v4, v5, :cond_1

    .line 55
    .line 56
    :cond_0
    iget-object v4, v0, Li3/c$b;->a:Ljava/util/List;

    .line 57
    .line 58
    const/4 v5, 0x0

    .line 59
    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    if-eqz v1, :cond_2

    .line 64
    .line 65
    iget v4, v0, Li3/c$b;->l:I

    .line 66
    .line 67
    if-eq v4, v1, :cond_2

    .line 68
    .line 69
    iput v1, v0, Li3/c$b;->l:I

    .line 70
    .line 71
    sub-int/2addr v1, v3

    .line 72
    sget-object v4, Li3/c$b;->C:[I

    .line 73
    .line 74
    aget v4, v4, v1

    .line 75
    .line 76
    sget v5, Li3/c$b;->x:I

    .line 77
    .line 78
    sget-object v6, Li3/c$b;->B:[Z

    .line 79
    .line 80
    aget-boolean v6, v6, v1

    .line 81
    .line 82
    sget-object v7, Li3/c$b;->z:[I

    .line 83
    .line 84
    aget v7, v7, v1

    .line 85
    .line 86
    sget-object v8, Li3/c$b;->A:[I

    .line 87
    .line 88
    aget v8, v8, v1

    .line 89
    .line 90
    sget-object v9, Li3/c$b;->y:[I

    .line 91
    .line 92
    aget v1, v9, v1

    .line 93
    .line 94
    const/4 v9, 0x0

    .line 95
    move-object p1, p0

    .line 96
    move p2, v4

    .line 97
    move p3, v5

    .line 98
    move p4, v6

    .line 99
    move p5, v9

    .line 100
    move/from16 p6, v7

    .line 101
    .line 102
    move/from16 p7, v8

    .line 103
    .line 104
    move/from16 p8, v1

    .line 105
    .line 106
    invoke-virtual/range {p1 .. p8}, Li3/c$b;->q(IIZIIII)V

    .line 107
    .line 108
    .line 109
    :cond_2
    if-eqz v2, :cond_3

    .line 110
    .line 111
    iget v1, v0, Li3/c$b;->m:I

    .line 112
    .line 113
    if-eq v1, v2, :cond_3

    .line 114
    .line 115
    iput v2, v0, Li3/c$b;->m:I

    .line 116
    .line 117
    add-int/lit8 v1, v2, -0x1

    .line 118
    .line 119
    sget-object v2, Li3/c$b;->E:[I

    .line 120
    .line 121
    aget v2, v2, v1

    .line 122
    .line 123
    sget-object v3, Li3/c$b;->D:[I

    .line 124
    .line 125
    aget v3, v3, v1

    .line 126
    .line 127
    const/4 v4, 0x0

    .line 128
    const/4 v5, 0x1

    .line 129
    const/4 v6, 0x1

    .line 130
    const/4 v7, 0x0

    .line 131
    const/4 v8, 0x0

    .line 132
    move-object p1, p0

    .line 133
    move p2, v4

    .line 134
    move p3, v5

    .line 135
    move p4, v6

    .line 136
    move p5, v7

    .line 137
    move/from16 p6, v8

    .line 138
    .line 139
    move/from16 p7, v2

    .line 140
    .line 141
    move/from16 p8, v3

    .line 142
    .line 143
    invoke-virtual/range {p1 .. p8}, Li3/c$b;->m(IIIZZII)V

    .line 144
    .line 145
    .line 146
    sget v2, Li3/c$b;->v:I

    .line 147
    .line 148
    sget-object v3, Li3/c$b;->F:[I

    .line 149
    .line 150
    aget v1, v3, v1

    .line 151
    .line 152
    sget v3, Li3/c$b;->w:I

    .line 153
    .line 154
    invoke-virtual {p0, v2, v1, v3}, Li3/c$b;->n(III)V

    .line 155
    .line 156
    .line 157
    :cond_3
    return-void
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Li3/c$b;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method public j()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Li3/c$b;->i()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Li3/c$b;->a:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Li3/c$b;->b:Landroid/text/SpannableStringBuilder;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 27
    :goto_1
    return v0
.end method

.method public k()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Li3/c$b;->d:Z

    .line 2
    .line 3
    return v0
.end method

.method public l()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Li3/c$b;->e()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Li3/c$b;->c:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Li3/c$b;->d:Z

    .line 8
    .line 9
    const/4 v1, 0x4

    .line 10
    iput v1, p0, Li3/c$b;->e:I

    .line 11
    .line 12
    iput-boolean v0, p0, Li3/c$b;->f:Z

    .line 13
    .line 14
    iput v0, p0, Li3/c$b;->g:I

    .line 15
    .line 16
    iput v0, p0, Li3/c$b;->h:I

    .line 17
    .line 18
    iput v0, p0, Li3/c$b;->i:I

    .line 19
    .line 20
    const/16 v1, 0xf

    .line 21
    .line 22
    iput v1, p0, Li3/c$b;->j:I

    .line 23
    .line 24
    iput v0, p0, Li3/c$b;->k:I

    .line 25
    .line 26
    iput v0, p0, Li3/c$b;->l:I

    .line 27
    .line 28
    iput v0, p0, Li3/c$b;->m:I

    .line 29
    .line 30
    sget v0, Li3/c$b;->w:I

    .line 31
    .line 32
    iput v0, p0, Li3/c$b;->n:I

    .line 33
    .line 34
    sget v1, Li3/c$b;->v:I

    .line 35
    .line 36
    iput v1, p0, Li3/c$b;->r:I

    .line 37
    .line 38
    iput v0, p0, Li3/c$b;->t:I

    .line 39
    .line 40
    return-void
.end method

.method public m(IIIZZII)V
    .locals 0

    .line 1
    iget p1, p0, Li3/c$b;->o:I

    .line 2
    .line 3
    const/16 p2, 0x21

    .line 4
    .line 5
    const/4 p3, -0x1

    .line 6
    if-eq p1, p3, :cond_0

    .line 7
    .line 8
    if-nez p4, :cond_1

    .line 9
    .line 10
    iget-object p1, p0, Li3/c$b;->b:Landroid/text/SpannableStringBuilder;

    .line 11
    .line 12
    new-instance p4, Landroid/text/style/StyleSpan;

    .line 13
    .line 14
    const/4 p6, 0x2

    .line 15
    invoke-direct {p4, p6}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 16
    .line 17
    .line 18
    iget p6, p0, Li3/c$b;->o:I

    .line 19
    .line 20
    iget-object p7, p0, Li3/c$b;->b:Landroid/text/SpannableStringBuilder;

    .line 21
    .line 22
    invoke-virtual {p7}, Landroid/text/SpannableStringBuilder;->length()I

    .line 23
    .line 24
    .line 25
    move-result p7

    .line 26
    invoke-virtual {p1, p4, p6, p7, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 27
    .line 28
    .line 29
    iput p3, p0, Li3/c$b;->o:I

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    if-eqz p4, :cond_1

    .line 33
    .line 34
    iget-object p1, p0, Li3/c$b;->b:Landroid/text/SpannableStringBuilder;

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    iput p1, p0, Li3/c$b;->o:I

    .line 41
    .line 42
    :cond_1
    :goto_0
    iget p1, p0, Li3/c$b;->p:I

    .line 43
    .line 44
    if-eq p1, p3, :cond_2

    .line 45
    .line 46
    if-nez p5, :cond_3

    .line 47
    .line 48
    iget-object p1, p0, Li3/c$b;->b:Landroid/text/SpannableStringBuilder;

    .line 49
    .line 50
    new-instance p4, Landroid/text/style/UnderlineSpan;

    .line 51
    .line 52
    invoke-direct {p4}, Landroid/text/style/UnderlineSpan;-><init>()V

    .line 53
    .line 54
    .line 55
    iget p5, p0, Li3/c$b;->p:I

    .line 56
    .line 57
    iget-object p6, p0, Li3/c$b;->b:Landroid/text/SpannableStringBuilder;

    .line 58
    .line 59
    invoke-virtual {p6}, Landroid/text/SpannableStringBuilder;->length()I

    .line 60
    .line 61
    .line 62
    move-result p6

    .line 63
    invoke-virtual {p1, p4, p5, p6, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 64
    .line 65
    .line 66
    iput p3, p0, Li3/c$b;->p:I

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_2
    if-eqz p5, :cond_3

    .line 70
    .line 71
    iget-object p1, p0, Li3/c$b;->b:Landroid/text/SpannableStringBuilder;

    .line 72
    .line 73
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    iput p1, p0, Li3/c$b;->p:I

    .line 78
    .line 79
    :cond_3
    :goto_1
    return-void
.end method

.method public n(III)V
    .locals 5

    .line 1
    iget p3, p0, Li3/c$b;->q:I

    .line 2
    .line 3
    const/16 v0, 0x21

    .line 4
    .line 5
    const/4 v1, -0x1

    .line 6
    if-eq p3, v1, :cond_0

    .line 7
    .line 8
    iget p3, p0, Li3/c$b;->r:I

    .line 9
    .line 10
    if-eq p3, p1, :cond_0

    .line 11
    .line 12
    iget-object p3, p0, Li3/c$b;->b:Landroid/text/SpannableStringBuilder;

    .line 13
    .line 14
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    .line 15
    .line 16
    iget v3, p0, Li3/c$b;->r:I

    .line 17
    .line 18
    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 19
    .line 20
    .line 21
    iget v3, p0, Li3/c$b;->q:I

    .line 22
    .line 23
    iget-object v4, p0, Li3/c$b;->b:Landroid/text/SpannableStringBuilder;

    .line 24
    .line 25
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    invoke-virtual {p3, v2, v3, v4, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 30
    .line 31
    .line 32
    :cond_0
    sget p3, Li3/c$b;->v:I

    .line 33
    .line 34
    if-eq p1, p3, :cond_1

    .line 35
    .line 36
    iget-object p3, p0, Li3/c$b;->b:Landroid/text/SpannableStringBuilder;

    .line 37
    .line 38
    invoke-virtual {p3}, Landroid/text/SpannableStringBuilder;->length()I

    .line 39
    .line 40
    .line 41
    move-result p3

    .line 42
    iput p3, p0, Li3/c$b;->q:I

    .line 43
    .line 44
    iput p1, p0, Li3/c$b;->r:I

    .line 45
    .line 46
    :cond_1
    iget p1, p0, Li3/c$b;->s:I

    .line 47
    .line 48
    if-eq p1, v1, :cond_2

    .line 49
    .line 50
    iget p1, p0, Li3/c$b;->t:I

    .line 51
    .line 52
    if-eq p1, p2, :cond_2

    .line 53
    .line 54
    iget-object p1, p0, Li3/c$b;->b:Landroid/text/SpannableStringBuilder;

    .line 55
    .line 56
    new-instance p3, Landroid/text/style/BackgroundColorSpan;

    .line 57
    .line 58
    iget v1, p0, Li3/c$b;->t:I

    .line 59
    .line 60
    invoke-direct {p3, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 61
    .line 62
    .line 63
    iget v1, p0, Li3/c$b;->s:I

    .line 64
    .line 65
    iget-object v2, p0, Li3/c$b;->b:Landroid/text/SpannableStringBuilder;

    .line 66
    .line 67
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    invoke-virtual {p1, p3, v1, v2, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 72
    .line 73
    .line 74
    :cond_2
    sget p1, Li3/c$b;->w:I

    .line 75
    .line 76
    if-eq p2, p1, :cond_3

    .line 77
    .line 78
    iget-object p1, p0, Li3/c$b;->b:Landroid/text/SpannableStringBuilder;

    .line 79
    .line 80
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    iput p1, p0, Li3/c$b;->s:I

    .line 85
    .line 86
    iput p2, p0, Li3/c$b;->t:I

    .line 87
    .line 88
    :cond_3
    return-void
.end method

.method public o(II)V
    .locals 0

    .line 1
    iget p2, p0, Li3/c$b;->u:I

    .line 2
    .line 3
    if-eq p2, p1, :cond_0

    .line 4
    .line 5
    const/16 p2, 0xa

    .line 6
    .line 7
    invoke-virtual {p0, p2}, Li3/c$b;->a(C)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iput p1, p0, Li3/c$b;->u:I

    .line 11
    .line 12
    return-void
.end method

.method public p(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Li3/c$b;->d:Z

    .line 2
    .line 3
    return-void
.end method

.method public q(IIZIIII)V
    .locals 0

    .line 1
    iput p1, p0, Li3/c$b;->n:I

    .line 2
    .line 3
    iput p7, p0, Li3/c$b;->k:I

    .line 4
    .line 5
    return-void
.end method
