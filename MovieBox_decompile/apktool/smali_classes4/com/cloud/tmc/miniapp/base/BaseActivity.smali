.class public abstract Lcom/cloud/tmc/miniapp/base/BaseActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/miniapp/action/ActivityAction;
.implements Lcom/cloud/tmc/miniapp/action/ClickAction;
.implements Lcom/cloud/tmc/miniapp/action/HandlerAction;
.implements Lcom/cloud/tmc/miniapp/action/KeyboardAction;
.implements Lcom/cloud/tmc/miniapp/action/BundleAction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/base/BaseActivity$OnActivityCallback;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field private final activityCallbacks$delegate:Lkotlin/Lazy;

.field private dialog:Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

.field private dialogCount:I

.field private initDataChannel:I

.field private mResumed:Z

.field private mStarted:Z

.field private savedInstance:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/cloud/tmc/miniapp/base/BaseActivity$activityCallbacks$2;->INSTANCE:Lcom/cloud/tmc/miniapp/base/BaseActivity$activityCallbacks$2;

    .line 5
    .line 6
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/base/BaseActivity;->activityCallbacks$delegate:Lkotlin/Lazy;

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/cloud/tmc/miniapp/base/BaseActivity;->mStarted:Z

    .line 14
    .line 15
    return-void
.end method

