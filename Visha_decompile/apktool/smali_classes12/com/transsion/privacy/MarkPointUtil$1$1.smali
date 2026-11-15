.class Lcom/transsion/privacy/MarkPointUtil$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/privacy/MarkPointUtil$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/privacy/MarkPointUtil$1;

.field final synthetic val$hasNewVersion:Z


# direct methods
.method public constructor <init>(Lcom/transsion/privacy/MarkPointUtil$1;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/privacy/MarkPointUtil$1$1;->this$0:Lcom/transsion/privacy/MarkPointUtil$1;

    iput-boolean p2, p0, Lcom/transsion/privacy/MarkPointUtil$1$1;->val$hasNewVersion:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-boolean v0, p0, Lcom/transsion/privacy/MarkPointUtil$1$1;->val$hasNewVersion:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/privacy/MarkPointUtil$1$1;->this$0:Lcom/transsion/privacy/MarkPointUtil$1;

    iget-object v0, v0, Lcom/transsion/privacy/MarkPointUtil$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/privacy/MarkPointUtil;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lu06;->c()Lu06;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lu06;->h(Z)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Lu06;->c()Lu06;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lu06;->h(Z)V

    invoke-static {}, Lu06;->c()Lu06;

    move-result-object v0

    invoke-virtual {v0}, Lu06;->g()V

    invoke-static {}, Lcom/transsion/transsion_gdpr/GdprUtil;->b()Lid4;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/transsion/privacy/MarkPointUtil$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/privacy/MarkPointUtil$a;-><init>(Lw06;)V

    invoke-static {v0}, Lcom/transsion/transsion_gdpr/GdprUtil;->c(Lid4;)V

    :cond_2
    iget-object v0, p0, Lcom/transsion/privacy/MarkPointUtil$1$1;->this$0:Lcom/transsion/privacy/MarkPointUtil$1;

    iget-object v1, v0, Lcom/transsion/privacy/MarkPointUtil$1;->val$fragmentManager:Landroid/app/FragmentManager;

    iget-boolean v2, v0, Lcom/transsion/privacy/MarkPointUtil$1;->val$pinCancelDismissEnable:Z

    iget-object v0, v0, Lcom/transsion/privacy/MarkPointUtil$1;->val$config:Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;

    invoke-static {v1, v2, v0}, Lcom/transsion/transsion_gdpr/GdprUtil;->g(Landroid/app/FragmentManager;ZLcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;)V

    :goto_1
    iget-object p0, p0, Lcom/transsion/privacy/MarkPointUtil$1$1;->this$0:Lcom/transsion/privacy/MarkPointUtil$1;

    iget-object p0, p0, Lcom/transsion/privacy/MarkPointUtil$1;->val$handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quitSafely()Z

    return-void
.end method
