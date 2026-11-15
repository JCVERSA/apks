.class public final Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;
.super Lcom/cloud/tmc/kernel/minicover/base/BaseNativeComponent;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0$OooO00o;
    }
.end annotation


# instance fields
.field public final OooO00o:Lcom/cloud/tmc/kernel/render/IRender;

.field public final OooO0O0:Ljava/lang/String;

.field public final OooO0OO:Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;

.field public final OooO0Oo:Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0$OooO00o;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/render/IRender;)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "renderId"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "viewId"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "render"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/kernel/minicover/base/BaseNativeComponent;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/render/IRender;)V

    .line 22
    .line 23
    .line 24
    iput-object p4, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;->OooO00o:Lcom/cloud/tmc/kernel/render/IRender;

    .line 25
    .line 26
    const-string p2, "NativeWebViewComponent"

    .line 27
    .line 28
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;->OooO0O0:Ljava/lang/String;

    .line 29
    .line 30
    new-instance p2, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;

    .line 31
    .line 32
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 33
    .line 34
    invoke-interface {p4}, Lcom/cloud/tmc/kernel/render/IRender;->getActivity()Landroid/app/Activity;

    .line 35
    .line 36
    .line 37
    move-result-object p4

    .line 38
    invoke-direct {v0, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    const/4 p4, 0x0

    .line 42
    invoke-direct {p2, p3, p1, v0, p4}, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/ref/WeakReference;Landroid/util/AttributeSet;)V

    .line 43
    .line 44
    .line 45
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;->OooO0OO:Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;

    .line 46
    .line 47
    new-instance p1, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0$OooO00o;

    .line 48
    .line 49
    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0$OooO00o;-><init>(Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;)V

    .line 50
    .line 51
    .line 52
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;->OooO0Oo:Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0$OooO00o;

    .line 53
    .line 54
    return-void
.end method


# virtual methods
.method public getComponentName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "native-webview"

    .line 2
    .line 3
    return-object v0
.end method

.method public getComponentView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;->OooO0OO:Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;

    .line 2
    .line 3
    return-object v0
.end method