.method public static synthetic O(Lcom/cloud/tmc/miniapp/base/BaseActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->initSoftKeyboard$lambda$2(Lcom/cloud/tmc/miniapp/base/BaseActivity;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic P(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->fitsSystemWindows$lambda$1(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic Q(Lcom/cloud/tmc/miniapp/base/BaseActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->showLoadingDialog$lambda$0(Lcom/cloud/tmc/miniapp/base/BaseActivity;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final fitsSystemWindows$lambda$1(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 3

    .line 1
    const-string v0, "v"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "insets"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Lz0/c;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v0, "insets.getInsets(WindowI\u2026Compat.Type.systemBars())"

    .line 20
    .line 21
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iget v1, p1, Lz0/c;->b:I

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    iget p1, p1, Lz0/c;->d:I

    .line 35
    .line 36
    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 37
    .line 38
    .line 39
    sget-object p0, Landroidx/core/view/WindowInsetsCompat;->CONSUMED:Landroidx/core/view/WindowInsetsCompat;

    .line 40
    .line 41
    return-object p0
.end method

.method private final getActivityCallbacks()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/cloud/tmc/miniapp/base/BaseActivity$OnActivityCallback;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/BaseActivity;->activityCallbacks$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/util/SparseArray;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final initSoftKeyboard$lambda$2(Lcom/cloud/tmc/miniapp/base/BaseActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    const-string p1, "this$0"

    .line 2
    .line 3
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->hideKeyboard(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private final isShouldHideInput(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    instance-of v0, p1, Landroid/widget/EditText;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    instance-of v0, p1, Landroid/webkit/WebView;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    return v1

    .line 12
    :cond_1
    :goto_0
    filled-new-array {v1, v1}, [I

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 17
    .line 18
    .line 19
    aget v2, v0, v1

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    aget v0, v0, v3

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    add-int/2addr v4, v0

    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    add-int/2addr p1, v2

    .line 34
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    int-to-float v2, v2

    .line 39
    cmpl-float v2, v5, v2

    .line 40
    .line 41
    if-lez v2, :cond_2

    .line 42
    .line 43
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    int-to-float p1, p1

    .line 48
    cmpg-float p1, v2, p1

    .line 49
    .line 50
    if-gez p1, :cond_2

    .line 51
    .line 52
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    int-to-float v0, v0

    .line 57
    cmpl-float p1, p1, v0

    .line 58
    .line 59
    if-lez p1, :cond_2

    .line 60
    .line 61
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    int-to-float p2, v4

    .line 66
    cmpg-float p1, p1, p2

    .line 67
    .line 68
    if-ltz p1, :cond_3

    .line 69
    .line 70
    :cond_2
    move v1, v3

    .line 71
    :cond_3
    return v1
.end method

.method public static synthetic showLoadingDialog$default(Lcom/cloud/tmc/miniapp/base/BaseActivity;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 1
    if-nez p3, :cond_1

    .line 2
    .line 3
    and-int/lit8 p2, p2, 0x1

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    const-string p1, ""

    .line 8
    .line 9
    :cond_0
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->showLoadingDialog(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 14
    .line 15
    const-string p1, "Super calls with default arguments not supported in this target, function: showLoadingDialog"

    .line 16
    .line 17
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p0
.end method

.method private static final showLoadingDialog$lambda$0(Lcom/cloud/tmc/miniapp/base/BaseActivity;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lcom/cloud/tmc/miniapp/base/BaseActivity;->dialogCount:I

    .line 7
    .line 8
    if-lez v0, :cond_7

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_7

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/BaseActivity;->dialog:Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

    .line 24
    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    new-instance v0, Lcom/cloud/tmc/miniapp/dialog/o000OOo;

    .line 28
    .line 29
    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/dialog/o000OOo;-><init>(Landroid/content/Context;)V

    .line 30
    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setCancelable(Z)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lcom/cloud/tmc/miniapp/dialog/o000OOo;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->create()Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/base/BaseActivity;->dialog:Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

    .line 44
    .line 45
    :cond_1
    const/4 v0, 0x0

    .line 46
    if-eqz p1, :cond_4

    .line 47
    .line 48
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-lez v1, :cond_4

    .line 53
    .line 54
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/BaseActivity;->dialog:Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

    .line 55
    .line 56
    if-eqz v1, :cond_2

    .line 57
    .line 58
    sget v0, Lcom/cloud/tmc/miniapp/R$id;->tv_wait_message:I

    .line 59
    .line 60
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/w;->findViewById(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Landroid/widget/TextView;

    .line 65
    .line 66
    :cond_2
    if-nez v0, :cond_3

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_4
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/base/BaseActivity;->dialog:Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

    .line 74
    .line 75
    if-eqz p1, :cond_5

    .line 76
    .line 77
    sget v0, Lcom/cloud/tmc/miniapp/R$id;->tv_wait_message:I

    .line 78
    .line 79
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/w;->findViewById(I)Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    move-object v0, p1

    .line 84
    check-cast v0, Landroid/widget/TextView;

    .line 85
    .line 86
    :cond_5
    if-nez v0, :cond_6

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_6
    sget p1, Lcom/cloud/tmc/miniapp/R$string;->dialog_loading_tv:I

    .line 90
    .line 91
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    .line 97
    .line 98
    :goto_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/base/BaseActivity;->dialog:Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

    .line 99
    .line 100
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    if-nez p1, :cond_7

    .line 108
    .line 109
    iget-object p0, p0, Lcom/cloud/tmc/miniapp/base/BaseActivity;->dialog:Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

    .line 110
    .line 111
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 115
    .line 116
    .line 117
    :cond_7
    :goto_1
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    const-string v0, "ev"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-direct {p0, v0, p1}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->isShouldHideInput(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->hideKeyboard(Landroid/view/View;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    return p1
.end method

.method public finish()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->hideKeyboard(Landroid/view/View;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public fitsSystemWindows()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v0, v1}, Landroidx/core/view/WindowCompat;->setDecorFitsSystemWindows(Landroid/view/Window;Z)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const v1, 0x1020002

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    new-instance v1, Lcom/cloud/tmc/miniapp/base/a;

    .line 25
    .line 26
    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/base/a;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniapp/action/ActivityAction$DefaultImpls;->getActivity(Lcom/cloud/tmc/miniapp/action/ActivityAction;)Landroid/app/Activity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/BundleAction$DefaultImpls;->getBoolean(Lcom/cloud/tmc/miniapp/action/BundleAction;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 0

    .line 2
    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/miniapp/action/BundleAction$DefaultImpls;->getBoolean(Lcom/cloud/tmc/miniapp/action/BundleAction;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getBundle()Landroid/os/Bundle;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getContentView()Landroid/view/ViewGroup;
    .locals 1

    .line 1
    const v0, 0x1020002

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/view/ViewGroup;

    .line 9
    .line 10
    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0

    .line 1
    return-object p0
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 2

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/BundleAction$DefaultImpls;->getDouble(Lcom/cloud/tmc/miniapp/action/BundleAction;Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getDouble(Ljava/lang/String;D)D
    .locals 0

    .line 2
    invoke-static {p0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/action/BundleAction$DefaultImpls;->getDouble(Lcom/cloud/tmc/miniapp/action/BundleAction;Ljava/lang/String;D)D

    move-result-wide p1

    return-wide p1
.end method

.method public getFloat(Ljava/lang/String;)F
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/BundleAction$DefaultImpls;->getFloat(Lcom/cloud/tmc/miniapp/action/BundleAction;Ljava/lang/String;)F

    move-result p1

    return p1
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 0

    .line 2
    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/miniapp/action/BundleAction$DefaultImpls;->getFloat(Lcom/cloud/tmc/miniapp/action/BundleAction;Ljava/lang/String;F)F

    move-result p1

    return p1
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniapp/action/HandlerAction$DefaultImpls;->getHandler(Lcom/cloud/tmc/miniapp/action/HandlerAction;)Landroid/os/Handler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final getInitDataChannel()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/miniapp/base/BaseActivity;->initDataChannel:I

    .line 2
    .line 3
    return v0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/BundleAction$DefaultImpls;->getInt(Lcom/cloud/tmc/miniapp/action/BundleAction;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 0

    .line 2
    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/miniapp/action/BundleAction$DefaultImpls;->getInt(Lcom/cloud/tmc/miniapp/action/BundleAction;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/BundleAction$DefaultImpls;->getIntegerArrayList(Lcom/cloud/tmc/miniapp/action/BundleAction;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public abstract getLayoutId()I
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 2

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/BundleAction$DefaultImpls;->getLong(Lcom/cloud/tmc/miniapp/action/BundleAction;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 0

    .line 2
    invoke-static {p0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/action/BundleAction$DefaultImpls;->getLong(Lcom/cloud/tmc/miniapp/action/BundleAction;Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final getMResumed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/base/BaseActivity;->mResumed:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getMStarted()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/base/BaseActivity;->mStarted:Z

    .line 2
    .line 3
    return v0
.end method

.method public getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            ")TP;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/BundleAction$DefaultImpls;->getParcelable(Lcom/cloud/tmc/miniapp/action/BundleAction;Ljava/lang/String;)Landroid/os/Parcelable;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final getSavedInstance()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/BaseActivity;->savedInstance:Landroid/os/Bundle;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSerializable(Ljava/lang/String;)Ljava/io/Serializable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Ljava/io/Serializable;",
            ">(",
            "Ljava/lang/String;",
            ")TS;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/BundleAction$DefaultImpls;->getSerializable(Lcom/cloud/tmc/miniapp/action/BundleAction;Ljava/lang/String;)Ljava/io/Serializable;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/BundleAction$DefaultImpls;->getString(Lcom/cloud/tmc/miniapp/action/BundleAction;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/BundleAction$DefaultImpls;->getStringArrayList(Lcom/cloud/tmc/miniapp/action/BundleAction;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public hideKeyboard(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/KeyboardAction$DefaultImpls;->hideKeyboard(Lcom/cloud/tmc/miniapp/action/KeyboardAction;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public hideLoadingDialog()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_3

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

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
    iget v0, p0, Lcom/cloud/tmc/miniapp/base/BaseActivity;->dialogCount:I

    .line 15
    .line 16
    if-lez v0, :cond_1

    .line 17
    .line 18
    add-int/lit8 v0, v0, -0x1

    .line 19
    .line 20
    iput v0, p0, Lcom/cloud/tmc/miniapp/base/BaseActivity;->dialogCount:I

    .line 21
    .line 22
    :cond_1
    iget v0, p0, Lcom/cloud/tmc/miniapp/base/BaseActivity;->dialogCount:I

    .line 23
    .line 24
    if-nez v0, :cond_3

    .line 25
    .line 26
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/BaseActivity;->dialog:Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

    .line 27
    .line 28
    if-eqz v0, :cond_3

    .line 29
    .line 30
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/BaseActivity;->dialog:Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

    .line 41
    .line 42
    if-eqz v0, :cond_3

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0;->dismiss()V

    .line 45
    .line 46
    .line 47
    :cond_3
    :goto_0
    return-void
.end method

.method public abstract hideStatusLoading()V
.end method

.method public initActivity()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->initLayout()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getBundle()Landroid/os/Bundle;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string v2, "enableQuickMode"

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v0, v1

    .line 19
    :goto_0
    if-nez v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->showStatusLoading()V

    .line 22
    .line 23
    .line 24
    :cond_1
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->initView()V

    .line 25
    .line 26
    .line 27
    iput v1, p0, Lcom/cloud/tmc/miniapp/base/BaseActivity;->initDataChannel:I

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->initData()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public abstract initData()V
.end method

.method public initLayout()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getLayoutId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getLayoutId()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->fitsSystemWindows()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->initSoftKeyboard()V

    .line 18
    .line 19
    .line 20
    invoke-static {p0}, Lcom/cloud/tmc/integration/utils/MiniBarUtils;->setStatusBarLightMode(Landroid/app/Activity;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public initSoftKeyboard()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getContentView()Landroid/view/ViewGroup;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v1, Lcom/cloud/tmc/miniapp/base/c;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/cloud/tmc/miniapp/base/c;-><init>(Lcom/cloud/tmc/miniapp/base/BaseActivity;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public abstract initView()V
.end method

.method public isShowDialog()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/BaseActivity;->dialog:Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getActivityCallbacks()Landroid/util/SparseArray;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    move-object v1, v0

    .line 10
    check-cast v1, Lcom/cloud/tmc/miniapp/base/BaseActivity$OnActivityCallback;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-interface {v1, p2, p3}, Lcom/cloud/tmc/miniapp/base/BaseActivity$OnActivityCallback;->onActivityResult(ILandroid/content/Intent;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getActivityCallbacks()Landroid/util/SparseArray;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/ClickAction$DefaultImpls;->onClick(Lcom/cloud/tmc/miniapp/action/ClickAction;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/base/BaseActivity;->savedInstance:Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    sget-object p1, Lcom/cloud/tmc/miniapp/ipc/binderimpl/OooO00o;->OooO0OO:Lcom/cloud/tmc/miniapp/IMiniAppLifecycleInterface;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-interface {p1}, Lcom/cloud/tmc/miniapp/IMiniAppLifecycleInterface;->onCreate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v1, "globalMiniAppLifcecyclListener callback onCreate fail:"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-static {p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->initActivity()V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    sget-object v0, Lcom/cloud/tmc/miniapp/ipc/binderimpl/OooO00o;->OooO0OO:Lcom/cloud/tmc/miniapp/IMiniAppLifecycleInterface;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0}, Lcom/cloud/tmc/miniapp/IMiniAppLifecycleInterface;->onDestroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v2, "globalMiniAppLifcecyclListener callback onDestroy fail:"

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->removeCallbacks()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->isShowDialog()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->hideLoadingDialog()V

    .line 43
    .line 44
    .line 45
    :cond_1
    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/base/BaseActivity;->dialog:Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

    .line 47
    .line 48
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onPause()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    sget-object v0, Lcom/cloud/tmc/miniapp/ipc/binderimpl/OooO00o;->OooO0OO:Lcom/cloud/tmc/miniapp/IMiniAppLifecycleInterface;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0}, Lcom/cloud/tmc/miniapp/IMiniAppLifecycleInterface;->onPause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v2, "globalMiniAppLifcecyclListener callback onPause fail:"

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/cloud/tmc/miniapp/base/BaseActivity;->mResumed:Z

    .line 35
    .line 36
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 1
    :try_start_0
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    .line 3
    .line 4
    :try_start_1
    sget-object v0, Lcom/cloud/tmc/miniapp/ipc/binderimpl/OooO00o;->OooO0OO:Lcom/cloud/tmc/miniapp/IMiniAppLifecycleInterface;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0}, Lcom/cloud/tmc/miniapp/IMiniAppLifecycleInterface;->onResume()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v2, "globalMiniAppLifcecyclListener callback onResume fail:"

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lcom/cloud/tmc/miniapp/base/BaseActivity;->mResumed:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :catchall_1
    move-exception v0

    .line 38
    const-string v1, "BaseActivity"

    .line 39
    .line 40
    const-string v2, "onResume"

    .line 41
    .line 42
    invoke-static {v1, v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    .line 44
    .line 45
    :goto_1
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    sget-object v0, Lcom/cloud/tmc/miniapp/ipc/binderimpl/OooO00o;->OooO0OO:Lcom/cloud/tmc/miniapp/IMiniAppLifecycleInterface;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0}, Lcom/cloud/tmc/miniapp/IMiniAppLifecycleInterface;->onStart()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v2, "globalMiniAppLifcecyclListener callback onStart fail:"

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lcom/cloud/tmc/miniapp/base/BaseActivity;->mStarted:Z

    .line 35
    .line 36
    return-void
.end method

.method public onStop()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    sget-object v0, Lcom/cloud/tmc/miniapp/ipc/binderimpl/OooO00o;->OooO0OO:Lcom/cloud/tmc/miniapp/IMiniAppLifecycleInterface;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0}, Lcom/cloud/tmc/miniapp/IMiniAppLifecycleInterface;->onStop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v2, "globalMiniAppLifcecyclListener callback onStop fail:"

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/cloud/tmc/miniapp/base/BaseActivity;->mStarted:Z

    .line 35
    .line 36
    return-void
.end method

.method public post(Ljava/lang/Runnable;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/HandlerAction$DefaultImpls;->post(Lcom/cloud/tmc/miniapp/action/HandlerAction;Ljava/lang/Runnable;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public postAtTime(Ljava/lang/Runnable;J)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/action/HandlerAction$DefaultImpls;->postAtTime(Lcom/cloud/tmc/miniapp/action/HandlerAction;Ljava/lang/Runnable;J)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public postDelayed(Ljava/lang/Object;JLjava/lang/Runnable;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/miniapp/action/HandlerAction$DefaultImpls;->postDelayed(Lcom/cloud/tmc/miniapp/action/HandlerAction;Ljava/lang/Object;JLjava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method public postDelayed(Ljava/lang/Runnable;J)Z
    .locals 0

    .line 2
    invoke-static {p0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/action/HandlerAction$DefaultImpls;->postDelayed(Lcom/cloud/tmc/miniapp/action/HandlerAction;Ljava/lang/Runnable;J)Z

    move-result p1

    return p1
.end method

.method public removeCallbacks()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniapp/action/HandlerAction$DefaultImpls;->removeCallbacks(Lcom/cloud/tmc/miniapp/action/HandlerAction;)V

    return-void
.end method

.method public removeCallbacks(Ljava/lang/Runnable;)V
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/HandlerAction$DefaultImpls;->removeCallbacks(Lcom/cloud/tmc/miniapp/action/HandlerAction;Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeCallbacksAndMessages(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/HandlerAction$DefaultImpls;->removeCallbacksAndMessages(Lcom/cloud/tmc/miniapp/action/HandlerAction;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final setInitDataChannel(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/tmc/miniapp/base/BaseActivity;->initDataChannel:I

    .line 2
    .line 3
    return-void
.end method

.method public final setMResumed(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/base/BaseActivity;->mResumed:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setMStarted(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/base/BaseActivity;->mStarted:Z

    .line 2
    .line 3
    return-void
.end method

.method public varargs setOnClickListener(Landroid/view/View$OnClickListener;[I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/miniapp/action/ClickAction$DefaultImpls;->setOnClickListener(Lcom/cloud/tmc/miniapp/action/ClickAction;Landroid/view/View$OnClickListener;[I)V

    return-void
.end method

.method public varargs setOnClickListener(Landroid/view/View$OnClickListener;[Landroid/view/View;)V
    .locals 0

    .line 2
    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/miniapp/action/ClickAction$DefaultImpls;->setOnClickListener(Lcom/cloud/tmc/miniapp/action/ClickAction;Landroid/view/View$OnClickListener;[Landroid/view/View;)V

    return-void
.end method

.method public varargs setOnClickListener([I)V
    .locals 0

    .line 3
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/ClickAction$DefaultImpls;->setOnClickListener(Lcom/cloud/tmc/miniapp/action/ClickAction;[I)V

    return-void
.end method

.method public varargs setOnClickListener([Landroid/view/View;)V
    .locals 0

    .line 4
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/ClickAction$DefaultImpls;->setOnClickListener(Lcom/cloud/tmc/miniapp/action/ClickAction;[Landroid/view/View;)V

    return-void
.end method

.method public final setSavedInstance(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/base/BaseActivity;->savedInstance:Landroid/os/Bundle;

    .line 2
    .line 3
    return-void
.end method

.method public showKeyboard(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/KeyboardAction$DefaultImpls;->showKeyboard(Lcom/cloud/tmc/miniapp/action/KeyboardAction;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final showLoadingDialog()V
    .locals 2
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->showLoadingDialog$default(Lcom/cloud/tmc/miniapp/base/BaseActivity;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public showLoadingDialog(Ljava/lang/String;)V
    .locals 3
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget v0, p0, Lcom/cloud/tmc/miniapp/base/BaseActivity;->dialogCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/cloud/tmc/miniapp/base/BaseActivity;->dialogCount:I

    .line 4
    new-instance v0, Lcom/cloud/tmc/miniapp/base/b;

    invoke-direct {v0, p0, p1}, Lcom/cloud/tmc/miniapp/base/b;-><init>(Lcom/cloud/tmc/miniapp/base/BaseActivity;Ljava/lang/String;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public abstract showStatusLoading()V
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1

    .line 1
    const-string v0, "intent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->hideKeyboard(Landroid/view/View;)V

    .line 2
    invoke-super {p0, p1, p2, p3}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;Landroid/os/Bundle;Lcom/cloud/tmc/miniapp/base/BaseActivity$OnActivityCallback;)V
    .locals 5

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    const-wide/high16 v3, 0x4030000000000000L    # 16.0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 6
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getActivityCallbacks()Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7
    invoke-virtual {p0, p1, v0, p2}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;Lcom/cloud/tmc/miniapp/base/BaseActivity$OnActivityCallback;)V
    .locals 1

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, v0, p2}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->startActivityForResult(Landroid/content/Intent;Landroid/os/Bundle;Lcom/cloud/tmc/miniapp/base/BaseActivity$OnActivityCallback;)V

    return-void
.end method

.method public startActivityForResult(Ljava/lang/Class;Lcom/cloud/tmc/miniapp/base/BaseActivity$OnActivityCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;",
            "Lcom/cloud/tmc/miniapp/base/BaseActivity$OnActivityCallback;",
            ")V"
        }
    .end annotation

    const-string v0, "clazz"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->startActivityForResult(Landroid/content/Intent;Landroid/os/Bundle;Lcom/cloud/tmc/miniapp/base/BaseActivity$OnActivityCallback;)V

    return-void
.end method

.method public toggleSoftInput(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/KeyboardAction$DefaultImpls;->toggleSoftInput(Lcom/cloud/tmc/miniapp/action/KeyboardAction;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final updateLoadingContent(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/BaseActivity;->dialog:Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/BaseActivity;->dialog:Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    sget v1, Lcom/cloud/tmc/miniapp/R$id;->tv_wait_message:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/w;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Landroid/widget/TextView;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 28
    :goto_0
    if-nez v0, :cond_1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    .line 33
    .line 34
    :cond_2
    :goto_1
    return-void
.end method
