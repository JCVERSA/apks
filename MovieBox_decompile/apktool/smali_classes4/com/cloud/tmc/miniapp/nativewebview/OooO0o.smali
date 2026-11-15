.class public final Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;
.super Landroid/widget/FrameLayout;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;
.implements Lcom/cloud/tmc/kernel/render/WebviewPageCallback;
.implements Lcom/cloud/tmc/kernel/listener/OnKeyboardListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/nativewebview/OooO0o$OooO00o;,
        Lcom/cloud/tmc/miniapp/nativewebview/OooO0o$OooO0O0;
    }
.end annotation


# instance fields
.field public OooO:J

.field public final OooO00o:Ljava/lang/String;

.field public final OooO0O0:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field public final OooO0OO:Ljava/lang/String;

.field public final OooO0Oo:Lkotlin/Lazy;

.field public OooO0o:Lcom/cloud/tmc/miniapp/nativewebview/listener/OooO00o;

.field public final OooO0o0:Lcom/cloud/tmc/miniapp/nativewebview/view/OooO00o;

.field public OooO0oO:Ljava/lang/String;

.field public OooO0oo:Ljava/lang/String;

.field public final OooOO0:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/cloud/tmc/miniapp/nativewebview/OooO0o$OooO00o;",
            ">;"
        }
    .end annotation
.end field

.field public OooOO0O:Z

.field public OooOO0o:Lcom/cloud/tmc/render/system/DefaultDownloadListener;

.field public final OooOOO:Ljava/lang/String;

.field public OooOOO0:Z

.field public final OooOOOO:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final OooOOOo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public OooOOo:Z

.field public OooOOo0:I

