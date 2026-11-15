.class public Lcom/transsion/aicore/nexusflow/IFlowCallback$Default;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/aicore/nexusflow/IFlowCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/aicore/nexusflow/IFlowCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onResult(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onStreamResult(Landroid/os/Bundle;Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    return-void
.end method
