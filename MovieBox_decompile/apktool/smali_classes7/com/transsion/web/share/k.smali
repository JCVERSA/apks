.class public final Lcom/transsion/web/share/k;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final a:Landroidx/fragment/app/Fragment;

.field private final b:Lkotlin/jvm/functions/Function2;

.field private c:Landroidx/activity/result/b;

.field private d:Z

.field private e:J

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Landroidx/activity/result/a;

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function2;)V
    .locals 1

    .line 1
    const-string v0, "fragment"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "shareCallback"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/transsion/web/share/k;->a:Landroidx/fragment/app/Fragment;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/transsion/web/share/k;->b:Lkotlin/jvm/functions/Function2;

    .line 17
    .line 18
    const-string p2, "fail"

    .line 19
    .line 20
    iput-object p2, p0, Lcom/transsion/web/share/k;->f:Ljava/lang/String;

    .line 21
    .line 22
    const-string p2, "cancel"

    .line 23
    .line 24
    iput-object p2, p0, Lcom/transsion/web/share/k;->g:Ljava/lang/String;

    .line 25
    .line 26
    const-string p2, "success"

    .line 27
    .line 28
    iput-object p2, p0, Lcom/transsion/web/share/k;->h:Ljava/lang/String;

    .line 29
    .line 30
    new-instance p2, Lcom/transsion/web/share/j;

    .line 31
    .line 32
    invoke-direct {p2, p0}, Lcom/transsion/web/share/j;-><init>(Lcom/transsion/web/share/k;)V

    .line 33
    .line 34
    .line 35
    iput-object p2, p0, Lcom/transsion/web/share/k;->i:Landroidx/activity/result/a;

    .line 36
    .line 37
    new-instance v0, Lf/j;

    .line 38
    .line 39
    invoke-direct {v0}, Lf/j;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0, p2}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Lf/a;Landroidx/activity/result/a;)Landroidx/activity/result/b;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    iput-object p2, p0, Lcom/transsion/web/share/k;->c:Landroidx/activity/result/b;

    .line 47
    .line 48
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    new-instance p2, Lcom/transsion/web/share/k$a;

    .line 53
    .line 54
    invoke-direct {p2, p0}, Lcom/transsion/web/share/k$a;-><init>(Lcom/transsion/web/share/k;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, p2}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/t;)V

    .line 58
    .line 59
    .line 60
    const-string p1, ""

    .line 61
    .line 62
    iput-object p1, p0, Lcom/transsion/web/share/k;->j:Ljava/lang/String;

    .line 63
    .line 64
    return-void
.end method

