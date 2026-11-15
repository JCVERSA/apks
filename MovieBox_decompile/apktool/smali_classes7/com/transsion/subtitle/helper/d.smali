.class public final Lcom/transsion/subtitle/helper/d;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/subtitle/helper/d$a;,
        Lcom/transsion/subtitle/helper/d$b;
    }
.end annotation


# static fields
.field public static final n:Lcom/transsion/subtitle/helper/d$a;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:I

.field private final j:I

.field private final k:I

.field private final l:I

.field private final m:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/subtitle/helper/d$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/subtitle/helper/d$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/subtitle/helper/d;->n:Lcom/transsion/subtitle/helper/d$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/transsion/subtitle/helper/d;->a:Landroid/content/Context;

    .line 10
    .line 11
    const/high16 v0, 0x42840000    # 66.0f

    .line 12
    .line 13
    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iput v0, p0, Lcom/transsion/subtitle/helper/d;->f:I

    .line 18
    .line 19
    const/high16 v0, 0x41c00000    # 24.0f

    .line 20
    .line 21
    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    iput v1, p0, Lcom/transsion/subtitle/helper/d;->g:I

    .line 26
    .line 27
    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    iput v0, p0, Lcom/transsion/subtitle/helper/d;->h:I

    .line 32
    .line 33
    const/high16 v0, 0x42880000    # 68.0f

    .line 34
    .line 35
    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    iput v0, p0, Lcom/transsion/subtitle/helper/d;->i:I

    .line 40
    .line 41
    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    iput v0, p0, Lcom/transsion/subtitle/helper/d;->j:I

    .line 46
    .line 47
    invoke-static {}, Lcom/blankj/utilcode/util/y;->c()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    iput v0, p0, Lcom/transsion/subtitle/helper/d;->k:I

    .line 52
    .line 53
    invoke-static {}, Lcom/blankj/utilcode/util/d;->c()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    iput v1, p0, Lcom/transsion/subtitle/helper/d;->l:I

    .line 58
    .line 59
    sub-int/2addr v0, v1

    .line 60
    iput v0, p0, Lcom/transsion/subtitle/helper/d;->m:I

    .line 61
    .line 62
    sget v0, Lcom/tn/lib/widget/R$color;->black:I

    .line 63
    .line 64
    invoke-static {p1, v0}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    iput v0, p0, Lcom/transsion/subtitle/helper/d;->b:I

    .line 69
    .line 70
    sget v0, Lcom/tn/lib/widget/R$color;->white:I

    .line 71
    .line 72
    invoke-static {p1, v0}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    iput v0, p0, Lcom/transsion/subtitle/helper/d;->c:I

    .line 77
    .line 78
    sget v0, Lcom/transsion/subtitle/R$color;->subtitle_color_yellow:I

    .line 79
    .line 80
    invoke-static {p1, v0}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    iput v0, p0, Lcom/transsion/subtitle/helper/d;->d:I

    .line 85
    .line 86
    sget v0, Lcom/transsion/subtitle/R$color;->subtitle_color_green:I

    .line 87
    .line 88
    invoke-static {p1, v0}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    iput p1, p0, Lcom/transsion/subtitle/helper/d;->e:I

    .line 93
    .line 94
    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/String;
    .locals 2

    .line 1
    sget v0, Lcom/transsion/subtitle/R$id;->rb_background_black:I

    .line 2
    .line 3
    const-string v1, "color_black"

    .line 4
    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget v0, Lcom/transsion/subtitle/R$id;->rb_background_white:I

    .line 9
    .line 10
    if-ne p1, v0, :cond_1

    .line 11
    .line 12
    const-string v1, "color_white"

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    sget v0, Lcom/transsion/subtitle/R$id;->rb_background_yellor:I

    .line 16
    .line 17
    if-ne p1, v0, :cond_2

    .line 18
    .line 19
    const-string v1, "color_yellow"

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    sget v0, Lcom/transsion/subtitle/R$id;->rb_background_green:I

    .line 23
    .line 24
    if-ne p1, v0, :cond_3

    .line 25
    .line 26
    const-string v1, "color_green"

    .line 27
    .line 28
    :cond_3
    :goto_0
    return-object v1
.end method

