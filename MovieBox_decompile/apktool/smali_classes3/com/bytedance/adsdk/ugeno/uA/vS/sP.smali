.class public Lcom/bytedance/adsdk/ugeno/uA/vS/sP;
.super Lcom/bytedance/adsdk/ugeno/sP/TKC;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/adsdk/ugeno/sP/TKC<",
        "Lcom/bytedance/adsdk/ugeno/uA/vS/Sj;",
        ">;"
    }
.end annotation


# instance fields
.field protected AVc:I

.field private Aw:F

.field private GMp:F

.field private Grp:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private Ov:F

.field private Ph:Landroid/text/TextUtils$TruncateAt;

.field protected RrR:I

.field private SP:F

.field protected Sj:Ljava/lang/String;

.field private TX:I

.field private WxP:F

.field private Xqg:I

.field private dLt:I

.field private gq:Landroid/text/TextUtils$TruncateAt;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private hzV:F

.field private mj:I

.field private oWa:I

.field private tPD:F

.field private tX:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private vb:Z

.field private zwV:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/ugeno/sP/TKC;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/high16 p1, -0x1000000

    .line 5
    .line 6
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/uA/vS/sP;->AVc:I

    .line 7
    .line 8
    const/high16 p1, 0x41400000    # 12.0f

    .line 9
    .line 10
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/uA/vS/sP;->SP:F

    .line 11
    .line 12
    const p1, 0x7fffffff

    .line 13
    .line 14
    .line 15
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/uA/vS/sP;->zwV:I

    .line 16
    .line 17
    const/4 p1, 0x2

    .line 18
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/uA/vS/sP;->oWa:I

    .line 19
    .line 20
    const/4 p1, 0x3

    .line 21
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/uA/vS/sP;->RrR:I

    .line 22
    .line 23
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/uA/vS/sP;->Ph:Landroid/text/TextUtils$TruncateAt;

    .line 26
    .line 27
    const/high16 p1, -0x40800000    # -1.0f

    .line 28
    .line 29
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/uA/vS/sP;->GMp:F

    .line 30
    .line 31
    const/high16 p1, 0x43c80000    # 400.0f

    .line 32
    .line 33
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/uA/vS/sP;->hzV:F

    .line 34
    .line 35
    return-void
.end method

.method private Dq(Ljava/lang/String;)Landroid/text/TextUtils$TruncateAt;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sparse-switch v1, :sswitch_data_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :sswitch_0
    const-string v1, "start"

    .line 14
    .line 15
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x2

    .line 23
    goto :goto_0

    .line 24
    :sswitch_1
    const-string v1, "end"

    .line 25
    .line 26
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-nez p1, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 v0, 0x1

    .line 34
    goto :goto_0

    .line 35
    :sswitch_2
    const-string v1, "center"

    .line 36
    .line 37
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-nez p1, :cond_2

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    const/4 v0, 0x0

    .line 45
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 46
    .line 47
    .line 48
    const/4 p1, 0x0

    .line 49
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/uA/vS/sP;->gq:Landroid/text/TextUtils$TruncateAt;

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :pswitch_0
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    .line 53
    .line 54
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/uA/vS/sP;->gq:Landroid/text/TextUtils$TruncateAt;

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :pswitch_1
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 58
    .line 59
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/uA/vS/sP;->gq:Landroid/text/TextUtils$TruncateAt;

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :pswitch_2
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    .line 63
    .line 64
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/uA/vS/sP;->gq:Landroid/text/TextUtils$TruncateAt;

    .line 65
    .line 66
    :goto_1
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/uA/vS/sP;->gq:Landroid/text/TextUtils$TruncateAt;

    .line 67
    .line 68
    return-object p1

    .line 69
    :sswitch_data_0
    .sparse-switch
        -0x514d33ab -> :sswitch_2
        0x188db -> :sswitch_1
        0x68ac462 -> :sswitch_0
    .end sparse-switch

    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private EjP()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->HiB:Landroid/view/View;

    .line 2
    .line 3
    check-cast v0, Lcom/bytedance/adsdk/ugeno/uA/vS/Sj;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iget v2, p0, Lcom/bytedance/adsdk/ugeno/uA/vS/sP;->GMp:F

    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private TEQ(Ljava/lang/String;)I
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, -0x4642c5d0

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x2

    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x1

    .line 11
    if-eq v0, v1, :cond_2

    .line 12
    .line 13
    const v1, -0x3df94319

    .line 14
    .line 15
    .line 16
    if-eq v0, v1, :cond_1

    .line 17
    .line 18
    const v1, 0x2e3a85

    .line 19
    .line 20
    .line 21
    if-eq v0, v1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const-string v0, "bold"

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_3

    .line 31
    .line 32
    move p1, v3

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    const-string v0, "normal"

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_3

    .line 41
    .line 42
    move p1, v2

    .line 43
    goto :goto_1

    .line 44
    :cond_2
    const-string v0, "italic"

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_3

    .line 51
    .line 52
    move p1, v4

    .line 53
    goto :goto_1

    .line 54
    :cond_3
    :goto_0
    const/4 p1, -0x1

    .line 55
    :goto_1
    if-eqz p1, :cond_4

    .line 56
    .line 57
    if-eq p1, v4, :cond_5

    .line 58
    .line 59
    move v2, v3

    .line 60
    goto :goto_2

    .line 61
    :cond_4
    move v2, v4

    .line 62
    :cond_5
    :goto_2
    return v2
