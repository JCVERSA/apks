.class final Lcom/transsion/widgetslib/util/InputDialogFoldEngine$adaptPosition$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Le74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->v()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Le74;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0004\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Landroid/view/Window;",
        "Lzfb;",
        "invoke",
        "(Landroid/view/Window;)V",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/util/InputDialogFoldEngine;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$adaptPosition$2;->this$0:Lcom/transsion/widgetslib/util/InputDialogFoldEngine;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$adaptPosition$2;->b(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static final b(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this_run"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$adaptPosition$2$1$1$1;

    invoke-direct {p2, p1}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$adaptPosition$2$1$1$1;-><init>(Landroid/animation/ValueAnimator;)V

    invoke-static {p0, p2}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->e(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;Le74;)Lzfb;

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/view/Window;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$adaptPosition$2;->invoke(Landroid/view/Window;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public final invoke(Landroid/view/Window;)V
    .locals 6

    const-string v0, "$this$flexWindow"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v1, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$adaptPosition$2;->this$0:Lcom/transsion/widgetslib/util/InputDialogFoldEngine;

    invoke-static {v1}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->i(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)Lcom/transsion/widgetslib/util/InputDialogInputManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/widgetslib/util/InputDialogInputManager;->getMOffset()I

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v2, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$adaptPosition$2;->this$0:Lcom/transsion/widgetslib/util/InputDialogFoldEngine;

    invoke-static {v2}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->i(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)Lcom/transsion/widgetslib/util/InputDialogInputManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/widgetslib/util/InputDialogInputManager;->getMOffset()I

    move-result v2

    iget-object v3, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$adaptPosition$2;->this$0:Lcom/transsion/widgetslib/util/InputDialogFoldEngine;

    invoke-static {v3}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->i(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)Lcom/transsion/widgetslib/util/InputDialogInputManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/widgetslib/util/InputDialogInputManager;->getMWindowHeight()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adaptPosition: mBuilder.dialog.getWindow().getAttributes().width = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " y = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "  mOffset = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " windowHeight = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lbq5;->o(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$adaptPosition$2;->this$0:Lcom/transsion/widgetslib/util/InputDialogFoldEngine;

    .line 6
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 7
    iget-object v1, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$adaptPosition$2;->this$0:Lcom/transsion/widgetslib/util/InputDialogFoldEngine;

    invoke-static {v1}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->i(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)Lcom/transsion/widgetslib/util/InputDialogInputManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/widgetslib/util/InputDialogInputManager;->getMOffset()I

    move-result v1

    filled-new-array {p1, v1}, [I

    move-result-object p1

    .line 8
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 9
    invoke-static {v0, p1}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->r(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;Landroid/animation/ValueAnimator;)V

    .line 10
    iget-object p1, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$adaptPosition$2;->this$0:Lcom/transsion/widgetslib/util/InputDialogFoldEngine;

    invoke-static {p1}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->g(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)Landroid/animation/ValueAnimator;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$adaptPosition$2;->this$0:Lcom/transsion/widgetslib/util/InputDialogFoldEngine;

    const-wide/16 v0, 0xfa

    .line 11
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 12
    new-instance v0, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v0}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 13
    new-instance v0, Lcom/transsion/widgetslib/util/a;

    invoke-direct {v0, p0, p1}, Lcom/transsion/widgetslib/util/a;-><init>(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;Landroid/animation/ValueAnimator;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 14
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    return-void
.end method