.method public final b(Ljava/lang/String;)I
    .locals 1

    .line 1
    const-string v0, "bgColorType"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    sparse-switch v0, :sswitch_data_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :sswitch_0
    const-string v0, "color_white"

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    sget p1, Lcom/transsion/subtitle/R$id;->rb_background_white:I

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :sswitch_1
    const-string v0, "color_green"

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-nez p1, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    sget p1, Lcom/transsion/subtitle/R$id;->rb_background_green:I

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :sswitch_2
    const-string v0, "color_black"

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-nez p1, :cond_2

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    sget p1, Lcom/transsion/subtitle/R$id;->rb_background_black:I

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :sswitch_3
    const-string v0, "color_yellow"

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-nez p1, :cond_3

    .line 57
    .line 58
    :goto_0
    sget p1, Lcom/transsion/subtitle/R$id;->rb_background_white:I

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_3
    sget p1, Lcom/transsion/subtitle/R$id;->rb_background_yellor:I

    .line 62
    .line 63
    :goto_1
    return p1

    .line 64
    nop

    .line 65
    :sswitch_data_0
    .sparse-switch
        -0x66895330 -> :sswitch_3
        0x4e04cc23 -> :sswitch_2
        0x4e4e0b27 -> :sswitch_1
        0x4f2b084d -> :sswitch_0
    .end sparse-switch
.end method

.method public final c(I)F
    .locals 2

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_2

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p1, v0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    const/high16 v1, 0x3f400000    # 0.75f

    .line 11
    .line 12
    if-eq p1, v0, :cond_4

    .line 13
    .line 14
    const/4 v0, 0x4

    .line 15
    if-eq p1, v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/high16 v1, 0x3f000000    # 0.5f

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_2
    const/high16 v1, 0x3e800000    # 0.25f

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_3
    const v1, 0x3dcccccd    # 0.1f

    .line 28
    .line 29
    .line 30
    :cond_4
    :goto_0
    return v1
.end method

.method public final d(Ljava/lang/String;)I
    .locals 1

    .line 1
    const-string v0, "colorType"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    sparse-switch v0, :sswitch_data_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :sswitch_0
    const-string v0, "color_white"

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget p1, p0, Lcom/transsion/subtitle/helper/d;->c:I

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :sswitch_1
    const-string v0, "color_green"

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-nez p1, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget p1, p0, Lcom/transsion/subtitle/helper/d;->e:I

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :sswitch_2
    const-string v0, "color_black"

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-nez p1, :cond_2

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    iget p1, p0, Lcom/transsion/subtitle/helper/d;->b:I

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :sswitch_3
    const-string v0, "color_yellow"

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-nez p1, :cond_3

    .line 57
    .line 58
    :goto_0
    iget p1, p0, Lcom/transsion/subtitle/helper/d;->c:I

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_3
    iget p1, p0, Lcom/transsion/subtitle/helper/d;->d:I

    .line 62
    .line 63
    :goto_1
    return p1

    .line 64
    nop

    .line 65
    :sswitch_data_0
    .sparse-switch
        -0x66895330 -> :sswitch_3
        0x4e04cc23 -> :sswitch_2
        0x4e4e0b27 -> :sswitch_1
        0x4f2b084d -> :sswitch_0
    .end sparse-switch
.end method

.method public final e(I)Ljava/lang/String;
    .locals 2

    .line 1
    sget v0, Lcom/transsion/subtitle/R$id;->rb_font_color_black:I

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    const-string p1, "color_black"

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget v0, Lcom/transsion/subtitle/R$id;->rb_font_color_white:I

    .line 9
    .line 10
    const-string v1, "color_white"

    .line 11
    .line 12
    if-ne p1, v0, :cond_2

    .line 13
    .line 14
    :cond_1
    move-object p1, v1

    .line 15
    goto :goto_0

    .line 16
    :cond_2
    sget v0, Lcom/transsion/subtitle/R$id;->rb_font_color_yellor:I

    .line 17
    .line 18
    if-ne p1, v0, :cond_3

    .line 19
    .line 20
    const-string p1, "color_yellow"

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_3
    sget v0, Lcom/transsion/subtitle/R$id;->rb_font_color_green:I

    .line 24
    .line 25
    if-ne p1, v0, :cond_1

    .line 26
    .line 27
    const-string p1, "color_green"

    .line 28
    .line 29
    :goto_0
    return-object p1
.end method