.field public OooOOoo:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/ref/WeakReference;Landroid/util/AttributeSet;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;",
            "Landroid/util/AttributeSet;",
            ")V"
        }
    .end annotation

    .line 1
    const-string p4, "viewId"

    .line 2
    .line 3
    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p4, "context"

    .line 7
    .line 8
    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p4, 0x0

    .line 12
    invoke-direct {p0, p2, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO00o:Ljava/lang/String;

    .line 16
    .line 17
    iput-object p3, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0O0:Ljava/lang/ref/WeakReference;

    .line 18
    .line 19
    const-string p1, "WebviewComponentView"

    .line 20
    .line 21
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0OO:Ljava/lang/String;

    .line 22
    .line 23
    new-instance v0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o$OooO0OO;

    .line 24
    .line 25
    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o$OooO0OO;-><init>(Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0Oo:Lkotlin/Lazy;

    .line 33
    .line 34
    const-string v0, ""

    .line 35
    .line 36
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0oO:Ljava/lang/String;

    .line 37
    .line 38
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0oo:Ljava/lang/String;

    .line 39
    .line 40
    new-instance v0, Ljava/util/Stack;

    .line 41
    .line 42
    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooOO0:Ljava/util/Stack;

    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sget v1, Lcom/cloud/tmc/miniapp/R$layout;->layout_mini_webview_view:I

    .line 56
    .line 57
    const/4 v2, 0x1

    .line 58
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    new-instance v0, Lcom/cloud/tmc/miniapp/nativewebview/view/OooO00o;

    .line 62
    .line 63
    const/4 v1, 0x2

    .line 64
    invoke-direct {v0, p2, p4, v1}, Lcom/cloud/tmc/miniapp/nativewebview/view/OooO00o;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, p0}, Lcom/cloud/tmc/miniapp/nativewebview/view/OooO00o;->OooO00o(Lcom/cloud/tmc/kernel/render/WebviewPageCallback;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, p0}, Lcom/cloud/tmc/miniapp/nativewebview/view/OooO00o;->OooO00o(Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;)V

    .line 71
    .line 72
    .line 73
    const/4 p2, -0x1

    .line 74
    invoke-virtual {v0, p2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 75
    .line 76
    .line 77
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0o0:Lcom/cloud/tmc/miniapp/nativewebview/view/OooO00o;

    .line 78
    .line 79
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->getFrameLayout()Landroid/widget/FrameLayout;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    if-eqz p2, :cond_0

    .line 84
    .line 85
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 86
    .line 87
    .line 88
    :cond_0
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/nativewebview/view/OooO00o;->OooO00o()V

    .line 89
    .line 90
    .line 91
    :try_start_0
    invoke-virtual {p3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    check-cast p2, Landroid/app/Activity;

    .line 96
    .line 97
    if-eqz p2, :cond_1

    .line 98
    .line 99
    invoke-static {p2}, Lcom/cloud/tmc/miniutils/util/BarUtils;->isNavBarVisible(Landroid/app/Activity;)Z

    .line 100
    .line 101
    .line 102
    move-result p2

    .line 103
    iput-boolean p2, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooOOO0:Z

    .line 104
    .line 105
    new-instance p3, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .line 109
    .line 110
    const-string p4, "isNavBarVisible ->"

    .line 111
    .line 112
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p2

    .line 122
    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :catchall_0
    move-exception p1

    .line 127
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0OO:Ljava/lang/String;

    .line 128
    .line 129
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 130
    .line 131
    .line 132
    :cond_1
    :goto_0
    const-string p1, "h5Redirect"

    .line 133
    .line 134
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooOOO:Ljava/lang/String;

    .line 135
    .line 136
    new-instance p1, Ljava/util/Stack;

    .line 137
    .line 138
    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    .line 139
    .line 140
    .line 141
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooOOOO:Ljava/util/Stack;

    .line 142
    .line 143
    new-instance p1, Ljava/util/ArrayList;

    .line 144
    .line 145
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .line 147
    .line 148
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooOOOo:Ljava/util/List;

    .line 149
    .line 150
    return-void
.end method

.method public static final OooO00o(JLcom/cloud/tmc/miniapp/nativewebview/OooO0o;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;)V
    .locals 8

    const-string v0, "this$0"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$url"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    :try_start_0
    iget-wide v0, p2, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO:J

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    .line 9
    iget-object v1, p2, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooOO0o:Lcom/cloud/tmc/render/system/DefaultDownloadListener;

    if-eqz v1, :cond_1

    .line 10
    iget-object p3, p3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v2, p3

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, p4

    move-wide v6, p0

    .line 11
    invoke-virtual/range {v1 .. v7}, Lcom/cloud/tmc/render/system/DefaultDownloadListener;->onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 12
    :cond_0
    invoke-static {}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils;->create()Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object p0

    .line 13
    const-string p1, "errorCode"

    .line 14
    const-string p3, "60001"

    .line 15
    invoke-virtual {p0, p1, p3}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object p0

    .line 16
    const-string p1, "success"

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p3}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    move-result-object p0

    const-string p1, "create().addProperty(\n  \u2026\"success\", false).build()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-object p1, p2, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooOO0o:Lcom/cloud/tmc/render/system/DefaultDownloadListener;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Lcom/cloud/tmc/render/system/DefaultDownloadListener;->onDownloadFail(Lcom/google/gson/JsonObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 18
    :goto_0
    iget-object p1, p2, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0OO:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public static final OooO00o(Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;)V
    .locals 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    :try_start_0
    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooOOo0:I

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 113
    iget-object p0, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0OO:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static final OooO00o(Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;Ljava/lang/String;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    iget-object p0, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0o0:Lcom/cloud/tmc/miniapp/nativewebview/view/OooO00o;

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/nativewebview/view/OooO00o;->OooO00o(Ljava/lang/String;)V

    return-void
.end method

.method public static final OooO00o(Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$baseUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$mimeType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$encoding"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0OO:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadDataWithBaseURL baseUrl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0o0:Lcom/cloud/tmc/miniapp/nativewebview/view/OooO00o;

    const/4 v7, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v2 .. v7}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final OooO00o(Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 8

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooOO0o:Lcom/cloud/tmc/render/system/DefaultDownloadListener;

    if-eqz v1, :cond_0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/cloud/tmc/render/system/DefaultDownloadListener;->onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public static final OooO00o(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;Ljava/lang/String;)V
    .locals 7

    const-string v0, "$url"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/HttpUtils;->getContentLength(Ljava/lang/String;)J

    move-result-wide v2

    .line 7
    new-instance v0, Lcom/cloud/tmc/miniapp/nativewebview/f;

    move-object v1, v0

    move-object v4, p1

    move-object v5, p0

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/cloud/tmc/miniapp/nativewebview/f;-><init>(JLcom/cloud/tmc/miniapp/nativewebview/OooO0o;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->runOnMain(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static final OooO0O0(Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;)V
    .locals 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    :try_start_0
    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooOOo0:I

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 9
    iget-object p0, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0OO:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static final OooO0OO(Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-object p0, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0o0:Lcom/cloud/tmc/miniapp/nativewebview/view/OooO00o;

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/nativewebview/view/OooO00o;->reload()V

    return-void
.end method

.method private final getFrameLayout()Landroid/widget/FrameLayout;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0Oo:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/FrameLayout;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final OooO()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils;->create()Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "type"

    .line 6
    .line 7
    const-string v2, "onResume"

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0o0:Lcom/cloud/tmc/miniapp/nativewebview/view/OooO00o;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v3, "pageUrl"

    .line 20
    .line 21
    invoke-virtual {v0, v3, v1}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "create().addProperty(KEY\u2026URL, webView.url).build()"

    .line 30
    .line 31
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0o:Lcom/cloud/tmc/miniapp/nativewebview/listener/OooO00o;

    .line 35
    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    invoke-interface {v1, v2, v0}, Lcom/cloud/tmc/miniapp/nativewebview/listener/OooO00o;->OooO00o(Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    return-void
.end method

.method public final OooO00o(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 5

    .line 49
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooOOO:Ljava/lang/String;

    const-string v1, "redirectPageStarted ==================>"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooOOO:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "webView.original:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooOOO:Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "webView.url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooOOO:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 53
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 54
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooOOOO:Ljava/util/Stack;

    invoke-virtual {p2, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :catchall_0
    :cond_2
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooOOO:Ljava/lang/String;

    const-string p2, "redirectPageStarted <=================="

    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final OooO00o(Lcom/cloud/tmc/kernel/node/Node;)V
    .locals 2

    const-string v0, "node"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    :try_start_0
    new-instance v0, Lcom/cloud/tmc/render/system/DefaultDownloadListener;

    invoke-direct {v0, p1}, Lcom/cloud/tmc/render/system/DefaultDownloadListener;-><init>(Lcom/cloud/tmc/kernel/node/Node;)V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooOO0o:Lcom/cloud/tmc/render/system/DefaultDownloadListener;

    .line 109
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0o0:Lcom/cloud/tmc/miniapp/nativewebview/view/OooO00o;

    new-instance v0, Lcom/cloud/tmc/miniapp/nativewebview/i;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/nativewebview/i;-><init>(Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 110
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0OO:Ljava/lang/String;

    const-string v1, "registerDownloadListener"

    invoke-static {v0, v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final OooO00o(Lcom/google/gson/JsonObject;Lcom/cloud/tmc/kernel/minicover/lifecycle/BaseComponentLifecycle$ViewAction;)V
    .locals 4

    const-string v0, "viewAction"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0OO:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " parse json = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    .line 95
    const-string v0, "src"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 96
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    .line 97
    sget-object v1, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o$OooO0O0;->OooO00o:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v1, p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    const-string v2, "loadUrl"

    if-eq p2, v1, :cond_2

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    goto :goto_1

    .line 98
    :cond_1
    :try_start_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0oo:Ljava/lang/String;

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 99
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0oo:Ljava/lang/String;

    .line 100
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0O0(Ljava/lang/String;)V

    goto :goto_1

    .line 101
    :cond_2
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0oo:Ljava/lang/String;

    .line 102
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0O0(Ljava/lang/String;)V

    :cond_3
    :goto_1
    if-eqz p1, :cond_4

    .line 103
    const-string p2, "maxContentLength"

    invoke-virtual {p1, p2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_4

    .line 104
    :try_start_2
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "it.toString()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO:J

    .line 105
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0OO:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxContentLength:->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    .line 106
    :try_start_3
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0OO:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 107
    :goto_2
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0OO:Ljava/lang/String;

    const-string v0, "parseJson"

    invoke-static {p2, v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    return-void
.end method

.method public final OooO00o(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v0, ", webResourceRequestUrl: "

    const-string v1, "webviewUrl"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "webResourceRequestUrl"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    :try_start_0
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0OO:Ljava/lang/String;

    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "redirect => webviewUrl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 30
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 32
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 34
    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 35
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0OO:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "webviewURLCombine:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0OO:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "webResourceRequestURLCombine:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 38
    :cond_0
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 39
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0OO:Ljava/lang/String;

    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "redirect  \u5f00\u59cb\u52a0\u8f7d => webviewUrl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 41
    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 42
    invoke-virtual {p0, p2, p1}, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO00o(Ljava/lang/String;Z)V

    .line 43
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0o0()V

    goto :goto_0

    .line 44
    :cond_1
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0OO:Ljava/lang/String;

    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "redirect  \u8fdb\u5165backForward\u6808 => webviewUrl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 46
    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooOO0:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o$OooO00o;

    const/4 p2, 0x1

    .line 48
    iput-boolean p2, p1, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o$OooO00o;->OooO0o:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :catchall_0
    :cond_2
    :goto_0
    return-void
.end method

.method public final OooO00o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v0, "baseUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mimeType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "encoding"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    new-instance v0, Lcom/cloud/tmc/miniapp/nativewebview/c;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/cloud/tmc/miniapp/nativewebview/c;-><init>(Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->runOnMain(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final OooO00o(Ljava/lang/String;Z)V
    .locals 3

    const-string v0, "loadingUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0OO:Ljava/lang/String;

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLoadingUrl => loadingUrl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , isFirstLoadHomePage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0oO:Ljava/lang/String;

    .line 5
    iput-boolean p2, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooOO0O:Z

    return-void
.end method

.method public final OooO00o()Z
    .locals 5

    .line 56
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooOOO:Ljava/lang/String;

    .line 57
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0o0:Lcom/cloud/tmc/miniapp/nativewebview/view/OooO00o;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0o0:Lcom/cloud/tmc/miniapp/nativewebview/view/OooO00o;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "canGoBack => originalUrl:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , url:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 58
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0o0:Lcom/cloud/tmc/miniapp/nativewebview/view/OooO00o;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 60
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooOOOo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 61
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooOOO:Ljava/lang/String;

    const-string v1, "canGoBack => \u91cd\u5b9a\u5411\u56de\u9000"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0o0:Lcom/cloud/tmc/miniapp/nativewebview/view/OooO00o;

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO00o(Landroid/webkit/WebView;)Z

    move-result v1

    goto :goto_1

    .line 63
    :cond_2
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooOOO:Ljava/lang/String;

    const-string v2, "canGoBack => \u6b63\u5e38\u56de\u9000"

    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0o0:Lcom/cloud/tmc/miniapp/nativewebview/view/OooO00o;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/nativewebview/view/OooO00o;->goBack()V

    .line 65
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0OO()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    return v1

    .line 66
    :catchall_0
    :cond_3
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooOOO:Ljava/lang/String;

    const-string v1, "canGoBack => \u76f4\u63a5\u9000\u51fa"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public final OooO00o(Landroid/webkit/WebView;)Z
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 67
    iget-object v2, v1, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooOOO:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual/range {p1 .. p1}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "redirectCanGoBack => originalUrl:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " , url:"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 69
    invoke-static {v2, v5}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    .line 70
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_9

    .line 71
    iget-object v5, v1, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooOOOO:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_2

    return v2

    .line 72
    :cond_2
    iget-object v7, v1, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooOOO:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "exitPage:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual/range {p1 .. p1}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v7

    const-string v8, "webView.copyBackForwardList()"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    iget-object v8, v1, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooOOO:Ljava/lang/String;

    invoke-virtual {v7}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "WebBackForwardList.size:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {v7}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v8

    sub-int/2addr v8, v6

    const/4 v9, -0x1

    move v10, v9

    move v11, v10

    :goto_2
    if-ge v9, v8, :cond_5

    .line 76
    iget-object v12, v1, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooOOO:Ljava/lang/String;

    .line 77
    invoke-virtual {v7, v8}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object v13

    .line 78
    invoke-virtual {v13}, Landroid/webkit/WebHistoryItem;->getOriginalUrl()Ljava/lang/String;

    move-result-object v13

    .line 79
    invoke-virtual {v7, v8}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object v14

    invoke-virtual {v14}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WebBackForwardList("

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") => originalUrl:"

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 80
    invoke-static {v12, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual {v7, v8}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object v3

    .line 82
    invoke-virtual {v3}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v3

    .line 83
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-ne v11, v9, :cond_3

    move v11, v8

    :cond_3
    move v10, v8

    :cond_4
    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_4

    .line 84
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0O0()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_6

    return v2

    .line 85
    :cond_6
    iget-object v4, v1, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooOOO:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "prePage:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v4, v10, -0x1

    move v5, v6

    const/16 v16, 0x0

    :goto_3
    if-ge v9, v4, :cond_8

    .line 86
    invoke-virtual {v7, v4}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object v8

    .line 87
    invoke-virtual {v8}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v11

    .line 88
    invoke-static {v3, v11}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    move v5, v4

    move-object/from16 v16, v8

    :cond_7
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    :cond_8
    if-eqz v16, :cond_9

    sub-int/2addr v5, v10

    .line 89
    invoke-virtual {v0, v5}, Landroid/webkit/WebView;->goBackOrForward(I)V

    .line 90
    invoke-virtual/range {p0 .. p0}, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0OO()V

    .line 91
    iget-object v0, v1, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooOOO:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "goBackOrForward("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v6

    .line 92
    :goto_4
    iget-object v3, v1, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooOOO:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "redirectCanGoBack fail:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_9
    iget-object v0, v1, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooOOO:Ljava/lang/String;

    const-string v3, "redirectCanGoBack -> \u76f4\u63a5\u9000\u51fa"

    invoke-static {v0, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public final OooO00o(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    .line 19
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 20
    sget-object v1, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    .line 21
    const-string v2, "nativeWebviewDownloadConfig"

    .line 22
    const-string v3, "[\".pdf\",\".jpg\",\".png\",\".mp3\",\".mp4\",\".apk\",\".txt\",\".zip\"]"

    .line 23
    invoke-virtual {v1, v2, v3}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 24
    const-class v2, Ljava/util/List;

    invoke-static {v1, v2}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/util/List;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast v1, Ljava/util/List;

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    if-nez v1, :cond_1

    .line 25
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 26
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 27
    const-string v4, "path"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x2

    invoke-static {p1, v2, v0, v4, v3}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    const/4 p1, 0x1

    return p1

    :catchall_0
    :cond_3
    return v0
.end method

.method public final OooO0O0()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooOOOO:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_0

    return-object v0

    .line 5
    :cond_0
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooOOOo:Ljava/util/List;

    invoke-static {v2, v1}, Lkotlin/collections/CollectionsKt;->b0(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooOOOO:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 7
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0O0()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-object v1

    :catchall_0
    return-object v0
.end method

.method public final OooO0O0(Landroid/webkit/WebView;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooOOO:Ljava/lang/String;

    const-string v1, "redirectShouldOverrideUrlLoading ==================>"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooOOO:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "webview.url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooOOO:Ljava/lang/String;

    const-string v0, "redirectShouldOverrideUrlLoading <=================="

    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final OooO0O0(Ljava/lang/String;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance v0, Lcom/cloud/tmc/miniapp/nativewebview/b;

    invoke-direct {v0, p0, p1}, Lcom/cloud/tmc/miniapp/nativewebview/b;-><init>(Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->runOnMain(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final OooO0OO()V
    .locals 6

    const-string v0, ", showPage: "

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooOO0:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 2
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooOO0:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o$OooO00o;

    .line 3
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooOO0:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o$OooO00o;

    .line 4
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0OO:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "goBack => exitPage: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v3, v2, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o$OooO00o;->OooO00o:Ljava/lang/String;

    const/4 v4, 0x0

    .line 6
    invoke-virtual {p0, v3, v4}, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO00o(Ljava/lang/String;Z)V

    .line 7
    iget-boolean v3, v1, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o$OooO00o;->OooO0o:Z

    if-nez v3, :cond_1

    .line 8
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0OO:Ljava/lang/String;

    .line 9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "goBack \u9875\u9762\u672a\u5165\u6808\uff0c\u7ee7\u7eed\u9000\u51fa => exitPage: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-static {v3, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0OO()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0OO:Ljava/lang/String;

    const-string v1, "goBack fail: backForwardStack.size <= 1"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 13
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "goback fail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public final OooO0Oo()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooOOo:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    iget-wide v2, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooOOoo:J

    .line 10
    .line 11
    sub-long/2addr v0, v2

    .line 12
    const-wide/16 v2, 0xc8

    .line 13
    .line 14
    cmp-long v0, v0, v2

    .line 15
    .line 16
    if-gtz v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 22
    :goto_1
    return v0
.end method

.method public final OooO0o()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils;->create()Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "type"

    .line 6
    .line 7
    const-string v2, "onDestory"

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0o0:Lcom/cloud/tmc/miniapp/nativewebview/view/OooO00o;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v3, "pageUrl"

    .line 20
    .line 21
    invoke-virtual {v0, v3, v1}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "create().addProperty(KEY\u2026URL, webView.url).build()"

    .line 30
    .line 31
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0o:Lcom/cloud/tmc/miniapp/nativewebview/listener/OooO00o;

    .line 35
    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    invoke-interface {v1, v2, v0}, Lcom/cloud/tmc/miniapp/nativewebview/listener/OooO00o;->OooO00o(Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0o:Lcom/cloud/tmc/miniapp/nativewebview/listener/OooO00o;

    .line 43
    .line 44
    :try_start_0
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0o0:Lcom/cloud/tmc/miniapp/nativewebview/view/OooO00o;

    .line 45
    .line 46
    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 47
    .line 48
    .line 49
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooOO0o:Lcom/cloud/tmc/render/system/DefaultDownloadListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception v0

    .line 53
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0OO:Ljava/lang/String;

    .line 54
    .line 55
    const-string v2, "unRegisterDownloadListener"

    .line 56
    .line 57
    invoke-static {v1, v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    .line 59
    .line 60
    :goto_0
    return-void
.end method

.method public final OooO0o0()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0OO:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0oO:Ljava/lang/String;

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v3, "loadingUrlStart => loadingUrl: "

    .line 11
    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooOO0:Ljava/util/Stack;

    .line 26
    .line 27
    new-instance v14, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o$OooO00o;

    .line 28
    .line 29
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0oO:Ljava/lang/String;

    .line 30
    .line 31
    iget-boolean v5, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooOO0O:Z

    .line 32
    .line 33
    const/4 v12, 0x0

    .line 34
    const/16 v13, 0x3c0

    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    const/4 v4, 0x0

    .line 38
    const/4 v6, 0x0

    .line 39
    const/4 v7, 0x0

    .line 40
    const/4 v8, 0x0

    .line 41
    const/4 v9, 0x0

    .line 42
    const-wide/16 v10, 0x0

    .line 43
    .line 44
    move-object v1, v14

    .line 45
    invoke-direct/range {v1 .. v13}, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o$OooO00o;-><init>(Ljava/lang/String;ZZZZZLjava/lang/String;Ljava/util/concurrent/ConcurrentHashMap;JZI)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v14}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public final OooO0oO()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils;->create()Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "type"

    .line 6
    .line 7
    const-string v2, "onPause"

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0o0:Lcom/cloud/tmc/miniapp/nativewebview/view/OooO00o;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v3, "pageUrl"

    .line 20
    .line 21
    invoke-virtual {v0, v3, v1}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "create().addProperty(KEY\u2026URL, webView.url).build()"

    .line 30
    .line 31
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0o:Lcom/cloud/tmc/miniapp/nativewebview/listener/OooO00o;

    .line 35
    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    invoke-interface {v1, v2, v0}, Lcom/cloud/tmc/miniapp/nativewebview/listener/OooO00o;->OooO00o(Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    return-void
.end method

.method public final OooO0oo()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils;->create()Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "type"

    .line 6
    .line 7
    const-string v2, "onRemove"

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0o0:Lcom/cloud/tmc/miniapp/nativewebview/view/OooO00o;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v3, "pageUrl"

    .line 20
    .line 21
    invoke-virtual {v0, v3, v1}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "create().addProperty(KEY\u2026URL, webView.url).build()"

    .line 30
    .line 31
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0o:Lcom/cloud/tmc/miniapp/nativewebview/listener/OooO00o;

    .line 35
    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    invoke-interface {v1, v2, v0}, Lcom/cloud/tmc/miniapp/nativewebview/listener/OooO00o;->OooO00o(Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0o:Lcom/cloud/tmc/miniapp/nativewebview/listener/OooO00o;

    .line 43
    .line 44
    return-void
.end method

.method public final OooOO0()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils;->create()Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "type"

    .line 6
    .line 7
    const-string v2, "onStop"

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0o0:Lcom/cloud/tmc/miniapp/nativewebview/view/OooO00o;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v3, "pageUrl"

    .line 20
    .line 21
    invoke-virtual {v0, v3, v1}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "create().addProperty(KEY\u2026URL, webView.url).build()"

    .line 30
    .line 31
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0o:Lcom/cloud/tmc/miniapp/nativewebview/listener/OooO00o;

    .line 35
    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    invoke-interface {v1, v2, v0}, Lcom/cloud/tmc/miniapp/nativewebview/listener/OooO00o;->OooO00o(Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    return-void
.end method

.method public final OooOO0O()V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/tmc/miniapp/nativewebview/e;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/nativewebview/e;-><init>(Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->runOnMain(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final OooOO0o()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils;->create()Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "type"

    .line 6
    .line 7
    const-string v2, "syncPageStack"

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0o0:Lcom/cloud/tmc/miniapp/nativewebview/view/OooO00o;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoBack()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v3, "canGoBack"

    .line 24
    .line 25
    invoke-virtual {v0, v3, v1}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0o0:Lcom/cloud/tmc/miniapp/nativewebview/view/OooO00o;

    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoForward()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const-string v3, "canGoForward"

    .line 40
    .line 41
    invoke-virtual {v0, v3, v1}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const-string v1, "create()\n            .ad\u2026d())\n            .build()"

    .line 50
    .line 51
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0o:Lcom/cloud/tmc/miniapp/nativewebview/listener/OooO00o;

    .line 55
    .line 56
    if-eqz v1, :cond_0

    .line 57
    .line 58
    invoke-interface {v1, v2, v0}, Lcom/cloud/tmc/miniapp/nativewebview/listener/OooO00o;->OooO00o(Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    .line 59
    .line 60
    .line 61
    :cond_0
    return-void
.end method

.method public final getActivity()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0O0:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPageUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0o0:Lcom/cloud/tmc/miniapp/nativewebview/view/OooO00o;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, ""

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public final getViewId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO00o:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public onConsoleMessage(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onKeyBoardChanged(II)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooOOO0:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/BarUtils;->getNavBarHeight()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v1

    .line 12
    :goto_0
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0OO:Ljava/lang/String;

    .line 13
    .line 14
    iget-boolean v3, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooOOO0:Z

    .line 15
    .line 16
    new-instance v4, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v5, "isNavBarVisible -> "

    .line 22
    .line 23
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-static {v2, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :try_start_0
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0OO:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    new-instance v4, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v5, "onKeyBoardChanged height -> "

    .line 48
    .line 49
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-static {v2, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget v2, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooOOo0:I

    .line 63
    .line 64
    if-nez v2, :cond_1

    .line 65
    .line 66
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    iput v2, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooOOo0:I

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :catchall_0
    move-exception p1

    .line 74
    goto/16 :goto_3

    .line 75
    .line 76
    :cond_1
    :goto_1
    sub-int v0, p1, v0

    .line 77
    .line 78
    const/16 v2, 0x64

    .line 79
    .line 80
    const-wide/16 v3, 0x96

    .line 81
    .line 82
    if-ge v0, v2, :cond_2

    .line 83
    .line 84
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0OO:Ljava/lang/String;

    .line 85
    .line 86
    new-instance v5, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    const-string v6, "hide keyboard ->"

    .line 92
    .line 93
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    invoke-static {v2, v5}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    iput-boolean v1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooOOo:Z

    .line 107
    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 109
    .line 110
    .line 111
    move-result-wide v1

    .line 112
    iput-wide v1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooOOoo:J

    .line 113
    .line 114
    new-instance v1, Lcom/cloud/tmc/miniapp/nativewebview/g;

    .line 115
    .line 116
    invoke-direct {v1, p0}, Lcom/cloud/tmc/miniapp/nativewebview/g;-><init>(Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0, v1, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 120
    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_2
    if-eqz v0, :cond_3

    .line 124
    .line 125
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0OO:Ljava/lang/String;

    .line 126
    .line 127
    const-string v2, "show keyboard"

    .line 128
    .line 129
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    const/4 v1, 0x1

    .line 133
    iput-boolean v1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooOOo:Z

    .line 134
    .line 135
    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 136
    .line 137
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 138
    .line 139
    .line 140
    move-result v2

    .line 141
    iget v3, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooOOo0:I

    .line 142
    .line 143
    sub-int/2addr v3, v0

    .line 144
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    .line 145
    .line 146
    .line 147
    move-result v4

    .line 148
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    .line 149
    .line 150
    .line 151
    move-result v5

    .line 152
    invoke-direct {v1, v2, v3, v4, v5}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    .line 157
    .line 158
    goto :goto_2

    .line 159
    :cond_3
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0OO:Ljava/lang/String;

    .line 160
    .line 161
    new-instance v5, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    .line 165
    .line 166
    const-string v6, "hide keyboard else  ->"

    .line 167
    .line 168
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v5

    .line 178
    invoke-static {v2, v5}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    iput-boolean v1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooOOo:Z

    .line 182
    .line 183
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 184
    .line 185
    .line 186
    move-result-wide v1

    .line 187
    iput-wide v1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooOOoo:J

    .line 188
    .line 189
    new-instance v1, Lcom/cloud/tmc/miniapp/nativewebview/h;

    .line 190
    .line 191
    invoke-direct {v1, p0}, Lcom/cloud/tmc/miniapp/nativewebview/h;-><init>(Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p0, v1, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 195
    .line 196
    .line 197
    :goto_2
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0OO:Ljava/lang/String;

    .line 198
    .line 199
    new-instance v2, Ljava/lang/StringBuilder;

    .line 200
    .line 201
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    .line 203
    .line 204
    const-string v3, "newKeyboardHeight->"

    .line 205
    .line 206
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    const-string v0, ", keyboardHeight->"

    .line 213
    .line 214
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    const-string p1, ",screenHeight->"

    .line 221
    .line 222
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    .line 234
    .line 235
    goto :goto_4

    .line 236
    :goto_3
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0OO:Ljava/lang/String;

    .line 237
    .line 238
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 239
    .line 240
    .line 241
    :goto_4
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils;->create()Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "type"

    .line 6
    .line 7
    const-string v2, "onPageFinished"

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "pageUrl"

    .line 14
    .line 15
    invoke-virtual {v0, v1, p2}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    const-string v0, "create().addProperty(KEY\u2026EW_PAGE_URL, url).build()"

    .line 24
    .line 25
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0o:Lcom/cloud/tmc/miniapp/nativewebview/listener/OooO00o;

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    invoke-interface {v0, v2, p2}, Lcom/cloud/tmc/miniapp/nativewebview/listener/OooO00o;->OooO00o(Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    if-eqz p1, :cond_1

    .line 36
    .line 37
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO00o:Ljava/lang/String;

    .line 38
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string v1, "javascript:function getFaviconUrl() {var favicon = \'\';var links = document.getElementsByTagName(\'link\');for (var i = 0; i < links.length; i++) {if (links[i].rel.indexOf(\'icon\') >= 0) {favicon = links[i].href;}}return favicon;}window.dltNativeWebview.receiveUrlIcon(getFaviconUrl(),\'"

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string p2, "\');"

    .line 53
    .line 54
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :cond_1
    if-eqz p1, :cond_2

    .line 65
    .line 66
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO00o:Ljava/lang/String;

    .line 67
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    const-string v1, "javascript:var scrolled = false;window.addEventListener(\'scroll\', function (e) {if (!scrolled) {window.dltNativeWebview.onScrollChanged(\'"

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string p2, "\');scrolled = true;}});var innerHeight = window.innerHeight;window.addEventListener(\'resize\', () => {var newInnerHeight = window.innerHeight;if (innerHeight <= newInnerHeight) {scrolled = false;}});"

    .line 82
    .line 83
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    :cond_2
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooOO0o()V

    .line 94
    .line 95
    .line 96
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO00o(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils;->create()Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const-string v0, "type"

    .line 9
    .line 10
    const-string v1, "onPageStarted"

    .line 11
    .line 12
    invoke-virtual {p1, v0, v1}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-string v0, "pageUrl"

    .line 17
    .line 18
    invoke-virtual {p1, v0, p2}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string p2, "create().addProperty(KEY\u2026EW_PAGE_URL, url).build()"

    .line 27
    .line 28
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0o:Lcom/cloud/tmc/miniapp/nativewebview/listener/OooO00o;

    .line 32
    .line 33
    if-eqz p2, :cond_0

    .line 34
    .line 35
    invoke-interface {p2, v1, p1}, Lcom/cloud/tmc/miniapp/nativewebview/listener/OooO00o;->OooO00o(Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils;->create()Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "type"

    .line 6
    .line 7
    const-string v1, "onProgressChanged"

    .line 8
    .line 9
    invoke-virtual {p1, v0, v1}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    const-string v0, "newProgress"

    .line 18
    .line 19
    invoke-virtual {p1, v0, p2}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/Number;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const-string p2, "create()\n               \u2026ESS, newProgress).build()"

    .line 28
    .line 29
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0o:Lcom/cloud/tmc/miniapp/nativewebview/listener/OooO00o;

    .line 33
    .line 34
    if-eqz p2, :cond_0

    .line 35
    .line 36
    invoke-interface {p2, v1, p1}, Lcom/cloud/tmc/miniapp/nativewebview/listener/OooO00o;->OooO00o(Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils;->create()Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "type"

    .line 6
    .line 7
    const-string v1, "onReceivedError"

    .line 8
    .line 9
    invoke-virtual {p1, v0, v1}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const/4 v0, 0x0

    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move-object v2, v0

    .line 26
    :goto_0
    const-string v3, "isForMainFrame"

    .line 27
    .line 28
    invoke-virtual {p1, v3, v2}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    if-eqz p2, :cond_1

    .line 33
    .line 34
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    move-object v2, v0

    .line 46
    :goto_1
    const-string v4, "pageUrl"

    .line 47
    .line 48
    invoke-virtual {p1, v4, v2}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    if-eqz p3, :cond_2

    .line 53
    .line 54
    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    goto :goto_2

    .line 63
    :cond_2
    move-object v2, v0

    .line 64
    :goto_2
    const-string v4, "errorCode"

    .line 65
    .line 66
    invoke-virtual {p1, v4, v2}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/Number;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    if-eqz p3, :cond_3

    .line 71
    .line 72
    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    .line 73
    .line 74
    .line 75
    move-result-object p3

    .line 76
    if-eqz p3, :cond_3

    .line 77
    .line 78
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p3

    .line 82
    goto :goto_3

    .line 83
    :cond_3
    move-object p3, v0

    .line 84
    :goto_3
    invoke-virtual {p1, v3, p3}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    const-string p3, "create().addProperty(KEY\u2026.description?.toString())"

    .line 89
    .line 90
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 94
    .line 95
    const/16 v2, 0x18

    .line 96
    .line 97
    if-lt p3, v2, :cond_5

    .line 98
    .line 99
    if-eqz p2, :cond_4

    .line 100
    .line 101
    invoke-static {p2}, Lcom/cloud/tmc/miniapp/base/l;->a(Landroid/webkit/WebResourceRequest;)Z

    .line 102
    .line 103
    .line 104
    move-result p2

    .line 105
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    :cond_4
    const-string p2, "isRedirect"

    .line 110
    .line 111
    invoke-virtual {p1, p2, v0}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 112
    .line 113
    .line 114
    :cond_5
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0o:Lcom/cloud/tmc/miniapp/nativewebview/listener/OooO00o;

    .line 115
    .line 116
    if-eqz p2, :cond_6

    .line 117
    .line 118
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    const-string p3, "builder.build()"

    .line 123
    .line 124
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-interface {p2, v1, p1}, Lcom/cloud/tmc/miniapp/nativewebview/listener/OooO00o;->OooO00o(Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    .line 128
    .line 129
    .line 130
    :cond_6
    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils;->create()Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "type"

    .line 6
    .line 7
    const-string v1, "onReceivedHttpError"

    .line 8
    .line 9
    invoke-virtual {p1, v0, v1}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const/4 v0, 0x0

    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move-object v2, v0

    .line 26
    :goto_0
    const-string v3, "isForMainFrame"

    .line 27
    .line 28
    invoke-virtual {p1, v3, v2}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    if-eqz p2, :cond_1

    .line 33
    .line 34
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    move-object v2, v0

    .line 46
    :goto_1
    const-string v3, "pageUrl"

    .line 47
    .line 48
    invoke-virtual {p1, v3, v2}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    if-eqz p3, :cond_2

    .line 53
    .line 54
    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    goto :goto_2

    .line 63
    :cond_2
    move-object v2, v0

    .line 64
    :goto_2
    const-string v3, "errorCode"

    .line 65
    .line 66
    invoke-virtual {p1, v3, v2}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/Number;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    if-eqz p3, :cond_3

    .line 71
    .line 72
    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getReasonPhrase()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p3

    .line 76
    if-eqz p3, :cond_3

    .line 77
    .line 78
    goto :goto_3

    .line 79
    :cond_3
    move-object p3, v0

    .line 80
    :goto_3
    const-string v2, "reasonPhrase"

    .line 81
    .line 82
    invoke-virtual {p1, v2, p3}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    const-string p3, "create()\n            .ad\u2026reasonPhrase?.toString())"

    .line 87
    .line 88
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 92
    .line 93
    const/16 v2, 0x18

    .line 94
    .line 95
    if-lt p3, v2, :cond_5

    .line 96
    .line 97
    if-eqz p2, :cond_4

    .line 98
    .line 99
    invoke-static {p2}, Lcom/cloud/tmc/miniapp/base/l;->a(Landroid/webkit/WebResourceRequest;)Z

    .line 100
    .line 101
    .line 102
    move-result p2

    .line 103
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    :cond_4
    const-string p2, "isRedirect"

    .line 108
    .line 109
    invoke-virtual {p1, p2, v0}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 110
    .line 111
    .line 112
    :cond_5
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0o:Lcom/cloud/tmc/miniapp/nativewebview/listener/OooO00o;

    .line 113
    .line 114
    if-eqz p2, :cond_6

    .line 115
    .line 116
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    const-string p3, "builder.build()"

    .line 121
    .line 122
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-interface {p2, v1, p1}, Lcom/cloud/tmc/miniapp/nativewebview/listener/OooO00o;->OooO00o(Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    .line 126
    .line 127
    .line 128
    :cond_6
    return-void
.end method

.method public onReceivedIcon(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onReceivedTitle(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils;->create()Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "type"

    .line 6
    .line 7
    const-string v2, "onReceivedTitle"

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "title"

    .line 14
    .line 15
    invoke-virtual {v0, v1, p1}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string v0, "create().addProperty(KEY\u2026IEW_TITLE, title).build()"

    .line 24
    .line 25
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0o:Lcom/cloud/tmc/miniapp/nativewebview/listener/OooO00o;

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    invoke-interface {v0, v2, p1}, Lcom/cloud/tmc/miniapp/nativewebview/listener/OooO00o;->OooO00o(Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method public synthetic onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/kernel/render/d;->a(Lcom/cloud/tmc/kernel/render/WebviewPageCallback;Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public onRequestFocus()V
    .locals 0

    .line 1
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Ljava/lang/Boolean;
    .locals 9

    .line 1
    const-string v0, "super.shouldOverrideUrlLoading(view, request)"

    .line 2
    .line 3
    const-string v1, "onReceivedSchemeUrl"

    .line 4
    .line 5
    const-string v2, "schemeUrl"

    .line 6
    .line 7
    :try_start_0
    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 8
    .line 9
    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 10
    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    goto/16 :goto_5

    .line 22
    .line 23
    :cond_0
    move-object v5, v4

    .line 24
    :goto_0
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    iput-object v5, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 29
    .line 30
    invoke-virtual {p0, v5}, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO00o(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    if-eqz v5, :cond_1

    .line 35
    .line 36
    iget-object v1, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v1, Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {v1}, Lcom/cloud/tmc/kernel/utils/UrlUtils;->getContentTypeFromUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    sget-object v2, Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;

    .line 45
    .line 46
    new-instance v4, Lcom/cloud/tmc/miniapp/nativewebview/d;

    .line 47
    .line 48
    invoke-direct {v4, v3, p0, v1}, Lcom/cloud/tmc/miniapp/nativewebview/d;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-static {v2, v4}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->execute(Lcom/cloud/tmc/kernel/executor/ExecutorType;Ljava/lang/Runnable;)V

    .line 52
    .line 53
    .line 54
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 55
    .line 56
    return-object p1

    .line 57
    :cond_1
    iget-object v5, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v5, Ljava/lang/String;

    .line 60
    .line 61
    const-string v6, "http://"

    .line 62
    .line 63
    const/4 v7, 0x2

    .line 64
    const/4 v8, 0x0

    .line 65
    invoke-static {v5, v6, v8, v7, v4}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    if-nez v5, :cond_4

    .line 70
    .line 71
    iget-object v5, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v5, Ljava/lang/String;

    .line 74
    .line 75
    const-string v6, "https://"

    .line 76
    .line 77
    invoke-static {v5, v6, v8, v7, v4}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    if-eqz v4, :cond_2

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_2
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0OO:Ljava/lang/String;

    .line 85
    .line 86
    const-string v5, "\u5916\u8df3\u4e8b\u4ef6\uff0c\u5f53\u524d\u5168\u90e8\u5c4f\u853d\u72b6\u6001,\u4ea4\u7531\u4e1a\u52a1\u65b9\u5904\u7406"

    .line 87
    .line 88
    invoke-static {v4, v5}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    iget-object v3, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast v3, Ljava/lang/String;

    .line 94
    .line 95
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-static {}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils;->create()Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    const-string v5, "type"

    .line 103
    .line 104
    invoke-virtual {v4, v5, v1}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    invoke-virtual {v4, v2, v3}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-virtual {v2}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    const-string v3, "create()\n            .ad\u2026Url)\n            .build()"

    .line 117
    .line 118
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0o:Lcom/cloud/tmc/miniapp/nativewebview/listener/OooO00o;

    .line 122
    .line 123
    if-eqz v3, :cond_3

    .line 124
    .line 125
    invoke-interface {v3, v1, v2}, Lcom/cloud/tmc/miniapp/nativewebview/listener/OooO00o;->OooO00o(Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    .line 126
    .line 127
    .line 128
    :cond_3
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 129
    .line 130
    return-object p1

    .line 131
    :cond_4
    :goto_1
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0O0(Landroid/webkit/WebView;)V

    .line 132
    .line 133
    .line 134
    if-eqz p1, :cond_8

    .line 135
    .line 136
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    if-nez v1, :cond_5

    .line 141
    .line 142
    goto :goto_4

    .line 143
    :cond_5
    if-eqz p2, :cond_7

    .line 144
    .line 145
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    if-eqz v2, :cond_7

    .line 150
    .line 151
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    if-nez v2, :cond_6

    .line 156
    .line 157
    goto :goto_3

    .line 158
    :cond_6
    invoke-virtual {p0, v1, v2}, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    .line 160
    .line 161
    :try_start_1
    const-class v1, Lcom/cloud/tmc/integration/proxy/IKeyboardProxy;

    .line 162
    .line 163
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    check-cast v1, Lcom/cloud/tmc/integration/proxy/IKeyboardProxy;

    .line 168
    .line 169
    invoke-interface {v1, p0}, Lcom/cloud/tmc/integration/proxy/IKeyboardProxy;->hideKeyboard(Landroid/view/View;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 170
    .line 171
    .line 172
    goto :goto_2

    .line 173
    :catchall_1
    move-exception v1

    .line 174
    :try_start_2
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0OO:Ljava/lang/String;

    .line 175
    .line 176
    invoke-static {v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 177
    .line 178
    .line 179
    :goto_2
    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/kernel/render/d;->b(Lcom/cloud/tmc/kernel/render/WebviewPageCallback;Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Ljava/lang/Boolean;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    return-object v1

    .line 187
    :cond_7
    :goto_3
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 188
    .line 189
    return-object p1

    .line 190
    :cond_8
    :goto_4
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 191
    .line 192
    return-object p1

    .line 193
    :goto_5
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0OO:Ljava/lang/String;

    .line 194
    .line 195
    const-string v3, "shouldOverrideUrlLoading"

    .line 196
    .line 197
    invoke-static {v2, v3, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 198
    .line 199
    .line 200
    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/kernel/render/d;->b(Lcom/cloud/tmc/kernel/render/WebviewPageCallback;Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Ljava/lang/Boolean;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    return-object p1
.end method
