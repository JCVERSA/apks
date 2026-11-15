.class Lcom/transsion/utils/ToastUtils$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/utils/ToastUtils;->n(Landroid/content/Context;Ljava/lang/CharSequence;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$duration:I

.field final synthetic val$text:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/utils/ToastUtils$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/transsion/utils/ToastUtils$2;->val$text:Ljava/lang/CharSequence;

    iput p3, p0, Lcom/transsion/utils/ToastUtils$2;->val$duration:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ShowToast"
        }
    .end annotation

    invoke-static {}, Lcom/transsion/utils/ToastUtils;->h()V

    iget-object v0, p0, Lcom/transsion/utils/ToastUtils$2;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/transsion/utils/ToastUtils$2;->val$text:Ljava/lang/CharSequence;

    iget p0, p0, Lcom/transsion/utils/ToastUtils$2;->val$duration:I

    invoke-static {v0, v1, p0}, Lcom/transsion/utils/ToastUtils$c;->b(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/transsion/utils/ToastUtils$a;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->e(Lcom/transsion/utils/ToastUtils$a;)V

    invoke-static {}, Lcom/transsion/utils/ToastUtils;->b()Lcom/transsion/utils/ToastUtils$a;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/utils/ToastUtils$a;->show()V

    return-void
.end method
