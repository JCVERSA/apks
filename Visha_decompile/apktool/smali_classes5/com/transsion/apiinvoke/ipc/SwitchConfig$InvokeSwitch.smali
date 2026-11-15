.class public final Lcom/transsion/apiinvoke/ipc/SwitchConfig$InvokeSwitch;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/apiinvoke/ipc/SwitchConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InvokeSwitch"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x5abb74f9ec44dbb0L


# instance fields
.field public apiService:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/apiinvoke/ipc/SwitchConfig$ApiServiceSwitch;",
            ">;"
        }
    .end annotation
.end field

.field public channel:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public containApiMethod(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    iget-object p0, p0, Lcom/transsion/apiinvoke/ipc/SwitchConfig$InvokeSwitch;->apiService:Ljava/util/List;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/apiinvoke/ipc/SwitchConfig$ApiServiceSwitch;

    iget-object v2, v1, Lcom/transsion/apiinvoke/ipc/SwitchConfig$ApiServiceSwitch;->apiName:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, p2}, Lcom/transsion/apiinvoke/ipc/SwitchConfig$ApiServiceSwitch;->containMethod(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method public containService(Ljava/lang/String;)Z
    .locals 2

    iget-object p0, p0, Lcom/transsion/apiinvoke/ipc/SwitchConfig$InvokeSwitch;->apiService:Ljava/util/List;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/apiinvoke/ipc/SwitchConfig$ApiServiceSwitch;

    iget-object v1, v1, Lcom/transsion/apiinvoke/ipc/SwitchConfig$ApiServiceSwitch;->apiName:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method public hasApiService()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/apiinvoke/ipc/SwitchConfig$InvokeSwitch;->apiService:Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