.method public onAddView(Lcom/google/gson/JsonObject;Lcom/cloud/tmc/kernel/minicover/callback/OnViewChangeCallback;)V
    .locals 2

    .line 1
    const-string v0, "onViewChangeCallback"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;->OooO0OO:Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;->OooO0Oo:Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0$OooO00o;

    .line 9
    .line 10
    iput-object v1, v0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0o:Lcom/cloud/tmc/miniapp/nativewebview/listener/OooO00o;

    .line 11
    .line 12
    sget-object v1, Lcom/cloud/tmc/kernel/minicover/lifecycle/BaseComponentLifecycle$ViewAction;->ON_ADD_VIEW:Lcom/cloud/tmc/kernel/minicover/lifecycle/BaseComponentLifecycle$ViewAction;

    .line 13
    .line 14
    invoke-virtual {v0, p1, v1}, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO00o(Lcom/google/gson/JsonObject;Lcom/cloud/tmc/kernel/minicover/lifecycle/BaseComponentLifecycle$ViewAction;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;->OooO00o:Lcom/cloud/tmc/kernel/render/IRender;

    .line 18
    .line 19
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/render/IRender;->getPage()Lcom/cloud/tmc/kernel/node/Node;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;->OooO0OO:Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO00o(Lcom/cloud/tmc/kernel/node/Node;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;->OooO0OO:Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    const-string v1, "node"

    .line 36
    .line 37
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 38
    .line 39
    .line 40
    :try_start_1
    instance-of v1, p1, Lcom/cloud/tmc/integration/structure/node/PageNode;

    .line 41
    .line 42
    if-eqz v1, :cond_0

    .line 43
    .line 44
    check-cast p1, Lcom/cloud/tmc/integration/structure/node/PageNode;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    goto :goto_1

    .line 49
    :cond_0
    const/4 p1, 0x0

    .line 50
    :goto_0
    if-eqz p1, :cond_1

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Lcom/cloud/tmc/integration/structure/node/PageNode;->addOnKeyboardListener(Lcom/cloud/tmc/kernel/listener/OnKeyboardListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    .line 54
    .line 55
    goto :goto_2

    .line 56
    :goto_1
    :try_start_2
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0OO:Ljava/lang/String;

    .line 57
    .line 58
    const-string v1, ""

    .line 59
    .line 60
    invoke-static {v0, v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    .line 62
    .line 63
    goto :goto_2

    .line 64
    :catchall_1
    move-exception p1

    .line 65
    goto :goto_3

    .line 66
    :cond_1
    :goto_2
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/minicover/callback/OnViewChangeCallback;->onSuccess()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 67
    .line 68
    .line 69
    goto :goto_4

    .line 70
    :goto_3
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;->OooO0O0:Ljava/lang/String;

    .line 71
    .line 72
    const-string v0, "onAddView"

    .line 73
    .line 74
    invoke-static {p2, v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    .line 76
    .line 77
    :goto_4
    return-void
.end method

.method public onDestory()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;->OooO0OO:Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0o()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;->OooO0OO:Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;->OooO00o:Lcom/cloud/tmc/kernel/render/IRender;

    .line 9
    .line 10
    invoke-interface {v1}, Lcom/cloud/tmc/kernel/render/IRender;->getPage()Lcom/cloud/tmc/kernel/node/Node;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string v2, "render.page"

    .line 15
    .line 16
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    const-string v2, "node"

    .line 23
    .line 24
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 25
    .line 26
    .line 27
    :try_start_1
    instance-of v2, v1, Lcom/cloud/tmc/integration/structure/node/PageNode;

    .line 28
    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    check-cast v1, Lcom/cloud/tmc/integration/structure/node/PageNode;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception v1

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    const/4 v1, 0x0

    .line 37
    :goto_0
    if-eqz v1, :cond_1

    .line 38
    .line 39
    invoke-virtual {v1, v0}, Lcom/cloud/tmc/integration/structure/node/PageNode;->removeOnKeyboardListener(Lcom/cloud/tmc/kernel/listener/OnKeyboardListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    .line 41
    .line 42
    goto :goto_2

    .line 43
    :goto_1
    :try_start_2
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0OO:Ljava/lang/String;

    .line 44
    .line 45
    const-string v2, ""

    .line 46
    .line 47
    invoke-static {v0, v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 48
    .line 49
    .line 50
    goto :goto_2

    .line 51
    :catchall_1
    move-exception v0

    .line 52
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;->OooO0O0:Ljava/lang/String;

    .line 53
    .line 54
    const-string v2, "onDestory"

    .line 55
    .line 56
    invoke-static {v1, v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    .line 58
    .line 59
    :cond_1
    :goto_2
    return-void
.end method

.method public onEventMessage(Ljava/lang/String;Lcom/google/gson/JsonObject;Lcom/cloud/tmc/kernel/minicover/callback/OnEventCallback;)V
    .locals 5

    .line 1
    const-string v0, "methodName"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "args"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "callback"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;->OooO0O0:Ljava/lang/String;

    .line 17
    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v2, "onEventMessage method = "

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v2, ", args = "

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    const/4 v1, 0x1

    .line 51
    const/4 v2, 0x0

    .line 52
    sparse-switch v0, :sswitch_data_0

    .line 53
    .line 54
    .line 55
    goto/16 :goto_6

    .line 56
    .line 57
    :sswitch_0
    const-string v0, "loadUrl"

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-nez p1, :cond_0

    .line 64
    .line 65
    goto/16 :goto_6

    .line 66
    .line 67
    :cond_0
    const-string p1, "url"

    .line 68
    .line 69
    invoke-virtual {p2, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    if-eqz p1, :cond_1

    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    goto :goto_0

    .line 80
    :catchall_0
    move-exception p1

    .line 81
    goto/16 :goto_5

    .line 82
    .line 83
    :cond_1
    move-object p1, v2

    .line 84
    :goto_0
    if-nez p1, :cond_2

    .line 85
    .line 86
    return-void

    .line 87
    :cond_2
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;->OooO0OO:Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;

    .line 88
    .line 89
    invoke-virtual {p2, p1}, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0O0(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-static {p3, v2, v1, v2}, Lcom/cloud/tmc/kernel/minicover/callback/OnEventCallback$DefaultImpls;->onSuccess$default(Lcom/cloud/tmc/kernel/minicover/callback/OnEventCallback;Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;ILjava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    goto/16 :goto_6

    .line 96
    .line 97
    :sswitch_1
    const-string p2, "getPageUrl"

    .line 98
    .line 99
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    if-nez p1, :cond_3

    .line 104
    .line 105
    goto/16 :goto_6

    .line 106
    .line 107
    :cond_3
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/JsonObjectUtils;->create()Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    const-string p2, "pageUrl"

    .line 112
    .line 113
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;->OooO0OO:Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;

    .line 114
    .line 115
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->getPageUrl()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {p1, p2, v0}, Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-interface {p3, p1}, Lcom/cloud/tmc/kernel/minicover/callback/OnEventCallback;->onSuccess(Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;)V

    .line 124
    .line 125
    .line 126
    goto/16 :goto_6

    .line 127
    .line 128
    :sswitch_2
    const-string p2, "goForward"

    .line 129
    .line 130
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    if-nez p1, :cond_4

    .line 135
    .line 136
    goto/16 :goto_6

    .line 137
    .line 138
    :cond_4
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;->OooO0OO:Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;

    .line 139
    .line 140
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0o0:Lcom/cloud/tmc/miniapp/nativewebview/view/OooO00o;

    .line 141
    .line 142
    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoForward()Z

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    if-eqz p1, :cond_5

    .line 147
    .line 148
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;->OooO0OO:Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;

    .line 149
    .line 150
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0o0:Lcom/cloud/tmc/miniapp/nativewebview/view/OooO00o;

    .line 151
    .line 152
    invoke-virtual {p1}, Landroid/webkit/WebView;->goForward()V

    .line 153
    .line 154
    .line 155
    invoke-static {p3, v2, v1, v2}, Lcom/cloud/tmc/kernel/minicover/callback/OnEventCallback$DefaultImpls;->onSuccess$default(Lcom/cloud/tmc/kernel/minicover/callback/OnEventCallback;Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;ILjava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    :cond_5
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;->OooO0OO:Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;

    .line 159
    .line 160
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooOO0o()V

    .line 161
    .line 162
    .line 163
    goto/16 :goto_6

    .line 164
    .line 165
    :sswitch_3
    const-string p2, "reload"

    .line 166
    .line 167
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result p1

    .line 171
    if-nez p1, :cond_6

    .line 172
    .line 173
    goto/16 :goto_6

    .line 174
    .line 175
    :cond_6
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;->OooO0OO:Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;

    .line 176
    .line 177
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooOO0O()V

    .line 178
    .line 179
    .line 180
    invoke-static {p3, v2, v1, v2}, Lcom/cloud/tmc/kernel/minicover/callback/OnEventCallback$DefaultImpls;->onSuccess$default(Lcom/cloud/tmc/kernel/minicover/callback/OnEventCallback;Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;ILjava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    goto/16 :goto_6

    .line 184
    .line 185
    :sswitch_4
    const-string p2, "goBack"

    .line 186
    .line 187
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-result p1

    .line 191
    if-nez p1, :cond_7

    .line 192
    .line 193
    goto/16 :goto_6

    .line 194
    .line 195
    :cond_7
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;->OooO0OO:Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;

    .line 196
    .line 197
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO00o()Z

    .line 198
    .line 199
    .line 200
    move-result p1

    .line 201
    if-eqz p1, :cond_8

    .line 202
    .line 203
    invoke-static {p3, v2, v1, v2}, Lcom/cloud/tmc/kernel/minicover/callback/OnEventCallback$DefaultImpls;->onSuccess$default(Lcom/cloud/tmc/kernel/minicover/callback/OnEventCallback;Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;ILjava/lang/Object;)V

    .line 204
    .line 205
    .line 206
    :cond_8
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;->OooO0OO:Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;

    .line 207
    .line 208
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooOO0o()V

    .line 209
    .line 210
    .line 211
    goto :goto_6

    .line 212
    :sswitch_5
    const-string v0, "loadDataWithBaseURL"

    .line 213
    .line 214
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result p1

    .line 218
    if-nez p1, :cond_9

    .line 219
    .line 220
    goto :goto_6

    .line 221
    :cond_9
    const-string p1, "baseUrl"

    .line 222
    .line 223
    invoke-virtual {p2, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    if-eqz p1, :cond_a

    .line 228
    .line 229
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    goto :goto_1

    .line 234
    :cond_a
    move-object p1, v2

    .line 235
    :goto_1
    if-nez p1, :cond_b

    .line 236
    .line 237
    return-void

    .line 238
    :cond_b
    const-string v0, "pageHtmlData"

    .line 239
    .line 240
    invoke-virtual {p2, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    if-eqz v0, :cond_c

    .line 245
    .line 246
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    goto :goto_2

    .line 251
    :cond_c
    move-object v0, v2

    .line 252
    :goto_2
    if-nez v0, :cond_d

    .line 253
    .line 254
    return-void

    .line 255
    :cond_d
    const-string v3, "mimeType"

    .line 256
    .line 257
    invoke-virtual {p2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 258
    .line 259
    .line 260
    move-result-object v3

    .line 261
    if-eqz v3, :cond_e

    .line 262
    .line 263
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v3

    .line 267
    goto :goto_3

    .line 268
    :cond_e
    move-object v3, v2

    .line 269
    :goto_3
    if-nez v3, :cond_f

    .line 270
    .line 271
    const-string v3, "text/html"

    .line 272
    .line 273
    :cond_f
    const-string v4, "encoding"

    .line 274
    .line 275
    invoke-virtual {p2, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 276
    .line 277
    .line 278
    move-result-object p2

    .line 279
    if-eqz p2, :cond_10

    .line 280
    .line 281
    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object p2

    .line 285
    goto :goto_4

    .line 286
    :cond_10
    move-object p2, v2

    .line 287
    :goto_4
    if-nez p2, :cond_11

    .line 288
    .line 289
    const-string p2, "UTF-8"

    .line 290
    .line 291
    :cond_11
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;->OooO0OO:Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;

    .line 292
    .line 293
    invoke-virtual {v4, p1, v0, v3, p2}, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO00o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    invoke-static {p3, v2, v1, v2}, Lcom/cloud/tmc/kernel/minicover/callback/OnEventCallback$DefaultImpls;->onSuccess$default(Lcom/cloud/tmc/kernel/minicover/callback/OnEventCallback;Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    .line 298
    .line 299
    goto :goto_6

    .line 300
    :goto_5
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;->OooO0O0:Ljava/lang/String;

    .line 301
    .line 302
    const-string p3, "onEventMessage"

    .line 303
    .line 304
    invoke-static {p2, p3, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 305
    .line 306
    .line 307
    :goto_6
    return-void

    .line 308
    nop

    .line 309
    :sswitch_data_0
    .sparse-switch
        -0x64cbea98 -> :sswitch_5
        -0x4a012e11 -> :sswitch_4
        -0x37b57e67 -> :sswitch_3
        -0x12f8b743 -> :sswitch_2
        0xde7e82a -> :sswitch_1
        0x141096a9 -> :sswitch_0
    .end sparse-switch
.end method

.method public onInterceptBackPressed()Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;->OooO0O0:Ljava/lang/String;

    .line 3
    .line 4
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;->OooO0OO:Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;

    .line 5
    .line 6
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0Oo()Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v4, "hide keyboard->"

    .line 16
    .line 17
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;->OooO0OO:Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0Oo()Z

    .line 33
    .line 34
    .line 35
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 36
    const/4 v2, 0x1

    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    :try_start_1
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;->OooO00o:Lcom/cloud/tmc/kernel/render/IRender;

    .line 40
    .line 41
    invoke-interface {v1}, Lcom/cloud/tmc/kernel/render/IRender;->getPage()Lcom/cloud/tmc/kernel/node/Node;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    instance-of v3, v1, Lcom/cloud/tmc/integration/structure/node/PageNode;

    .line 46
    .line 47
    if-eqz v3, :cond_0

    .line 48
    .line 49
    check-cast v1, Lcom/cloud/tmc/integration/structure/node/PageNode;

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception v1

    .line 53
    goto :goto_1

    .line 54
    :cond_0
    const/4 v1, 0x0

    .line 55
    :goto_0
    if-eqz v1, :cond_1

    .line 56
    .line 57
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/structure/node/PageNode;->getPageContext()Lcom/cloud/tmc/integration/structure/PageContext;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    if-eqz v1, :cond_1

    .line 62
    .line 63
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/PageContext;->getContentView()Landroid/view/ViewGroup;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    if-eqz v1, :cond_1

    .line 68
    .line 69
    const-class v3, Lcom/cloud/tmc/integration/proxy/IKeyboardProxy;

    .line 70
    .line 71
    invoke-static {v3}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    check-cast v3, Lcom/cloud/tmc/integration/proxy/IKeyboardProxy;

    .line 76
    .line 77
    invoke-interface {v3, v1}, Lcom/cloud/tmc/integration/proxy/IKeyboardProxy;->hideKeyboard(Landroid/view/View;)V

    .line 78
    .line 79
    .line 80
    :cond_1
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;->OooO0O0:Ljava/lang/String;

    .line 81
    .line 82
    const-string v3, "hide keyboard"

    .line 83
    .line 84
    invoke-static {v1, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    .line 86
    .line 87
    return v2

    .line 88
    :goto_1
    :try_start_2
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;->OooO0O0:Ljava/lang/String;

    .line 89
    .line 90
    const-string v3, "hide keyboard error "

    .line 91
    .line 92
    invoke-static {v2, v3, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    .line 94
    .line 95
    return v0

    .line 96
    :catchall_1
    move-exception v1

    .line 97
    goto :goto_2

    .line 98
    :cond_2
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;->OooO0OO:Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;

    .line 99
    .line 100
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO00o()Z

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-eqz v1, :cond_3

    .line 105
    .line 106
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;->OooO0O0:Ljava/lang/String;

    .line 107
    .line 108
    const-string v3, "onInterceptBackPressed -> true"

    .line 109
    .line 110
    invoke-static {v1, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;->OooO0OO:Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;

    .line 114
    .line 115
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooOO0o()V

    .line 116
    .line 117
    .line 118
    return v2

    .line 119
    :cond_3
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;->OooO0O0:Ljava/lang/String;

    .line 120
    .line 121
    const-string v2, "onInterceptBackPressed -> false"

    .line 122
    .line 123
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 124
    .line 125
    .line 126
    return v0

    .line 127
    :goto_2
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;->OooO0O0:Ljava/lang/String;

    .line 128
    .line 129
    const-string v3, "onInterceptBackPressed"

    .line 130
    .line 131
    invoke-static {v2, v3, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 132
    .line 133
    .line 134
    return v0
.end method

.method public onPause()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;->OooO0OO:Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0oO()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catchall_0
    move-exception v0

    .line 8
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;->OooO0O0:Ljava/lang/String;

    .line 9
    .line 10
    const-string v2, "onPause"

    .line 11
    .line 12
    invoke-static {v1, v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method public onRemove()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;->OooO0OO:Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0oo()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catchall_0
    move-exception v0

    .line 8
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;->OooO0O0:Ljava/lang/String;

    .line 9
    .line 10
    const-string v2, "onRemove"

    .line 11
    .line 12
    invoke-static {v1, v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;->OooO0OO:Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catchall_0
    move-exception v0

    .line 8
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;->OooO0O0:Ljava/lang/String;

    .line 9
    .line 10
    const-string v2, "onResume"

    .line 11
    .line 12
    invoke-static {v1, v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;->OooO0OO:Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooOO0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catchall_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;->OooO0O0:Ljava/lang/String;

    .line 8
    .line 9
    const-string v1, "onStop"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :goto_0
    return-void
.end method

.method public onUpdateView(Lcom/google/gson/JsonObject;Lcom/cloud/tmc/kernel/minicover/callback/OnViewChangeCallback;)V
    .locals 2

    .line 1
    const-string v0, "onViewChangeCallback"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;->OooO0OO:Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;

    .line 7
    .line 8
    sget-object v1, Lcom/cloud/tmc/kernel/minicover/lifecycle/BaseComponentLifecycle$ViewAction;->ON_UPDATE_VIEW:Lcom/cloud/tmc/kernel/minicover/lifecycle/BaseComponentLifecycle$ViewAction;

    .line 9
    .line 10
    invoke-virtual {v0, p1, v1}, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO00o(Lcom/google/gson/JsonObject;Lcom/cloud/tmc/kernel/minicover/lifecycle/BaseComponentLifecycle$ViewAction;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/minicover/callback/OnViewChangeCallback;->onSuccess()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;->OooO0O0:Ljava/lang/String;

    .line 19
    .line 20
    const-string v0, "onUpdateView"

    .line 21
    .line 22
    invoke-static {p2, v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    return-void
.end method
