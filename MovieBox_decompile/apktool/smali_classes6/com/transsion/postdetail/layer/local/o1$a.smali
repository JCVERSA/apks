.class public final Lcom/transsion/postdetail/layer/local/o1$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/postdetail/layer/local/o1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/postdetail/layer/local/o1$a;-><init>()V

    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/postdetail/layer/local/o1$a;->i(Lkotlin/jvm/functions/Function0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Landroid/view/View;Lkotlin/jvm/functions/Function0;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/postdetail/layer/local/o1$a;->h(Landroid/view/View;Lkotlin/jvm/functions/Function0;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/postdetail/layer/local/o1$a;->m(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/postdetail/layer/local/o1$a;->g(Landroid/view/View;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic e(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/postdetail/layer/local/o1$a;->j(Lkotlin/jvm/functions/Function0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final g(Landroid/view/View;)Lkotlin/Unit;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/postdetail/layer/local/o1;->b:Lcom/transsion/postdetail/layer/local/o1$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/transsion/postdetail/layer/local/o1$a;->l(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p0
.end method

.method private static final h(Landroid/view/View;Lkotlin/jvm/functions/Function0;Landroid/view/View;)V
    .locals 0

    .line 1
    sget-object p2, Lcom/transsion/postdetail/layer/local/o1;->b:Lcom/transsion/postdetail/layer/local/o1$a;

    .line 2
    .line 3
    invoke-direct {p2, p0}, Lcom/transsion/postdetail/layer/local/o1$a;->l(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    new-instance p2, Lcom/transsion/postdetail/layer/local/m1;

    .line 7
    .line 8
    invoke-direct {p2, p1}, Lcom/transsion/postdetail/layer/local/m1;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private static final i(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final j(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final l(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-wide/16 v1, 0x12c

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 12
    .line 13
    .line 14
    new-instance v1, Lcom/transsion/postdetail/layer/local/n1;

    .line 15
    .line 16
    invoke-direct {v1, p1}, Lcom/transsion/postdetail/layer/local/n1;-><init>(Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method private static final m(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0}, Luf/c;->g(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final f(Lmn/j;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/o1$a;->k()Lcom/tencent/mmkv/MMKV;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const-string v2, "video_show_guide"

    .line 7
    .line 8
    invoke-virtual {v0, v2, v1}, Lcom/tencent/mmkv/MMKV;->getBoolean(Ljava/lang/String;Z)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    if-eqz p1, :cond_1

    .line 16
    .line 17
    iget-object v0, p1, Lmn/j;->p:Lmn/l;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v0, v0, Lmn/l;->p:Landroid/view/ViewStub;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 v0, 0x0

    .line 31
    :goto_0
    if-nez v0, :cond_2

    .line 32
    .line 33
    return-void

    .line 34
    :cond_2
    iget-object p1, p1, Lmn/j;->p:Lmn/l;

    .line 35
    .line 36
    iget-object p1, p1, Lmn/l;->p:Landroid/view/ViewStub;

    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    if-eqz p1, :cond_3

    .line 43
    .line 44
    sget-object v0, Lcom/transsion/postdetail/layer/local/o1;->b:Lcom/transsion/postdetail/layer/local/o1$a;

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/transsion/postdetail/layer/local/o1$a;->k()Lcom/tencent/mmkv/MMKV;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const/4 v1, 0x1

    .line 51
    invoke-virtual {v0, v2, v1}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 52
    .line 53
    .line 54
    new-instance v0, Lcom/transsion/postdetail/layer/local/j1;

    .line 55
    .line 56
    invoke-direct {v0, p1}, Lcom/transsion/postdetail/layer/local/j1;-><init>(Landroid/view/View;)V

    .line 57
    .line 58
    .line 59
    new-instance v1, Lcom/transsion/postdetail/layer/local/k1;

    .line 60
    .line 61
    invoke-direct {v1, p1, v0}, Lcom/transsion/postdetail/layer/local/k1;-><init>(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    .line 66
    .line 67
    new-instance v1, Lcom/transsion/postdetail/layer/local/l1;

    .line 68
    .line 69
    invoke-direct {v1, v0}, Lcom/transsion/postdetail/layer/local/l1;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 70
    .line 71
    .line 72
    const-wide/16 v2, 0xbb8

    .line 73
    .line 74
    invoke-virtual {p1, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 75
    .line 76
    .line 77
    :cond_3
    return-void
.end method

.method public final k()Lcom/tencent/mmkv/MMKV;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/postdetail/layer/local/o1;->b()Lkotlin/Lazy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/tencent/mmkv/MMKV;

    .line 10
    .line 11
    return-object v0
.end method
