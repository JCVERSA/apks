.class final Lcom/transsion/core/utils/ToastUtil$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$resid:I


# direct methods
.method public constructor <init>(ILandroid/content/Context;)V
    .locals 0

    iput p1, p0, Lcom/transsion/core/utils/ToastUtil$1;->val$resid:I

    iput-object p2, p0, Lcom/transsion/core/utils/ToastUtil$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lyoa;->a()Landroid/widget/Toast;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lyoa;->a()Landroid/widget/Toast;

    move-result-object v0

    iget p0, p0, Lcom/transsion/core/utils/ToastUtil$1;->val$resid:I

    invoke-virtual {v0, p0}, Landroid/widget/Toast;->setText(I)V

    invoke-static {}, Lyoa;->a()Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/widget/Toast;->setDuration(I)V

    invoke-static {}, Lyoa;->a()Landroid/widget/Toast;

    move-result-object p0

    invoke-static {p0}, Lyoa;->c(Landroid/widget/Toast;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/core/utils/ToastUtil$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget p0, p0, Lcom/transsion/core/utils/ToastUtil$1;->val$resid:I

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-static {p0}, Lyoa;->b(Landroid/widget/Toast;)Landroid/widget/Toast;

    :goto_0
    invoke-static {}, Lyoa;->a()Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method
