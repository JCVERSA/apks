.class public final Lcom/cloud/tmc/miniapp/defaultimpl/ToastImp$OooOO0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/miniapp/dialog/OooOo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/defaultimpl/ToastImp;->showModal(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

.field public final synthetic OooO0O0:Z

.field public final synthetic OooO0OO:Lcom/cloud/tmc/miniapp/dialog/OooOo00;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;ZLcom/cloud/tmc/miniapp/dialog/OooOo00;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/ToastImp$OooOO0;->OooO00o:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/cloud/tmc/miniapp/defaultimpl/ToastImp$OooOO0;->OooO0O0:Z

    .line 4
    .line 5
    iput-object p3, p0, Lcom/cloud/tmc/miniapp/defaultimpl/ToastImp$OooOO0;->OooO0OO:Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public OooO00o(Landroid/view/View;)V
    .locals 3

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/ToastImp$OooOO0;->OooO00o:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    new-instance v0, Lcom/google/gson/JsonObject;

    .line 11
    .line 12
    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 13
    .line 14
    .line 15
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 16
    .line 17
    const-string v2, "cancel"

    .line 18
    .line 19
    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 20
    .line 21
    .line 22
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 23
    .line 24
    const-string v2, "confirm"

    .line 25
    .line 26
    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 27
    .line 28
    .line 29
    invoke-interface {p1, v0}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public OooO0O0(Landroid/view/View;)V
    .locals 5

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/ToastImp$OooOO0;->OooO00o:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 7
    .line 8
    if-eqz p1, :cond_2

    .line 9
    .line 10
    new-instance v0, Lcom/google/gson/JsonObject;

    .line 11
    .line 12
    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 13
    .line 14
    .line 15
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/ToastImp$OooOO0;->OooO0O0:Z

    .line 16
    .line 17
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/defaultimpl/ToastImp$OooOO0;->OooO0OO:Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    .line 18
    .line 19
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 20
    .line 21
    const-string v4, "cancel"

    .line 22
    .line 23
    invoke-virtual {v0, v4, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 24
    .line 25
    .line 26
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 27
    .line 28
    const-string v4, "confirm"

    .line 29
    .line 30
    invoke-virtual {v0, v4, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 31
    .line 32
    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO0oO()Landroid/widget/TextView;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const/4 v1, 0x0

    .line 51
    :goto_0
    const-string v2, "content"

    .line 52
    .line 53
    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    invoke-interface {p1, v0}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    .line 57
    .line 58
    .line 59
    :cond_2
    return-void
.end method
