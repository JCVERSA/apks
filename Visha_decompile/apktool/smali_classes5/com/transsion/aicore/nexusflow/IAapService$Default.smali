.class public Lcom/transsion/aicore/nexusflow/IAapService$Default;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/aicore/nexusflow/IAapService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/aicore/nexusflow/IAapService;
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

.method public release()V
    .locals 0

    return-void
.end method

.method public sendCommand(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public setCallback(Lcom/transsion/aicore/nexusflow/IAapCallback;)V
    .locals 0

    return-void
.end method
