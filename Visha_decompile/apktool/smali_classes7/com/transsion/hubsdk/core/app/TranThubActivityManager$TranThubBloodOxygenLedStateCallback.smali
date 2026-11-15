.class public Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranThubBloodOxygenLedStateCallback;
.super Lcom/transsion/hubsdk/app/ITranBloodOxygenLedStateCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/core/app/TranThubActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TranThubBloodOxygenLedStateCallback"
.end annotation


# instance fields
.field private mCallback:Lcom/transsion/hubsdk/api/app/TranActivityManager$ITranBloodOxygenLedStateCallback;

.field final synthetic this$0:Lcom/transsion/hubsdk/core/app/TranThubActivityManager;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Lcom/transsion/hubsdk/api/app/TranActivityManager$ITranBloodOxygenLedStateCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranThubBloodOxygenLedStateCallback;->this$0:Lcom/transsion/hubsdk/core/app/TranThubActivityManager;

    invoke-direct {p0}, Lcom/transsion/hubsdk/app/ITranBloodOxygenLedStateCallback$Stub;-><init>()V

    iput-object p2, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranThubBloodOxygenLedStateCallback;->mCallback:Lcom/transsion/hubsdk/api/app/TranActivityManager$ITranBloodOxygenLedStateCallback;

    return-void
.end method


# virtual methods
.method public onBloodOxygenLedStateChange(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranThubBloodOxygenLedStateCallback;->mCallback:Lcom/transsion/hubsdk/api/app/TranActivityManager$ITranBloodOxygenLedStateCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/api/app/TranActivityManager$ITranBloodOxygenLedStateCallback;->onBloodOxygenLedStateChange(I)V

    :cond_0
    return-void
.end method
