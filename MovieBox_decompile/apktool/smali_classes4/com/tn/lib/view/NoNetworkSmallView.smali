.class public final Lcom/tn/lib/view/NoNetworkSmallView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tB\u001b\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0008\u0010\nB\u0011\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\u000bJ\u001b\u0010\u000f\u001a\u00020\r2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u001b\u0010\u0012\u001a\u00020\r2\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c\u00a2\u0006\u0004\u0008\u0012\u0010\u0010R\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/tn/lib/view/NoNetworkSmallView;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "(Landroid/content/Context;)V",
        "Lkotlin/Function0;",
        "",
        "retryListener",
        "retry",
        "(Lkotlin/jvm/functions/Function0;)V",
        "settingListener",
        "goToSetting",
        "Leh/d;",
        "a",
        "Leh/d;",
        "binding",
        "UI_psRelease"
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
.field private a:Leh/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, v0}, Lcom/tn/lib/view/NoNetworkSmallView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, p2, v0}, Lcom/tn/lib/view/NoNetworkSmallView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1, p0}, Leh/d;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Leh/d;

    move-result-object p1

    iput-object p1, p0, Lcom/tn/lib/view/NoNetworkSmallView;->a:Leh/d;

    .line 3
    sget p1, Lcom/tn/lib/widget/R$mipmap;->bg_network_view:I

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method public static synthetic h(Leh/d;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/tn/lib/view/NoNetworkSmallView;->m(Leh/d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic i(Lkotlin/jvm/functions/Function0;Leh/d;Lcom/tn/lib/view/NoNetworkSmallView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/tn/lib/view/NoNetworkSmallView;->l(Lkotlin/jvm/functions/Function0;Leh/d;Lcom/tn/lib/view/NoNetworkSmallView;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic j(Lcom/tn/lib/view/NoNetworkSmallView;Lkotlin/jvm/functions/Function0;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/tn/lib/view/NoNetworkSmallView;->k(Lcom/tn/lib/view/NoNetworkSmallView;Lkotlin/jvm/functions/Function0;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final k(Lcom/tn/lib/view/NoNetworkSmallView;Lkotlin/jvm/functions/Function0;Landroid/view/View;)V
    .locals 0

    .line 1
    :try_start_0
    sget-object p0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 2
    .line 3
    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils;->v()V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 14
    .line 15
    invoke-static {p0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method private static final l(Lkotlin/jvm/functions/Function0;Leh/d;Lcom/tn/lib/view/NoNetworkSmallView;Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object p0, p1, Leh/d;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 5
    .line 6
    const-string p3, "retry"

    .line 7
    .line 8
    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Luf/c;->g(Landroid/view/View;)V

    .line 12
    .line 13
    .line 14
    iget-object p0, p1, Leh/d;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 15
    .line 16
    const-string p3, "goToSetting"

    .line 17
    .line 18
    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-static {p0}, Luf/c;->g(Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    iget-object p0, p1, Leh/d;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 25
    .line 26
    const-string p3, "tvTitle"

    .line 27
    .line 28
    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-static {p0}, Luf/c;->g(Landroid/view/View;)V

    .line 32
    .line 33
    .line 34
    iget-object p0, p1, Leh/d;->c:Landroid/widget/ProgressBar;

    .line 35
    .line 36
    const-string p3, "progressBar"

    .line 37
    .line 38
    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-static {p0}, Luf/c;->k(Landroid/view/View;)V

    .line 42
    .line 43
    .line 44
    new-instance p0, Lcom/tn/lib/view/r;

    .line 45
    .line 46
    invoke-direct {p0, p1}, Lcom/tn/lib/view/r;-><init>(Leh/d;)V

    .line 47
    .line 48
    .line 49
    const-wide/16 v0, 0x3e8

    .line 50
    .line 51
    invoke-virtual {p2, p0, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method private static final m(Leh/d;)V
    .locals 2

    .line 1
    iget-object v0, p0, Leh/d;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 2
    .line 3
    const-string v1, "retry"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Luf/c;->k(Landroid/view/View;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Leh/d;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 12
    .line 13
    const-string v1, "goToSetting"

    .line 14
    .line 15
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Luf/c;->k(Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Leh/d;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 22
    .line 23
    const-string v1, "tvTitle"

    .line 24
    .line 25
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Luf/c;->k(Landroid/view/View;)V

    .line 29
    .line 30
    .line 31
    iget-object p0, p0, Leh/d;->c:Landroid/widget/ProgressBar;

    .line 32
    .line 33
    const-string v0, "progressBar"

    .line 34
    .line 35
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-static {p0}, Luf/c;->g(Landroid/view/View;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method


# virtual methods
.method public final goToSetting(Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "settingListener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/tn/lib/view/NoNetworkSmallView;->a:Leh/d;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, v0, Leh/d;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    new-instance v1, Lcom/tn/lib/view/q;

    .line 15
    .line 16
    invoke-direct {v1, p0, p1}, Lcom/tn/lib/view/q;-><init>(Lcom/tn/lib/view/NoNetworkSmallView;Lkotlin/jvm/functions/Function0;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public final retry(Lkotlin/jvm/functions/Function0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "retryListener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/tn/lib/view/NoNetworkSmallView;->a:Leh/d;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v1, v0, Leh/d;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 11
    .line 12
    new-instance v2, Lcom/tn/lib/view/p;

    .line 13
    .line 14
    invoke-direct {v2, p1, v0, p0}, Lcom/tn/lib/view/p;-><init>(Lkotlin/jvm/functions/Function0;Leh/d;Lcom/tn/lib/view/NoNetworkSmallView;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method
