.class Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->x()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$5;->this$0:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$5;->this$0:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-static {v0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->c(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$5;->this$0:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-static {v0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->c(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$5;->this$0:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-static {v0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->c(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iget-object p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$5;->this$0:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-static {p0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->b(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method
