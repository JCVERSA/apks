.class public final Lcom/transsion/upgradesdk/page/f;
.super Landroidx/fragment/app/DialogFragment;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/transsion/upgradesdk/page/f;",
        "Landroidx/fragment/app/DialogFragment;",
        "<init>",
        "()V",
        "upgradesdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


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
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/transsion/upgradesdk/page/f;->i:I

    .line 6
    .line 7
    new-instance v0, Lcom/transsion/upgradesdk/page/a;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/transsion/upgradesdk/page/a;-><init>(Lcom/transsion/upgradesdk/page/f;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/transsion/upgradesdk/page/f;->j:Lkotlin/Lazy;

    .line 17
    .line 18
    new-instance v0, Lcom/transsion/upgradesdk/page/b;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/transsion/upgradesdk/page/b;-><init>(Lcom/transsion/upgradesdk/page/f;)V

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/transsion/upgradesdk/page/f;->k:Lkotlin/Lazy;

    .line 28
    .line 29
    new-instance v0, Lcom/transsion/upgradesdk/page/e;

    .line 30
    .line 31
    invoke-direct {v0, p0}, Lcom/transsion/upgradesdk/page/e;-><init>(Lcom/transsion/upgradesdk/page/f;)V

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Lcom/transsion/upgradesdk/page/f;->l:Lkotlin/Lazy;

    .line 39
    .line 40
    new-instance v0, Lcom/transsion/upgradesdk/page/c;

    .line 41
    .line 42
    invoke-direct {v0, p0}, Lcom/transsion/upgradesdk/page/c;-><init>(Lcom/transsion/upgradesdk/page/f;)V

    .line 43
    .line 44
    .line 45
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iput-object v0, p0, Lcom/transsion/upgradesdk/page/f;->m:Lkotlin/Lazy;

    .line 50
    .line 51
    return-void
.end method

.method public static X()V
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lsu/d;

    .line 7
    .line 8
    invoke-direct {v1}, Lsu/d;-><init>()V

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

.method public static final a0(Lcom/transsion/upgradesdk/page/f;Landroid/view/View;)V
    .locals 3

    .line 1
    const-string p1, "this$0"

    .line 2
    .line 3
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/transsion/upgradesdk/page/f;->h:Lcom/transsion/upgradesdk/bean/UpgradeData;

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
    iget p1, p0, Lcom/transsion/upgradesdk/page/f;->i:I

    .line 23
    .line 24
    iget-object v0, p0, Lcom/transsion/upgradesdk/page/f;->l:Lkotlin/Lazy;

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
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 58
    .line 59
    .line 60
    invoke-static {}, Lcom/transsion/upgradesdk/page/f;->X()V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    iget p1, p0, Lcom/transsion/upgradesdk/page/f;->i:I

    .line 65
    .line 66
    iget-object v0, p0, Lcom/transsion/upgradesdk/page/f;->l:Lkotlin/Lazy;

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
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 100
    .line 101
    .line 102
    :goto_0
    return-void
.end method

.method public static final b0(Lcom/transsion/upgradesdk/page/f;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
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
    iget-object p2, p0, Lcom/transsion/upgradesdk/page/f;->h:Lcom/transsion/upgradesdk/bean/UpgradeData;

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
    iget p1, p0, Lcom/transsion/upgradesdk/page/f;->i:I

    .line 32
    .line 33
    iget-object p0, p0, Lcom/transsion/upgradesdk/page/f;->l:Lkotlin/Lazy;

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
    invoke-static {}, Lcom/transsion/upgradesdk/page/f;->X()V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    iget p2, p0, Lcom/transsion/upgradesdk/page/f;->i:I

    .line 71
    .line 72
    iget-object p0, p0, Lcom/transsion/upgradesdk/page/f;->l:Lkotlin/Lazy;

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

.method public static final c0()V
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

.method public static final d0(Lcom/transsion/upgradesdk/page/f;Landroid/view/View;)V
    .locals 4

    .line 1
    const-string p1, "this$0"

    .line 2
    .line 3
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget p1, p0, Lcom/transsion/upgradesdk/page/f;->i:I

    .line 7
    .line 8
    iget-object v0, p0, Lcom/transsion/upgradesdk/page/f;->l:Lkotlin/Lazy;

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
    iget-object p1, p0, Lcom/transsion/upgradesdk/page/f;->h:Lcom/transsion/upgradesdk/bean/UpgradeData;

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
    iget-object v2, p0, Lcom/transsion/upgradesdk/page/f;->h:Lcom/transsion/upgradesdk/bean/UpgradeData;

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
    iget-object v3, p0, Lcom/transsion/upgradesdk/page/f;->h:Lcom/transsion/upgradesdk/bean/UpgradeData;

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
    new-instance v1, Lcom/transsion/upgradesdk/page/d;

    .line 82
    .line 83
    invoke-direct {v1, p0}, Lcom/transsion/upgradesdk/page/d;-><init>(Lcom/transsion/upgradesdk/page/f;)V

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
.method public final Y(Landroid/view/View;)V
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
    iget-object v1, p0, Lcom/transsion/upgradesdk/page/f;->h:Lcom/transsion/upgradesdk/bean/UpgradeData;

    .line 10
    .line 11
    const-string v2, "upgradeData"

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    move-object v1, v3

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
    iput-object v0, p0, Lcom/transsion/upgradesdk/page/f;->c:Landroid/widget/ImageView;

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
    iput-object v0, p0, Lcom/transsion/upgradesdk/page/f;->a:Landroid/widget/TextView;

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
    iput-object v0, p0, Lcom/transsion/upgradesdk/page/f;->b:Landroid/widget/TextView;

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
    iput-object v0, p0, Lcom/transsion/upgradesdk/page/f;->d:Landroid/widget/TextView;

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
    iput-object v0, p0, Lcom/transsion/upgradesdk/page/f;->e:Landroid/widget/TextView;

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
    iput-object v0, p0, Lcom/transsion/upgradesdk/page/f;->f:Landroid/widget/TextView;

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
    iput-object v0, p0, Lcom/transsion/upgradesdk/page/f;->g:Landroid/widget/TextView;

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
    sget-object p1, Lqu/f;->o:Lqu/d;

    .line 123
    .line 124
    invoke-virtual {p1}, Lqu/d;->a()Lqu/f;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-virtual {p1}, Lqu/f;->e()Lnu/b;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    iget-object p1, p1, Lnu/b;->b:Landroid/graphics/drawable/Drawable;

    .line 133
    .line 134
    if-eqz p1, :cond_2

    .line 135
    .line 136
    iget-object v0, p0, Lcom/transsion/upgradesdk/page/f;->c:Landroid/widget/ImageView;

    .line 137
    .line 138
    if-eqz v0, :cond_2

    .line 139
    .line 140
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 141
    .line 142
    .line 143
    goto :goto_1

    .line 144
    :catch_0
    move-exception p1

    .line 145
    goto/16 :goto_a

    .line 146
    .line 147
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/transsion/upgradesdk/page/f;->b:Landroid/widget/TextView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    .line 149
    const-string v0, ":  "

    .line 150
    .line 151
    if-nez p1, :cond_3

    .line 152
    .line 153
    goto :goto_2

    .line 154
    :cond_3
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .line 158
    .line 159
    sget v4, Lcom/transsion/upgradesdk/R$string;->upgrade_sdk_text_version:I

    .line 160
    .line 161
    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v4

    .line 165
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    iget-object v4, p0, Lcom/transsion/upgradesdk/page/f;->h:Lcom/transsion/upgradesdk/bean/UpgradeData;

    .line 172
    .line 173
    if-nez v4, :cond_4

    .line 174
    .line 175
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    move-object v4, v3

    .line 179
    :cond_4
    invoke-virtual {v4}, Lcom/transsion/upgradesdk/bean/UpgradeData;->getPkgVersionName()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v4

    .line 183
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    .line 192
    .line 193
    :goto_2
    iget-object p1, p0, Lcom/transsion/upgradesdk/page/f;->d:Landroid/widget/TextView;

    .line 194
    .line 195
    if-nez p1, :cond_5

    .line 196
    .line 197
    goto :goto_4

    .line 198
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 199
    .line 200
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    .line 202
    .line 203
    sget v4, Lcom/transsion/upgradesdk/R$string;->upgrade_sdk_text_size:I

    .line 204
    .line 205
    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v4

    .line 209
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    iget-object v0, p0, Lcom/transsion/upgradesdk/page/f;->h:Lcom/transsion/upgradesdk/bean/UpgradeData;

    .line 216
    .line 217
    if-nez v0, :cond_6

    .line 218
    .line 219
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    move-object v0, v3

    .line 223
    :cond_6
    invoke-virtual {v0}, Lcom/transsion/upgradesdk/bean/UpgradeData;->getPkgSize()J

    .line 224
    .line 225
    .line 226
    move-result-wide v4

    .line 227
    const-wide/32 v6, 0x100000

    .line 228
    .line 229
    .line 230
    cmp-long v0, v4, v6

    .line 231
    .line 232
    if-gez v0, :cond_7

    .line 233
    .line 234
    long-to-double v4, v4

    .line 235
    const-wide/16 v6, 0x400

    .line 236
    .line 237
    long-to-double v6, v6

    .line 238
    div-double/2addr v4, v6

    .line 239
    const-string v0, "K"

    .line 240
    .line 241
    goto :goto_3

    .line 242
    :cond_7
    const-wide/32 v8, 0x40000000

    .line 243
    .line 244
    .line 245
    cmp-long v0, v4, v8

    .line 246
    .line 247
    if-gez v0, :cond_8

    .line 248
    .line 249
    long-to-double v4, v4

    .line 250
    long-to-double v6, v6

    .line 251
    div-double/2addr v4, v6

    .line 252
    const-string v0, "M"

    .line 253
    .line 254
    goto :goto_3

    .line 255
    :cond_8
    long-to-double v4, v4

    .line 256
    long-to-double v6, v8

    .line 257
    div-double/2addr v4, v6

    .line 258
    const-string v0, "G"

    .line 259
    .line 260
    :goto_3
    new-instance v6, Ljava/math/BigDecimal;

    .line 261
    .line 262
    invoke-direct {v6, v4, v5}, Ljava/math/BigDecimal;-><init>(D)V

    .line 263
    .line 264
    .line 265
    new-instance v4, Ljava/lang/StringBuilder;

    .line 266
    .line 267
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 268
    .line 269
    .line 270
    const/4 v5, 0x1

    .line 271
    const/4 v7, 0x4

    .line 272
    invoke-virtual {v6, v5, v7}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    .line 273
    .line 274
    .line 275
    move-result-object v5

    .line 276
    invoke-virtual {v5}, Ljava/math/BigDecimal;->doubleValue()D

    .line 277
    .line 278
    .line 279
    move-result-wide v5

    .line 280
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    .line 299
    .line 300
    :goto_4
    iget-object p1, p0, Lcom/transsion/upgradesdk/page/f;->e:Landroid/widget/TextView;

    .line 301
    .line 302
    if-nez p1, :cond_9

    .line 303
    .line 304
    goto :goto_5

    .line 305
    :cond_9
    iget-object v0, p0, Lcom/transsion/upgradesdk/page/f;->h:Lcom/transsion/upgradesdk/bean/UpgradeData;

    .line 306
    .line 307
    if-nez v0, :cond_a

    .line 308
    .line 309
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    move-object v0, v3

    .line 313
    :cond_a
    invoke-virtual {v0}, Lcom/transsion/upgradesdk/bean/UpgradeData;->getUpgradeMessage()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    .line 319
    .line 320
    :goto_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 321
    .line 322
    .line 323
    move-result-object p1

    .line 324
    if-eqz p1, :cond_11

    .line 325
    .line 326
    iget-object v0, p0, Lcom/transsion/upgradesdk/page/f;->f:Landroid/widget/TextView;

    .line 327
    .line 328
    if-nez v0, :cond_b

    .line 329
    .line 330
    goto :goto_6

    .line 331
    :cond_b
    iget-object v1, p0, Lcom/transsion/upgradesdk/page/f;->h:Lcom/transsion/upgradesdk/bean/UpgradeData;

    .line 332
    .line 333
    if-nez v1, :cond_c

    .line 334
    .line 335
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    move-object v1, v3

    .line 339
    :cond_c
    invoke-virtual {v1, p1}, Lcom/transsion/upgradesdk/bean/UpgradeData;->getCancelButtonText(Landroid/content/Context;)Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v1

    .line 343
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    .line 345
    .line 346
    :goto_6
    iget-object v0, p0, Lcom/transsion/upgradesdk/page/f;->a:Landroid/widget/TextView;

    .line 347
    .line 348
    if-nez v0, :cond_d

    .line 349
    .line 350
    goto :goto_9

    .line 351
    :cond_d
    const-string v1, "context"

    .line 352
    .line 353
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 357
    .line 358
    .line 359
    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 360
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v2

    .line 364
    const/4 v4, 0x0

    .line 365
    invoke-virtual {v1, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 366
    .line 367
    .line 368
    move-result-object v1

    .line 369
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 370
    .line 371
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->labelRes:I

    .line 372
    .line 373
    if-eqz v2, :cond_e

    .line 374
    .line 375
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 376
    .line 377
    .line 378
    move-result-object p1

    .line 379
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object p1

    .line 383
    goto :goto_8

    .line 384
    :catch_1
    move-exception p1

    .line 385
    goto :goto_7

    .line 386
    :cond_e
    iget-object p1, v1, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 387
    .line 388
    if-eqz p1, :cond_f

    .line 389
    .line 390
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 394
    goto :goto_8

    .line 395
    :goto_7
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 396
    .line 397
    .line 398
    :cond_f
    move-object p1, v3

    .line 399
    :goto_8
    if-eqz p1, :cond_10

    .line 400
    .line 401
    invoke-static {p1}, Lkotlin/text/StringsKt;->n1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 402
    .line 403
    .line 404
    move-result-object p1

    .line 405
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v3

    .line 409
    :cond_10
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 410
    .line 411
    .line 412
    :cond_11
    :goto_9
    iget-object p1, p0, Lcom/transsion/upgradesdk/page/f;->e:Landroid/widget/TextView;

    .line 413
    .line 414
    if-nez p1, :cond_12

    .line 415
    .line 416
    goto :goto_b

    .line 417
    :cond_12
    new-instance v0, Landroid/text/method/ScrollingMovementMethod;

    .line 418
    .line 419
    invoke-direct {v0}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    .line 420
    .line 421
    .line 422
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 423
    .line 424
    .line 425
    goto :goto_b

    .line 426
    :goto_a
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 427
    .line 428
    .line 429
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 430
    .line 431
    .line 432
    :goto_b
    invoke-virtual {p0}, Lcom/transsion/upgradesdk/page/f;->e0()V

    .line 433
    .line 434
    .line 435
    return-void
.end method

.method public final Z(Landroidx/fragment/app/FragmentManager;)V
    .locals 2

    .line 1
    const-string v0, "manager"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->L0()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_2

    .line 11
    .line 12
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->T0()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-string v0, "UpgradeBottomDialog"

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->k0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-nez v1, :cond_2

    .line 39
    .line 40
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :cond_2
    :goto_0
    return-void
.end method

.method public final e0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/upgradesdk/page/f;->f:Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lsu/b;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lsu/b;-><init>(Lcom/transsion/upgradesdk/page/f;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/transsion/upgradesdk/page/f;->g:Landroid/widget/TextView;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    new-instance v1, Lsu/c;

    .line 18
    .line 19
    invoke-direct {v1, p0}, Lsu/c;-><init>(Lcom/transsion/upgradesdk/page/f;)V

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
    iget-object p3, p0, Lcom/transsion/upgradesdk/page/f;->m:Lkotlin/Lazy;

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
    iput-object p2, p0, Lcom/transsion/upgradesdk/page/f;->h:Lcom/transsion/upgradesdk/bean/UpgradeData;

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
    iput v0, p0, Lcom/transsion/upgradesdk/page/f;->i:I

    .line 60
    .line 61
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, p1}, Lcom/transsion/upgradesdk/page/f;->Y(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :catch_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 69
    .line 70
    .line 71
    :goto_1
    return-object p1
.end method

.method public final onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

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
    iget-object v1, v0, Lqu/f;->i:Lcom/transsion/upgradesdk/page/f;

    .line 16
    .line 17
    if-ne v1, p0, :cond_0

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    iput-object v1, v0, Lqu/f;->i:Lcom/transsion/upgradesdk/page/f;

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
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

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
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

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
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

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
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    if-eqz v0, :cond_4

    .line 39
    .line 40
    iget-object v2, p0, Lcom/transsion/upgradesdk/page/f;->l:Lkotlin/Lazy;

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
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    new-instance p2, Lsu/a;

    .line 16
    .line 17
    invoke-direct {p2, p0}, Lsu/a;-><init>(Lcom/transsion/upgradesdk/page/f;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object p1, p0, Lcom/transsion/upgradesdk/page/f;->j:Lkotlin/Lazy;

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
    iget-object p2, p0, Lcom/transsion/upgradesdk/page/f;->f:Landroid/widget/TextView;

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
    iget-object p1, p0, Lcom/transsion/upgradesdk/page/f;->k:Lkotlin/Lazy;

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
    iget-object p2, p0, Lcom/transsion/upgradesdk/page/f;->g:Landroid/widget/TextView;

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
    iget p1, p0, Lcom/transsion/upgradesdk/page/f;->i:I

    .line 66
    .line 67
    iget-object p2, p0, Lcom/transsion/upgradesdk/page/f;->l:Lkotlin/Lazy;

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