.end method

.method private Ym(Ljava/lang/String;)I
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 3
    .line 4
    .line 5
    const/4 v1, -0x1

    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    sparse-switch v2, :sswitch_data_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :sswitch_0
    const-string v2, "right"

    .line 15
    .line 16
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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
    move v1, v0

    .line 24
    goto :goto_0

    .line 25
    :sswitch_1
    const-string v2, "left"

    .line 26
    .line 27
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-nez p1, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 v1, 0x1

    .line 35
    goto :goto_0

    .line 36
    :sswitch_2
    const-string v2, "center"

    .line 37
    .line 38
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-nez p1, :cond_2

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    const/4 v1, 0x0

    .line 46
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :pswitch_0
    const/4 v0, 0x5

    .line 51
    goto :goto_1

    .line 52
    :pswitch_1
    const/4 v0, 0x3

    .line 53
    goto :goto_1

    .line 54
    :pswitch_2
    const/16 v0, 0x11

    .line 55
    .line 56
    :goto_1
    return v0

    .line 57
    :sswitch_data_0
    .sparse-switch
        -0x514d33ab -> :sswitch_2
        0x32a007 -> :sswitch_1
        0x677c21c -> :sswitch_0
    .end sparse-switch

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private aa(Ljava/lang/String;)I
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 2
    .line 3
    .line 4
    const v0, 0x7fffffff

    .line 5
    .line 6
    .line 7
    const/4 v1, -0x1

    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    sparse-switch v2, :sswitch_data_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :sswitch_0
    const-string v2, "none"

    .line 17
    .line 18
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v1, 0x2

    .line 26
    goto :goto_0

    .line 27
    :sswitch_1
    const-string v2, "strikethrough"

    .line 28
    .line 29
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-nez p1, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v1, 0x1

    .line 37
    goto :goto_0

    .line 38
    :sswitch_2
    const-string v2, "underline"

    .line 39
    .line 40
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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
    const/4 v1, 0x0

    .line 48
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :pswitch_0
    const/16 v0, 0x10

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :pswitch_1
    const/16 v0, 0x8

    .line 56
    .line 57
    :goto_1
    :pswitch_2
    return v0

    .line 58
    nop

    .line 59
    :sswitch_data_0
    .sparse-switch
        -0x3d363934 -> :sswitch_2
        -0x39f7812d -> :sswitch_1
        0x33af38 -> :sswitch_0
    .end sparse-switch

    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private uA(Ljava/lang/String;)Landroid/text/TextUtils$TruncateAt;
    .locals 1

    .line 9
    const-string v0, "none"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 10
    :cond_0
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    return-object p1
.end method

