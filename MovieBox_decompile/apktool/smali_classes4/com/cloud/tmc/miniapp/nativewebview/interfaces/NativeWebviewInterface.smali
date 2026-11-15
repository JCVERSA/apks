.class public final Lcom/cloud/tmc/miniapp/nativewebview/interfaces/NativeWebviewInterface;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onScrollChanged(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "viewId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    sget-object v0, Lcom/cloud/tmc/integration/minicover/NativeComponentManager;->INSTANCE:Lcom/cloud/tmc/integration/minicover/NativeComponentManager;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/cloud/tmc/integration/minicover/NativeComponentManager;->getComponentView(Ljava/lang/String;)Lcom/cloud/tmc/kernel/minicover/base/BaseNativeComponent;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    instance-of v0, p1, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    check-cast p1, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    :goto_0
    if-eqz p1, :cond_1

    .line 23
    .line 24
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;->OooO0OO:Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    :try_start_1
    iget-boolean v0, p1, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooOOo:Z

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    const-class v0, Lcom/cloud/tmc/integration/proxy/IKeyboardProxy;

    .line 33
    .line 34
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Lcom/cloud/tmc/integration/proxy/IKeyboardProxy;

    .line 39
    .line 40
    invoke-interface {v0, p1}, Lcom/cloud/tmc/integration/proxy/IKeyboardProxy;->hideKeyboard(Landroid/view/View;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 41
    .line 42
    .line 43
    goto :goto_2

    .line 44
    :catchall_1
    move-exception v0

    .line 45
    :try_start_2
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0OO:Ljava/lang/String;

    .line 46
    .line 47
    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 48
    .line 49
    .line 50
    goto :goto_2

    .line 51
    :goto_1
    const-string v0, "receiveUrlIcon"

    .line 52
    .line 53
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    :goto_2
    return-void
.end method

.method public final receiveUrlIcon(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "onReceivedIcon"

    .line 2
    .line 3
    const-string v1, "icon"

    .line 4
    .line 5
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "viewId"

    .line 9
    .line 10
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :try_start_0
    sget-object v1, Lcom/cloud/tmc/integration/minicover/NativeComponentManager;->INSTANCE:Lcom/cloud/tmc/integration/minicover/NativeComponentManager;

    .line 14
    .line 15
    invoke-virtual {v1, p2}, Lcom/cloud/tmc/integration/minicover/NativeComponentManager;->getComponentView(Ljava/lang/String;)Lcom/cloud/tmc/kernel/minicover/base/BaseNativeComponent;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    instance-of v1, p2, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    check-cast p2, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    const/4 p2, 0x0

    .line 29
    :goto_0
    if-eqz p2, :cond_1

    .line 30
    .line 31
    iget-object p2, p2, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;->OooO0OO:Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;

    .line 32
    .line 33
    if-eqz p2, :cond_1

    .line 34
    .line 35
    const-string v1, "iconUrl"

    .line 36
    .line 37
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-static {}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils;->create()Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const-string v2, "type"

    .line 45
    .line 46
    invoke-virtual {v1, v2, v0}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    const-string v2, "favicon"

    .line 51
    .line 52
    invoke-virtual {v1, v2, p1}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    const-string v1, "create().addProperty(KEY\u2026FAVICON, iconUrl).build()"

    .line 61
    .line 62
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget-object p2, p2, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0o:Lcom/cloud/tmc/miniapp/nativewebview/listener/OooO00o;

    .line 66
    .line 67
    if-eqz p2, :cond_1

    .line 68
    .line 69
    invoke-interface {p2, v0, p1}, Lcom/cloud/tmc/miniapp/nativewebview/listener/OooO00o;->OooO00o(Ljava/lang/String;Lcom/google/gson/JsonObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .line 71
    .line 72
    goto :goto_2

    .line 73
    :goto_1
    const-string p2, "receiveUrlIcon"

    .line 74
    .line 75
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    .line 77
    .line 78
    :cond_1
    :goto_2
    return-void
.end method