.method public static synthetic a(Lcom/transsion/web/share/k;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/web/share/k;->i(Lcom/transsion/web/share/k;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Lcom/transsion/web/share/k;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/web/share/k;->j(Lcom/transsion/web/share/k;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c(Lcom/transsion/web/share/k;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/web/share/k;->n(Lcom/transsion/web/share/k;Landroidx/activity/result/ActivityResult;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(Landroid/content/Context;Lcom/transsion/web/share/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/web/share/k;->l(Landroid/content/Context;Lcom/transsion/web/share/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic e(Lcom/transsion/web/share/k;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/transsion/web/share/k;->e:J

    .line 2
    .line 3
    return-void
.end method

.method private final f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3, p4}, Lcom/transsion/web/share/k;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    new-instance p3, Landroid/content/Intent;

    .line 10
    .line 11
    const-string p4, "android.intent.action.SEND"

    .line 12
    .line 13
    invoke-direct {p3, p4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string p4, "text/plain"

    .line 17
    .line 18
    invoke-virtual {p3, p4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    const-string p4, "android.intent.extra.TEXT"

    .line 22
    .line 23
    invoke-virtual {p3, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p3, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    return-object p3
.end method

.method private final g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    sget-object v0, Lcom/transsion/baseui/util/a;->a:Lcom/transsion/baseui/util/a;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/transsion/baseui/util/a;->c(Landroid/content/Context;Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-object p2

    .line 12
    :cond_0
    if-eqz p3, :cond_1

    .line 13
    .line 14
    sget-object p2, Lcom/transsion/baseui/util/a;->a:Lcom/transsion/baseui/util/a;

    .line 15
    .line 16
    invoke-virtual {p2, p1, p3}, Lcom/transsion/baseui/util/a;->c(Landroid/content/Context;Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    return-object p3

    .line 23
    :cond_1
    const/4 p1, 0x0

    .line 24
    return-object p1
.end method

.method private static final i(Lcom/transsion/web/share/k;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/transsion/web/share/k;->h:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/transsion/web/share/k;->m(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/transsion/web/share/k;->f:Ljava/lang/String;

    .line 10
    .line 11
    invoke-direct {p0, p1}, Lcom/transsion/web/share/k;->m(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    sget-object p0, Lcom/tn/lib/widget/toast/core/h;->a:Lcom/tn/lib/widget/toast/core/h;

    .line 15
    .line 16
    sget p1, Lcom/transsion/web/R$string;->web_app_not_exist:I

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lcom/tn/lib/widget/toast/core/h;->k(I)V

    .line 19
    .line 20
    .line 21
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 22
    .line 23
    return-object p0
.end method

.method private static final j(Lcom/transsion/web/share/k;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/transsion/web/share/k;->h:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/transsion/web/share/k;->m(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/transsion/web/share/k;->f:Ljava/lang/String;

    .line 10
    .line 11
    invoke-direct {p0, p1}, Lcom/transsion/web/share/k;->m(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    sget-object p0, Lcom/tn/lib/widget/toast/core/h;->a:Lcom/tn/lib/widget/toast/core/h;

    .line 15
    .line 16
    sget p1, Lcom/transsion/web/R$string;->web_app_not_exist:I

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lcom/tn/lib/widget/toast/core/h;->k(I)V

    .line 19
    .line 20
    .line 21
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 22
    .line 23
    return-object p0
.end method

.method private static final l(Landroid/content/Context;Lcom/transsion/web/share/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "packageName"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "txt"

    .line 7
    .line 8
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    const-string p2, "MovieBox"

    .line 18
    .line 19
    invoke-static {p2, p4}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    const-string p3, "clipboard"

    .line 24
    .line 25
    invoke-virtual {p0, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    check-cast p0, Landroid/content/ClipboardManager;

    .line 30
    .line 31
    if-eqz p0, :cond_0

    .line 32
    .line 33
    invoke-virtual {p0, p2}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    sget-object p0, Lcom/tn/lib/widget/toast/core/h;->a:Lcom/tn/lib/widget/toast/core/h;

    .line 37
    .line 38
    sget p2, Lcom/transsion/web/R$string;->web_copied:I

    .line 39
    .line 40
    invoke-virtual {p0, p2}, Lcom/tn/lib/widget/toast/core/h;->k(I)V

    .line 41
    .line 42
    .line 43
    iget-object p0, p1, Lcom/transsion/web/share/k;->h:Ljava/lang/String;

    .line 44
    .line 45
    invoke-direct {p1, p0}, Lcom/transsion/web/share/k;->m(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    goto :goto_4

    .line 49
    :cond_1
    invoke-direct {p1, p0, p4, p2, p3}, Lcom/transsion/web/share/k;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    if-nez p0, :cond_2

    .line 54
    .line 55
    sget-object p0, Lcom/tn/lib/widget/toast/core/h;->a:Lcom/tn/lib/widget/toast/core/h;

    .line 56
    .line 57
    sget p2, Lcom/transsion/web/R$string;->web_app_not_exist:I

    .line 58
    .line 59
    invoke-virtual {p0, p2}, Lcom/tn/lib/widget/toast/core/h;->k(I)V

    .line 60
    .line 61
    .line 62
    iget-object p0, p1, Lcom/transsion/web/share/k;->f:Ljava/lang/String;

    .line 63
    .line 64
    invoke-direct {p1, p0}, Lcom/transsion/web/share/k;->m(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    goto :goto_4

    .line 68
    :cond_2
    :try_start_0
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 69
    .line 70
    iget-object p2, p1, Lcom/transsion/web/share/k;->c:Landroidx/activity/result/b;

    .line 71
    .line 72
    if-eqz p2, :cond_3

    .line 73
    .line 74
    invoke-virtual {p2, p0}, Landroidx/activity/result/b;->a(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :catchall_0
    move-exception p0

    .line 81
    goto :goto_1

    .line 82
    :cond_3
    const/4 p0, 0x0

    .line 83
    :goto_0
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    goto :goto_2

    .line 88
    :goto_1
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 89
    .line 90
    invoke-static {p0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    :goto_2
    invoke-static {p0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    if-nez p2, :cond_4

    .line 103
    .line 104
    goto :goto_3

    .line 105
    :cond_4
    iget-object p0, p1, Lcom/transsion/web/share/k;->f:Ljava/lang/String;

    .line 106
    .line 107
    invoke-direct {p1, p0}, Lcom/transsion/web/share/k;->m(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 111
    .line 112
    :goto_3
    check-cast p0, Lkotlin/Unit;

    .line 113
    .line 114
    :goto_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 115
    .line 116
    return-object p0
.end method

.method private final m(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/web/share/k;->b:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/web/share/k;->j:Ljava/lang/String;

    .line 4
    .line 5
    invoke-interface {v0, v1, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private static final n(Lcom/transsion/web/share/k;Landroidx/activity/result/ActivityResult;)V
    .locals 8

    .line 1
    const-string v0, "activityResult"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-boolean v0, p0, Lcom/transsion/web/share/k;->d:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    const-string v1, "<get-TAG>(...)"

    .line 9
    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    :try_start_1
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v2, -0x1

    .line 17
    if-eq v0, v2, :cond_1

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/transsion/web/share/k;->f:Ljava/lang/String;

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    sget-object v0, Lcom/tn/lib/widget/toast/core/h;->a:Lcom/tn/lib/widget/toast/core/h;

    .line 25
    .line 26
    sget v2, Lcom/transsion/share/R$string;->cancel:I

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Lcom/tn/lib/widget/toast/core/h;->k(I)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/transsion/web/share/k;->g:Ljava/lang/String;

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    iget-object v0, p0, Lcom/transsion/web/share/k;->h:Ljava/lang/String;

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    iget-wide v2, p0, Lcom/transsion/web/share/k;->e:J

    .line 38
    .line 39
    const-wide/16 v4, 0x0

    .line 40
    .line 41
    cmp-long v0, v2, v4

    .line 42
    .line 43
    if-eqz v0, :cond_4

    .line 44
    .line 45
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 46
    .line 47
    .line 48
    move-result-wide v2

    .line 49
    iget-wide v4, p0, Lcom/transsion/web/share/k;->e:J

    .line 50
    .line 51
    sub-long/2addr v2, v4

    .line 52
    const-wide/16 v4, 0x5dc

    .line 53
    .line 54
    cmp-long v0, v2, v4

    .line 55
    .line 56
    if-gez v0, :cond_3

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    iget-object v0, p0, Lcom/transsion/web/share/k;->h:Ljava/lang/String;

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_4
    :goto_0
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 63
    .line 64
    sget-object v0, Lcom/transsion/web/fragment/WebFragmentV2;->w:Lcom/transsion/web/fragment/WebFragmentV2$a;

    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/transsion/web/fragment/WebFragmentV2$a;->a()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    iget-wide v4, p0, Lcom/transsion/web/share/k;->e:J

    .line 74
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    const-string v6, "\u64cd\u4f5c\u592a\u5feb\u4e86 leaveVskitTime:"

    .line 81
    .line 82
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    const/4 v6, 0x4

    .line 93
    const/4 v7, 0x0

    .line 94
    const/4 v5, 0x0

    .line 95
    invoke-static/range {v2 .. v7}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Lcom/transsion/web/share/k;->f:Ljava/lang/String;

    .line 99
    .line 100
    :goto_1
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 101
    .line 102
    sget-object v3, Lcom/transsion/web/fragment/WebFragmentV2;->w:Lcom/transsion/web/fragment/WebFragmentV2$a;

    .line 103
    .line 104
    invoke-virtual {v3}, Lcom/transsion/web/fragment/WebFragmentV2$a;->a()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .line 119
    .line 120
    const-string v4, "shareResultActivityResultCallback:"

    .line 121
    .line 122
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const-string v4, "  ----  "

    .line 129
    .line 130
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    const/4 v6, 0x4

    .line 141
    const/4 v7, 0x0

    .line 142
    const/4 v5, 0x0

    .line 143
    invoke-static/range {v2 .. v7}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    invoke-direct {p0, v0}, Lcom/transsion/web/share/k;->m(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 147
    .line 148
    .line 149
    :catch_0
    return-void
.end method


# virtual methods
.method public final h(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "data"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "callbackId"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Lorg/json/JSONObject;

    .line 17
    .line 18
    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string p2, "packageName"

    .line 22
    .line 23
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    const-string v1, "txt"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object p3, p0, Lcom/transsion/web/share/k;->j:Ljava/lang/String;

    .line 34
    .line 35
    iget-object p3, p0, Lcom/transsion/web/share/k;->a:Landroidx/fragment/app/Fragment;

    .line 36
    .line 37
    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object p3

    .line 41
    if-nez p3, :cond_0

    .line 42
    .line 43
    return-void

    .line 44
    :cond_0
    const-string v1, "copyLink"

    .line 45
    .line 46
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_2

    .line 51
    .line 52
    const-string p1, "MovieBox"

    .line 53
    .line 54
    invoke-static {p1, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    const-string p2, "clipboard"

    .line 59
    .line 60
    invoke-virtual {p3, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    check-cast p2, Landroid/content/ClipboardManager;

    .line 65
    .line 66
    if-eqz p2, :cond_1

    .line 67
    .line 68
    invoke-virtual {p2, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 69
    .line 70
    .line 71
    :cond_1
    sget-object p1, Lcom/tn/lib/widget/toast/core/h;->a:Lcom/tn/lib/widget/toast/core/h;

    .line 72
    .line 73
    sget p2, Lcom/transsion/web/R$string;->web_copied:I

    .line 74
    .line 75
    invoke-virtual {p1, p2}, Lcom/tn/lib/widget/toast/core/h;->k(I)V

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Lcom/transsion/web/share/k;->h:Ljava/lang/String;

    .line 79
    .line 80
    invoke-direct {p0, p1}, Lcom/transsion/web/share/k;->m(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_2
    if-eqz p2, :cond_5

    .line 85
    .line 86
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 87
    .line 88
    .line 89
    move-result p3

    .line 90
    if-nez p3, :cond_3

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_3
    const-string p3, "com.whatsapp"

    .line 94
    .line 95
    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 96
    .line 97
    .line 98
    move-result p3

    .line 99
    if-eqz p3, :cond_4

    .line 100
    .line 101
    sget-object p2, Loq/p;->a:Loq/p;

    .line 102
    .line 103
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    new-instance p3, Lcom/transsion/web/share/h;

    .line 107
    .line 108
    invoke-direct {p3, p0}, Lcom/transsion/web/share/h;-><init>(Lcom/transsion/web/share/k;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p2, p1, v0, p3}, Loq/p;->d(Landroid/app/Activity;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_4
    const-string p3, "org.telegram.messenger"

    .line 116
    .line 117
    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 118
    .line 119
    .line 120
    move-result p2

    .line 121
    if-eqz p2, :cond_6

    .line 122
    .line 123
    sget-object p2, Loq/p;->a:Loq/p;

    .line 124
    .line 125
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    new-instance p3, Lcom/transsion/web/share/i;

    .line 129
    .line 130
    invoke-direct {p3, p0}, Lcom/transsion/web/share/i;-><init>(Lcom/transsion/web/share/k;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p2, p1, v0, p3}, Loq/p;->c(Landroid/app/Activity;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 134
    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_5
    :goto_0
    const-string p1, "0"

    .line 138
    .line 139
    invoke-direct {p0, p1}, Lcom/transsion/web/share/k;->m(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    :cond_6
    :goto_1
    return-void
.end method

.method public final k(Ljava/lang/String;Ljava/lang/String;Landroidx/fragment/app/FragmentManager;)V
    .locals 2

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "callbackId"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "fragmentManager"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iput-object p2, p0, Lcom/transsion/web/share/k;->j:Ljava/lang/String;

    .line 17
    .line 18
    iget-object p2, p0, Lcom/transsion/web/share/k;->a:Landroidx/fragment/app/Fragment;

    .line 19
    .line 20
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    if-nez p2, :cond_0

    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    :try_start_0
    const-string v0, "WebShareDialog"

    .line 28
    .line 29
    invoke-virtual {p3, v0}, Landroidx/fragment/app/FragmentManager;->k0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    sget-object v1, Lcom/transsion/web/share/WebShareDialog;->g:Lcom/transsion/web/share/WebShareDialog$a;

    .line 37
    .line 38
    invoke-virtual {v1, p1}, Lcom/transsion/web/share/WebShareDialog$a;->a(Ljava/lang/String;)Lcom/transsion/web/share/WebShareDialog;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    new-instance v1, Lcom/transsion/web/share/g;

    .line 43
    .line 44
    invoke-direct {v1, p2, p0}, Lcom/transsion/web/share/g;-><init>(Landroid/content/Context;Lcom/transsion/web/share/k;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v1}, Lcom/transsion/web/share/WebShareDialog;->r0(Lkotlin/jvm/functions/Function3;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p3, v0}, Lcom/transsion/baseui/dialog/BaseDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catch_0
    iget-object p1, p0, Lcom/transsion/web/share/k;->f:Ljava/lang/String;

    .line 55
    .line 56
    invoke-direct {p0, p1}, Lcom/transsion/web/share/k;->m(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :goto_0
    return-void
.end method
