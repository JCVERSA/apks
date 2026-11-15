.class Lcom/transsion/privacy/MarkPointUtil$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/privacy/MarkPointUtil;->q(Landroid/content/Context;Landroid/app/FragmentManager;ZLcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$config:Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$fragmentManager:Landroid/app/FragmentManager;

.field final synthetic val$handlerThread:Landroid/os/HandlerThread;

.field final synthetic val$mainHandler:Landroid/os/Handler;

.field final synthetic val$pinCancelDismissEnable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/app/FragmentManager;ZLcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;Landroid/os/HandlerThread;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/privacy/MarkPointUtil$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/transsion/privacy/MarkPointUtil$1;->val$mainHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/transsion/privacy/MarkPointUtil$1;->val$fragmentManager:Landroid/app/FragmentManager;

    iput-boolean p4, p0, Lcom/transsion/privacy/MarkPointUtil$1;->val$pinCancelDismissEnable:Z

    iput-object p5, p0, Lcom/transsion/privacy/MarkPointUtil$1;->val$config:Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;

    iput-object p6, p0, Lcom/transsion/privacy/MarkPointUtil$1;->val$handlerThread:Landroid/os/HandlerThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/privacy/MarkPointUtil$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/privacy/MarkPointUtil;->h(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/transsion/privacy/MarkPointUtil$1;->val$mainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/transsion/privacy/MarkPointUtil$1$1;

    invoke-direct {v2, p0, v0}, Lcom/transsion/privacy/MarkPointUtil$1$1;-><init>(Lcom/transsion/privacy/MarkPointUtil$1;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
