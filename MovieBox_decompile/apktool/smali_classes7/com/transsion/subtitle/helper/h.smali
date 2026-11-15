.class public final Lcom/transsion/subtitle/helper/h;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/subtitle/helper/h$a;
    }
.end annotation


# static fields
.field public static final o:Lcom/transsion/subtitle/helper/h$a;


# instance fields
.field private final a:Landroid/view/ViewGroup;

.field private b:Lht/a;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/EditText;

.field private g:Landroid/os/Handler;

.field private h:F

.field private i:Lkotlin/jvm/functions/Function2;

.field private j:Lkotlin/jvm/functions/Function0;

.field private k:J

.field private l:F

.field private final m:Ljava/lang/Runnable;

.field private final n:Lcom/transsion/subtitle/helper/h$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/subtitle/helper/h$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/subtitle/helper/h$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/subtitle/helper/h;->o:Lcom/transsion/subtitle/helper/h$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/subtitle/helper/h;->a:Landroid/view/ViewGroup;

    .line 5
    .line 6
    new-instance p1, Landroid/os/Handler;

    .line 7
    .line 8
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lcom/transsion/subtitle/helper/h;->g:Landroid/os/Handler;

    .line 16
    .line 17
    new-instance p1, Lcom/transsion/subtitle/helper/g;

    .line 18
    .line 19
    invoke-direct {p1, p0}, Lcom/transsion/subtitle/helper/g;-><init>(Lcom/transsion/subtitle/helper/h;)V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lcom/transsion/subtitle/helper/h;->m:Ljava/lang/Runnable;

    .line 23
    .line 24
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    new-instance v0, Lcom/transsion/subtitle/helper/h$c;

    .line 29
    .line 30
    invoke-direct {v0, p0, p1}, Lcom/transsion/subtitle/helper/h$c;-><init>(Lcom/transsion/subtitle/helper/h;Landroid/os/Looper;)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/transsion/subtitle/helper/h;->n:Lcom/transsion/subtitle/helper/h$c;

    .line 34
    .line 35
    return-void
.end method

