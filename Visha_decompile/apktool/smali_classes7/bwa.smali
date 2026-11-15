.class public final synthetic Lbwa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManagerExt$TranWindowContainerTransactionCallback;


# instance fields
.field public final synthetic a:Lcom/transsion/hubsdk/api/app/TranActivityTaskManager$TranWindowContainerTransactionCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/hubsdk/api/app/TranActivityTaskManager$TranWindowContainerTransactionCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbwa;->a:Lcom/transsion/hubsdk/api/app/TranActivityTaskManager$TranWindowContainerTransactionCallback;

    return-void
.end method


# virtual methods
.method public final onTransactionReady(ILandroid/view/SurfaceControl$Transaction;)V
    .locals 0

    iget-object p0, p0, Lbwa;->a:Lcom/transsion/hubsdk/api/app/TranActivityTaskManager$TranWindowContainerTransactionCallback;

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager$TranWindowContainerTransactionCallback;->onTransactionReady(ILandroid/view/SurfaceControl$Transaction;)V

    return-void
.end method
