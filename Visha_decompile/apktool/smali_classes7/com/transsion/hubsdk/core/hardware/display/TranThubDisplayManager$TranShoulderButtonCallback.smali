.class public Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranShoulderButtonCallback;
.super Lcom/transsion/hubsdk/hardware/display/ITranShoulderButtonCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TranShoulderButtonCallback"
.end annotation


# instance fields
.field private mTranShoulderButtonCallback:Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$ITranShoulderButtonCallback;

.field final synthetic this$0:Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$ITranShoulderButtonCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranShoulderButtonCallback;->this$0:Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;

    invoke-direct {p0}, Lcom/transsion/hubsdk/hardware/display/ITranShoulderButtonCallback$Stub;-><init>()V

    iput-object p2, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranShoulderButtonCallback;->mTranShoulderButtonCallback:Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$ITranShoulderButtonCallback;

    return-void
.end method


# virtual methods
.method public onKeyEvent(IIIII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranShoulderButtonCallback;->mTranShoulderButtonCallback:Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$ITranShoulderButtonCallback;

    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$ITranShoulderButtonCallback;->onKeyEvent(IIIII)V

    :cond_0
    return-void
.end method
