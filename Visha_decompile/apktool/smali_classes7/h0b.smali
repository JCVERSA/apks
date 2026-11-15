.class public final synthetic Lh0b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;


# instance fields
.field public final synthetic a:Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;

.field public final synthetic b:Landroid/content/res/Configuration;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;Landroid/content/res/Configuration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh0b;->a:Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;

    iput-object p2, p0, Lh0b;->b:Landroid/content/res/Configuration;

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lh0b;->a:Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;

    iget-object p0, p0, Lh0b;->b:Landroid/content/res/Configuration;

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->l(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;Landroid/content/res/Configuration;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
