.class Lcom/transsion/utils/ToastUtils$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$duration:I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/utils/ToastUtils$3;->val$view:Landroid/view/View;

    iput p2, p0, Lcom/transsion/utils/ToastUtils$3;->val$duration:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/transsion/utils/ToastUtils;->h()V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/utils/ToastUtils$c;->c(Landroid/content/Context;)Lcom/transsion/utils/ToastUtils$a;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/utils/ToastUtils;->e(Lcom/transsion/utils/ToastUtils$a;)V

    invoke-static {}, Lcom/transsion/utils/ToastUtils;->b()Lcom/transsion/utils/ToastUtils$a;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/utils/ToastUtils$3;->val$view:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/transsion/utils/ToastUtils$a;->setView(Landroid/view/View;)V

    invoke-static {}, Lcom/transsion/utils/ToastUtils;->b()Lcom/transsion/utils/ToastUtils$a;

    move-result-object v0

    iget p0, p0, Lcom/transsion/utils/ToastUtils$3;->val$duration:I

    invoke-interface {v0, p0}, Lcom/transsion/utils/ToastUtils$a;->b(I)V

    invoke-static {}, Lcom/transsion/utils/ToastUtils;->a()I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    invoke-static {}, Lcom/transsion/utils/ToastUtils;->c()I

    move-result p0

    if-ne p0, v0, :cond_0

    invoke-static {}, Lcom/transsion/utils/ToastUtils;->d()I

    move-result p0

    if-eq p0, v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/transsion/utils/ToastUtils;->b()Lcom/transsion/utils/ToastUtils$a;

    move-result-object p0

    invoke-static {}, Lcom/transsion/utils/ToastUtils;->a()I

    move-result v0

    invoke-static {}, Lcom/transsion/utils/ToastUtils;->c()I

    move-result v1

    invoke-static {}, Lcom/transsion/utils/ToastUtils;->d()I

    move-result v2

    invoke-interface {p0, v0, v1, v2}, Lcom/transsion/utils/ToastUtils$a;->a(III)V

    :cond_1
    invoke-static {}, Lcom/transsion/utils/ToastUtils;->g()V

    invoke-static {}, Lcom/transsion/utils/ToastUtils;->b()Lcom/transsion/utils/ToastUtils$a;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/utils/ToastUtils$a;->show()V

    return-void
.end method
