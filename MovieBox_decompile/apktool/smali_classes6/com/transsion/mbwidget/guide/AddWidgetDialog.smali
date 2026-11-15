.class public final Lcom/transsion/mbwidget/guide/AddWidgetDialog;
.super Lcom/transsion/baseui/dialog/BaseDialogFragment;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/dialog/BaseDialogFragment<",
        "Ldm/b;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0003\u00a2\u0006\u0004\u0008\u0007\u0010\u0004J\u000f\u0010\u0008\u001a\u00020\u0005H\u0003\u00a2\u0006\u0004\u0008\u0008\u0010\u0004J\u000f\u0010\t\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\t\u0010\u0004J\u000f\u0010\n\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u0004J\u0017\u0010\r\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u000bH\u0014\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0019\u0010\u0011\u001a\u00020\u00052\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0004R\u0018\u0010\u0017\u001a\u0004\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R*\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00188\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001e\u00a8\u0006 "
    }
    d2 = {
        "Lcom/transsion/mbwidget/guide/AddWidgetDialog;",
        "Lcom/transsion/baseui/dialog/BaseDialogFragment;",
        "Ldm/b;",
        "<init>",
        "()V",
        "",
        "p0",
        "n0",
        "o0",
        "initView",
        "onDestroyView",
        "Landroid/view/Window;",
        "window",
        "d0",
        "(Landroid/view/Window;)V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "c0",
        "Lkotlinx/coroutines/t1;",
        "e",
        "Lkotlinx/coroutines/t1;",
        "addWidgetJob",
        "Lkotlin/Function0;",
        "f",
        "Lkotlin/jvm/functions/Function0;",
        "getOnDismissListener",
        "()Lkotlin/jvm/functions/Function0;",
        "t0",
        "(Lkotlin/jvm/functions/Function0;)V",
        "onDismissListener",
        "DeskWidget_psRelease"
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
.field private e:Lkotlinx/coroutines/t1;

.field private f:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/mbwidget/guide/AddWidgetDialog$1;->INSTANCE:Lcom/transsion/mbwidget/guide/AddWidgetDialog$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/transsion/baseui/dialog/BaseDialogFragment;-><init>(Lkotlin/jvm/functions/Function3;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic i0(Lcom/transsion/mbwidget/guide/AddWidgetDialog;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/mbwidget/guide/AddWidgetDialog;->r0(Lcom/transsion/mbwidget/guide/AddWidgetDialog;Landroid/view/View;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic j0(Lcom/transsion/mbwidget/guide/AddWidgetDialog;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/mbwidget/guide/AddWidgetDialog;->s0(Lcom/transsion/mbwidget/guide/AddWidgetDialog;Landroid/view/View;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic k0(Lcom/transsion/mbwidget/guide/AddWidgetDialog;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/mbwidget/guide/AddWidgetDialog;->q0(Lcom/transsion/mbwidget/guide/AddWidgetDialog;Landroid/view/View;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic l0(Lcom/transsion/mbwidget/guide/AddWidgetDialog;)Lkotlinx/coroutines/t1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/mbwidget/guide/AddWidgetDialog;->e:Lkotlinx/coroutines/t1;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic m0(Lcom/transsion/mbwidget/guide/AddWidgetDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/mbwidget/guide/AddWidgetDialog;->p0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final n0()V
    .locals 7

    .line 1
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 2
    .line 3
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Landroid/content/ComponentName;

    .line 12
    .line 13
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const-class v3, Lcom/transsion/mbwidget/HotSubjectWidgetProvider;

    .line 18
    .line 19
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lcom/transsion/mbwidget/b;->a(Landroid/appwidget/AppWidgetManager;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    new-instance v2, Landroid/content/Intent;

    .line 29
    .line 30
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    const-class v4, Lcom/transsion/mbwidget/guide/WidgetCallbackReceiver;

    .line 35
    .line 36
    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 37
    .line 38
    .line 39
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    const/4 v4, 0x0

    .line 44
    const/high16 v5, 0xc000000

    .line 45
    .line 46
    invoke-static {v3, v4, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    const/4 v3, 0x0

    .line 51
    invoke-static {v0, v1, v3, v2}, Lcom/transsion/mbwidget/guide/b;->a(Landroid/appwidget/AppWidgetManager;Landroid/content/ComponentName;Landroid/os/Bundle;Landroid/app/PendingIntent;)Z

    .line 52
    .line 53
    .line 54
    sget-object v0, Lcom/transsion/mbwidget/d;->a:Lcom/transsion/mbwidget/d;

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/transsion/mbwidget/d;->j()Lcom/transsion/mbwidget/guide/a;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    if-eqz v0, :cond_0

    .line 61
    .line 62
    invoke-interface {v0}, Lcom/transsion/mbwidget/guide/a;->a()V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :catchall_0
    move-exception v0

    .line 67
    goto :goto_1

    .line 68
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/transsion/mbwidget/guide/AddWidgetDialog;->o0()V

    .line 69
    .line 70
    .line 71
    :cond_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 72
    .line 73
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    goto :goto_2

    .line 78
    :goto_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 79
    .line 80
    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    :goto_2
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    if-eqz v0, :cond_2

    .line 93
    .line 94
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .line 104
    .line 105
    const-string v3, "add-error:"

    .line 106
    .line 107
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    const/4 v5, 0x4

    .line 118
    const/4 v6, 0x0

    .line 119
    const-string v2, "DeskWidget_"

    .line 120
    .line 121
    const/4 v4, 0x0

    .line 122
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    :cond_2
    return-void
.end method

.method private final o0()V
    .locals 7

    .line 1
    sget-object v0, Lcom/transsion/mbwidget/d;->a:Lcom/transsion/mbwidget/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/mbwidget/d;->n()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-static {p0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    new-instance v4, Lcom/transsion/mbwidget/guide/AddWidgetDialog$checkMiUI$1;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-direct {v4, p0, v0}, Lcom/transsion/mbwidget/guide/AddWidgetDialog$checkMiUI$1;-><init>(Lcom/transsion/mbwidget/guide/AddWidgetDialog;Lkotlin/coroutines/Continuation;)V

    .line 18
    .line 19
    .line 20
    const/4 v5, 0x3

    .line 21
    const/4 v6, 0x0

    .line 22
    const/4 v2, 0x0

    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lcom/transsion/mbwidget/guide/AddWidgetDialog;->e:Lkotlinx/coroutines/t1;

    .line 29
    .line 30
    return-void
.end method

.method private final p0()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Landroid/content/Intent;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const-class v3, Lcom/transsion/mbwidget/guide/WidgetGuideActivity;

    .line 12
    .line 13
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private static final q0(Lcom/transsion/mbwidget/guide/AddWidgetDialog;Landroid/view/View;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 7
    .line 8
    .line 9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    return-object p0
.end method

.method private static final r0(Lcom/transsion/mbwidget/guide/AddWidgetDialog;Landroid/view/View;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/transsion/mbwidget/guide/AddWidgetDialog;->p0()V

    .line 7
    .line 8
    .line 9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    return-object p0
.end method

.method private static final s0(Lcom/transsion/mbwidget/guide/AddWidgetDialog;Landroid/view/View;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lcom/transsion/mbwidget/utils/a;->a:Lcom/transsion/mbwidget/utils/a;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/transsion/mbwidget/utils/a;->b()V

    .line 9
    .line 10
    .line 11
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 12
    .line 13
    const/16 v0, 0x1a

    .line 14
    .line 15
    if-lt p1, v0, :cond_0

    .line 16
    .line 17
    invoke-direct {p0}, Lcom/transsion/mbwidget/guide/AddWidgetDialog;->n0()V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-direct {p0}, Lcom/transsion/mbwidget/guide/AddWidgetDialog;->p0()V

    .line 22
    .line 23
    .line 24
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 25
    .line 26
    return-object p0
.end method


# virtual methods
.method public c0()V
    .locals 5

    .line 1
    sget-object v0, Lcom/transsion/baselib/report/k;->a:Lcom/transsion/baselib/report/k;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/baselib/report/k;->q()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/transsion/baseui/dialog/BaseDialogFragment;->a0()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    sget-object v0, Lcom/transsion/mbwidget/d;->a:Lcom/transsion/mbwidget/d;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/transsion/mbwidget/d;->k()Lcom/tencent/mmkv/MMKV;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v2, "desk_widget_guide_show_time"

    .line 20
    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 22
    .line 23
    .line 24
    move-result-wide v3

    .line 25
    invoke-virtual {v1, v2, v3, v4}, Lcom/tencent/mmkv/MMKV;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/transsion/mbwidget/d;->k()Lcom/tencent/mmkv/MMKV;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v1, "desk_widget_guide_show_first"

    .line 33
    .line 34
    const-wide/16 v2, 0x1

    .line 35
    .line 36
    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/mmkv/MMKV;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method protected d0(Landroid/view/Window;)V
    .locals 3

    .line 1
    const-string v0, "window"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, -0x2

    .line 11
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 12
    .line 13
    const/4 v1, -0x1

    .line 14
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 15
    .line 16
    const/16 v1, 0x50

    .line 17
    .line 18
    invoke-virtual {p1, v1}, Landroid/view/Window;->setGravity(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/transsion/baseui/dialog/BaseDialogFragment;->Z()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public initView()V
    .locals 13

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/dialog/BaseDialogFragment;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ldm/b;

    .line 6
    .line 7
    iget-object v1, v0, Ldm/b;->c:Landroid/widget/ImageView;

    .line 8
    .line 9
    const-string v0, "closeIV"

    .line 10
    .line 11
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    new-instance v4, Lcom/transsion/mbwidget/guide/c;

    .line 15
    .line 16
    invoke-direct {v4, p0}, Lcom/transsion/mbwidget/guide/c;-><init>(Lcom/transsion/mbwidget/guide/AddWidgetDialog;)V

    .line 17
    .line 18
    .line 19
    const/4 v5, 0x1

    .line 20
    const/4 v6, 0x0

    .line 21
    const-wide/16 v2, 0x0

    .line 22
    .line 23
    invoke-static/range {v1 .. v6}, Luf/c;->c(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/transsion/baseui/dialog/BaseDialogFragment;->getMViewBinding()Lf4/a;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Ldm/b;

    .line 31
    .line 32
    iget-object v1, v0, Ldm/b;->d:Lcom/transsion/baseui/widget/text/GradientTextView;

    .line 33
    .line 34
    const-string v0, "tipsTv"

    .line 35
    .line 36
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    new-instance v4, Lcom/transsion/mbwidget/guide/d;

    .line 40
    .line 41
    invoke-direct {v4, p0}, Lcom/transsion/mbwidget/guide/d;-><init>(Lcom/transsion/mbwidget/guide/AddWidgetDialog;)V

    .line 42
    .line 43
    .line 44
    invoke-static/range {v1 .. v6}, Luf/c;->c(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/transsion/baseui/dialog/BaseDialogFragment;->getMViewBinding()Lf4/a;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Ldm/b;

    .line 52
    .line 53
    iget-object v1, v0, Ldm/b;->b:Landroid/widget/TextView;

    .line 54
    .line 55
    const-string v0, "addTv"

    .line 56
    .line 57
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    new-instance v4, Lcom/transsion/mbwidget/guide/e;

    .line 61
    .line 62
    invoke-direct {v4, p0}, Lcom/transsion/mbwidget/guide/e;-><init>(Lcom/transsion/mbwidget/guide/AddWidgetDialog;)V

    .line 63
    .line 64
    .line 65
    invoke-static/range {v1 .. v6}, Luf/c;->c(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    invoke-static {p0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 69
    .line 70
    .line 71
    move-result-object v7

    .line 72
    new-instance v10, Lcom/transsion/mbwidget/guide/AddWidgetDialog$initView$4;

    .line 73
    .line 74
    const/4 v0, 0x0

    .line 75
    invoke-direct {v10, p0, v0}, Lcom/transsion/mbwidget/guide/AddWidgetDialog$initView$4;-><init>(Lcom/transsion/mbwidget/guide/AddWidgetDialog;Lkotlin/coroutines/Continuation;)V

    .line 76
    .line 77
    .line 78
    const/4 v11, 0x3

    .line 79
    const/4 v12, 0x0

    .line 80
    const/4 v8, 0x0

    .line 81
    const/4 v9, 0x0

    .line 82
    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/transsion/baseui/dialog/BaseDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lcom/transsion/mbwidget/utils/a;->a:Lcom/transsion/mbwidget/utils/a;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/transsion/mbwidget/utils/a;->a()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/transsion/mbwidget/d;->a:Lcom/transsion/mbwidget/d;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/transsion/mbwidget/d;->j()Lcom/transsion/mbwidget/guide/a;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-interface {v0}, Lcom/transsion/mbwidget/guide/a;->onDismiss()V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/transsion/mbwidget/guide/AddWidgetDialog;->f:Lkotlin/jvm/functions/Function0;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    :cond_1
    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/transsion/mbwidget/guide/AddWidgetDialog;->f:Lkotlin/jvm/functions/Function0;

    .line 24
    .line 25
    return-void
.end method

.method public final t0(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/mbwidget/guide/AddWidgetDialog;->f:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-void
.end method