.method public final f(Ljava/lang/String;)I
    .locals 1

    .line 1
    const-string v0, "fontColorType"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    sparse-switch v0, :sswitch_data_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :sswitch_0
    const-string v0, "color_white"

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    sget p1, Lcom/transsion/subtitle/R$id;->rb_font_color_white:I

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :sswitch_1
    const-string v0, "color_green"

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-nez p1, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    sget p1, Lcom/transsion/subtitle/R$id;->rb_font_color_green:I

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :sswitch_2
    const-string v0, "color_black"

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-nez p1, :cond_2

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    sget p1, Lcom/transsion/subtitle/R$id;->rb_font_color_black:I

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :sswitch_3
    const-string v0, "color_yellow"

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-nez p1, :cond_3

    .line 57
    .line 58
    :goto_0
    sget p1, Lcom/transsion/subtitle/R$id;->rb_font_color_white:I

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_3
    sget p1, Lcom/transsion/subtitle/R$id;->rb_font_color_yellor:I

    .line 62
    .line 63
    :goto_1
    return p1

    .line 64
    nop

    .line 65
    :sswitch_data_0
    .sparse-switch
        -0x66895330 -> :sswitch_3
        0x4e04cc23 -> :sswitch_2
        0x4e4e0b27 -> :sswitch_1
        0x4f2b084d -> :sswitch_0
    .end sparse-switch
.end method

