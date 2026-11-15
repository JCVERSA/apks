.class public final Lcom/transsion/apiinvoke/ipc/SwitchConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/apiinvoke/ipc/SwitchConfig$HostItemSwitch;,
        Lcom/transsion/apiinvoke/ipc/SwitchConfig$InvokeSwitch;,
        Lcom/transsion/apiinvoke/ipc/SwitchConfig$ApiServiceSwitch;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x649146418544eaadL


# instance fields
.field public invokeSwitch:Lcom/transsion/apiinvoke/ipc/SwitchConfig$InvokeSwitch;

.field public process:Ljava/lang/String;

.field public publishSwitch:Lcom/transsion/apiinvoke/ipc/SwitchConfig$HostItemSwitch;

.field public state:I

.field public versions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isChannelClosed(Ljava/lang/String;)Z
    .locals 3

    iget v0, p0, Lcom/transsion/apiinvoke/ipc/SwitchConfig;->state:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/transsion/apiinvoke/ipc/SwitchConfig;->publishSwitch:Lcom/transsion/apiinvoke/ipc/SwitchConfig$HostItemSwitch;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/transsion/apiinvoke/ipc/SwitchConfig$HostItemSwitch;->channel:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object p0, p0, Lcom/transsion/apiinvoke/ipc/SwitchConfig;->invokeSwitch:Lcom/transsion/apiinvoke/ipc/SwitchConfig$InvokeSwitch;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lcom/transsion/apiinvoke/ipc/SwitchConfig$InvokeSwitch;->channel:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    return v2
.end method

.method public isProcessClosed()Z
    .locals 1

    iget p0, p0, Lcom/transsion/apiinvoke/ipc/SwitchConfig;->state:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isServiceClosed(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    iget v0, p0, Lcom/transsion/apiinvoke/ipc/SwitchConfig;->state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/transsion/apiinvoke/ipc/SwitchConfig;->publishSwitch:Lcom/transsion/apiinvoke/ipc/SwitchConfig$HostItemSwitch;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/transsion/apiinvoke/ipc/SwitchConfig$HostItemSwitch;->channel:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/apiinvoke/ipc/SwitchConfig;->publishSwitch:Lcom/transsion/apiinvoke/ipc/SwitchConfig$HostItemSwitch;

    iget-object v0, v0, Lcom/transsion/apiinvoke/ipc/SwitchConfig$HostItemSwitch;->apiName:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/transsion/apiinvoke/ipc/SwitchConfig;->invokeSwitch:Lcom/transsion/apiinvoke/ipc/SwitchConfig$InvokeSwitch;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/transsion/apiinvoke/ipc/SwitchConfig$InvokeSwitch;->channel:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/apiinvoke/ipc/SwitchConfig;->invokeSwitch:Lcom/transsion/apiinvoke/ipc/SwitchConfig$InvokeSwitch;

    invoke-virtual {v0, p2}, Lcom/transsion/apiinvoke/ipc/SwitchConfig$InvokeSwitch;->containService(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/apiinvoke/ipc/SwitchConfig;->isServiceItemClosed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isServiceItemClosed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    iget v0, p0, Lcom/transsion/apiinvoke/ipc/SwitchConfig;->state:I

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/transsion/apiinvoke/ipc/SwitchConfig;->publishSwitch:Lcom/transsion/apiinvoke/ipc/SwitchConfig$HostItemSwitch;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/transsion/apiinvoke/ipc/SwitchConfig$HostItemSwitch;->channel:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/apiinvoke/ipc/SwitchConfig;->publishSwitch:Lcom/transsion/apiinvoke/ipc/SwitchConfig$HostItemSwitch;

    iget-object p1, p1, Lcom/transsion/apiinvoke/ipc/SwitchConfig$HostItemSwitch;->apiName:Ljava/lang/String;

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/apiinvoke/ipc/SwitchConfig;->publishSwitch:Lcom/transsion/apiinvoke/ipc/SwitchConfig$HostItemSwitch;

    invoke-virtual {p1, p3}, Lcom/transsion/apiinvoke/ipc/SwitchConfig$HostItemSwitch;->containDataType(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    iget-object p0, p0, Lcom/transsion/apiinvoke/ipc/SwitchConfig;->invokeSwitch:Lcom/transsion/apiinvoke/ipc/SwitchConfig$InvokeSwitch;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p2, p3}, Lcom/transsion/apiinvoke/ipc/SwitchConfig$InvokeSwitch;->containApiMethod(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    return v2
.end method
