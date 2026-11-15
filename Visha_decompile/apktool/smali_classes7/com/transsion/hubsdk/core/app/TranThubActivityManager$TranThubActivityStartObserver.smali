.class public Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranThubActivityStartObserver;
.super Lcom/transsion/hubsdk/app/ITranActivityStartObserver$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/core/app/TranThubActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TranThubActivityStartObserver"
.end annotation


# instance fields
.field private mObserver:Lcom/transsion/hubsdk/api/app/TranActivityManager$TranActivityStartObserver;

.field final synthetic this$0:Lcom/transsion/hubsdk/core/app/TranThubActivityManager;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Lcom/transsion/hubsdk/api/app/TranActivityManager$TranActivityStartObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranThubActivityStartObserver;->this$0:Lcom/transsion/hubsdk/core/app/TranThubActivityManager;

    invoke-direct {p0}, Lcom/transsion/hubsdk/app/ITranActivityStartObserver$Stub;-><init>()V

    iput-object p2, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranThubActivityStartObserver;->mObserver:Lcom/transsion/hubsdk/api/app/TranActivityManager$TranActivityStartObserver;

    return-void
.end method


# virtual methods
.method public onRealStartActivity(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranThubActivityStartObserver;->mObserver:Lcom/transsion/hubsdk/api/app/TranActivityManager$TranActivityStartObserver;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/api/app/TranActivityManager$TranActivityStartObserver;->onRealStartActivity(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
