.class public Lcom/transsion/hubsdk/core/hardware/smartbutton/TranThubSmartButtonManagerExt$TranSmartButtonCallback;
.super Lcom/transsion/hubsdk/hardware/display/ITranSmartButtonCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/core/hardware/smartbutton/TranThubSmartButtonManagerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TranSmartButtonCallback"
.end annotation


# instance fields
.field private mTranSmartButtonCallback:Lcom/transsion/hubsdk/api/hardware/smartbutton/TranSmartButtonManagerExt$ITranSmartButtonCallback;

.field final synthetic this$0:Lcom/transsion/hubsdk/core/hardware/smartbutton/TranThubSmartButtonManagerExt;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/core/hardware/smartbutton/TranThubSmartButtonManagerExt;Lcom/transsion/hubsdk/api/hardware/smartbutton/TranSmartButtonManagerExt$ITranSmartButtonCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/hubsdk/core/hardware/smartbutton/TranThubSmartButtonManagerExt$TranSmartButtonCallback;->this$0:Lcom/transsion/hubsdk/core/hardware/smartbutton/TranThubSmartButtonManagerExt;

    invoke-direct {p0}, Lcom/transsion/hubsdk/hardware/display/ITranSmartButtonCallback$Stub;-><init>()V

    iput-object p2, p0, Lcom/transsion/hubsdk/core/hardware/smartbutton/TranThubSmartButtonManagerExt$TranSmartButtonCallback;->mTranSmartButtonCallback:Lcom/transsion/hubsdk/api/hardware/smartbutton/TranSmartButtonManagerExt$ITranSmartButtonCallback;

    return-void
.end method


# virtual methods
.method public onPress()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/smartbutton/TranThubSmartButtonManagerExt$TranSmartButtonCallback;->mTranSmartButtonCallback:Lcom/transsion/hubsdk/api/hardware/smartbutton/TranSmartButtonManagerExt$ITranSmartButtonCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/hubsdk/api/hardware/smartbutton/TranSmartButtonManagerExt$ITranSmartButtonCallback;->onPress()V

    :cond_0
    return-void
.end method