.method public static synthetic a(Lcom/transsion/subtitle/helper/h;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/subtitle/helper/h;->s(Lcom/transsion/subtitle/helper/h;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/transsion/subtitle/helper/h;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/subtitle/helper/h;->p(Lcom/transsion/subtitle/helper/h;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic c(Lcom/transsion/subtitle/helper/h;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/transsion/subtitle/helper/h;->l:F

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic d(Lcom/transsion/subtitle/helper/h;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/transsion/subtitle/helper/h;->h:F

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic e(Lcom/transsion/subtitle/helper/h;)Landroid/widget/EditText;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/subtitle/helper/h;->f:Landroid/widget/EditText;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic f(Lcom/transsion/subtitle/helper/h;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/subtitle/helper/h;->g:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic g(Lcom/transsion/subtitle/helper/h;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/subtitle/helper/h;->m:Ljava/lang/Runnable;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic h(Lcom/transsion/subtitle/helper/h;F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/subtitle/helper/h;->l:F

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic i(Lcom/transsion/subtitle/helper/h;F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/subtitle/helper/h;->h:F

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic j(Lcom/transsion/subtitle/helper/h;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/subtitle/helper/h;->t(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic k(Lcom/transsion/subtitle/helper/h;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/subtitle/helper/h;->u(J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final l(Ljava/lang/CharSequence;F)F
    .locals 11

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return p2

    .line 8
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const-string v0, "s"

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
    move-result v4

    .line 21
    if-eqz v4, :cond_1

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    add-int/lit8 v4, v4, -0x1

    .line 28
    .line 29
    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const-string v4, "substring(...)"

    .line 34
    .line 35
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    const/4 v9, 0x4

    .line 45
    const/4 v10, 0x0

    .line 46
    const-string v6, "s"

    .line 47
    .line 48
    const-string v7, ""

    .line 49
    .line 50
    const/4 v8, 0x0

    .line 51
    move-object v5, p1

    .line 52
    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    :cond_2
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 56
    .line 57
    .line 58
    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :catchall_0
    return p2
.end method

.method static synthetic m(Lcom/transsion/subtitle/helper/h;Ljava/lang/CharSequence;FILjava/lang/Object;)F
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/high16 p2, 0x7fc00000    # Float.NaN

    .line 6
    .line 7
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/subtitle/helper/h;->l(Ljava/lang/CharSequence;F)F

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method private static final p(Lcom/transsion/subtitle/helper/h;Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/transsion/subtitle/helper/h;->j:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object p1, p0, Lcom/transsion/subtitle/helper/h;->g:Landroid/os/Handler;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/transsion/subtitle/helper/h;->m:Ljava/lang/Runnable;

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/transsion/subtitle/helper/h;->n()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private static final s(Lcom/transsion/subtitle/helper/h;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/subtitle/helper/h;->n()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final t(Z)V
    .locals 2

    .line 1
    const/16 v0, 0x64

    .line 2
    .line 3
    const/high16 v1, 0x447a0000    # 1000.0f

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget p1, p0, Lcom/transsion/subtitle/helper/h;->h:F

    .line 8
    .line 9
    mul-float/2addr p1, v1

    .line 10
    int-to-float v0, v0

    .line 11
    add-float/2addr p1, v0

    .line 12
    :goto_0
    div-float/2addr p1, v1

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    iget p1, p0, Lcom/transsion/subtitle/helper/h;->h:F

    .line 15
    .line 16
    mul-float/2addr p1, v1

    .line 17
    int-to-float v0, v0

    .line 18
    sub-float/2addr p1, v0

    .line 19
    goto :goto_0

    .line 20
    :goto_1
    iput p1, p0, Lcom/transsion/subtitle/helper/h;->h:F

    .line 21
    .line 22
    iget-object v0, p0, Lcom/transsion/subtitle/helper/h;->f:Landroid/widget/EditText;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string p1, "s"

    .line 35
    .line 36
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    iget-object p1, p0, Lcom/transsion/subtitle/helper/h;->g:Landroid/os/Handler;

    .line 47
    .line 48
    iget-object v0, p0, Lcom/transsion/subtitle/helper/h;->m:Ljava/lang/Runnable;

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method private final u(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/subtitle/helper/h;->b:Lht/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->setDelay(Ljava/lang/Long;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/transsion/subtitle/helper/h;->i:Lkotlin/jvm/functions/Function2;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object v1, p0, Lcom/transsion/subtitle/helper/h;->b:Lht/a;

    .line 23
    .line 24
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-interface {v0, v1, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    :cond_1
    return-void
.end method


# virtual methods
.method public final n()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/subtitle/helper/h;->a:Landroid/view/ViewGroup;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/blankj/utilcode/util/KeyboardUtils;->e(Landroid/view/View;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final o(Lkotlin/jvm/functions/Function2;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/transsion/subtitle/helper/h;->i:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/transsion/subtitle/helper/h;->a:Landroid/view/ViewGroup;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    sget v1, Lcom/transsion/subtitle/R$id;->iv_close:I

    .line 9
    .line 10
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Landroid/widget/ImageView;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object p1, v0

    .line 18
    :goto_0
    iput-object p1, p0, Lcom/transsion/subtitle/helper/h;->c:Landroid/widget/ImageView;

    .line 19
    .line 20
    iget-object p1, p0, Lcom/transsion/subtitle/helper/h;->a:Landroid/view/ViewGroup;

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    sget v1, Lcom/transsion/subtitle/R$id;->iv_sync_adjust_plus:I

    .line 25
    .line 26
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Landroid/widget/ImageView;

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move-object p1, v0

    .line 34
    :goto_1
    iput-object p1, p0, Lcom/transsion/subtitle/helper/h;->d:Landroid/widget/ImageView;

    .line 35
    .line 36
    iget-object p1, p0, Lcom/transsion/subtitle/helper/h;->a:Landroid/view/ViewGroup;

    .line 37
    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    sget v1, Lcom/transsion/subtitle/R$id;->iv_sync_adjust_minus:I

    .line 41
    .line 42
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Landroid/widget/ImageView;

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_2
    move-object p1, v0

    .line 50
    :goto_2
    iput-object p1, p0, Lcom/transsion/subtitle/helper/h;->e:Landroid/widget/ImageView;

    .line 51
    .line 52
    iget-object p1, p0, Lcom/transsion/subtitle/helper/h;->a:Landroid/view/ViewGroup;

    .line 53
    .line 54
    if-eqz p1, :cond_3

    .line 55
    .line 56
    sget v0, Lcom/transsion/subtitle/R$id;->et_sync_adjust:I

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    move-object v0, p1

    .line 63
    check-cast v0, Landroid/widget/EditText;

    .line 64
    .line 65
    :cond_3
    iput-object v0, p0, Lcom/transsion/subtitle/helper/h;->f:Landroid/widget/EditText;

    .line 66
    .line 67
    iget-object p1, p0, Lcom/transsion/subtitle/helper/h;->c:Landroid/widget/ImageView;

    .line 68
    .line 69
    if-eqz p1, :cond_4

    .line 70
    .line 71
    new-instance v0, Lcom/transsion/subtitle/helper/f;

    .line 72
    .line 73
    invoke-direct {v0, p0}, Lcom/transsion/subtitle/helper/f;-><init>(Lcom/transsion/subtitle/helper/h;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    .line 78
    .line 79
    :cond_4
    iget-object p1, p0, Lcom/transsion/subtitle/helper/h;->d:Landroid/widget/ImageView;

    .line 80
    .line 81
    if-eqz p1, :cond_5

    .line 82
    .line 83
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 84
    .line 85
    .line 86
    :cond_5
    iget-object p1, p0, Lcom/transsion/subtitle/helper/h;->e:Landroid/widget/ImageView;

    .line 87
    .line 88
    if-eqz p1, :cond_6

    .line 89
    .line 90
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 91
    .line 92
    .line 93
    :cond_6
    iget-object p1, p0, Lcom/transsion/subtitle/helper/h;->d:Landroid/widget/ImageView;

    .line 94
    .line 95
    const/4 v0, 0x1

    .line 96
    if-eqz p1, :cond_7

    .line 97
    .line 98
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 99
    .line 100
    .line 101
    :cond_7
    iget-object p1, p0, Lcom/transsion/subtitle/helper/h;->e:Landroid/widget/ImageView;

    .line 102
    .line 103
    if-eqz p1, :cond_8

    .line 104
    .line 105
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 106
    .line 107
    .line 108
    :cond_8
    iget-object p1, p0, Lcom/transsion/subtitle/helper/h;->d:Landroid/widget/ImageView;

    .line 109
    .line 110
    if-eqz p1, :cond_9

    .line 111
    .line 112
    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 113
    .line 114
    .line 115
    :cond_9
    iget-object p1, p0, Lcom/transsion/subtitle/helper/h;->e:Landroid/widget/ImageView;

    .line 116
    .line 117
    if-eqz p1, :cond_a

    .line 118
    .line 119
    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 120
    .line 121
    .line 122
    :cond_a
    iget-object p1, p0, Lcom/transsion/subtitle/helper/h;->f:Landroid/widget/EditText;

    .line 123
    .line 124
    if-eqz p1, :cond_b

    .line 125
    .line 126
    new-instance v0, Lcom/transsion/subtitle/helper/h$b;

    .line 127
    .line 128
    invoke-direct {v0, p0}, Lcom/transsion/subtitle/helper/h$b;-><init>(Lcom/transsion/subtitle/helper/h;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 132
    .line 133
    .line 134
    :cond_b
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 5
    .line 6
    .line 7
    move-result p2

    .line 8
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object p2, v0

    .line 14
    :goto_0
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x1

    .line 16
    if-nez p2, :cond_1

    .line 17
    .line 18
    goto :goto_2

    .line 19
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-nez v3, :cond_3

    .line 24
    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 26
    .line 27
    .line 28
    move-result-wide v3

    .line 29
    iput-wide v3, p0, Lcom/transsion/subtitle/helper/h;->k:J

    .line 30
    .line 31
    iget-object p2, p0, Lcom/transsion/subtitle/helper/h;->n:Lcom/transsion/subtitle/helper/h$c;

    .line 32
    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    goto :goto_1

    .line 40
    :cond_2
    move v0, v1

    .line 41
    :goto_1
    invoke-virtual {p2, v2, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const-wide/16 v3, 0x4b0

    .line 46
    .line 47
    invoke-virtual {p2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 48
    .line 49
    .line 50
    if-eqz p1, :cond_8

    .line 51
    .line 52
    invoke-virtual {p1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 53
    .line 54
    .line 55
    goto :goto_5

    .line 56
    :cond_3
    :goto_2
    if-nez p2, :cond_4

    .line 57
    .line 58
    goto :goto_5

    .line 59
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 60
    .line 61
    .line 62
    move-result p2

    .line 63
    if-ne p2, v2, :cond_8

    .line 64
    .line 65
    iget-object p2, p0, Lcom/transsion/subtitle/helper/h;->n:Lcom/transsion/subtitle/helper/h$c;

    .line 66
    .line 67
    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 71
    .line 72
    .line 73
    move-result-wide v3

    .line 74
    iget-wide v5, p0, Lcom/transsion/subtitle/helper/h;->k:J

    .line 75
    .line 76
    sub-long/2addr v3, v5

    .line 77
    const-wide/16 v5, 0x190

    .line 78
    .line 79
    cmp-long p2, v3, v5

    .line 80
    .line 81
    if-gtz p2, :cond_7

    .line 82
    .line 83
    if-eqz p1, :cond_5

    .line 84
    .line 85
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 86
    .line 87
    .line 88
    move-result p2

    .line 89
    goto :goto_3

    .line 90
    :cond_5
    move p2, v1

    .line 91
    :goto_3
    sget v0, Lcom/transsion/subtitle/R$id;->iv_sync_adjust_plus:I

    .line 92
    .line 93
    if-ne p2, v0, :cond_6

    .line 94
    .line 95
    move p2, v2

    .line 96
    goto :goto_4

    .line 97
    :cond_6
    move p2, v1

    .line 98
    :goto_4
    invoke-direct {p0, p2}, Lcom/transsion/subtitle/helper/h;->t(Z)V

    .line 99
    .line 100
    .line 101
    :cond_7
    if-eqz p1, :cond_8

    .line 102
    .line 103
    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    .line 104
    .line 105
    .line 106
    :cond_8
    :goto_5
    return v2
.end method

.method public final q(Lkotlin/jvm/functions/Function2;)V
    .locals 1

    .line 1
    const-string v0, "callback"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/subtitle/helper/h;->i:Lkotlin/jvm/functions/Function2;

    .line 7
    .line 8
    return-void
.end method

.method public final r(Lht/a;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/transsion/subtitle/helper/h;->b:Lht/a;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getDelay()Ljava/lang/Long;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const-wide/16 v0, 0x0

    .line 23
    .line 24
    :goto_0
    long-to-float p1, v0

    .line 25
    const/high16 v0, 0x447a0000    # 1000.0f

    .line 26
    .line 27
    div-float/2addr p1, v0

    .line 28
    iput p1, p0, Lcom/transsion/subtitle/helper/h;->h:F

    .line 29
    .line 30
    iput p1, p0, Lcom/transsion/subtitle/helper/h;->l:F

    .line 31
    .line 32
    iget-object v0, p0, Lcom/transsion/subtitle/helper/h;->f:Landroid/widget/EditText;

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string p1, "s"

    .line 45
    .line 46
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    sget-object p1, Lcom/transsion/subtitle/a;->a:Lcom/transsion/subtitle/a;

    .line 57
    .line 58
    const-class v0, Lcom/transsion/subtitle/helper/h;

    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iget v1, p0, Lcom/transsion/subtitle/helper/h;->h:F

    .line 65
    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v0, " --> setCurDefVideoSubtitleBean() --> cur duration = "

    .line 75
    .line 76
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {p1, v0}, Lcom/transsion/subtitle/a;->a(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    return-void
.end method
