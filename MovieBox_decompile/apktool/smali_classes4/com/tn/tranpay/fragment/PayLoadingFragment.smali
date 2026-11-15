.class public final Lcom/tn/tranpay/fragment/PayLoadingFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "source.java"

# interfaces
.implements Lcom/tn/tranpay/report/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tn/tranpay/fragment/PayLoadingFragment$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 F2\u00020\u00012\u00020\u0002:\u0001/B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0004J\u000f\u0010\u0008\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\u0004J\u000f\u0010\t\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\t\u0010\u0004J\u000f\u0010\n\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u0004J+\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\r2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\rH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0004J\u000f\u0010\u0013\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0004J\u000f\u0010\u0014\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0004J\u000f\u0010\u0015\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0004J\u0011\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u0004J\u0017\u0010\u001c\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u001aH\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u001b\u0010 \u001a\u00020\u00052\u000c\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u001e\u00a2\u0006\u0004\u0008 \u0010!J-\u0010)\u001a\u0004\u0018\u00010(2\u0006\u0010#\u001a\u00020\"2\u0008\u0010%\u001a\u0004\u0018\u00010$2\u0008\u0010\'\u001a\u0004\u0018\u00010&H\u0016\u00a2\u0006\u0004\u0008)\u0010*J!\u0010,\u001a\u00020\u00052\u0006\u0010+\u001a\u00020(2\u0008\u0010\'\u001a\u0004\u0018\u00010&H\u0016\u00a2\u0006\u0004\u0008,\u0010-R\u001b\u00103\u001a\u00020.8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008/\u00100\u001a\u0004\u00081\u00102R\u0018\u00107\u001a\u0004\u0018\u0001048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00085\u00106R\u0018\u0010;\u001a\u0004\u0018\u0001088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00089\u0010:R\u001e\u0010>\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008<\u0010=R\u0014\u0010B\u001a\u00020?8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008@\u0010AR\u001d\u0010E\u001a\u0004\u0018\u00010\u00168VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008C\u00100\u001a\u0004\u0008D\u0010\u0018\u00a8\u0006G"
    }
    d2 = {
        "Lcom/tn/tranpay/fragment/PayLoadingFragment;",
        "Landroidx/fragment/app/DialogFragment;",
        "Lcom/tn/tranpay/report/b;",
        "<init>",
        "()V",
        "",
        "c0",
        "logResume",
        "logPause",
        "showLoading",
        "hideLoading",
        "",
        "billingResponseCode",
        "",
        "message",
        "serverCode",
        "d0",
        "(ILjava/lang/String;Ljava/lang/String;)V",
        "g0",
        "j0",
        "onStart",
        "onPause",
        "Lcom/tn/tranpay/report/c;",
        "h0",
        "()Lcom/tn/tranpay/report/c;",
        "onResume",
        "Landroid/content/DialogInterface;",
        "dialog",
        "onDismiss",
        "(Landroid/content/DialogInterface;)V",
        "Lkotlin/Function0;",
        "listener",
        "i0",
        "(Lkotlin/jvm/functions/Function0;)V",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Landroid/view/View;",
        "onCreateView",
        "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;",
        "view",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "Lcom/tn/tranpay/BillingParams;",
        "a",
        "Lkotlin/Lazy;",
        "f0",
        "()Lcom/tn/tranpay/BillingParams;",
        "params",
        "Landroid/widget/ProgressBar;",
        "b",
        "Landroid/widget/ProgressBar;",
        "loadingView",
        "Lcom/tn/tranpay/d;",
        "c",
        "Lcom/tn/tranpay/d;",
        "callback",
        "d",
        "Lkotlin/jvm/functions/Function0;",
        "onDismissListener",
        "Lcom/tn/tranpay/viewmodel/PaymentViewModel;",
        "e",
        "Lcom/tn/tranpay/viewmodel/PaymentViewModel;",
        "viewModel",
        "f",
        "getLogViewConfig",
        "logViewConfig",
        "g",
        "lib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final g:Lcom/tn/tranpay/fragment/PayLoadingFragment$a;


# instance fields
.field private final a:Lkotlin/Lazy;

.field private b:Landroid/widget/ProgressBar;

.field private c:Lcom/tn/tranpay/d;

.field private d:Lkotlin/jvm/functions/Function0;

.field private final e:Lcom/tn/tranpay/viewmodel/PaymentViewModel;

.field private final f:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/tn/tranpay/fragment/PayLoadingFragment$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/tn/tranpay/fragment/PayLoadingFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/tn/tranpay/fragment/PayLoadingFragment;->g:Lcom/tn/tranpay/fragment/PayLoadingFragment$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/tn/tranpay/fragment/PayLoadingFragment$params$2;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/tn/tranpay/fragment/PayLoadingFragment$params$2;-><init>(Lcom/tn/tranpay/fragment/PayLoadingFragment;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/tn/tranpay/fragment/PayLoadingFragment;->a:Lkotlin/Lazy;

    .line 14
    .line 15
    new-instance v0, Lcom/tn/tranpay/viewmodel/PaymentViewModel;

    .line 16
    .line 17
    invoke-direct {v0}, Lcom/tn/tranpay/viewmodel/PaymentViewModel;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/tn/tranpay/fragment/PayLoadingFragment;->e:Lcom/tn/tranpay/viewmodel/PaymentViewModel;

    .line 21
    .line 22
    new-instance v0, Lcom/tn/tranpay/fragment/PayLoadingFragment$logViewConfig$2;

    .line 23
    .line 24
    invoke-direct {v0, p0}, Lcom/tn/tranpay/fragment/PayLoadingFragment$logViewConfig$2;-><init>(Lcom/tn/tranpay/fragment/PayLoadingFragment;)V

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Lcom/tn/tranpay/fragment/PayLoadingFragment;->f:Lkotlin/Lazy;

    .line 32
    .line 33
    return-void
.end method

.method public static final synthetic X(Lcom/tn/tranpay/fragment/PayLoadingFragment;)Lcom/tn/tranpay/BillingParams;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tn/tranpay/fragment/PayLoadingFragment;->f0()Lcom/tn/tranpay/BillingParams;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic Y(Lcom/tn/tranpay/fragment/PayLoadingFragment;)Lcom/tn/tranpay/viewmodel/PaymentViewModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tn/tranpay/fragment/PayLoadingFragment;->e:Lcom/tn/tranpay/viewmodel/PaymentViewModel;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic Z(Lcom/tn/tranpay/fragment/PayLoadingFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tn/tranpay/fragment/PayLoadingFragment;->hideLoading()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic a0(Lcom/tn/tranpay/fragment/PayLoadingFragment;Lcom/tn/tranpay/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tn/tranpay/fragment/PayLoadingFragment;->c:Lcom/tn/tranpay/d;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic b0(Lcom/tn/tranpay/fragment/PayLoadingFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tn/tranpay/fragment/PayLoadingFragment;->j0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final c0()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-string v2, "window.attributes"

    .line 31
    .line 32
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 44
    .line 45
    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 46
    .line 47
    int-to-double v3, v3

    .line 48
    const-wide/high16 v5, 0x3fe8000000000000L    # 0.75

    .line 49
    .line 50
    mul-double/2addr v3, v5

    .line 51
    double-to-int v3, v3

    .line 52
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 53
    .line 54
    int-to-double v2, v2

    .line 55
    mul-double/2addr v2, v5

    .line 56
    double-to-int v2, v2

    .line 57
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 58
    .line 59
    const/16 v2, 0x11

    .line 60
    .line 61
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 64
    .line 65
    .line 66
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    .line 67
    .line 68
    const/4 v2, 0x0

    .line 69
    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 73
    .line 74
    .line 75
    :cond_0
    return-void
.end method

.method private final d0(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/tn/tranpay/b;->c:Lcom/tn/tranpay/b$a;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/tn/tranpay/b$a;->a(ILjava/lang/String;Ljava/lang/String;)Lcom/tn/tranpay/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Llh/a;->a:Llh/a;

    .line 8
    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v3, "loading error, code: "

    .line 15
    .line 16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string p1, ", message: "

    .line 23
    .line 24
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string p1, ", serverCode: "

    .line 31
    .line 32
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    const/4 p2, 0x2

    .line 43
    const/4 p3, 0x0

    .line 44
    invoke-static {v1, p1, p3, p2, p3}, Llh/a;->e(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/tn/tranpay/fragment/PayLoadingFragment;->c:Lcom/tn/tranpay/d;

    .line 48
    .line 49
    if-eqz p1, :cond_0

    .line 50
    .line 51
    invoke-interface {p1, v0, p3}, Lcom/tn/tranpay/d;->a(Lcom/tn/tranpay/b;Lcom/tn/tranpay/c;)V

    .line 52
    .line 53
    .line 54
    :cond_0
    iput-object p3, p0, Lcom/tn/tranpay/fragment/PayLoadingFragment;->c:Lcom/tn/tranpay/d;

    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/tn/tranpay/fragment/PayLoadingFragment;->getLogViewConfig()Lcom/tn/tranpay/report/c;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    const/4 p2, 0x0

    .line 61
    if-nez p1, :cond_1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {p1, p2}, Lcom/tn/tranpay/report/c;->j(Z)V

    .line 65
    .line 66
    .line 67
    :goto_0
    sget-object p1, Lcom/tn/tranpay/report/h;->a:Lcom/tn/tranpay/report/h;

    .line 68
    .line 69
    invoke-direct {p0}, Lcom/tn/tranpay/fragment/PayLoadingFragment;->f0()Lcom/tn/tranpay/BillingParams;

    .line 70
    .line 71
    .line 72
    move-result-object p3

    .line 73
    invoke-virtual {p3}, Lcom/tn/tranpay/BillingParams;->getOrderDesc()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p3

    .line 77
    if-nez p3, :cond_2

    .line 78
    .line 79
    const-string p3, ""

    .line 80
    .line 81
    :cond_2
    invoke-direct {p0}, Lcom/tn/tranpay/fragment/PayLoadingFragment;->f0()Lcom/tn/tranpay/BillingParams;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {v0}, Lcom/tn/tranpay/BillingParams;->getPayByLocalCurrency()Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    invoke-direct {p0}, Lcom/tn/tranpay/fragment/PayLoadingFragment;->f0()Lcom/tn/tranpay/BillingParams;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {v1}, Lcom/tn/tranpay/BillingParams;->getTxnId()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {p1, p2, p3, v0, v1}, Lcom/tn/tranpay/report/h;->j(ZLjava/lang/String;ZLjava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-direct {p0}, Lcom/tn/tranpay/fragment/PayLoadingFragment;->g0()V

    .line 101
    .line 102
    .line 103
    return-void
.end method

.method static synthetic e0(Lcom/tn/tranpay/fragment/PayLoadingFragment;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p4, p4, 0x4

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const/4 p3, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/tn/tranpay/fragment/PayLoadingFragment;->d0(ILjava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final f0()Lcom/tn/tranpay/BillingParams;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tn/tranpay/fragment/PayLoadingFragment;->a:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/tn/tranpay/BillingParams;

    .line 8
    .line 9
    return-object v0
.end method

.method private final g0()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tn/tranpay/fragment/PayLoadingFragment;->hideLoading()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private final hideLoading()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tn/tranpay/fragment/PayLoadingFragment;->b:Landroid/widget/ProgressBar;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/16 v1, 0x8

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    :goto_0
    return-void
.end method

.method private final j0()V
    .locals 4

    .line 1
    sget-object v0, Lcom/tn/tranpay/fragment/PayFragment;->i:Lcom/tn/tranpay/fragment/PayFragment$a;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/tn/tranpay/fragment/PayLoadingFragment;->f0()Lcom/tn/tranpay/BillingParams;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/tn/tranpay/fragment/PayLoadingFragment;->e:Lcom/tn/tranpay/viewmodel/PaymentViewModel;

    .line 8
    .line 9
    invoke-virtual {v2}, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->q()Landroidx/lifecycle/b0;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lcom/tn/tranpay/bean/LoadConfigContent;

    .line 18
    .line 19
    iget-object v3, p0, Lcom/tn/tranpay/fragment/PayLoadingFragment;->c:Lcom/tn/tranpay/d;

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2, v3}, Lcom/tn/tranpay/fragment/PayFragment$a;->a(Lcom/tn/tranpay/BillingParams;Lcom/tn/tranpay/bean/LoadConfigContent;Lcom/tn/tranpay/d;)Lcom/tn/tranpay/fragment/PayFragment;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    new-instance v1, Lcom/tn/tranpay/fragment/PayLoadingFragment$c;

    .line 26
    .line 27
    invoke-direct {v1, p0}, Lcom/tn/tranpay/fragment/PayLoadingFragment$c;-><init>(Lcom/tn/tranpay/fragment/PayLoadingFragment;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/tn/tranpay/fragment/PayFragment;->v0(Lcom/tn/tranpay/fragment/PayFragment$b;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const-string v2, "pay_fragment"

    .line 38
    .line 39
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method private final logPause()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/tn/tranpay/report/b$a;->b(Lcom/tn/tranpay/report/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final logResume()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/tn/tranpay/report/b$a;->c(Lcom/tn/tranpay/report/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final showLoading()V
    .locals 2

    .line 1
    sget-object v0, Lcom/tn/tranpay/e;->c:Lcom/tn/tranpay/e$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tn/tranpay/e$a;->b()Lcom/tn/tranpay/e;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/tn/tranpay/e;->c()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/tn/tranpay/fragment/PayLoadingFragment;->b:Landroid/widget/ProgressBar;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/16 v1, 0x8

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    :goto_0
    return-void

    .line 24
    :cond_1
    iget-object v0, p0, Lcom/tn/tranpay/fragment/PayLoadingFragment;->b:Landroid/widget/ProgressBar;

    .line 25
    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_2
    const/4 v1, 0x0

    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    :goto_1
    return-void
.end method


# virtual methods
.method public getLogViewConfig()Lcom/tn/tranpay/report/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tn/tranpay/fragment/PayLoadingFragment;->f:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/tn/tranpay/report/c;

    .line 8
    .line 9
    return-object v0
.end method

.method public h0()Lcom/tn/tranpay/report/c;
    .locals 5

    .line 1
    new-instance v0, Lcom/tn/tranpay/report/c;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    const-string v3, "cashier_page"

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/tn/tranpay/report/c;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public final i0(Lkotlin/jvm/functions/Function0;)V
    .locals 1

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/tn/tranpay/fragment/PayLoadingFragment;->d:Lkotlin/jvm/functions/Function0;

    .line 7
    .line 8
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    const-string p3, "inflater"

    .line 2
    .line 3
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget p3, Lcom/tn/lib/tranpay/R$layout;->tran_fragment_loading_layout:I

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
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
    iget-object p1, p0, Lcom/tn/tranpay/fragment/PayLoadingFragment;->d:Lkotlin/jvm/functions/Function0;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-direct {p0}, Lcom/tn/tranpay/fragment/PayLoadingFragment;->logPause()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/tn/tranpay/fragment/PayLoadingFragment;->logResume()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/tn/tranpay/e;->c:Lcom/tn/tranpay/e$a;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/tn/tranpay/e$a;->b()Lcom/tn/tranpay/e;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/tn/tranpay/e;->c()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const-string v2, "it.attributes"

    .line 33
    .line 34
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const/4 v2, -0x1

    .line 38
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 39
    .line 40
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 43
    .line 44
    .line 45
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    .line 46
    .line 47
    const/4 v2, 0x0

    .line 48
    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    if-eqz v0, :cond_1

    .line 60
    .line 61
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    if-eqz v0, :cond_1

    .line 66
    .line 67
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    const/4 v2, 0x0

    .line 72
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 73
    .line 74
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 75
    .line 76
    or-int/lit8 v2, v2, 0x2

    .line 77
    .line 78
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 81
    .line 82
    .line 83
    :cond_1
    :goto_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

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
    sget-object p2, Lcom/tn/tranpay/e;->c:Lcom/tn/tranpay/e$a;

    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/tn/tranpay/e$a;->b()Lcom/tn/tranpay/e;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/tn/tranpay/e;->c()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    sget v1, Lcom/tn/lib/tranpay/R$style;->loading_empty_dialog:I

    .line 23
    .line 24
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    .line 25
    .line 26
    .line 27
    :cond_0
    sget v0, Lcom/tn/lib/tranpay/R$id;->loading_progress:I

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Landroid/widget/ProgressBar;

    .line 34
    .line 35
    iput-object p1, p0, Lcom/tn/tranpay/fragment/PayLoadingFragment;->b:Landroid/widget/ProgressBar;

    .line 36
    .line 37
    if-nez p1, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {p2}, Lcom/tn/tranpay/e$a;->b()Lcom/tn/tranpay/e;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-virtual {p2}, Lcom/tn/tranpay/e;->d()I

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setIndeterminateTintList(Landroid/content/res/ColorStateList;)V

    .line 53
    .line 54
    .line 55
    :goto_0
    invoke-direct {p0}, Lcom/tn/tranpay/fragment/PayLoadingFragment;->c0()V

    .line 56
    .line 57
    .line 58
    invoke-direct {p0}, Lcom/tn/tranpay/fragment/PayLoadingFragment;->showLoading()V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lcom/tn/tranpay/fragment/PayLoadingFragment;->e:Lcom/tn/tranpay/viewmodel/PaymentViewModel;

    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->q()Landroidx/lifecycle/b0;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/u;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    new-instance v0, Lcom/tn/tranpay/fragment/PayLoadingFragment$onViewCreated$1;

    .line 72
    .line 73
    invoke-direct {v0, p0}, Lcom/tn/tranpay/fragment/PayLoadingFragment$onViewCreated$1;-><init>(Lcom/tn/tranpay/fragment/PayLoadingFragment;)V

    .line 74
    .line 75
    .line 76
    new-instance v1, Lcom/tn/tranpay/fragment/PayLoadingFragment$b;

    .line 77
    .line 78
    invoke-direct {v1, v0}, Lcom/tn/tranpay/fragment/PayLoadingFragment$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, p2, v1}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 82
    .line 83
    .line 84
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-static {p1}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    new-instance v3, Lcom/tn/tranpay/fragment/PayLoadingFragment$onViewCreated$2;

    .line 93
    .line 94
    const/4 p1, 0x0

    .line 95
    invoke-direct {v3, p0, p1}, Lcom/tn/tranpay/fragment/PayLoadingFragment$onViewCreated$2;-><init>(Lcom/tn/tranpay/fragment/PayLoadingFragment;Lkotlin/coroutines/Continuation;)V

    .line 96
    .line 97
    .line 98
    const/4 v4, 0x3

    .line 99
    const/4 v5, 0x0

    .line 100
    const/4 v1, 0x0

    .line 101
    const/4 v2, 0x0

    .line 102
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 103
    .line 104
    .line 105
    return-void
.end method