.method public final g(I)F
    .locals 1

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    const/high16 v0, 0x40800000    # 4.0f

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :pswitch_1
    const/high16 v0, 0x40400000    # 3.0f

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :pswitch_2
    const/high16 v0, 0x40000000    # 2.0f

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :pswitch_3
    const/high16 v0, 0x3fc00000    # 1.5f

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :pswitch_4
    const/high16 v0, 0x3f400000    # 0.75f

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :pswitch_5
    const/high16 v0, 0x3f000000    # 0.5f

    .line 23
    .line 24
    :goto_0
    :pswitch_6
    return v0

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final h(Lcom/transsion/subtitle/helper/LocalVideoUiType;)I
    .locals 1

    .line 1
    const-string v0, "uiType"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/blankj/utilcode/util/y;->c()I

    .line 7
    .line 8
    .line 9
    sget-object v0, Lcom/transsion/subtitle/helper/d$b;->a:[I

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    aget p1, v0, p1

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    if-eq p1, v0, :cond_2

    .line 19
    .line 20
    const/4 v0, 0x2

    .line 21
    if-eq p1, v0, :cond_1

    .line 22
    .line 23
    const/4 v0, 0x3

    .line 24
    if-ne p1, v0, :cond_0

    .line 25
    .line 26
    iget p1, p0, Lcom/transsion/subtitle/helper/d;->k:I

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 30
    .line 31
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 32
    .line 33
    .line 34
    throw p1

    .line 35
    :cond_1
    iget p1, p0, Lcom/transsion/subtitle/helper/d;->j:I

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    iget p1, p0, Lcom/transsion/subtitle/helper/d;->j:I

    .line 39
    .line 40
    mul-int/lit8 p1, p1, 0x9

    .line 41
    .line 42
    div-int/lit8 p1, p1, 0x10

    .line 43
    .line 44
    :goto_0
    return p1
.end method

.method public final i(Lcom/avery/subtitle/widget/SimpleSubtitleView;Lcom/avery/subtitle/widget/SimpleSubtitleView;Lcom/transsion/subtitle/helper/LocalVideoUiType;Landroid/view/ViewGroup;)V
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
    const-string v4, "uiType"

    .line 10
    .line 11
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    sget-object v4, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 15
    .line 16
    invoke-virtual {v4}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    const-string v6, "subtitle_options_font_color"

    .line 21
    .line 22
    const-string v7, "color_white"

    .line 23
    .line 24
    invoke-virtual {v5, v6, v7}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    if-nez v5, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move-object v7, v5

    .line 32
    :goto_0
    invoke-virtual {v0, v7}, Lcom/transsion/subtitle/helper/d;->d(Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 39
    .line 40
    .line 41
    :cond_1
    if-eqz v2, :cond_2

    .line 42
    .line 43
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 44
    .line 45
    .line 46
    :cond_2
    invoke-virtual {v4}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    const-string v6, "subtitle_options_font_size_progress"

    .line 51
    .line 52
    const/4 v8, 0x2

    .line 53
    invoke-virtual {v5, v6, v8}, Lcom/tencent/mmkv/MMKV;->getInt(Ljava/lang/String;I)I

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    invoke-virtual {v0, v5}, Lcom/transsion/subtitle/helper/d;->g(I)F

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    iget-object v6, v0, Lcom/transsion/subtitle/helper/d;->a:Landroid/content/Context;

    .line 62
    .line 63
    invoke-static {v6}, Lcom/transsion/baseui/util/b;->a(Landroid/content/Context;)Z

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    if-eqz v6, :cond_4

    .line 68
    .line 69
    sget-object v6, Lcom/transsion/subtitle/helper/LocalVideoUiType;->MIDDLE:Lcom/transsion/subtitle/helper/LocalVideoUiType;

    .line 70
    .line 71
    if-ne v3, v6, :cond_3

    .line 72
    .line 73
    const/16 v6, 0x12

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_3
    const/16 v6, 0x1e

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_4
    sget-object v6, Lcom/transsion/subtitle/helper/LocalVideoUiType;->MIDDLE:Lcom/transsion/subtitle/helper/LocalVideoUiType;

    .line 80
    .line 81
    if-ne v3, v6, :cond_5

    .line 82
    .line 83
    const/16 v6, 0xc

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_5
    const/16 v6, 0x14

    .line 87
    .line 88
    :goto_1
    if-eqz v1, :cond_6

    .line 89
    .line 90
    int-to-float v8, v6

    .line 91
    mul-float/2addr v8, v5

    .line 92
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 93
    .line 94
    .line 95
    :cond_6
    if-eqz v2, :cond_7

    .line 96
    .line 97
    int-to-float v6, v6

    .line 98
    mul-float/2addr v6, v5

    .line 99
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 100
    .line 101
    .line 102
    :cond_7
    invoke-virtual {v4}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    const-string v8, "subtitle_options_position"

    .line 107
    .line 108
    const/16 v9, 0xa

    .line 109
    .line 110
    invoke-virtual {v6, v8, v9}, Lcom/tencent/mmkv/MMKV;->getInt(Ljava/lang/String;I)I

    .line 111
    .line 112
    .line 113
    move-result v6

    .line 114
    move-object/from16 v8, p4

    .line 115
    .line 116
    invoke-virtual {v0, v3, v8, v6}, Lcom/transsion/subtitle/helper/d;->j(Lcom/transsion/subtitle/helper/LocalVideoUiType;Landroid/view/ViewGroup;I)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v4}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    const-string v8, "subtitle_options_shadow_enabled"

    .line 124
    .line 125
    const/4 v9, 0x1

    .line 126
    invoke-virtual {v3, v8, v9}, Lcom/tencent/mmkv/MMKV;->getBoolean(Ljava/lang/String;Z)Z

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    const/4 v8, 0x0

    .line 131
    if-eqz v3, :cond_9

    .line 132
    .line 133
    const/high16 v9, 0x40000000    # 2.0f

    .line 134
    .line 135
    const/high16 v10, 0x40400000    # 3.0f

    .line 136
    .line 137
    const/high16 v11, 0x3f800000    # 1.0f

    .line 138
    .line 139
    if-eqz v1, :cond_8

    .line 140
    .line 141
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 142
    .line 143
    .line 144
    move-result-object v12

    .line 145
    sget v13, Lcom/tn/lib/widget/R$color;->black_90:I

    .line 146
    .line 147
    invoke-static {v12, v13}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 148
    .line 149
    .line 150
    move-result v12

    .line 151
    invoke-virtual {v1, v11, v10, v9, v12}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 152
    .line 153
    .line 154
    :cond_8
    if-eqz v2, :cond_b

    .line 155
    .line 156
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 157
    .line 158
    .line 159
    move-result-object v12

    .line 160
    sget v13, Lcom/tn/lib/widget/R$color;->black_90:I

    .line 161
    .line 162
    invoke-static {v12, v13}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 163
    .line 164
    .line 165
    move-result v12

    .line 166
    invoke-virtual {v2, v11, v10, v9, v12}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 167
    .line 168
    .line 169
    goto :goto_2

    .line 170
    :cond_9
    const/4 v9, 0x0

    .line 171
    if-eqz v1, :cond_a

    .line 172
    .line 173
    invoke-virtual {v1, v9, v9, v9, v8}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 174
    .line 175
    .line 176
    :cond_a
    if-eqz v2, :cond_b

    .line 177
    .line 178
    invoke-virtual {v2, v9, v9, v9, v8}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 179
    .line 180
    .line 181
    :cond_b
    :goto_2
    invoke-virtual {v4}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 182
    .line 183
    .line 184
    move-result-object v9

    .line 185
    const-string v10, "subtitle_options_bg_enabled"

    .line 186
    .line 187
    invoke-virtual {v9, v10, v8}, Lcom/tencent/mmkv/MMKV;->getBoolean(Ljava/lang/String;Z)Z

    .line 188
    .line 189
    .line 190
    move-result v8

    .line 191
    invoke-virtual {v4}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 192
    .line 193
    .line 194
    move-result-object v9

    .line 195
    const-string v10, "subtitle_options_bg_color"

    .line 196
    .line 197
    const-string v11, "color_black"

    .line 198
    .line 199
    invoke-virtual {v9, v10, v11}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v9

    .line 203
    if-nez v9, :cond_c

    .line 204
    .line 205
    goto :goto_3

    .line 206
    :cond_c
    move-object v11, v9

    .line 207
    :goto_3
    invoke-virtual {v4}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 208
    .line 209
    .line 210
    move-result-object v4

    .line 211
    const-string v9, "subtitle_options_bg_opacity_progress"

    .line 212
    .line 213
    const/4 v10, 0x3

    .line 214
    invoke-virtual {v4, v9, v10}, Lcom/tencent/mmkv/MMKV;->getInt(Ljava/lang/String;I)I

    .line 215
    .line 216
    .line 217
    move-result v4

    .line 218
    if-eqz v8, :cond_14

    .line 219
    .line 220
    if-eqz v1, :cond_d

    .line 221
    .line 222
    invoke-virtual/range {p1 .. p1}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->openBg()V

    .line 223
    .line 224
    .line 225
    :cond_d
    if-eqz v2, :cond_e

    .line 226
    .line 227
    invoke-virtual/range {p2 .. p2}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->openBg()V

    .line 228
    .line 229
    .line 230
    :cond_e
    const/high16 v9, 0x40800000    # 4.0f

    .line 231
    .line 232
    if-eqz v1, :cond_f

    .line 233
    .line 234
    invoke-static {v9}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 235
    .line 236
    .line 237
    move-result v10

    .line 238
    invoke-virtual {v1, v10}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->setBgdRadius(I)V

    .line 239
    .line 240
    .line 241
    :cond_f
    if-eqz v2, :cond_10

    .line 242
    .line 243
    invoke-static {v9}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 244
    .line 245
    .line 246
    move-result v9

    .line 247
    invoke-virtual {v2, v9}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->setBgdRadius(I)V

    .line 248
    .line 249
    .line 250
    :cond_10
    invoke-virtual {v0, v11}, Lcom/transsion/subtitle/helper/d;->d(Ljava/lang/String;)I

    .line 251
    .line 252
    .line 253
    move-result v9

    .line 254
    if-eqz v1, :cond_11

    .line 255
    .line 256
    invoke-virtual {v1, v9}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->setBgColor(I)V

    .line 257
    .line 258
    .line 259
    :cond_11
    if-eqz v2, :cond_12

    .line 260
    .line 261
    invoke-virtual {v2, v9}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->setBgColor(I)V

    .line 262
    .line 263
    .line 264
    :cond_12
    invoke-virtual {v0, v4}, Lcom/transsion/subtitle/helper/d;->c(I)F

    .line 265
    .line 266
    .line 267
    move-result v9

    .line 268
    const/16 v10, 0xff

    .line 269
    .line 270
    if-eqz v1, :cond_13

    .line 271
    .line 272
    int-to-float v12, v10

    .line 273
    mul-float/2addr v12, v9

    .line 274
    float-to-int v12, v12

    .line 275
    invoke-virtual {v1, v12}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->setBgAlpha(I)V

    .line 276
    .line 277
    .line 278
    :cond_13
    if-eqz v2, :cond_16

    .line 279
    .line 280
    int-to-float v1, v10

    .line 281
    mul-float/2addr v1, v9

    .line 282
    float-to-int v1, v1

    .line 283
    invoke-virtual {v2, v1}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->setBgAlpha(I)V

    .line 284
    .line 285
    .line 286
    goto :goto_4

    .line 287
    :cond_14
    if-eqz v1, :cond_15

    .line 288
    .line 289
    invoke-virtual/range {p1 .. p1}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->closeBg()V

    .line 290
    .line 291
    .line 292
    :cond_15
    if-eqz v2, :cond_16

    .line 293
    .line 294
    invoke-virtual/range {p2 .. p2}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->closeBg()V

    .line 295
    .line 296
    .line 297
    :cond_16
    :goto_4
    sget-object v12, Lwf/a;->a:Lwf/a$a;

    .line 298
    .line 299
    new-instance v1, Ljava/lang/StringBuilder;

    .line 300
    .line 301
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 302
    .line 303
    .line 304
    const-string v2, "\n            initSubtitleOptions, fontColorType= "

    .line 305
    .line 306
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    const-string v2, "\uff0c fontSizePercent = "

    .line 313
    .line 314
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    const-string v2, "\n                positionPercent = "

    .line 321
    .line 322
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    const-string v2, ", openShadow ="

    .line 329
    .line 330
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    const-string v2, "\n                openBackground = "

    .line 337
    .line 338
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    const-string v2, ", bgColorType = "

    .line 345
    .line 346
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    const-string v2, ", bgOpacityProgress = "

    .line 353
    .line 354
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    const-string v2, "\n        "

    .line 361
    .line 362
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v1

    .line 369
    invoke-static {v1}, Lkotlin/text/StringsKt;->n(Ljava/lang/String;)Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v14

    .line 373
    const/16 v16, 0x4

    .line 374
    .line 375
    const/16 v17, 0x0

    .line 376
    .line 377
    const-string v13, "SubtitleOptionsView"

    .line 378
    .line 379
    const/4 v15, 0x0

    .line 380
    invoke-static/range {v12 .. v17}, Lwf/a$a;->v(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 381
    .line 382
    .line 383
    return-void
.end method

.method public final j(Lcom/transsion/subtitle/helper/LocalVideoUiType;Landroid/view/ViewGroup;I)V
    .locals 6

    .line 1
    const-string v0, "uiType"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/transsion/subtitle/helper/d;->h(Lcom/transsion/subtitle/helper/LocalVideoUiType;)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    const/high16 v0, 0x42200000    # 40.0f

    .line 11
    .line 12
    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    sub-int v2, p1, v1

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    if-eqz p2, :cond_0

    .line 20
    .line 21
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move-object v4, v3

    .line 27
    :goto_0
    instance-of v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 28
    .line 29
    if-eqz v5, :cond_1

    .line 30
    .line 31
    move-object v3, v4

    .line 32
    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 33
    .line 34
    :cond_1
    mul-int/2addr p3, v2

    .line 35
    div-int/lit8 p3, p3, 0x64

    .line 36
    .line 37
    if-ltz p3, :cond_6

    .line 38
    .line 39
    sub-int v1, v2, v1

    .line 40
    .line 41
    if-le p3, v1, :cond_2

    .line 42
    .line 43
    if-eqz v3, :cond_3

    .line 44
    .line 45
    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 46
    .line 47
    .line 48
    move-result p3

    .line 49
    sub-int/2addr v2, p3

    .line 50
    iput v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    if-eqz v3, :cond_3

    .line 54
    .line 55
    iput p3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 56
    .line 57
    :cond_3
    :goto_1
    const/4 p3, 0x0

    .line 58
    if-eqz p2, :cond_4

    .line 59
    .line 60
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    goto :goto_2

    .line 65
    :cond_4
    move v0, p3

    .line 66
    :goto_2
    if-eqz v3, :cond_5

    .line 67
    .line 68
    iget p3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 69
    .line 70
    :cond_5
    add-int/2addr p3, v0

    .line 71
    if-le p3, p1, :cond_6

    .line 72
    .line 73
    if-eqz v3, :cond_6

    .line 74
    .line 75
    sub-int/2addr p1, v0

    .line 76
    iput p1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 77
    .line 78
    :cond_6
    if-eqz p2, :cond_7

    .line 79
    .line 80
    invoke-virtual {p2}, Landroid/view/View;->requestLayout()V

    .line 81
    .line 82
    .line 83
    :cond_7
    return-void
.end method
