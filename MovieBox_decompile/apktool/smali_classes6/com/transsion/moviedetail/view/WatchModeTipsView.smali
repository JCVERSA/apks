.class public final Lcom/transsion/moviedetail/view/WatchModeTipsView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tB\u0011\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\nB\u001b\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0008\u0010\u000bJ\u000f\u0010\r\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\r\u0010\u000f\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u000f\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000cH\u0014\u00a2\u0006\u0004\u0008\u0010\u0010\u000eR\u0018\u0010\u0014\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R\u0016\u0010\u0018\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\u001b\u0010\u001e\u001a\u00020\u00198BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001d\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/transsion/moviedetail/view/WatchModeTipsView;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "(Landroid/content/Context;)V",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "n",
        "()V",
        "checkShow",
        "onDetachedFromWindow",
        "Llm/z;",
        "a",
        "Llm/z;",
        "mViewBinding",
        "",
        "b",
        "Z",
        "hasShow",
        "Ljava/lang/Runnable;",
        "c",
        "Lkotlin/Lazy;",
        "getDelayShow",
        "()Ljava/lang/Runnable;",
        "delayShow",
        "MovieDetail_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private a:Llm/z;

.field private b:Z

.field private final c:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, v0}, Lcom/transsion/moviedetail/view/WatchModeTipsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/moviedetail/view/WatchModeTipsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    sget-object p1, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    invoke-virtual {p1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    const-string p2, "watch_mode_tips"

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lcom/tencent/mmkv/MMKV;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/moviedetail/view/WatchModeTipsView;->b:Z

    .line 3
    invoke-direct {p0}, Lcom/transsion/moviedetail/view/WatchModeTipsView;->n()V

    .line 4
    new-instance p1, Lcom/transsion/moviedetail/view/v;

    invoke-direct {p1, p0}, Lcom/transsion/moviedetail/view/v;-><init>(Lcom/transsion/moviedetail/view/WatchModeTipsView;)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/moviedetail/view/WatchModeTipsView;->c:Lkotlin/Lazy;

    return-void
.end method

.method private final getDelayShow()Ljava/lang/Runnable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetail/view/WatchModeTipsView;->c:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Runnable;

    .line 8
    .line 9
    return-object v0
.end method

.method public static synthetic h(Lcom/transsion/moviedetail/view/WatchModeTipsView;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/moviedetail/view/WatchModeTipsView;->p(Lcom/transsion/moviedetail/view/WatchModeTipsView;Landroid/view/View;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic i(Lcom/transsion/moviedetail/view/WatchModeTipsView;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/moviedetail/view/WatchModeTipsView;->l(Lcom/transsion/moviedetail/view/WatchModeTipsView;)Ljava/lang/Runnable;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic j(Lcom/transsion/moviedetail/view/WatchModeTipsView;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/moviedetail/view/WatchModeTipsView;->o(Lcom/transsion/moviedetail/view/WatchModeTipsView;Landroid/view/View;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic k(Lcom/transsion/moviedetail/view/WatchModeTipsView;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/moviedetail/view/WatchModeTipsView;->m(Lcom/transsion/moviedetail/view/WatchModeTipsView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final l(Lcom/transsion/moviedetail/view/WatchModeTipsView;)Ljava/lang/Runnable;
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/moviedetail/view/y;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/transsion/moviedetail/view/y;-><init>(Lcom/transsion/moviedetail/view/WatchModeTipsView;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static final m(Lcom/transsion/moviedetail/view/WatchModeTipsView;)V
    .locals 2

    .line 1
    invoke-static {p0}, Luf/c;->k(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const-string v0, "watch_mode_tips"

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {p0, v0, v1}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private final n()V
    .locals 13

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget v1, Lcom/transsion/moviedetail/R$layout;->layout_watch_mode_tips:I

    .line 6
    .line 7
    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Llm/z;->a(Landroid/view/View;)Llm/z;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/transsion/moviedetail/view/WatchModeTipsView;->a:Llm/z;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v1, v0, Llm/z;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 20
    .line 21
    const-string v2, "goWatchTv"

    .line 22
    .line 23
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    new-instance v4, Lcom/transsion/moviedetail/view/w;

    .line 27
    .line 28
    invoke-direct {v4, p0}, Lcom/transsion/moviedetail/view/w;-><init>(Lcom/transsion/moviedetail/view/WatchModeTipsView;)V

    .line 29
    .line 30
    .line 31
    const/4 v5, 0x1

    .line 32
    const/4 v6, 0x0

    .line 33
    const-wide/16 v2, 0x0

    .line 34
    .line 35
    invoke-static/range {v1 .. v6}, Luf/c;->c(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    iget-object v7, v0, Llm/z;->b:Landroid/widget/ImageView;

    .line 39
    .line 40
    const-string v0, "closeWatchTv"

    .line 41
    .line 42
    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    new-instance v10, Lcom/transsion/moviedetail/view/x;

    .line 46
    .line 47
    invoke-direct {v10, p0}, Lcom/transsion/moviedetail/view/x;-><init>(Lcom/transsion/moviedetail/view/WatchModeTipsView;)V

    .line 48
    .line 49
    .line 50
    const/4 v11, 0x1

    .line 51
    const/4 v12, 0x0

    .line 52
    const-wide/16 v8, 0x0

    .line 53
    .line 54
    invoke-static/range {v7 .. v12}, Luf/c;->c(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    :cond_0
    return-void
.end method

.method private static final o(Lcom/transsion/moviedetail/view/WatchModeTipsView;Landroid/view/View;)Lkotlin/Unit;
    .locals 3

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "/profile/watch_option"

    .line 7
    .line 8
    invoke-static {p1}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x0

    .line 17
    const/4 v2, 0x2

    .line 18
    invoke-static {p1, v0, v1, v2, v1}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-static {p0}, Luf/c;->g(Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 25
    .line 26
    return-object p0
.end method

.method private static final p(Lcom/transsion/moviedetail/view/WatchModeTipsView;Landroid/view/View;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Luf/c;->g(Landroid/view/View;)V

    .line 7
    .line 8
    .line 9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    return-object p0
.end method


# virtual methods
.method public final checkShow()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/moviedetail/view/WatchModeTipsView;->b:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    sget-object v0, Lij/t;->a:Lij/t;

    .line 6
    .line 7
    invoke-virtual {v0}, Lij/t;->b()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-direct {p0}, Lcom/transsion/moviedetail/view/WatchModeTipsView;->getDelayShow()Ljava/lang/Runnable;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/transsion/moviedetail/view/WatchModeTipsView;->getDelayShow()Ljava/lang/Runnable;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    :goto_0
    invoke-static {p0}, Luf/c;->g(Landroid/view/View;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/transsion/moviedetail/view/WatchModeTipsView;->getDelayShow()Ljava/lang/Runnable;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method
