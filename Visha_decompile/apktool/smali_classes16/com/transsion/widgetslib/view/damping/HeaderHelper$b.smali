.class public Lcom/transsion/widgetslib/view/damping/HeaderHelper$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/view/damping/HeaderHelper;->t(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/widgetslib/view/damping/HeaderHelper;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/view/damping/HeaderHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper$b;->b:Lcom/transsion/widgetslib/view/damping/HeaderHelper;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper$b;->b:Lcom/transsion/widgetslib/view/damping/HeaderHelper;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->f(Lcom/transsion/widgetslib/view/damping/HeaderHelper;Z)V

    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper$b;->b:Lcom/transsion/widgetslib/view/damping/HeaderHelper;

    invoke-static {p1, v0}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->e(Lcom/transsion/widgetslib/view/damping/HeaderHelper;Z)V

    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper$b;->b:Lcom/transsion/widgetslib/view/damping/HeaderHelper;

    invoke-static {p1}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->d(Lcom/transsion/widgetslib/view/damping/HeaderHelper;)Landroid/widget/TextView;

    move-result-object p1

    sget v0, Lcom/transsion/widgetslib/R$string;->os_dampingl_refresh_finish:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper$b;->b:Lcom/transsion/widgetslib/view/damping/HeaderHelper;

    invoke-static {p0}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->b(Lcom/transsion/widgetslib/view/damping/HeaderHelper;)Lcom/transsion/widgetslib/view/OSLoadingView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->release()V

    return-void
.end method
