.class public final Lcom/cloud/tmc/render/SystemRender;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/render/IRender;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/render/SystemRender$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b0\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0011\u0018\u0000 \u0080\u00012\u00020\u0001:\u0002\u0080\u0001B9\u0008\u0007\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cJ\u0008\u0010\u001f\u001a\u00020@H\u0016J\u0008\u0010(\u001a\u00020 H\u0016J\n\u0010\r\u001a\u0004\u0018\u00010AH\u0016J\n\u0010B\u001a\u0004\u0018\u00010\u0012H\u0016J\u0008\u0010C\u001a\u00020\u0012H\u0016J\n\u0010D\u001a\u0004\u0018\u00010\u0005H\u0016J\n\u0010E\u001a\u0004\u0018\u00010\u0012H\u0016J\n\u0010F\u001a\u0004\u0018\u00010\u0007H\u0016J\n\u0010G\u001a\u0004\u0018\u00010:H\u0016J\u0008\u0010H\u001a\u00020\u0012H\u0016J\u0008\u0010I\u001a\u00020\u000bH\u0016J\n\u0010J\u001a\u0004\u0018\u00010KH\u0016J\u0008\u0010L\u001a\u00020\u0012H\u0016J\n\u0010M\u001a\u0004\u0018\u00010NH\u0016J\u0008\u0010O\u001a\u00020\u000bH\u0016J\u0012\u0010P\u001a\u00020@2\u0008\u0010Q\u001a\u0004\u0018\u00010RH\u0016J\u0010\u0010S\u001a\u00020@2\u0006\u0010;\u001a\u00020\u0012H\u0016J\r\u0010)\u001a\u00020 H\u0016\u00a2\u0006\u0002\u0010TJ\u0008\u0010U\u001a\u00020 H\u0016J\u0008\u0010V\u001a\u00020 H\u0016J\u0012\u0010W\u001a\u00020@2\u0008\u0010*\u001a\u0004\u0018\u00010+H\u0016J8\u0010X\u001a\u00020@2\u0008\u0010*\u001a\u0004\u0018\u00010+2\u0006\u0010Y\u001a\u00020\u00122\u0008\u0010Z\u001a\u0004\u0018\u00010\u00122\u0008\u0010[\u001a\u0004\u0018\u00010\u00122\u0008\u0010\\\u001a\u0004\u0018\u00010\u0012H\u0016J\u0008\u0010]\u001a\u00020@H\u0016J\u0008\u0010^\u001a\u00020@H\u0016J\u0008\u0010_\u001a\u00020@H\u0002J\u0012\u0010`\u001a\u00020@2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J\u0012\u0010a\u001a\u00020@2\u0008\u00104\u001a\u0004\u0018\u000105H\u0016J\u0012\u0010b\u001a\u00020@2\u0008\u00106\u001a\u0004\u0018\u000107H\u0016J\u0008\u0010c\u001a\u00020@H\u0016J\u0012\u0010d\u001a\u00020@2\u0008\u0010Q\u001a\u0004\u0018\u00010eH\u0016J\u0012\u0010\u000f\u001a\u00020@2\u0008\u0010\u0002\u001a\u0004\u0018\u00010AH\u0016J\u0010\u0010f\u001a\u00020@2\u0006\u0010g\u001a\u00020\u0012H\u0016J\u0010\u0010h\u001a\u00020@2\u0006\u0010)\u001a\u00020 H\u0016J\u0012\u0010i\u001a\u00020@2\u0008\u0010j\u001a\u0004\u0018\u00010\u0012H\u0016J\u0012\u0010k\u001a\u00020@2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0016J\u0010\u0010l\u001a\u00020@2\u0006\u0010m\u001a\u00020\u000bH\u0016J\u0012\u0010n\u001a\u00020@2\u0008\u0010o\u001a\u0004\u0018\u00010pH\u0016J\u0010\u0010q\u001a\u00020@2\u0006\u0010r\u001a\u00020 H\u0016J\u0010\u0010s\u001a\u00020@2\u0006\u0010t\u001a\u00020\u000bH\u0016J\u0012\u0010u\u001a\u00020@2\u0008\u0010v\u001a\u0004\u0018\u00010\u0012H\u0016J\u0012\u0010w\u001a\u00020@2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0016J\u0012\u0010x\u001a\u00020@2\u0008\u0010y\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010z\u001a\u00020@2\u0008\u0010%\u001a\u0004\u0018\u00010&H\u0016J\u0012\u0010{\u001a\u00020@2\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J\u0010\u0010|\u001a\u00020@2\u0006\u0010;\u001a\u00020\u0012H\u0016J\u0008\u0010}\u001a\u00020@H\u0016J\u0012\u0010~\u001a\u00020@2\u0008\u0010\u007f\u001a\u0004\u0018\u00010NH\u0016J\u0008\u0010=\u001a\u00020 H\u0016R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u001c\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u001eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020 X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$R\u0010\u0010%\u001a\u0004\u0018\u00010&X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\'\u001a\u0004\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020 X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010)\u001a\u00020 X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010*\u001a\u0004\u0018\u00010+X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010,\u001a\u0004\u0018\u00010-X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010.\u001a\u0004\u0018\u00010/X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00080\u00101\"\u0004\u00082\u00103R\u0010\u00104\u001a\u0004\u0018\u000105X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u00106\u001a\u0004\u0018\u000107X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00108\u001a\u00020 X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u00109\u001a\u0004\u0018\u00010:X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010;\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010<\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010=\u001a\u00020 X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010>\u001a\u0004\u0018\u00010?X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0081\u0001"
    }
    d2 = {
        "Lcom/cloud/tmc/render/SystemRender;",
        "Lcom/cloud/tmc/kernel/render/IRender;",
        "activity",
        "Landroid/content/Context;",
        "engineProxy",
        "Lcom/cloud/tmc/kernel/engine/IEngine;",
        "node",
        "Lcom/cloud/tmc/kernel/node/Node;",
        "createParams",
        "Lcom/cloud/tmc/kernel/model/CreateParams;",
        "appinfoCategoryType",
        "",
        "(Landroid/content/Context;Lcom/cloud/tmc/kernel/engine/IEngine;Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/kernel/model/CreateParams;I)V",
        "getActivity",
        "()Landroid/content/Context;",
        "setActivity",
        "(Landroid/content/Context;)V",
        "appId",
        "",
        "getAppinfoCategoryType",
        "()I",
        "setAppinfoCategoryType",
        "(I)V",
        "getCreateParams",
        "()Lcom/cloud/tmc/kernel/model/CreateParams;",
        "setCreateParams",
        "(Lcom/cloud/tmc/kernel/model/CreateParams;)V",
        "customViewVisiable",
        "Lcom/cloud/tmc/kernel/render/ICustomViewVisiable;",
        "customViewVisiableCallback",
        "Lcom/cloud/tmc/kernel/render/CustomViewVisiableCallback;",
        "destroy",
        "",
        "getEngineProxy",
        "()Lcom/cloud/tmc/kernel/engine/IEngine;",
        "setEngineProxy",
        "(Lcom/cloud/tmc/kernel/engine/IEngine;)V",
        "engineRouter",
        "Lcom/cloud/tmc/kernel/engine/EngineRouter;",
        "frameworkVersion",
        "fromWarmup",
        "isDarkTheme",
        "loadParams",
        "Lcom/cloud/tmc/kernel/render/LoadParams;",
        "mPageCallback",
        "Lcom/cloud/tmc/kernel/render/WebviewPageCallback;",
        "mPageEventCallback",
        "Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;",
        "getNode",
        "()Lcom/cloud/tmc/kernel/node/Node;",
        "setNode",
        "(Lcom/cloud/tmc/kernel/node/Node;)V",
        "pageCallback",
        "Lcom/cloud/tmc/kernel/render/IPageCallback;",
        "pageEventCallback",
        "Lcom/cloud/tmc/kernel/render/IPageEventCallback;",
        "pendingCreateRenderFail",
        "renderBridge",
        "Lcom/cloud/tmc/kernel/bridge/RenderBridge;",
        "renderId",
        "warmupChannel",
        "warmupSuccess",
        "webView",
        "Lcom/cloud/tmc/kernel/render/IWebView;",
        "",
        "Landroid/app/Activity;",
        "getAppId",
        "getCurrentUri",
        "getEngine",
        "getFrameworkVersion",
        "getPage",
        "getRenderBridge",
        "getRenderId",
        "getScrollY",
        "getStartParams",
        "Landroid/os/Bundle;",
        "getUserAgent",
        "getView",
        "Landroid/view/View;",
        "getWarmupChannel",
        "goBack",
        "callback",
        "Lcom/cloud/tmc/kernel/render/GoBackCallback;",
        "init",
        "()Ljava/lang/Boolean;",
        "isDestroyed",
        "isResume",
        "load",
        "loadDataWithBaseURL",
        "data",
        "mimeType",
        "encoding",
        "historyUrl",
        "onPause",
        "onResume",
        "postCreateRenderFailEvent",
        "registerICustomViewVisiable",
        "registerPageCallback",
        "registerPageEventCallback",
        "reload",
        "runExit",
        "Lcom/cloud/tmc/kernel/render/ExitCallback;",
        "setBgColor",
        "color",
        "setDarkTheme",
        "setFrameworkVersion",
        "version",
        "setMiniAppId",
        "setMiniAppType",
        "type",
        "setScrollChangedCallback",
        "scrollChangedCallback",
        "Lcom/cloud/tmc/kernel/render/ScrollChangedCallback;",
        "setSupportFullScreen",
        "fullScreen",
        "setWarmup",
        "channel",
        "setWarmupAppId",
        "frameAppId",
        "setWarmupCreateParams",
        "setWarmupEngine",
        "engine",
        "setWarmupEngineRouter",
        "setWarmupNode",
        "setWarmupRenderId",
        "setWarupSuccess",
        "showErrorView",
        "view",
        "Companion",
        "com.cloud.tmc.render"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/cloud/tmc/render/SystemRender$Companion;

.field private static final sPageIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private activity:Landroid/content/Context;

.field private appId:Ljava/lang/String;

.field private appinfoCategoryType:I

.field private createParams:Lcom/cloud/tmc/kernel/model/CreateParams;

.field private customViewVisiable:Lcom/cloud/tmc/kernel/render/ICustomViewVisiable;

.field private customViewVisiableCallback:Lcom/cloud/tmc/kernel/render/CustomViewVisiableCallback;

.field private destroy:Z

.field private engineProxy:Lcom/cloud/tmc/kernel/engine/IEngine;

.field private engineRouter:Lcom/cloud/tmc/kernel/engine/EngineRouter;

.field private frameworkVersion:Ljava/lang/String;

.field private fromWarmup:Z

.field private isDarkTheme:Z

.field private loadParams:Lcom/cloud/tmc/kernel/render/LoadParams;

.field private mPageCallback:Lcom/cloud/tmc/kernel/render/WebviewPageCallback;

.field private mPageEventCallback:Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;

.field private node:Lcom/cloud/tmc/kernel/node/Node;

.field private pageCallback:Lcom/cloud/tmc/kernel/render/IPageCallback;

.field private pageEventCallback:Lcom/cloud/tmc/kernel/render/IPageEventCallback;

.field private pendingCreateRenderFail:Z

.field private renderBridge:Lcom/cloud/tmc/kernel/bridge/RenderBridge;

.field private renderId:Ljava/lang/String;

.field private warmupChannel:I

.field private warmupSuccess:Z

.field private webView:Lcom/cloud/tmc/kernel/render/IWebView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/cloud/tmc/render/SystemRender$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/cloud/tmc/render/SystemRender$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/cloud/tmc/render/SystemRender;->Companion:Lcom/cloud/tmc/render/SystemRender$Companion;

    .line 8
    .line 9
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lcom/cloud/tmc/render/SystemRender;->sPageIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/cloud/tmc/kernel/engine/IEngine;Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/kernel/model/CreateParams;)V
    .locals 8
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const/16 v6, 0x10

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/cloud/tmc/render/SystemRender;-><init>(Landroid/content/Context;Lcom/cloud/tmc/kernel/engine/IEngine;Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/kernel/model/CreateParams;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/cloud/tmc/kernel/engine/IEngine;Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/kernel/model/CreateParams;I)V
    .locals 0
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/cloud/tmc/render/SystemRender;->activity:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/cloud/tmc/render/SystemRender;->engineProxy:Lcom/cloud/tmc/kernel/engine/IEngine;

    .line 5
    iput-object p3, p0, Lcom/cloud/tmc/render/SystemRender;->node:Lcom/cloud/tmc/kernel/node/Node;

    .line 6
    iput-object p4, p0, Lcom/cloud/tmc/render/SystemRender;->createParams:Lcom/cloud/tmc/kernel/model/CreateParams;

    .line 7
    iput p5, p0, Lcom/cloud/tmc/render/SystemRender;->appinfoCategoryType:I

    .line 8
    const-string p1, ""

    iput-object p1, p0, Lcom/cloud/tmc/render/SystemRender;->renderId:Ljava/lang/String;

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    .line 9
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/engine/IEngine;->getAppId()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    iput-object p2, p0, Lcom/cloud/tmc/render/SystemRender;->appId:Ljava/lang/String;

    .line 10
    iget-object p2, p0, Lcom/cloud/tmc/render/SystemRender;->engineProxy:Lcom/cloud/tmc/kernel/engine/IEngine;

    if-eqz p2, :cond_1

    invoke-interface {p2}, Lcom/cloud/tmc/kernel/engine/IEngine;->getEngineRouter()Lcom/cloud/tmc/kernel/engine/EngineRouter;

    move-result-object p1

    :cond_1
    iput-object p1, p0, Lcom/cloud/tmc/render/SystemRender;->engineRouter:Lcom/cloud/tmc/kernel/engine/EngineRouter;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/cloud/tmc/kernel/engine/IEngine;Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/kernel/model/CreateParams;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    .line 11
    sget-object p5, Lcom/cloud/tmc/kernel/constants/MiniAppType;->NORMAL:Lcom/cloud/tmc/kernel/constants/MiniAppType;

    invoke-virtual {p5}, Ljava/lang/Enum;->ordinal()I

    move-result p5

    :cond_0
    move v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 12
    invoke-direct/range {v0 .. v5}, Lcom/cloud/tmc/render/SystemRender;-><init>(Landroid/content/Context;Lcom/cloud/tmc/kernel/engine/IEngine;Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/kernel/model/CreateParams;I)V

    return-void
.end method

.method public static final synthetic access$getSPageIdCounter$cp()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/render/SystemRender;->sPageIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    return-object v0
.end method

.method private final postCreateRenderFailEvent()V
    .locals 3

    .line 1
    const-class v0, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/cloud/tmc/render/SystemRender;->renderId:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;->createEvent(Ljava/lang/String;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget-object v2, p0, Lcom/cloud/tmc/render/SystemRender;->node:Lcom/cloud/tmc/kernel/node/Node;

    .line 20
    .line 21
    invoke-interface {v0, v2}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;->getEventCenterInstance(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    const-string v2, "create_miniapp_worker_fail"

    .line 28
    .line 29
    invoke-interface {v0, v2, v1}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->postEvent(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/cloud/tmc/render/SystemRender;->destroy:Z

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->activity:Landroid/content/Context;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->engineRouter:Lcom/cloud/tmc/kernel/engine/EngineRouter;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->mPageEventCallback:Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->mPageCallback:Lcom/cloud/tmc/kernel/render/WebviewPageCallback;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->loadParams:Lcom/cloud/tmc/kernel/render/LoadParams;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->pageCallback:Lcom/cloud/tmc/kernel/render/IPageCallback;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->customViewVisiableCallback:Lcom/cloud/tmc/kernel/render/CustomViewVisiableCallback;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->customViewVisiable:Lcom/cloud/tmc/kernel/render/ICustomViewVisiable;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->pageEventCallback:Lcom/cloud/tmc/kernel/render/IPageEventCallback;

    .line 22
    .line 23
    const-class v1, Lcom/cloud/tmc/kernel/proxy/render/IWebViewFactory;

    .line 24
    .line 25
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/render/IWebViewFactory;

    .line 30
    .line 31
    invoke-interface {v1}, Lcom/cloud/tmc/kernel/proxy/render/IWebViewFactory;->clear()V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/cloud/tmc/render/SystemRender;->webView:Lcom/cloud/tmc/kernel/render/IWebView;

    .line 35
    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    invoke-interface {v1}, Lcom/cloud/tmc/kernel/render/IWebView;->destroy()V

    .line 39
    .line 40
    .line 41
    :cond_0
    iput-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->webView:Lcom/cloud/tmc/kernel/render/IWebView;

    .line 42
    .line 43
    return-void
.end method

.method public fromWarmup()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/render/SystemRender;->fromWarmup:Z

    .line 2
    .line 3
    return v0
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->activity:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getActivity()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->activity:Landroid/content/Context;

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->appId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAppinfoCategoryType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/render/SystemRender;->appinfoCategoryType:I

    .line 2
    .line 3
    return v0
.end method

.method public final getCreateParams()Lcom/cloud/tmc/kernel/model/CreateParams;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->createParams:Lcom/cloud/tmc/kernel/model/CreateParams;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCurrentUri()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->loadParams:Lcom/cloud/tmc/kernel/render/LoadParams;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/cloud/tmc/kernel/render/LoadParams;->pagePath:Ljava/lang/String;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    if-nez v0, :cond_1

    .line 10
    .line 11
    const-string v0, ""

    .line 12
    .line 13
    :cond_1
    return-object v0
.end method

.method public getEngine()Lcom/cloud/tmc/kernel/engine/IEngine;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->engineProxy:Lcom/cloud/tmc/kernel/engine/IEngine;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getEngineProxy()Lcom/cloud/tmc/kernel/engine/IEngine;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->engineProxy:Lcom/cloud/tmc/kernel/engine/IEngine;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFrameworkVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->frameworkVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getNode()Lcom/cloud/tmc/kernel/node/Node;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->node:Lcom/cloud/tmc/kernel/node/Node;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPage()Lcom/cloud/tmc/kernel/node/Node;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->node:Lcom/cloud/tmc/kernel/node/Node;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRenderBridge()Lcom/cloud/tmc/kernel/bridge/RenderBridge;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->renderBridge:Lcom/cloud/tmc/kernel/bridge/RenderBridge;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRenderId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->renderId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getScrollY()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->webView:Lcom/cloud/tmc/kernel/render/IWebView;

    .line 2
    .line 3
    instance-of v1, v0, Landroid/view/View;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Landroid/view/View;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    const/4 v0, 0x0

    .line 19
    :goto_1
    return v0
.end method

.method public getStartParams()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->createParams:Lcom/cloud/tmc/kernel/model/CreateParams;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/cloud/tmc/kernel/model/CreateParams;->startParams:Landroid/os/Bundle;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "userAgent"

    .line 2
    .line 3
    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->webView:Lcom/cloud/tmc/kernel/render/IWebView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const-string v1, "null cannot be cast to non-null type android.view.View"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    check-cast v0, Landroid/view/View;

    .line 13
    .line 14
    :goto_0
    return-object v0
.end method

.method public getWarmupChannel()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/render/SystemRender;->warmupChannel:I

    .line 2
    .line 3
    return v0
.end method

.method public goBack(Lcom/cloud/tmc/kernel/render/GoBackCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->webView:Lcom/cloud/tmc/kernel/render/IWebView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IWebView;->goBack()V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 9
    .line 10
    :cond_0
    if-eqz p1, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-interface {p1, v0}, Lcom/cloud/tmc/kernel/render/GoBackCallback;->afterProcess(Z)V

    .line 14
    .line 15
    .line 16
    :cond_1
    return-void
.end method

.method public init(Ljava/lang/String;)V
    .locals 11

    .line 1
    const-string v0, "renderId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->activity:Landroid/content/Context;

    .line 7
    .line 8
    const-class v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 9
    .line 10
    if-eqz v0, :cond_6

    .line 11
    .line 12
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/cloud/tmc/render/SystemRender;->appId:Ljava/lang/String;

    .line 19
    .line 20
    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;->INIT:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    invoke-interface {v0, v2, v3, v4}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lcom/cloud/tmc/render/SystemRender;->renderId:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/cloud/tmc/render/SystemRender;->getEngine()Lcom/cloud/tmc/kernel/engine/IEngine;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/engine/IEngine;->getWorkerId()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    move-object v0, v4

    .line 40
    :goto_0
    const-string v2, ""

    .line 41
    .line 42
    if-nez v0, :cond_1

    .line 43
    .line 44
    move-object v6, v2

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    move-object v6, v0

    .line 47
    :goto_1
    new-instance v0, Lcom/cloud/tmc/render/DefaultPageCallback;

    .line 48
    .line 49
    iget-object v3, p0, Lcom/cloud/tmc/render/SystemRender;->pageCallback:Lcom/cloud/tmc/kernel/render/IPageCallback;

    .line 50
    .line 51
    invoke-direct {v0, v3}, Lcom/cloud/tmc/render/DefaultPageCallback;-><init>(Lcom/cloud/tmc/kernel/render/IPageCallback;)V

    .line 52
    .line 53
    .line 54
    iput-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->mPageCallback:Lcom/cloud/tmc/kernel/render/WebviewPageCallback;

    .line 55
    .line 56
    new-instance v0, Lcom/cloud/tmc/render/DefaultPageEventCallback;

    .line 57
    .line 58
    iget-object v8, p0, Lcom/cloud/tmc/render/SystemRender;->pageEventCallback:Lcom/cloud/tmc/kernel/render/IPageEventCallback;

    .line 59
    .line 60
    new-instance v9, Lcom/cloud/tmc/worker/dispatch/DefaultBridgeDispatch;

    .line 61
    .line 62
    invoke-direct {v9}, Lcom/cloud/tmc/worker/dispatch/DefaultBridgeDispatch;-><init>()V

    .line 63
    .line 64
    .line 65
    iget-object v10, p0, Lcom/cloud/tmc/render/SystemRender;->engineRouter:Lcom/cloud/tmc/kernel/engine/EngineRouter;

    .line 66
    .line 67
    move-object v5, v0

    .line 68
    move-object v7, p1

    .line 69
    invoke-direct/range {v5 .. v10}, Lcom/cloud/tmc/render/DefaultPageEventCallback;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/render/IPageEventCallback;Lcom/cloud/tmc/worker/dispatch/IBridgeDispatch;Lcom/cloud/tmc/kernel/engine/EngineRouter;)V

    .line 70
    .line 71
    .line 72
    iput-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->mPageEventCallback:Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;

    .line 73
    .line 74
    new-instance v0, Lcom/cloud/tmc/render/DefaultCustomViewVisiableCallback;

    .line 75
    .line 76
    iget-object v3, p0, Lcom/cloud/tmc/render/SystemRender;->customViewVisiable:Lcom/cloud/tmc/kernel/render/ICustomViewVisiable;

    .line 77
    .line 78
    invoke-direct {v0, v3}, Lcom/cloud/tmc/render/DefaultCustomViewVisiableCallback;-><init>(Lcom/cloud/tmc/kernel/render/ICustomViewVisiable;)V

    .line 79
    .line 80
    .line 81
    iput-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->customViewVisiableCallback:Lcom/cloud/tmc/kernel/render/CustomViewVisiableCallback;

    .line 82
    .line 83
    const-class v0, Lcom/cloud/tmc/kernel/proxy/render/IWebViewFactory;

    .line 84
    .line 85
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/render/IWebViewFactory;

    .line 90
    .line 91
    iget-object v3, p0, Lcom/cloud/tmc/render/SystemRender;->activity:Landroid/content/Context;

    .line 92
    .line 93
    iget v5, p0, Lcom/cloud/tmc/render/SystemRender;->appinfoCategoryType:I

    .line 94
    .line 95
    invoke-interface {v0, v3, v5}, Lcom/cloud/tmc/kernel/proxy/render/IWebViewFactory;->createWebView(Landroid/content/Context;I)Lcom/cloud/tmc/kernel/render/IWebView;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    if-eqz v0, :cond_2

    .line 100
    .line 101
    iget-object v3, p0, Lcom/cloud/tmc/render/SystemRender;->mPageCallback:Lcom/cloud/tmc/kernel/render/WebviewPageCallback;

    .line 102
    .line 103
    invoke-interface {v0, v3}, Lcom/cloud/tmc/kernel/render/IWebView;->registerPageCallback(Lcom/cloud/tmc/kernel/render/WebviewPageCallback;)V

    .line 104
    .line 105
    .line 106
    iget-object v3, p0, Lcom/cloud/tmc/render/SystemRender;->mPageEventCallback:Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;

    .line 107
    .line 108
    invoke-interface {v0, v3}, Lcom/cloud/tmc/kernel/render/IWebView;->registerPageEventCallback(Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;)V

    .line 109
    .line 110
    .line 111
    iget-object v3, p0, Lcom/cloud/tmc/render/SystemRender;->customViewVisiableCallback:Lcom/cloud/tmc/kernel/render/CustomViewVisiableCallback;

    .line 112
    .line 113
    invoke-interface {v0, v3}, Lcom/cloud/tmc/kernel/render/IWebView;->registerCustomViewVisiableCallback(Lcom/cloud/tmc/kernel/render/CustomViewVisiableCallback;)V

    .line 114
    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_2
    move-object v0, v4

    .line 118
    :goto_2
    iput-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->webView:Lcom/cloud/tmc/kernel/render/IWebView;

    .line 119
    .line 120
    if-eqz v0, :cond_4

    .line 121
    .line 122
    instance-of v3, v0, Landroid/webkit/WebView;

    .line 123
    .line 124
    if-eqz v3, :cond_3

    .line 125
    .line 126
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    check-cast v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 131
    .line 132
    iget-object v5, p0, Lcom/cloud/tmc/render/SystemRender;->appId:Ljava/lang/String;

    .line 133
    .line 134
    sget-object v6, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;->CREATE_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;

    .line 135
    .line 136
    invoke-interface {v3, v5, v6, v4}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    iget-object v3, p0, Lcom/cloud/tmc/render/SystemRender;->appId:Ljava/lang/String;

    .line 140
    .line 141
    invoke-interface {v0, v3}, Lcom/cloud/tmc/kernel/render/IWebView;->setAppId(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    iget-object v3, p0, Lcom/cloud/tmc/render/SystemRender;->node:Lcom/cloud/tmc/kernel/node/Node;

    .line 145
    .line 146
    invoke-interface {v0, v3}, Lcom/cloud/tmc/kernel/render/IWebView;->setNode(Lcom/cloud/tmc/kernel/node/Node;)V

    .line 147
    .line 148
    .line 149
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IWebView;->create()V

    .line 150
    .line 151
    .line 152
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    check-cast v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 157
    .line 158
    iget-object v5, p0, Lcom/cloud/tmc/render/SystemRender;->appId:Ljava/lang/String;

    .line 159
    .line 160
    sget-object v6, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;->CREATE_END:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;

    .line 161
    .line 162
    invoke-interface {v3, v5, v6, v4}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IWebView;->getRenderBridge()Lcom/cloud/tmc/kernel/bridge/RenderBridge;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    iput-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->renderBridge:Lcom/cloud/tmc/kernel/bridge/RenderBridge;

    .line 170
    .line 171
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 176
    .line 177
    iget-object v1, p0, Lcom/cloud/tmc/render/SystemRender;->appId:Ljava/lang/String;

    .line 178
    .line 179
    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_RENDER_READY:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 180
    .line 181
    invoke-interface {v0, v1, v3, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    goto :goto_3

    .line 185
    :cond_3
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 190
    .line 191
    iget-object v2, p0, Lcom/cloud/tmc/render/SystemRender;->appId:Ljava/lang/String;

    .line 192
    .line 193
    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;->ERROR:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;

    .line 194
    .line 195
    new-instance v5, Ljava/lang/StringBuilder;

    .line 196
    .line 197
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    const-string v6, " is not extends WebView; plz initialize WebView first"

    .line 204
    .line 205
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v5

    .line 212
    invoke-interface {v1, v2, v3, v5}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    .line 216
    .line 217
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    const-string v1, "TmcRender"

    .line 231
    .line 232
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/utils/TraceLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->webView:Lcom/cloud/tmc/kernel/render/IWebView;

    .line 236
    .line 237
    if-nez v0, :cond_7

    .line 238
    .line 239
    const/4 v0, 0x0

    .line 240
    const/4 v1, 0x2

    .line 241
    const-string v2, "warmup_render_id_"

    .line 242
    .line 243
    invoke-static {p1, v2, v0, v1, v4}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    move-result p1

    .line 247
    const/4 v0, 0x1

    .line 248
    if-ne p1, v0, :cond_5

    .line 249
    .line 250
    iput-boolean v0, p0, Lcom/cloud/tmc/render/SystemRender;->pendingCreateRenderFail:Z

    .line 251
    .line 252
    goto :goto_4

    .line 253
    :cond_5
    invoke-direct {p0}, Lcom/cloud/tmc/render/SystemRender;->postCreateRenderFailEvent()V

    .line 254
    .line 255
    .line 256
    goto :goto_4

    .line 257
    :cond_6
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 262
    .line 263
    iget-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->appId:Ljava/lang/String;

    .line 264
    .line 265
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;->ERROR:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;

    .line 266
    .line 267
    const-string v2, "context\u4e0d\u80fd\u4e3a\u7a7a!"

    .line 268
    .line 269
    invoke-interface {p1, v0, v1, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    :cond_7
    :goto_4
    return-void
.end method

.method public isDarkTheme()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/render/SystemRender;->isDarkTheme:Z

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public isDestroyed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/render/SystemRender;->destroy:Z

    .line 2
    .line 3
    return v0
.end method

.method public isResume()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->webView:Lcom/cloud/tmc/kernel/render/IWebView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IWebView;->isResume()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x1

    .line 11
    :goto_0
    return v0
.end method

.method public load(Lcom/cloud/tmc/kernel/render/LoadParams;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/render/SystemRender;->loadParams:Lcom/cloud/tmc/kernel/render/LoadParams;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p1, Lcom/cloud/tmc/kernel/render/LoadParams;->url:Ljava/lang/String;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    if-nez p1, :cond_1

    .line 10
    .line 11
    const-class p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->appId:Ljava/lang/String;

    .line 20
    .line 21
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;->ERROR:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;

    .line 22
    .line 23
    const-string v2, "url is null,cant not load"

    .line 24
    .line 25
    invoke-interface {p1, v0, v1, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string p1, "TmcRender"

    .line 29
    .line 30
    invoke-static {p1, v2}, Lcom/cloud/tmc/kernel/utils/TraceLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    iget-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->webView:Lcom/cloud/tmc/kernel/render/IWebView;

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    invoke-interface {v0, p1}, Lcom/cloud/tmc/kernel/render/IWebView;->load(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :cond_2
    return-void
.end method

.method public loadDataWithBaseURL(Lcom/cloud/tmc/kernel/render/LoadParams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/cloud/tmc/render/SystemRender;->loadParams:Lcom/cloud/tmc/kernel/render/LoadParams;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/cloud/tmc/render/SystemRender;->webView:Lcom/cloud/tmc/kernel/render/IWebView;

    .line 9
    .line 10
    if-eqz v1, :cond_2

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p1, Lcom/cloud/tmc/kernel/render/LoadParams;->url:Ljava/lang/String;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    :goto_0
    if-nez p1, :cond_1

    .line 19
    .line 20
    const-string p1, ""

    .line 21
    .line 22
    :cond_1
    move-object v2, p1

    .line 23
    move-object v3, p2

    .line 24
    move-object v4, p3

    .line 25
    move-object v5, p4

    .line 26
    move-object v6, p5

    .line 27
    invoke-interface/range {v1 .. v6}, Lcom/cloud/tmc/kernel/render/IWebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_2
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->webView:Lcom/cloud/tmc/kernel/render/IWebView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IWebView;->onPause()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->webView:Lcom/cloud/tmc/kernel/render/IWebView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IWebView;->onResume()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public registerICustomViewVisiable(Lcom/cloud/tmc/kernel/render/ICustomViewVisiable;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/render/SystemRender;->customViewVisiable:Lcom/cloud/tmc/kernel/render/ICustomViewVisiable;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->customViewVisiableCallback:Lcom/cloud/tmc/kernel/render/CustomViewVisiableCallback;

    .line 4
    .line 5
    instance-of v1, v0, Lcom/cloud/tmc/render/IRegisterCustomViewVisiable;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Lcom/cloud/tmc/render/IRegisterCustomViewVisiable;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-interface {v0, p1}, Lcom/cloud/tmc/render/IRegisterCustomViewVisiable;->register(Lcom/cloud/tmc/kernel/render/ICustomViewVisiable;)V

    .line 16
    .line 17
    .line 18
    :cond_1
    return-void
.end method

.method public registerPageCallback(Lcom/cloud/tmc/kernel/render/IPageCallback;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/render/SystemRender;->pageCallback:Lcom/cloud/tmc/kernel/render/IPageCallback;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->mPageCallback:Lcom/cloud/tmc/kernel/render/WebviewPageCallback;

    .line 4
    .line 5
    instance-of v1, v0, Lcom/cloud/tmc/render/IRegisterPageCallback;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Lcom/cloud/tmc/render/IRegisterPageCallback;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-interface {v0, p1}, Lcom/cloud/tmc/render/IRegisterPageCallback;->registerPageCallback(Lcom/cloud/tmc/kernel/render/IPageCallback;)V

    .line 16
    .line 17
    .line 18
    :cond_1
    return-void
.end method

.method public registerPageEventCallback(Lcom/cloud/tmc/kernel/render/IPageEventCallback;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/render/SystemRender;->pageEventCallback:Lcom/cloud/tmc/kernel/render/IPageEventCallback;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->mPageEventCallback:Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;

    .line 4
    .line 5
    instance-of v1, v0, Lcom/cloud/tmc/render/IRegisterPageEventCallback;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    check-cast v0, Lcom/cloud/tmc/render/IRegisterPageEventCallback;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v0, v2

    .line 14
    :goto_0
    if-eqz v0, :cond_2

    .line 15
    .line 16
    iget-object v1, p0, Lcom/cloud/tmc/render/SystemRender;->webView:Lcom/cloud/tmc/kernel/render/IWebView;

    .line 17
    .line 18
    instance-of v3, v1, Landroid/webkit/WebView;

    .line 19
    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    move-object v2, v1

    .line 23
    check-cast v2, Landroid/webkit/WebView;

    .line 24
    .line 25
    :cond_1
    invoke-interface {v0, v2, p1}, Lcom/cloud/tmc/render/IRegisterPageEventCallback;->registerPageEventCallback(Landroid/webkit/WebView;Lcom/cloud/tmc/kernel/render/IPageEventCallback;)V

    .line 26
    .line 27
    .line 28
    :cond_2
    return-void
.end method

.method public reload()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->webView:Lcom/cloud/tmc/kernel/render/IWebView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IWebView;->reload()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public runExit(Lcom/cloud/tmc/kernel/render/ExitCallback;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/cloud/tmc/render/SystemRender;->destroy()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-interface {p1, v0}, Lcom/cloud/tmc/kernel/render/ExitCallback;->afterProcess(Z)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/cloud/tmc/render/SystemRender;->activity:Landroid/content/Context;

    return-void
.end method

.method public final setActivity(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/render/SystemRender;->activity:Landroid/content/Context;

    return-void
.end method

.method public final setAppinfoCategoryType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/tmc/render/SystemRender;->appinfoCategoryType:I

    .line 2
    .line 3
    return-void
.end method

.method public setBgColor(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "color"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->webView:Lcom/cloud/tmc/kernel/render/IWebView;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0, p1}, Lcom/cloud/tmc/kernel/render/IWebView;->setBgColor(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final setCreateParams(Lcom/cloud/tmc/kernel/model/CreateParams;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/render/SystemRender;->createParams:Lcom/cloud/tmc/kernel/model/CreateParams;

    .line 2
    .line 3
    return-void
.end method

.method public setDarkTheme(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/tmc/render/SystemRender;->isDarkTheme:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setEngineProxy(Lcom/cloud/tmc/kernel/engine/IEngine;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/render/SystemRender;->engineProxy:Lcom/cloud/tmc/kernel/engine/IEngine;

    .line 2
    .line 3
    return-void
.end method

.method public setFrameworkVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/render/SystemRender;->frameworkVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setMiniAppId(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/render/SystemRender;->appId:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->webView:Lcom/cloud/tmc/kernel/render/IWebView;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lcom/cloud/tmc/kernel/render/IWebView;->setAppId(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setMiniAppType(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->webView:Lcom/cloud/tmc/kernel/render/IWebView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/cloud/tmc/kernel/render/IWebView;->setMiniAppType(I)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IWebView;->getRenderBridge()Lcom/cloud/tmc/kernel/bridge/RenderBridge;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/cloud/tmc/render/SystemRender;->renderBridge:Lcom/cloud/tmc/kernel/bridge/RenderBridge;

    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final setNode(Lcom/cloud/tmc/kernel/node/Node;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/render/SystemRender;->node:Lcom/cloud/tmc/kernel/node/Node;

    .line 2
    .line 3
    return-void
.end method

.method public setScrollChangedCallback(Lcom/cloud/tmc/kernel/render/ScrollChangedCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->webView:Lcom/cloud/tmc/kernel/render/IWebView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/cloud/tmc/kernel/render/IWebView;->setScrollChangedCallback(Lcom/cloud/tmc/kernel/render/ScrollChangedCallback;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setSupportFullScreen(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->webView:Lcom/cloud/tmc/kernel/render/IWebView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/cloud/tmc/kernel/render/IWebView;->setSupportFullScreen(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setWarmup(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/cloud/tmc/render/SystemRender;->fromWarmup:Z

    .line 3
    .line 4
    iput p1, p0, Lcom/cloud/tmc/render/SystemRender;->warmupChannel:I

    .line 5
    .line 6
    return-void
.end method

.method public setWarmupAppId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/render/SystemRender;->appId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setWarmupCreateParams(Lcom/cloud/tmc/kernel/model/CreateParams;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/render/SystemRender;->createParams:Lcom/cloud/tmc/kernel/model/CreateParams;

    .line 2
    .line 3
    return-void
.end method

.method public setWarmupEngine(Lcom/cloud/tmc/kernel/engine/IEngine;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/render/SystemRender;->engineProxy:Lcom/cloud/tmc/kernel/engine/IEngine;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->mPageEventCallback:Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;

    .line 4
    .line 5
    instance-of v1, v0, Lcom/cloud/tmc/render/IRegisterEngineRouter;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    check-cast v0, Lcom/cloud/tmc/render/IRegisterEngineRouter;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v0, v2

    .line 14
    :goto_0
    if-eqz v0, :cond_2

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/engine/IEngine;->getEngineRouter()Lcom/cloud/tmc/kernel/engine/EngineRouter;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    :cond_1
    invoke-interface {v0, v2}, Lcom/cloud/tmc/render/IRegisterEngineRouter;->registerEnginerRouter(Lcom/cloud/tmc/kernel/engine/EngineRouter;)V

    .line 23
    .line 24
    .line 25
    :cond_2
    return-void
.end method

.method public setWarmupEngineRouter(Lcom/cloud/tmc/kernel/engine/EngineRouter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/render/SystemRender;->engineRouter:Lcom/cloud/tmc/kernel/engine/EngineRouter;

    .line 2
    .line 3
    return-void
.end method

.method public setWarmupNode(Lcom/cloud/tmc/kernel/node/Node;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/render/SystemRender;->node:Lcom/cloud/tmc/kernel/node/Node;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->webView:Lcom/cloud/tmc/kernel/render/IWebView;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lcom/cloud/tmc/kernel/render/IWebView;->setNode(Lcom/cloud/tmc/kernel/node/Node;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setWarmupRenderId(Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string v0, "renderId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->webView:Lcom/cloud/tmc/kernel/render/IWebView;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->renderId:Ljava/lang/String;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const-string v2, "warmup_render_id_"

    .line 18
    .line 19
    const/4 v3, 0x2

    .line 20
    const/4 v4, 0x0

    .line 21
    invoke-static {v0, v2, v4, v3, v1}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v2, 0x1

    .line 26
    if-ne v0, v2, :cond_0

    .line 27
    .line 28
    iget-boolean v0, p0, Lcom/cloud/tmc/render/SystemRender;->pendingCreateRenderFail:Z

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    iput-boolean v4, p0, Lcom/cloud/tmc/render/SystemRender;->pendingCreateRenderFail:Z

    .line 33
    .line 34
    invoke-direct {p0}, Lcom/cloud/tmc/render/SystemRender;->postCreateRenderFailEvent()V

    .line 35
    .line 36
    .line 37
    :cond_0
    iput-object p1, p0, Lcom/cloud/tmc/render/SystemRender;->renderId:Ljava/lang/String;

    .line 38
    .line 39
    iget-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->mPageEventCallback:Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;

    .line 40
    .line 41
    instance-of v2, v0, Lcom/cloud/tmc/render/IRegisterRenderId;

    .line 42
    .line 43
    if-eqz v2, :cond_1

    .line 44
    .line 45
    move-object v1, v0

    .line 46
    check-cast v1, Lcom/cloud/tmc/render/IRegisterRenderId;

    .line 47
    .line 48
    :cond_1
    if-eqz v1, :cond_2

    .line 49
    .line 50
    invoke-interface {v1, p1}, Lcom/cloud/tmc/render/IRegisterRenderId;->registerRenderId(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :cond_2
    return-void
.end method

.method public setWarupSuccess()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/cloud/tmc/render/SystemRender;->warmupSuccess:Z

    .line 3
    .line 4
    return-void
.end method

.method public showErrorView(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method

.method public warmupSuccess()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/render/SystemRender;->warmupSuccess:Z

    .line 2
    .line 3
    return v0
.end method
