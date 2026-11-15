.class public final Lcom/transsion/moviedetail/view/MovieDetailShareView$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/lifecycle/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/moviedetail/view/MovieDetailShareView;->init(Landroidx/lifecycle/u;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private a:J

.field final synthetic b:Lcom/transsion/moviedetail/view/MovieDetailShareView;


# direct methods
.method constructor <init>(Lcom/transsion/moviedetail/view/MovieDetailShareView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/moviedetail/view/MovieDetailShareView$a;->b:Lcom/transsion/moviedetail/view/MovieDetailShareView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/moviedetail/view/MovieDetailShareView$a;->d(Lkotlin/jvm/functions/Function0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/moviedetail/view/MovieDetailShareView$a;->c(Lkotlin/jvm/functions/Function0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final c(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final d(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public synthetic onCreate(Landroidx/lifecycle/u;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/lifecycle/e;->a(Landroidx/lifecycle/f;Landroidx/lifecycle/u;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onDestroy(Landroidx/lifecycle/u;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/lifecycle/e;->b(Landroidx/lifecycle/f;Landroidx/lifecycle/u;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onPause(Landroidx/lifecycle/u;)V
    .locals 6

    .line 1
    const-string v0, "owner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Landroidx/lifecycle/e;->c(Landroidx/lifecycle/f;Landroidx/lifecycle/u;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/transsion/moviedetail/view/MovieDetailShareView$a;->b:Lcom/transsion/moviedetail/view/MovieDetailShareView;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/transsion/moviedetail/view/MovieDetailShareView;->access$getShowTime$p(Lcom/transsion/moviedetail/view/MovieDetailShareView;)J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 16
    .line 17
    .line 18
    move-result-wide v2

    .line 19
    iget-wide v4, p0, Lcom/transsion/moviedetail/view/MovieDetailShareView$a;->a:J

    .line 20
    .line 21
    sub-long/2addr v2, v4

    .line 22
    add-long/2addr v0, v2

    .line 23
    invoke-static {p1, v0, v1}, Lcom/transsion/moviedetail/view/MovieDetailShareView;->access$setShowTime$p(Lcom/transsion/moviedetail/view/MovieDetailShareView;J)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/transsion/moviedetail/view/MovieDetailShareView$a;->b:Lcom/transsion/moviedetail/view/MovieDetailShareView;

    .line 27
    .line 28
    invoke-static {p1}, Lcom/transsion/moviedetail/view/MovieDetailShareView;->access$getShowWhatAppIconRunnable$p(Lcom/transsion/moviedetail/view/MovieDetailShareView;)Lkotlin/jvm/functions/Function0;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    new-instance v1, Lcom/transsion/moviedetail/view/s;

    .line 33
    .line 34
    invoke-direct {v1, v0}, Lcom/transsion/moviedetail/view/s;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public onResume(Landroidx/lifecycle/u;)V
    .locals 6

    .line 1
    const-string v0, "owner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Landroidx/lifecycle/e;->d(Landroidx/lifecycle/f;Landroidx/lifecycle/u;)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iput-wide v0, p0, Lcom/transsion/moviedetail/view/MovieDetailShareView$a;->a:J

    .line 14
    .line 15
    iget-object p1, p0, Lcom/transsion/moviedetail/view/MovieDetailShareView$a;->b:Lcom/transsion/moviedetail/view/MovieDetailShareView;

    .line 16
    .line 17
    invoke-static {p1}, Lcom/transsion/moviedetail/view/MovieDetailShareView;->access$getShowTime$p(Lcom/transsion/moviedetail/view/MovieDetailShareView;)J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    iget-object p1, p0, Lcom/transsion/moviedetail/view/MovieDetailShareView$a;->b:Lcom/transsion/moviedetail/view/MovieDetailShareView;

    .line 22
    .line 23
    invoke-static {p1}, Lcom/transsion/moviedetail/view/MovieDetailShareView;->access$getMAX_SHOW_TIME$p(Lcom/transsion/moviedetail/view/MovieDetailShareView;)J

    .line 24
    .line 25
    .line 26
    move-result-wide v2

    .line 27
    cmp-long p1, v0, v2

    .line 28
    .line 29
    if-gez p1, :cond_0

    .line 30
    .line 31
    iget-object p1, p0, Lcom/transsion/moviedetail/view/MovieDetailShareView$a;->b:Lcom/transsion/moviedetail/view/MovieDetailShareView;

    .line 32
    .line 33
    invoke-static {p1}, Lcom/transsion/moviedetail/view/MovieDetailShareView;->access$getShowWhatAppIconRunnable$p(Lcom/transsion/moviedetail/view/MovieDetailShareView;)Lkotlin/jvm/functions/Function0;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    new-instance v1, Lcom/transsion/moviedetail/view/t;

    .line 38
    .line 39
    invoke-direct {v1, v0}, Lcom/transsion/moviedetail/view/t;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/transsion/moviedetail/view/MovieDetailShareView$a;->b:Lcom/transsion/moviedetail/view/MovieDetailShareView;

    .line 43
    .line 44
    invoke-static {v0}, Lcom/transsion/moviedetail/view/MovieDetailShareView;->access$getMAX_SHOW_TIME$p(Lcom/transsion/moviedetail/view/MovieDetailShareView;)J

    .line 45
    .line 46
    .line 47
    move-result-wide v2

    .line 48
    iget-object v0, p0, Lcom/transsion/moviedetail/view/MovieDetailShareView$a;->b:Lcom/transsion/moviedetail/view/MovieDetailShareView;

    .line 49
    .line 50
    invoke-static {v0}, Lcom/transsion/moviedetail/view/MovieDetailShareView;->access$getShowTime$p(Lcom/transsion/moviedetail/view/MovieDetailShareView;)J

    .line 51
    .line 52
    .line 53
    move-result-wide v4

    .line 54
    sub-long/2addr v2, v4

    .line 55
    invoke-virtual {p1, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 56
    .line 57
    .line 58
    :cond_0
    return-void
.end method

.method public synthetic onStart(Landroidx/lifecycle/u;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/lifecycle/e;->e(Landroidx/lifecycle/f;Landroidx/lifecycle/u;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onStop(Landroidx/lifecycle/u;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/lifecycle/e;->f(Landroidx/lifecycle/f;Landroidx/lifecycle/u;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