.method private uA()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/bytedance/adsdk/ugeno/uA/vS/sP;->GMp:F

    const/high16 v1, 0x40400000    # 3.0f

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->HiB:Landroid/view/View;

    check-cast v1, Lcom/bytedance/adsdk/ugeno/uA/vS/Sj;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setLineSpacing(FF)V

    return-void

    .line 3
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_1

    .line 4
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->sP:Landroid/content/Context;

    iget v2, p0, Lcom/bytedance/adsdk/ugeno/uA/vS/sP;->SP:F

    const v3, 0x3f99999a    # 1.2f

    mul-float/2addr v2, v3

    sub-float/2addr v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    invoke-static {v1, v0}, Lcom/bytedance/adsdk/ugeno/Jcg/Dq;->Sj(Landroid/content/Context;F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 5
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->HiB:Landroid/view/View;

    check-cast v1, Lcom/bytedance/adsdk/ugeno/uA/vS/Sj;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    add-int/2addr v1, v0

    .line 6
    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->HiB:Landroid/view/View;

    check-cast v2, Lcom/bytedance/adsdk/ugeno/uA/vS/Sj;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int/2addr v2, v0

    .line 7
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->HiB:Landroid/view/View;

    move-object v3, v0

    check-cast v3, Lcom/bytedance/adsdk/ugeno/uA/vS/Sj;

    check-cast v0, Lcom/bytedance/adsdk/ugeno/uA/vS/Sj;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    iget-object v4, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->HiB:Landroid/view/View;

    check-cast v4, Lcom/bytedance/adsdk/ugeno/uA/vS/Sj;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    invoke-virtual {v3, v0, v1, v4, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 8
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->HiB:Landroid/view/View;

    check-cast v0, Lcom/bytedance/adsdk/ugeno/uA/vS/Sj;

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->sP:Landroid/content/Context;

    iget v2, p0, Lcom/bytedance/adsdk/ugeno/uA/vS/sP;->GMp:F

    invoke-static {v1, v2}, Lcom/bytedance/adsdk/ugeno/Jcg/Dq;->Sj(Landroid/content/Context;F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Lcom/bytedance/adsdk/ugeno/uA/vS/a;->a(Lcom/bytedance/adsdk/ugeno/uA/vS/Sj;I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public Jcg(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/uA/vS/sP;->Sj:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const-string v0, "null"

    .line 11
    .line 12
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    const-string p1, ""

    .line 19
    .line 20
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/uA/vS/sP;->Sj:Ljava/lang/String;

    .line 21
    .line 22
    :cond_1
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->HiB:Landroid/view/View;

    .line 23
    .line 24
    check-cast p1, Lcom/bytedance/adsdk/ugeno/uA/vS/Sj;

    .line 25
    .line 26
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/vS/sP;->Sj:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public synthetic Sj()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/uA/vS/sP;->TKC()Lcom/bytedance/adsdk/ugeno/uA/vS/Sj;

    move-result-object v0

    return-object v0
.end method

.method public Sj(I)V
    .locals 1

    .line 2
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/uA/vS/sP;->mj:I

    const v0, 0x7fffffff

    if-ne p1, v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->HiB:Landroid/view/View;

    check-cast v0, Lcom/bytedance/adsdk/ugeno/uA/vS/Sj;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setPaintFlags(I)V

    return-void
.end method

.method public Sj(Landroid/text/TextUtils$TruncateAt;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->HiB:Landroid/view/View;

    check-cast v0, Lcom/bytedance/adsdk/ugeno/uA/vS/Sj;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    return-void
.end method

.method public Sj(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->Sj(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v5, "letterSpacing"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v4, 0x13

    goto/16 :goto_0

    :sswitch_1
    const-string v5, "ellipsize"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v4, 0x12

    goto/16 :goto_0

    :sswitch_2
    const-string v5, "maxLines"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v4, 0x11

    goto/16 :goto_0

    :sswitch_3
    const-string v5, "ellipsis"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v4, 0x10

    goto/16 :goto_0

    :sswitch_4
    const-string v5, "lines"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v4, 0xf

    goto/16 :goto_0

    :sswitch_5
    const-string v5, "text"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v4, 0xe

    goto/16 :goto_0

    :sswitch_6
    const-string v5, "lineHeight"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v4, 0xd

    goto/16 :goto_0

    :sswitch_7
    const-string v5, "fontWeight"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v4, 0xc

    goto/16 :goto_0

    :sswitch_8
    const-string v5, "shadowDy"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v4, 0xb

    goto/16 :goto_0

    :sswitch_9
    const-string v5, "shadowDx"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v4, 0xa

    goto/16 :goto_0

    :sswitch_a
    const-string v5, "textDecoration"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v4, 0x9

    goto/16 :goto_0

    :sswitch_b
    const-string v5, "textSize"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v4, 0x8

    goto/16 :goto_0

    :sswitch_c
    const-string v5, "shadowBlur"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto :goto_0

    :cond_d
    const/4 v4, 0x7

    goto :goto_0

    :sswitch_d
    const-string v5, "textStyle"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    goto :goto_0

    :cond_e
    const/4 v4, 0x6

    goto :goto_0

    :sswitch_e
    const-string v5, "textColor"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    goto :goto_0

    :cond_f
    const/4 v4, 0x5

    goto :goto_0

    :sswitch_f
    const-string v5, "textAlign"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    goto :goto_0

    :cond_10
    const/4 v4, 0x4

    goto :goto_0

    :sswitch_10
    const-string v5, "shadowOffsetY"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    goto :goto_0

    :cond_11
    const/4 v4, 0x3

    goto :goto_0

    :sswitch_11
    const-string v5, "shadowOffsetX"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    goto :goto_0

    :cond_12
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_12
    const-string v5, "shadowColor"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    goto :goto_0

    :cond_13
    move v4, v0

    goto :goto_0

    :sswitch_13
    const-string v5, "shadowRadius"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14

    goto :goto_0

    :cond_14
    move v4, v1

    :goto_0
    packed-switch v4, :pswitch_data_0

    goto/16 :goto_1

    .line 8
    :pswitch_0
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->sP:Landroid/content/Context;

    invoke-static {p2, v3}, Lcom/bytedance/adsdk/ugeno/Jcg/TKC;->Sj(Ljava/lang/String;F)F

    move-result p2

    invoke-static {p1, p2}, Lcom/bytedance/adsdk/ugeno/Jcg/Dq;->Sj(Landroid/content/Context;F)F

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/uA/vS/sP;->WxP:F

    return-void

    .line 9
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/bytedance/adsdk/ugeno/uA/vS/sP;->Dq(Ljava/lang/String;)Landroid/text/TextUtils$TruncateAt;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/uA/vS/sP;->gq:Landroid/text/TextUtils$TruncateAt;

    return-void

    :pswitch_2
    const p1, 0x7fffffff

    .line 10
    invoke-static {p2, p1}, Lcom/bytedance/adsdk/ugeno/Jcg/TKC;->Sj(Ljava/lang/String;I)I

    move-result p2

    if-lez p2, :cond_15

    move p1, p2

    .line 11
    :cond_15
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/uA/vS/sP;->zwV:I

    return-void

    .line 12
    :pswitch_3
    invoke-direct {p0, p2}, Lcom/bytedance/adsdk/ugeno/uA/vS/sP;->uA(Ljava/lang/String;)Landroid/text/TextUtils$TruncateAt;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/uA/vS/sP;->Ph:Landroid/text/TextUtils$TruncateAt;

    return-void

    .line 13
    :pswitch_4
    invoke-static {p2, v1}, Lcom/bytedance/adsdk/ugeno/Jcg/TKC;->Sj(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/uA/vS/sP;->Xqg:I

    return-void

    .line 14
    :pswitch_5
    iput-object p2, p0, Lcom/bytedance/adsdk/ugeno/uA/vS/sP;->Sj:Ljava/lang/String;

    return-void

    .line 15
    :pswitch_6
    invoke-static {p2, v2}, Lcom/bytedance/adsdk/ugeno/Jcg/TKC;->Sj(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/uA/vS/sP;->GMp:F

    return-void

    :pswitch_7
    const/high16 p1, -0x40800000    # -1.0f

    .line 16
    invoke-static {p2, p1}, Lcom/bytedance/adsdk/ugeno/Jcg/TKC;->Sj(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/uA/vS/sP;->hzV:F

    cmpg-float p2, p1, v2

    if-ltz p2, :cond_16

    const/high16 p2, 0x447a0000    # 1000.0f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_17

    :cond_16
    const/high16 p1, 0x43c80000    # 400.0f

    .line 17
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/uA/vS/sP;->hzV:F

    return-void

    .line 18
    :pswitch_8
    invoke-static {p2, v3}, Lcom/bytedance/adsdk/ugeno/Jcg/TKC;->Sj(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/uA/vS/sP;->tX:F

    return-void

    .line 19
    :pswitch_9
    invoke-static {p2, v3}, Lcom/bytedance/adsdk/ugeno/Jcg/TKC;->Sj(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/uA/vS/sP;->Grp:F

    return-void

    .line 20
    :pswitch_a
    invoke-direct {p0, p2}, Lcom/bytedance/adsdk/ugeno/uA/vS/sP;->aa(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/uA/vS/sP;->mj:I

    return-void

    .line 21
    :pswitch_b
    invoke-static {p2, v3}, Lcom/bytedance/adsdk/ugeno/Jcg/TKC;->Sj(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/uA/vS/sP;->SP:F

    return-void

    .line 22
    :pswitch_c
    invoke-direct {p0, p2}, Lcom/bytedance/adsdk/ugeno/uA/vS/sP;->TEQ(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/uA/vS/sP;->dLt:I

    return-void

    .line 23
    :pswitch_d
    invoke-static {p2}, Lcom/bytedance/adsdk/ugeno/Jcg/Sj;->Sj(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/uA/vS/sP;->AVc:I

    return-void

    .line 24
    :pswitch_e
    invoke-direct {p0, p2}, Lcom/bytedance/adsdk/ugeno/uA/vS/sP;->Ym(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/uA/vS/sP;->oWa:I

    return-void

    .line 25
    :pswitch_f
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->sP:Landroid/content/Context;

    invoke-static {p2, v3}, Lcom/bytedance/adsdk/ugeno/Jcg/TKC;->Sj(Ljava/lang/String;F)F

    move-result p2

    invoke-static {p1, p2}, Lcom/bytedance/adsdk/ugeno/Jcg/Dq;->Sj(Landroid/content/Context;F)F

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/uA/vS/sP;->Ov:F

    :cond_17
    :goto_1
    return-void

    .line 26
    :pswitch_10
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->sP:Landroid/content/Context;

    invoke-static {p2, v3}, Lcom/bytedance/adsdk/ugeno/Jcg/TKC;->Sj(Ljava/lang/String;F)F

    move-result p2

    invoke-static {p1, p2}, Lcom/bytedance/adsdk/ugeno/Jcg/Dq;->Sj(Landroid/content/Context;F)F

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/uA/vS/sP;->Aw:F

    return-void

    .line 27
    :pswitch_11
    invoke-static {p2}, Lcom/bytedance/adsdk/ugeno/Jcg/Sj;->Sj(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/uA/vS/sP;->TX:I

    .line 28
    iput-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/uA/vS/sP;->vb:Z

    return-void

    .line 29
    :pswitch_12
    invoke-static {p2, v3}, Lcom/bytedance/adsdk/ugeno/Jcg/TKC;->Sj(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/uA/vS/sP;->tPD:F

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x609f862e -> :sswitch_13
        -0x5ec185dd -> :sswitch_12
        -0x495b371b -> :sswitch_11
        -0x495b371a -> :sswitch_10
        -0x3f826a28 -> :sswitch_f
        -0x3f64d1ca -> :sswitch_e
        -0x3e80e37c -> :sswitch_d
        -0x3cdd7259 -> :sswitch_c
        -0x3bd2c532 -> :sswitch_b
        -0x3468fa43 -> :sswitch_a
        -0x2d15462c -> :sswitch_9
        -0x2d15462b -> :sswitch_8
        -0x2bc67c59 -> :sswitch_7
        -0x1ebe99c5 -> :sswitch_6
        0x36452d -> :sswitch_5
        0x6234eff -> :sswitch_4
        0xb3f60d1 -> :sswitch_3
        0x174277fb -> :sswitch_2
        0x5cacba8d -> :sswitch_1
        0x7dd4813d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_12
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public TKC()Lcom/bytedance/adsdk/ugeno/uA/vS/Sj;
    .locals 2

    .line 1
    new-instance v0, Lcom/bytedance/adsdk/ugeno/uA/vS/Sj;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->sP:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/bytedance/adsdk/ugeno/uA/vS/Sj;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p0}, Lcom/bytedance/adsdk/ugeno/uA/vS/Sj;->Sj(Lcom/bytedance/adsdk/ugeno/EjP;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public sP()V
    .locals 9

    .line 1
    invoke-super {p0}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->sP()V

    .line 2
    .line 3
    .line 4
    const-string v0, "null"

    .line 5
    .line 6
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/uA/vS/sP;->Sj:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const-string v0, ""

    .line 15
    .line 16
    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/vS/sP;->Sj:Ljava/lang/String;

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/vS/sP;->Sj:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lcom/bytedance/adsdk/ugeno/uA/vS/sP;->Jcg(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->HiB:Landroid/view/View;

    .line 24
    .line 25
    check-cast v0, Lcom/bytedance/adsdk/ugeno/uA/vS/Sj;

    .line 26
    .line 27
    iget v1, p0, Lcom/bytedance/adsdk/ugeno/uA/vS/sP;->SP:F

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->HiB:Landroid/view/View;

    .line 34
    .line 35
    check-cast v0, Lcom/bytedance/adsdk/ugeno/uA/vS/Sj;

    .line 36
    .line 37
    iget v1, p0, Lcom/bytedance/adsdk/ugeno/uA/vS/sP;->AVc:I

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->HiB:Landroid/view/View;

    .line 43
    .line 44
    check-cast v0, Lcom/bytedance/adsdk/ugeno/uA/vS/Sj;

    .line 45
    .line 46
    iget v1, p0, Lcom/bytedance/adsdk/ugeno/uA/vS/sP;->Xqg:I

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->HiB:Landroid/view/View;

    .line 52
    .line 53
    check-cast v0, Lcom/bytedance/adsdk/ugeno/uA/vS/Sj;

    .line 54
    .line 55
    iget v1, p0, Lcom/bytedance/adsdk/ugeno/uA/vS/sP;->zwV:I

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->HiB:Landroid/view/View;

    .line 61
    .line 62
    check-cast v0, Lcom/bytedance/adsdk/ugeno/uA/vS/Sj;

    .line 63
    .line 64
    iget v1, p0, Lcom/bytedance/adsdk/ugeno/uA/vS/sP;->oWa:I

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->HiB:Landroid/view/View;

    .line 70
    .line 71
    check-cast v0, Lcom/bytedance/adsdk/ugeno/uA/vS/Sj;

    .line 72
    .line 73
    const/4 v1, 0x0

    .line 74
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 75
    .line 76
    .line 77
    iget v0, p0, Lcom/bytedance/adsdk/ugeno/uA/vS/sP;->mj:I

    .line 78
    .line 79
    invoke-virtual {p0, v0}, Lcom/bytedance/adsdk/ugeno/uA/vS/sP;->Sj(I)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->LD()Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_1

    .line 87
    .line 88
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/vS/sP;->Ph:Landroid/text/TextUtils$TruncateAt;

    .line 89
    .line 90
    invoke-virtual {p0, v0}, Lcom/bytedance/adsdk/ugeno/uA/vS/sP;->Sj(Landroid/text/TextUtils$TruncateAt;)V

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/vS/sP;->gq:Landroid/text/TextUtils$TruncateAt;

    .line 95
    .line 96
    invoke-virtual {p0, v0}, Lcom/bytedance/adsdk/ugeno/uA/vS/sP;->Sj(Landroid/text/TextUtils$TruncateAt;)V

    .line 97
    .line 98
    .line 99
    :goto_0
    iget v0, p0, Lcom/bytedance/adsdk/ugeno/uA/vS/sP;->GMp:F

    .line 100
    .line 101
    const/4 v3, 0x0

    .line 102
    cmpl-float v0, v0, v3

    .line 103
    .line 104
    if-lez v0, :cond_3

    .line 105
    .line 106
    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->LD()Z

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    if-eqz v0, :cond_2

    .line 111
    .line 112
    invoke-direct {p0}, Lcom/bytedance/adsdk/ugeno/uA/vS/sP;->uA()V

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_2
    invoke-direct {p0}, Lcom/bytedance/adsdk/ugeno/uA/vS/sP;->EjP()V

    .line 117
    .line 118
    .line 119
    :cond_3
    :goto_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 120
    .line 121
    iget-object v4, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->HiB:Landroid/view/View;

    .line 122
    .line 123
    check-cast v4, Lcom/bytedance/adsdk/ugeno/uA/vS/Sj;

    .line 124
    .line 125
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setBreakStrategy(I)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->LD()Z

    .line 129
    .line 130
    .line 131
    move-result v4

    .line 132
    if-eqz v4, :cond_5

    .line 133
    .line 134
    iget-boolean v4, p0, Lcom/bytedance/adsdk/ugeno/uA/vS/sP;->vb:Z

    .line 135
    .line 136
    if-eqz v4, :cond_6

    .line 137
    .line 138
    iget v4, p0, Lcom/bytedance/adsdk/ugeno/uA/vS/sP;->tPD:F

    .line 139
    .line 140
    cmpg-float v4, v4, v3

    .line 141
    .line 142
    if-gtz v4, :cond_4

    .line 143
    .line 144
    const v4, 0x3727c5ac    # 1.0E-5f

    .line 145
    .line 146
    .line 147
    iput v4, p0, Lcom/bytedance/adsdk/ugeno/uA/vS/sP;->tPD:F

    .line 148
    .line 149
    :cond_4
    iget-object v4, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->HiB:Landroid/view/View;

    .line 150
    .line 151
    check-cast v4, Lcom/bytedance/adsdk/ugeno/uA/vS/Sj;

    .line 152
    .line 153
    iget v5, p0, Lcom/bytedance/adsdk/ugeno/uA/vS/sP;->tPD:F

    .line 154
    .line 155
    iget v6, p0, Lcom/bytedance/adsdk/ugeno/uA/vS/sP;->Aw:F

    .line 156
    .line 157
    iget v7, p0, Lcom/bytedance/adsdk/ugeno/uA/vS/sP;->Ov:F

    .line 158
    .line 159
    iget v8, p0, Lcom/bytedance/adsdk/ugeno/uA/vS/sP;->TX:I

    .line 160
    .line 161
    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 162
    .line 163
    .line 164
    goto :goto_2

    .line 165
    :cond_5
    iget-object v4, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->HiB:Landroid/view/View;

    .line 166
    .line 167
    check-cast v4, Lcom/bytedance/adsdk/ugeno/uA/vS/Sj;

    .line 168
    .line 169
    iget v5, p0, Lcom/bytedance/adsdk/ugeno/uA/vS/sP;->tPD:F

    .line 170
    .line 171
    iget v6, p0, Lcom/bytedance/adsdk/ugeno/uA/vS/sP;->Grp:F

    .line 172
    .line 173
    iget v7, p0, Lcom/bytedance/adsdk/ugeno/uA/vS/sP;->tX:F

    .line 174
    .line 175
    iget v8, p0, Lcom/bytedance/adsdk/ugeno/uA/vS/sP;->TX:I

    .line 176
    .line 177
    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 178
    .line 179
    .line 180
    :cond_6
    :goto_2
    iget v4, p0, Lcom/bytedance/adsdk/ugeno/uA/vS/sP;->dLt:I

    .line 181
    .line 182
    if-ne v4, v2, :cond_7

    .line 183
    .line 184
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->HiB:Landroid/view/View;

    .line 185
    .line 186
    check-cast v0, Lcom/bytedance/adsdk/ugeno/uA/vS/Sj;

    .line 187
    .line 188
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 189
    .line 190
    invoke-virtual {v0, v1, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 191
    .line 192
    .line 193
    goto :goto_4

    .line 194
    :cond_7
    const/16 v5, 0x1c

    .line 195
    .line 196
    if-lt v0, v5, :cond_9

    .line 197
    .line 198
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 199
    .line 200
    iget v5, p0, Lcom/bytedance/adsdk/ugeno/uA/vS/sP;->hzV:F

    .line 201
    .line 202
    float-to-int v5, v5

    .line 203
    const/4 v6, 0x2

    .line 204
    if-ne v4, v6, :cond_8

    .line 205
    .line 206
    goto :goto_3

    .line 207
    :cond_8
    move v2, v1

    .line 208
    :goto_3
    invoke-static {v0, v5, v2}, Landroidx/compose/ui/text/font/y;->a(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->HiB:Landroid/view/View;

    .line 213
    .line 214
    check-cast v1, Lcom/bytedance/adsdk/ugeno/uA/vS/Sj;

    .line 215
    .line 216
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 217
    .line 218
    .line 219
    goto :goto_4

    .line 220
    :cond_9
    iget v0, p0, Lcom/bytedance/adsdk/ugeno/uA/vS/sP;->hzV:F

    .line 221
    .line 222
    const/high16 v1, 0x43fa0000    # 500.0f

    .line 223
    .line 224
    cmpl-float v0, v0, v1

    .line 225
    .line 226
    if-ltz v0, :cond_a

    .line 227
    .line 228
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->HiB:Landroid/view/View;

    .line 229
    .line 230
    check-cast v0, Lcom/bytedance/adsdk/ugeno/uA/vS/Sj;

    .line 231
    .line 232
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 233
    .line 234
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 235
    .line 236
    .line 237
    :cond_a
    :goto_4
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->sP:Landroid/content/Context;

    .line 238
    .line 239
    iget v1, p0, Lcom/bytedance/adsdk/ugeno/uA/vS/sP;->SP:F

    .line 240
    .line 241
    invoke-static {v0, v1}, Lcom/bytedance/adsdk/ugeno/Jcg/Dq;->Sj(Landroid/content/Context;F)F

    .line 242
    .line 243
    .line 244
    move-result v0

    .line 245
    cmpl-float v0, v0, v3

    .line 246
    .line 247
    if-lez v0, :cond_b

    .line 248
    .line 249
    iget v0, p0, Lcom/bytedance/adsdk/ugeno/uA/vS/sP;->WxP:F

    .line 250
    .line 251
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->sP:Landroid/content/Context;

    .line 252
    .line 253
    iget v2, p0, Lcom/bytedance/adsdk/ugeno/uA/vS/sP;->SP:F

    .line 254
    .line 255
    invoke-static {v1, v2}, Lcom/bytedance/adsdk/ugeno/Jcg/Dq;->Sj(Landroid/content/Context;F)F

    .line 256
    .line 257
    .line 258
    move-result v1

    .line 259
    div-float/2addr v0, v1

    .line 260
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->HiB:Landroid/view/View;

    .line 261
    .line 262
    check-cast v1, Lcom/bytedance/adsdk/ugeno/uA/vS/Sj;

    .line 263
    .line 264
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 265
    .line 266
    .line 267
    :cond_b
    return-void
.end method
