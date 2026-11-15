.class public final Lsu/i;
.super Landroid/app/DialogFragment;
.source "source.java"


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/ImageView;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/widget/TextView;

.field public h:Lcom/transsion/upgradesdk/bean/UpgradeData;

.field public i:I

.field public final j:Lkotlin/Lazy;

.field public final k:Lkotlin/Lazy;

.field public final l:Lkotlin/Lazy;

.field public final m:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lsu/i;->i:I

    .line 6
    .line 7
    new-instance v0, Lcom/transsion/upgradesdk/page/g;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/transsion/upgradesdk/page/g;-><init>(Lsu/i;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lsu/i;->j:Lkotlin/Lazy;

    .line 17
    .line 18
    new-instance v0, Lcom/transsion/upgradesdk/page/h;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/transsion/upgradesdk/page/h;-><init>(Lsu/i;)V

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lsu/i;->k:Lkotlin/Lazy;

    .line 28
    .line 29
    new-instance v0, Lcom/transsion/upgradesdk/page/k;

    .line 30
    .line 31
    invoke-direct {v0, p0}, Lcom/transsion/upgradesdk/page/k;-><init>(Lsu/i;)V

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Lsu/i;->l:Lkotlin/Lazy;

    .line 39
    .line 40
    new-instance v0, Lcom/transsion/upgradesdk/page/i;

    .line 41
    .line 42
    invoke-direct {v0, p0}, Lcom/transsion/upgradesdk/page/i;-><init>(Lsu/i;)V

    .line 43
    .line 44
    .line 45
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iput-object v0, p0, Lsu/i;->m:Lkotlin/Lazy;

    .line 50
    .line 51
    return-void
.end method

.method public static a()V
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lsu/h;

    .line 7
    .line 8
    invoke-direct {v1}, Lsu/h;-><init>()V

    .line 9
    .line 10
    .line 11
    const-wide/16 v2, 0x12c

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static final c(Lsu/i;Landroid/view/View;)V
    .locals 3

    .line 1
    const-string p1, "this$0"

    .line 2
    .line 3
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lsu/i;->h:Lcom/transsion/upgradesdk/bean/UpgradeData;

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    const-string p1, "upgradeData"

    .line 11
    .line 12
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    :cond_0
    invoke-virtual {p1}, Lcom/transsion/upgradesdk/bean/UpgradeData;->isForceUpdate()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_2

    .line 21
    .line 22
    iget p1, p0, Lsu/i;->i:I

    .line 23
    .line 24
    iget-object v0, p0, Lsu/i;->l:Lkotlin/Lazy;

    .line 25
    .line 26
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Ljava/lang/Boolean;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    sget-object v1, Lcom/transsion/upgradesdk/bean/c;->c:Lcom/transsion/upgradesdk/bean/c;

    .line 37
    .line 38
    const-string v2, "exitapp"

    .line 39
    .line 40
    invoke-static {p1, v0, v2, v1}, Ltu/l;->e(IZLjava/lang/String;Lcom/transsion/upgradesdk/bean/c;)V

    .line 41
    .line 42
    .line 43
    sget-object p1, Lqu/f;->o:Lqu/d;

    .line 44
    .line 45
    invoke-virtual {p1}, Lqu/d;->a()Lqu/f;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iget-object p1, p1, Lqu/f;->g:Lcom/transsion/upgradesdk/manager/UpgradeDialogCallback;

    .line 50
    .line 51
    if-eqz p1, :cond_1

    .line 52
    .line 53
    const/4 v0, 0x2

    .line 54
    invoke-interface {p1, v0}, Lcom/transsion/upgradesdk/manager/UpgradeDialogCallback;->onDialogClick(I)V

    .line 55
    .line 56
    .line 57
    :cond_1
    invoke-virtual {p0}, Landroid/app/DialogFragment;->dismiss()V

    .line 58
    .line 59
    .line 60
    invoke-static {}, Lsu/i;->a()V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    iget p1, p0, Lsu/i;->i:I

    .line 65
    .line 66
    iget-object v0, p0, Lsu/i;->l:Lkotlin/Lazy;

    .line 67
    .line 68
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    check-cast v0, Ljava/lang/Boolean;

    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    sget-object v1, Lcom/transsion/upgradesdk/bean/c;->c:Lcom/transsion/upgradesdk/bean/c;

    .line 79
    .line 80
    const-string v2, "later"

    .line 81
    .line 82
    invoke-static {p1, v0, v2, v1}, Ltu/l;->e(IZLjava/lang/String;Lcom/transsion/upgradesdk/bean/c;)V

    .line 83
    .line 84
    .line 85
    sget-object p1, Lqu/f;->o:Lqu/d;

    .line 86
    .line 87
    invoke-virtual {p1}, Lqu/d;->a()Lqu/f;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    iget-object p1, p1, Lqu/f;->g:Lcom/transsion/upgradesdk/manager/UpgradeDialogCallback;

    .line 92
    .line 93
    if-eqz p1, :cond_3

    .line 94
    .line 95
    const/4 v0, 0x3

    .line 96
    invoke-interface {p1, v0}, Lcom/transsion/upgradesdk/manager/UpgradeDialogCallback;->onDialogClick(I)V

    .line 97
    .line 98
    .line 99
    :cond_3
    invoke-virtual {p0}, Landroid/app/DialogFragment;->dismiss()V

    .line 100
    .line 101
    .line 102
    :goto_0
    return-void
.end method

.method public static final d(Lsu/i;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    const-string p1, "this$0"

    .line 2
    .line 3
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x4

    .line 7
    if-ne p2, p1, :cond_3

    .line 8
    .line 9
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    if-nez p2, :cond_3

    .line 14
    .line 15
    iget-object p2, p0, Lsu/i;->h:Lcom/transsion/upgradesdk/bean/UpgradeData;

    .line 16
    .line 17
    if-nez p2, :cond_0

    .line 18
    .line 19
    const-string p2, "upgradeData"

    .line 20
    .line 21
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const/4 p2, 0x0

    .line 25
    :cond_0
    invoke-virtual {p2}, Lcom/transsion/upgradesdk/bean/UpgradeData;->isForceUpdate()Z

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    if-eqz p2, :cond_2

    .line 30
    .line 31
    iget p1, p0, Lsu/i;->i:I

    .line 32
    .line 33
    iget-object p0, p0, Lsu/i;->l:Lkotlin/Lazy;

    .line 34
    .line 35
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    check-cast p0, Ljava/lang/Boolean;

    .line 40
    .line 41
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    sget-object p2, Lcom/transsion/upgradesdk/bean/c;->c:Lcom/transsion/upgradesdk/bean/c;

    .line 46
    .line 47
    const-string p3, "back_exit"

    .line 48
    .line 49
    invoke-static {p1, p0, p3, p2}, Ltu/l;->e(IZLjava/lang/String;Lcom/transsion/upgradesdk/bean/c;)V

    .line 50
    .line 51
    .line 52
    sget-object p0, Lqu/f;->o:Lqu/d;

    .line 53
    .line 54
    invoke-virtual {p0}, Lqu/d;->a()Lqu/f;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    iget-object p0, p0, Lqu/f;->g:Lcom/transsion/upgradesdk/manager/UpgradeDialogCallback;

    .line 59
    .line 60
    if-eqz p0, :cond_1

    .line 61
    .line 62
    const/4 p1, 0x5

    .line 63
    invoke-interface {p0, p1}, Lcom/transsion/upgradesdk/manager/UpgradeDialogCallback;->onDialogClick(I)V

    .line 64
    .line 65
    .line 66
    :cond_1
    invoke-static {}, Lsu/i;->a()V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    iget p2, p0, Lsu/i;->i:I

    .line 71
    .line 72
    iget-object p0, p0, Lsu/i;->l:Lkotlin/Lazy;

    .line 73
    .line 74
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    check-cast p0, Ljava/lang/Boolean;

    .line 79
    .line 80
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 81
    .line 82
    .line 83
    move-result p0

    .line 84
    sget-object p3, Lcom/transsion/upgradesdk/bean/c;->c:Lcom/transsion/upgradesdk/bean/c;

    .line 85
    .line 86
    const-string v0, "back"

    .line 87
    .line 88
    invoke-static {p2, p0, v0, p3}, Ltu/l;->e(IZLjava/lang/String;Lcom/transsion/upgradesdk/bean/c;)V

    .line 89
    .line 90
    .line 91
    sget-object p0, Lqu/f;->o:Lqu/d;

    .line 92
    .line 93
    invoke-virtual {p0}, Lqu/d;->a()Lqu/f;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    iget-object p0, p0, Lqu/f;->g:Lcom/transsion/upgradesdk/manager/UpgradeDialogCallback;

    .line 98
    .line 99
    if-eqz p0, :cond_3

    .line 100
    .line 101
    invoke-interface {p0, p1}, Lcom/transsion/upgradesdk/manager/UpgradeDialogCallback;->onDialogClick(I)V

    .line 102
    .line 103
    .line 104
    :cond_3
    :goto_0
    const/4 p0, 0x0

    .line 105
    return p0
.end method

.method public static final e()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 3
    .line 4
    .line 5
    new-instance v0, Ljava/lang/RuntimeException;

    .line 6
    .line 7
    const-string v1, "System.exit returned normally, while it was supposed to halt JVM."

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    throw v0
.end method

.method public static final f(Lsu/i;Landroid/view/View;)V
    .locals 4

    .line 1
    const-string p1, "this$0"

    .line 2
    .line 3
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget p1, p0, Lsu/i;->i:I

    .line 7
    .line 8
    iget-object v0, p0, Lsu/i;->l:Lkotlin/Lazy;

    .line 9
    .line 10
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Ljava/lang/Boolean;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    sget-object v1, Lcom/transsion/upgradesdk/bean/c;->c:Lcom/transsion/upgradesdk/bean/c;

    .line 21
    .line 22
    const-string v2, "update"

    .line 23
    .line 24
    invoke-static {p1, v0, v2, v1}, Ltu/l;->e(IZLjava/lang/String;Lcom/transsion/upgradesdk/bean/c;)V

    .line 25
    .line 26
    .line 27
    sget-object p1, Lqu/f;->o:Lqu/d;

    .line 28
    .line 29
    invoke-virtual {p1}, Lqu/d;->a()Lqu/f;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object p1, p1, Lqu/f;->g:Lcom/transsion/upgradesdk/manager/UpgradeDialogCallback;

    .line 34
    .line 35
    if-eqz p1, :cond_0

    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    invoke-interface {p1, v0}, Lcom/transsion/upgradesdk/manager/UpgradeDialogCallback;->onDialogClick(I)V

    .line 39
    .line 40
    .line 41
    :cond_0
    iget-object p1, p0, Lsu/i;->h:Lcom/transsion/upgradesdk/bean/UpgradeData;

    .line 42
    .line 43
    const/4 v0, 0x0

    .line 44
    const-string v1, "upgradeData"

    .line 45
    .line 46
    if-nez p1, :cond_1

    .line 47
    .line 48
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    move-object p1, v0

    .line 52
    :cond_1
    invoke-virtual {p1}, Lcom/transsion/upgradesdk/bean/UpgradeData;->getPkg()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iget-object v2, p0, Lsu/i;->h:Lcom/transsion/upgradesdk/bean/UpgradeData;

    .line 57
    .line 58
    if-nez v2, :cond_2

    .line 59
    .line 60
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    move-object v2, v0

    .line 64
    :cond_2
    invoke-virtual {v2}, Lcom/transsion/upgradesdk/bean/UpgradeData;->getDirectDwl()I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    iget-object v3, p0, Lsu/i;->h:Lcom/transsion/upgradesdk/bean/UpgradeData;

    .line 69
    .line 70
    if-nez v3, :cond_3

    .line 71
    .line 72
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_3
    move-object v0, v3

    .line 77
    :goto_0
    invoke-virtual {v0}, Lcom/transsion/upgradesdk/bean/UpgradeData;->getHoverBtn()I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    new-instance v1, Lcom/transsion/upgradesdk/page/j;

    .line 82
    .line 83
    invoke-direct {v1, p0}, Lcom/transsion/upgradesdk/page/j;-><init>(Lsu/i;)V

    .line 84
    .line 85
    .line 86
    invoke-static {p1, v2, v0, v1}, Ltu/n;->c(Ljava/lang/String;IILkotlin/jvm/functions/Function0;)V

    .line 87
    .line 88
    .line 89
    return-void
.end method


# virtual methods
.method public final b(Landroid/view/View;)V
    .locals 10

    .line 1
    sget v0, Lcom/transsion/upgradesdk/R$id;->icon_stub:I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/ViewStub;

    .line 8
    .line 9
    iget-object v1, p0, Lsu/i;->h:Lcom/transsion/upgradesdk/bean/UpgradeData;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    const-string v3, "upgradeData"

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    move-object v1, v2

    .line 20
    :cond_0
    invoke-virtual {v1}, Lcom/transsion/upgradesdk/bean/UpgradeData;->getPkg()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v4, "com.transsion.phonemaster"

    .line 25
    .line 26
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    sget v1, Lcom/transsion/upgradesdk/R$layout;->layout_icon_pm_style:I

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    sget v1, Lcom/transsion/upgradesdk/R$layout;->layout_icon_sdk_default:I

    .line 36
    .line 37
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    sget v1, Lcom/transsion/upgradesdk/R$id;->iv_icon:I

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Landroid/widget/ImageView;

    .line 51
    .line 52
    iput-object v0, p0, Lsu/i;->c:Landroid/widget/ImageView;

    .line 53
    .line 54
    sget v0, Lcom/transsion/upgradesdk/R$id;->tv_name:I

    .line 55
    .line 56
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Landroid/widget/TextView;

    .line 61
    .line 62
    iput-object v0, p0, Lsu/i;->a:Landroid/widget/TextView;

    .line 63
    .line 64
    sget v0, Lcom/transsion/upgradesdk/R$id;->tv_version:I

    .line 65
    .line 66
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    check-cast v0, Landroid/widget/TextView;

    .line 71
    .line 72
    iput-object v0, p0, Lsu/i;->b:Landroid/widget/TextView;

    .line 73
    .line 74
    sget v0, Lcom/transsion/upgradesdk/R$id;->tv_size:I

    .line 75
    .line 76
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Landroid/widget/TextView;

    .line 81
    .line 82
    iput-object v0, p0, Lsu/i;->d:Landroid/widget/TextView;

    .line 83
    .line 84
    sget v0, Lcom/transsion/upgradesdk/R$id;->tv_message:I

    .line 85
    .line 86
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    check-cast v0, Landroid/widget/TextView;

    .line 91
    .line 92
    iput-object v0, p0, Lsu/i;->e:Landroid/widget/TextView;

    .line 93
    .line 94
    sget v0, Lcom/transsion/upgradesdk/R$id;->tv_cancel:I

    .line 95
    .line 96
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    check-cast v0, Landroid/widget/TextView;

    .line 101
    .line 102
    iput-object v0, p0, Lsu/i;->f:Landroid/widget/TextView;

    .line 103
    .line 104
    sget v0, Lcom/transsion/upgradesdk/R$id;->tv_ok:I

    .line 105
    .line 106
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    check-cast v0, Landroid/widget/TextView;

    .line 111
    .line 112
    iput-object v0, p0, Lsu/i;->g:Landroid/widget/TextView;

    .line 113
    .line 114
    sget v0, Lcom/transsion/upgradesdk/R$id;->scrollView:I

    .line 115
    .line 116
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    check-cast p1, Landroid/widget/ScrollView;

    .line 121
    .line 122
    :try_start_0
    iget-object p1, p0, Lsu/i;->a:Landroid/widget/TextView;

    .line 123
    .line 124
    if-nez p1, :cond_2

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_2
    sget-object v0, Lqu/f;->o:Lqu/d;

    .line 128
    .line 129
    invoke-virtual {v0}, Lqu/d;->a()Lqu/f;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-virtual {v0}, Lqu/f;->e()Lnu/b;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    iget-object v0, v0, Lnu/b;->c:Ljava/lang/String;

    .line 138
    .line 139
    invoke-static {v0}, Lkotlin/text/StringsKt;->n1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    .line 149
    .line 150
    :goto_1
    sget-object p1, Lqu/f;->o:Lqu/d;

    .line 151
    .line 152
    invoke-virtual {p1}, Lqu/d;->a()Lqu/f;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    invoke-virtual {p1}, Lqu/f;->e()Lnu/b;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    iget-object p1, p1, Lnu/b;->b:Landroid/graphics/drawable/Drawable;

    .line 161
    .line 162
    if-eqz p1, :cond_3

    .line 163
    .line 164
    iget-object v0, p0, Lsu/i;->c:Landroid/widget/ImageView;

    .line 165
    .line 166
    if-eqz v0, :cond_3

    .line 167
    .line 168
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 169
    .line 170
    .line 171
    goto :goto_2

    .line 172
    :catch_0
    move-exception p1

    .line 173
    goto/16 :goto_8

    .line 174
    .line 175
    :cond_3
    :goto_2
    iget-object p1, p0, Lsu/i;->b:Landroid/widget/TextView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    .line 177
    const-string v0, ":  "

    .line 178
    .line 179
    if-nez p1, :cond_4

    .line 180
    .line 181
    goto :goto_3

    .line 182
    :cond_4
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 183
    .line 184
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    .line 186
    .line 187
    sget v4, Lcom/transsion/upgradesdk/R$string;->upgrade_sdk_text_version:I

    .line 188
    .line 189
    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v4

    .line 193
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    iget-object v4, p0, Lsu/i;->h:Lcom/transsion/upgradesdk/bean/UpgradeData;

    .line 200
    .line 201
    if-nez v4, :cond_5

    .line 202
    .line 203
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    move-object v4, v2

    .line 207
    :cond_5
    invoke-virtual {v4}, Lcom/transsion/upgradesdk/bean/UpgradeData;->getPkgVersionName()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v4

    .line 211
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    .line 220
    .line 221
    :goto_3
    iget-object p1, p0, Lsu/i;->d:Landroid/widget/TextView;

    .line 222
    .line 223
    if-nez p1, :cond_6

    .line 224
    .line 225
    goto :goto_5

    .line 226
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 227
    .line 228
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 229
    .line 230
    .line 231
    sget v4, Lcom/transsion/upgradesdk/R$string;->upgrade_sdk_text_size:I

    .line 232
    .line 233
    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v4

    .line 237
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    iget-object v0, p0, Lsu/i;->h:Lcom/transsion/upgradesdk/bean/UpgradeData;

    .line 244
    .line 245
    if-nez v0, :cond_7

    .line 246
    .line 247
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    move-object v0, v2

    .line 251
    :cond_7
    invoke-virtual {v0}, Lcom/transsion/upgradesdk/bean/UpgradeData;->getPkgSize()J

    .line 252
    .line 253
    .line 254
    move-result-wide v4

    .line 255
    const-wide/32 v6, 0x100000

    .line 256
    .line 257
    .line 258
    cmp-long v0, v4, v6

    .line 259
    .line 260
    if-gez v0, :cond_8

    .line 261
    .line 262
    long-to-double v4, v4

    .line 263
    const-wide/16 v6, 0x400

    .line 264
    .line 265
    long-to-double v6, v6

    .line 266
    div-double/2addr v4, v6

    .line 267
    const-string v0, "K"

    .line 268
    .line 269
    goto :goto_4

    .line 270
    :cond_8
    const-wide/32 v8, 0x40000000

    .line 271
    .line 272
    .line 273
    cmp-long v0, v4, v8

    .line 274
    .line 275
    if-gez v0, :cond_9

    .line 276
    .line 277
    long-to-double v4, v4

    .line 278
    long-to-double v6, v6

    .line 279
    div-double/2addr v4, v6

    .line 280
    const-string v0, "M"

    .line 281
    .line 282
    goto :goto_4

    .line 283
    :cond_9
    long-to-double v4, v4

    .line 284
    long-to-double v6, v8

    .line 285
    div-double/2addr v4, v6

    .line 286
    const-string v0, "G"

    .line 287
    .line 288
    :goto_4
    new-instance v6, Ljava/math/BigDecimal;

    .line 289
    .line 290
    invoke-direct {v6, v4, v5}, Ljava/math/BigDecimal;-><init>(D)V

    .line 291
    .line 292
    .line 293
    new-instance v4, Ljava/lang/StringBuilder;

    .line 294
    .line 295
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 296
    .line 297
    .line 298
    const/4 v5, 0x1

    .line 299
    const/4 v7, 0x4

    .line 300
    invoke-virtual {v6, v5, v7}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    .line 301
    .line 302
    .line 303
    move-result-object v5

    .line 304
    invoke-virtual {v5}, Ljava/math/BigDecimal;->doubleValue()D

    .line 305
    .line 306
    .line 307
    move-result-wide v5

    .line 308
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    .line 327
    .line 328
    :goto_5
    iget-object p1, p0, Lsu/i;->e:Landroid/widget/TextView;

    .line 329
    .line 330
    if-nez p1, :cond_a

    .line 331
    .line 332
    goto :goto_6

    .line 333
    :cond_a
    iget-object v0, p0, Lsu/i;->h:Lcom/transsion/upgradesdk/bean/UpgradeData;

    .line 334
    .line 335
    if-nez v0, :cond_b

    .line 336
    .line 337
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    move-object v0, v2

    .line 341
    :cond_b
    invoke-virtual {v0}, Lcom/transsion/upgradesdk/bean/UpgradeData;->getUpgradeMessage()Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    .line 347
    .line 348
    :goto_6
    iget-object p1, p0, Lsu/i;->f:Landroid/widget/TextView;

    .line 349
    .line 350
    if-eqz p1, :cond_d

    .line 351
    .line 352
    iget-object v0, p0, Lsu/i;->h:Lcom/transsion/upgradesdk/bean/UpgradeData;

    .line 353
    .line 354
    if-nez v0, :cond_c

    .line 355
    .line 356
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    goto :goto_7

    .line 360
    :cond_c
    move-object v2, v0

    .line 361
    :goto_7
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 362
    .line 363
    .line 364
    move-result-object v0

    .line 365
    const-string v1, "getContext(...)"

    .line 366
    .line 367
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    invoke-virtual {v2, v0}, Lcom/transsion/upgradesdk/bean/UpgradeData;->getCancelButtonText(Landroid/content/Context;)Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v0

    .line 374
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 375
    .line 376
    .line 377
    :cond_d
    iget-object p1, p0, Lsu/i;->e:Landroid/widget/TextView;

    .line 378
    .line 379
    if-nez p1, :cond_e

    .line 380
    .line 381
    goto :goto_9

    .line 382
    :cond_e
    new-instance v0, Landroid/text/method/ScrollingMovementMethod;

    .line 383
    .line 384
    invoke-direct {v0}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    .line 385
    .line 386
    .line 387
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 388
    .line 389
    .line 390
    goto :goto_9

    .line 391
    :goto_8
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 392
    .line 393
    .line 394
    invoke-virtual {p0}, Landroid/app/DialogFragment;->dismiss()V

    .line 395
    .line 396
    .line 397
    :goto_9
    invoke-virtual {p0}, Lsu/i;->g()V

    .line 398
    .line 399
    .line 400
    return-void
.end method

.method public final g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lsu/i;->f:Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lsu/e;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lsu/e;-><init>(Lsu/i;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lsu/i;->g:Landroid/widget/TextView;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    new-instance v1, Lsu/f;

    .line 18
    .line 19
    invoke-direct {v1, p0}, Lsu/f;-><init>(Lsu/i;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 1
    const-string p3, "inflater"

    .line 2
    .line 3
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p3, p0, Lsu/i;->m:Lkotlin/Lazy;

    .line 7
    .line 8
    invoke-interface {p3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p3

    .line 12
    check-cast p3, Ljava/lang/Number;

    .line 13
    .line 14
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    .line 15
    .line 16
    .line 17
    move-result p3

    .line 18
    const/4 v0, 0x1

    .line 19
    if-ne p3, v0, :cond_0

    .line 20
    .line 21
    sget p3, Lcom/transsion/upgradesdk/R$layout;->upgradesdk_layout_dialog_os16:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    sget p3, Lcom/transsion/upgradesdk/R$layout;->upgradesdk_layout_dialog_os15:I

    .line 25
    .line 26
    :goto_0
    const/4 v1, 0x0

    .line 27
    invoke-virtual {p1, p3, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    :try_start_0
    sget-object p2, Lqu/f;->o:Lqu/d;

    .line 32
    .line 33
    invoke-virtual {p2}, Lqu/d;->a()Lqu/f;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    iget-object p2, p2, Lqu/f;->b:Lcom/transsion/upgradesdk/bean/UpgradeData;

    .line 38
    .line 39
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    iput-object p2, p0, Lsu/i;->h:Lcom/transsion/upgradesdk/bean/UpgradeData;

    .line 43
    .line 44
    if-nez p2, :cond_1

    .line 45
    .line 46
    const-string p2, "upgradeData"

    .line 47
    .line 48
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const/4 p2, 0x0

    .line 52
    :cond_1
    invoke-virtual {p2}, Lcom/transsion/upgradesdk/bean/UpgradeData;->isForceUpdate()Z

    .line 53
    .line 54
    .line 55
    move-result p2

    .line 56
    if-eqz p2, :cond_2

    .line 57
    .line 58
    const/4 v0, 0x2

    .line 59
    :cond_2
    iput v0, p0, Lsu/i;->i:I

    .line 60
    .line 61
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, p1}, Lsu/i;->b(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :catch_0
    invoke-virtual {p0}, Landroid/app/DialogFragment;->dismiss()V

    .line 69
    .line 70
    .line 71
    :goto_1
    return-object p1
.end method

.method public final onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroy()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lqu/f;->o:Lqu/d;

    .line 5
    .line 6
    invoke-virtual {v0}, Lqu/d;->a()Lqu/f;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "dialog"

    .line 11
    .line 12
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, v0, Lqu/f;->j:Lsu/i;

    .line 16
    .line 17
    if-ne v1, p0, :cond_0

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    iput-object v1, v0, Lqu/f;->j:Lsu/i;

    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    const-string v0, "dialog"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 7
    .line 8
    .line 9
    sget-object p1, Lqu/f;->o:Lqu/d;

    .line 10
    .line 11
    invoke-virtual {p1}, Lqu/d;->a()Lqu/f;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object p1, p1, Lqu/f;->g:Lcom/transsion/upgradesdk/manager/UpgradeDialogCallback;

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    invoke-interface {p1}, Lcom/transsion/upgradesdk/manager/UpgradeDialogCallback;->onDialogDismiss()V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public final onStart()V
    .locals 8

    .line 1
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    invoke-static {v1, v2}, Ltu/d;->a(Landroid/view/Window;Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    const/4 v1, 0x0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    if-eqz v0, :cond_4

    .line 39
    .line 40
    iget-object v2, p0, Lsu/i;->l:Lkotlin/Lazy;

    .line 41
    .line 42
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Ljava/lang/Boolean;

    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-nez v2, :cond_4

    .line 53
    .line 54
    sget-object v2, Ltu/i;->b:Ltu/h;

    .line 55
    .line 56
    invoke-virtual {v2, v0}, Ltu/h;->a(Landroid/content/Context;)Ltu/i;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 61
    .line 62
    .line 63
    move-result-wide v4

    .line 64
    const-string v6, "KV_UPGRADE_POPUP_LAST_TIME"

    .line 65
    .line 66
    const-string v7, "key"

    .line 67
    .line 68
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-object v3, v3, Ltu/i;->a:Lcom/tencent/mmkv/MMKV;

    .line 72
    .line 73
    if-eqz v3, :cond_2

    .line 74
    .line 75
    invoke-virtual {v3, v6, v4, v5}, Lcom/tencent/mmkv/MMKV;->t(Ljava/lang/String;J)Z

    .line 76
    .line 77
    .line 78
    :cond_2
    invoke-virtual {v2, v0}, Ltu/h;->a(Landroid/content/Context;)Ltu/i;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    const-string v4, "KV_UPGRADE_POPUP_TIMES"

    .line 83
    .line 84
    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iget-object v3, v3, Ltu/i;->a:Lcom/tencent/mmkv/MMKV;

    .line 88
    .line 89
    if-eqz v3, :cond_3

    .line 90
    .line 91
    invoke-virtual {v3, v4, v1}, Lcom/tencent/mmkv/MMKV;->g(Ljava/lang/String;I)I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 96
    .line 97
    invoke-virtual {v2, v0}, Ltu/h;->a(Landroid/content/Context;)Ltu/i;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    iget-object v0, v0, Ltu/i;->a:Lcom/tencent/mmkv/MMKV;

    .line 105
    .line 106
    if-eqz v0, :cond_4

    .line 107
    .line 108
    invoke-virtual {v0, v4, v1}, Lcom/tencent/mmkv/MMKV;->s(Ljava/lang/String;I)Z

    .line 109
    .line 110
    .line 111
    :cond_4
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    new-instance p2, Lsu/g;

    .line 16
    .line 17
    invoke-direct {p2, p0}, Lsu/g;-><init>(Lsu/i;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object p1, p0, Lsu/i;->j:Lkotlin/Lazy;

    .line 24
    .line 25
    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Ljava/lang/Integer;

    .line 30
    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    iget-object p2, p0, Lsu/i;->f:Landroid/widget/TextView;

    .line 38
    .line 39
    if-eqz p2, :cond_1

    .line 40
    .line 41
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 42
    .line 43
    .line 44
    :cond_1
    iget-object p1, p0, Lsu/i;->k:Lkotlin/Lazy;

    .line 45
    .line 46
    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Ljava/lang/Integer;

    .line 51
    .line 52
    if-eqz p1, :cond_2

    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    iget-object p2, p0, Lsu/i;->g:Landroid/widget/TextView;

    .line 59
    .line 60
    if-eqz p2, :cond_2

    .line 61
    .line 62
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 63
    .line 64
    .line 65
    :cond_2
    iget p1, p0, Lsu/i;->i:I

    .line 66
    .line 67
    iget-object p2, p0, Lsu/i;->l:Lkotlin/Lazy;

    .line 68
    .line 69
    invoke-interface {p2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    check-cast p2, Ljava/lang/Boolean;

    .line 74
    .line 75
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 76
    .line 77
    .line 78
    move-result p2

    .line 79
    sget-object v0, Lcom/transsion/upgradesdk/bean/c;->c:Lcom/transsion/upgradesdk/bean/c;

    .line 80
    .line 81
    invoke-static {p1, p2, v0}, Ltu/l;->d(IZLcom/transsion/upgradesdk/bean/c;)V

    .line 82
    .line 83
    .line 84
    sget-object p1, Lqu/f;->o:Lqu/d;

    .line 85
    .line 86
    invoke-virtual {p1}, Lqu/d;->a()Lqu/f;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    iget-object p1, p1, Lqu/f;->g:Lcom/transsion/upgradesdk/manager/UpgradeDialogCallback;

    .line 91
    .line 92
    if-eqz p1, :cond_3

    .line 93
    .line 94
    invoke-interface {p1}, Lcom/transsion/upgradesdk/manager/UpgradeDialogCallback;->onDialogShow()V

    .line 95
    .line 96
    .line 97
    :cond_3
    return-void
.end method
