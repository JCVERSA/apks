.class final Lcom/transsion/core/utils/ToastUtil$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/core/utils/ToastUtil$4;->val$msg:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/core/utils/ToastUtil$4;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lyoa;->a()Landroid/widget/Toast;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Lyoa;->a()Landroid/widget/Toast;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/core/utils/ToastUtil$4;->val$msg:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lyoa;->a()Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/widget/Toast;->setDuration(I)V

    invoke-static {}, Lyoa;->a()Landroid/widget/Toast;

    move-result-object p0

    invoke-static {p0}, Lyoa;->c(Landroid/widget/Toast;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/core/utils/ToastUtil$4;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/core/utils/ToastUtil$4;->val$msg:Ljava/lang/String;

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-static {p0}, Lyoa;->b(Landroid/widget/Toast;)Landroid/widget/Toast;

    :goto_0
    invoke-static {}, Lyoa;->a()Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method
