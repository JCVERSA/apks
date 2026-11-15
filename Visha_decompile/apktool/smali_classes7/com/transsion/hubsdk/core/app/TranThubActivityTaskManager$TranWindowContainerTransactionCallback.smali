.class public Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$TranWindowContainerTransactionCallback;
.super Lcom/transsion/hubsdk/window/ITranWindowContainerTransactionCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TranWindowContainerTransactionCallback"
.end annotation


# instance fields
.field mWindowCallback:Lcom/transsion/hubsdk/api/app/TranActivityTaskManager$TranWindowContainerTransactionCallback;

.field final synthetic this$0:Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;Lcom/transsion/hubsdk/api/app/TranActivityTaskManager$TranWindowContainerTransactionCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$TranWindowContainerTransactionCallback;->this$0:Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;

    invoke-direct {p0}, Lcom/transsion/hubsdk/window/ITranWindowContainerTransactionCallback$Stub;-><init>()V

    iput-object p2, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$TranWindowContainerTransactionCallback;->mWindowCallback:Lcom/transsion/hubsdk/api/app/TranActivityTaskManager$TranWindowContainerTransactionCallback;

    return-void
.end method


# virtual methods
.method public onTransactionReady(ILandroid/view/SurfaceControl$Transaction;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$TranWindowContainerTransactionCallback;->mWindowCallback:Lcom/transsion/hubsdk/api/app/TranActivityTaskManager$TranWindowContainerTransactionCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager$TranWindowContainerTransactionCallback;->onTransactionReady(ILandroid/view/SurfaceControl$Transaction;)V

    :cond_0
    return-void
.end method
