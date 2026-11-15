.class public Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranThubUserSwitchObserver;
.super Lcom/transsion/hubsdk/app/ITranUserSwitchObserver$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/core/app/TranThubActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TranThubUserSwitchObserver"
.end annotation


# instance fields
.field private mObserver:Lcom/transsion/hubsdk/api/app/TranUserSwitchObserver;

.field final synthetic this$0:Lcom/transsion/hubsdk/core/app/TranThubActivityManager;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Lcom/transsion/hubsdk/api/app/TranUserSwitchObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranThubUserSwitchObserver;->this$0:Lcom/transsion/hubsdk/core/app/TranThubActivityManager;

    invoke-direct {p0}, Lcom/transsion/hubsdk/app/ITranUserSwitchObserver$Stub;-><init>()V

    iput-object p2, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranThubUserSwitchObserver;->mObserver:Lcom/transsion/hubsdk/api/app/TranUserSwitchObserver;

    return-void
.end method


# virtual methods
.method public onUserSwitchComplete(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranThubUserSwitchObserver;->mObserver:Lcom/transsion/hubsdk/api/app/TranUserSwitchObserver;

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/api/app/TranUserSwitchObserver;->onUserSwitchComplete(I)V

    return-void
.end method

.method public onUserSwitching(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranThubUserSwitchObserver;->mObserver:Lcom/transsion/hubsdk/api/app/TranUserSwitchObserver;

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/api/app/TranUserSwitchObserver;->onUserSwitching(I)V

    return-void
.end method
