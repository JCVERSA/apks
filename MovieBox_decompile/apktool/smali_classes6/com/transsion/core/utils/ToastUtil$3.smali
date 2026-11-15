.class final Lcom/transsion/core/utils/ToastUtil$3;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$resid:I


# direct methods
.method constructor <init>(ILandroid/content/Context;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/core/utils/ToastUtil$3;->val$resid:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/core/utils/ToastUtil$3;->val$context:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/transsion/core/utils/ToastUtil;->a()Landroid/widget/Toast;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {}, Lcom/transsion/core/utils/ToastUtil;->a()Landroid/widget/Toast;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget v2, p0, Lcom/transsion/core/utils/ToastUtil$3;->val$resid:I

    .line 13
    .line 14
    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setText(I)V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lcom/transsion/core/utils/ToastUtil;->a()Landroid/widget/Toast;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setDuration(I)V

    .line 22
    .line 23
    .line 24
    invoke-static {}, Lcom/transsion/core/utils/ToastUtil;->a()Landroid/widget/Toast;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, Lcom/transsion/core/utils/ToastUtil;->c(Landroid/widget/Toast;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/transsion/core/utils/ToastUtil$3;->val$context:Landroid/content/Context;

    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget v2, p0, Lcom/transsion/core/utils/ToastUtil$3;->val$resid:I

    .line 39
    .line 40
    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {v0}, Lcom/transsion/core/utils/ToastUtil;->b(Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 45
    .line 46
    .line 47
    :goto_0
    invoke-static {}, Lcom/transsion/core/utils/ToastUtil;->a()Landroid/widget/Toast;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 52
    .line 53
    .line 54
    return-void
.end method
