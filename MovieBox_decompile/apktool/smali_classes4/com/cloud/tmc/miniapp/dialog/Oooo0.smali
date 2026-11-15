.class public final Lcom/cloud/tmc/miniapp/dialog/Oooo0;
.super Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o<",
        "Lcom/cloud/tmc/miniapp/dialog/Oooo0;",
        ">;"
    }
.end annotation


# instance fields
.field public final OooO00o:Lkotlin/Lazy;

.field public final OooO0O0:Lkotlin/Lazy;

.field public final OooO0OO:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/Oooo0$OooO0o;

    .line 10
    .line 11
    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/Oooo0$OooO0o;-><init>(Lcom/cloud/tmc/miniapp/dialog/Oooo0;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 15
    .line 16
    .line 17
    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/Oooo0$OooO0OO;

    .line 18
    .line 19
    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/Oooo0$OooO0OO;-><init>(Lcom/cloud/tmc/miniapp/dialog/Oooo0;)V

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/Oooo0;->OooO00o:Lkotlin/Lazy;

    .line 27
    .line 28
    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/Oooo0$OooO00o;

    .line 29
    .line 30
    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/Oooo0$OooO00o;-><init>(Lcom/cloud/tmc/miniapp/dialog/Oooo0;)V

    .line 31
    .line 32
    .line 33
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/Oooo0;->OooO0O0:Lkotlin/Lazy;

    .line 38
    .line 39
    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/Oooo0$OooO;

    .line 40
    .line 41
    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/Oooo0$OooO;-><init>(Lcom/cloud/tmc/miniapp/dialog/Oooo0;)V

    .line 42
    .line 43
    .line 44
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 45
    .line 46
    .line 47
    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/Oooo0$OooO0O0;

    .line 48
    .line 49
    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/Oooo0$OooO0O0;-><init>(Lcom/cloud/tmc/miniapp/dialog/Oooo0;)V

    .line 50
    .line 51
    .line 52
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/Oooo0;->OooO0OO:Lkotlin/Lazy;

    .line 57
    .line 58
    sget p1, Lcom/cloud/tmc/miniapp/R$layout;->layout_fw_update_progress:I

    .line 59
    .line 60
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setContentView(I)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    .line 61
    .line 62
    .line 63
    const/4 p1, 0x0

    .line 64
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setCanceledOnTouchOutside(Z)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setCancelable(Z)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    .line 68
    .line 69
    .line 70
    const/4 v0, -0x1

    .line 71
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setAnimStyle(I)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/Oooo0;->OooO00o()Landroid/widget/TextView;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    const/4 v1, 0x1

    .line 79
    new-array v1, v1, [Landroid/view/View;

    .line 80
    .line 81
    aput-object v0, v1, p1

    .line 82
    .line 83
    invoke-virtual {p0, v1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setOnClickListener([Landroid/view/View;)V

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method public static final OooO00o(Lcom/cloud/tmc/miniapp/dialog/Oooo0;I)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/Oooo0;->OooO00o:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    :goto_0
    iget-object p0, p0, Lcom/cloud/tmc/miniapp/dialog/Oooo0;->OooO0O0:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/ProgressBar;

    if-nez p0, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method public final OooO00o()Landroid/widget/TextView;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/Oooo0;->OooO0OO:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final OooO00o(I)V
    .locals 1

    .line 6
    new-instance v0, Lcom/cloud/tmc/miniapp/dialog/h;

    invoke-direct {v0, p0, p1}, Lcom/cloud/tmc/miniapp/dialog/h;-><init>(Lcom/cloud/tmc/miniapp/dialog/Oooo0;I)V

    invoke-static {v0}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->runOnMain(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/Oooo0;->OooO0OO:Lkotlin/Lazy;

    .line 7
    .line 8
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroid/widget/TextView;

    .line 13
    .line 14
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    instance-of v0, p1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    check-cast p1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 p1, 0x0

    .line 32
    :goto_0
    if-eqz p1, :cond_1

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->killActivity()V

    .line 35
    .line 36
    .line 37
    :cond_1
    return-void
.end method
