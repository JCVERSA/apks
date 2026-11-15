.class public final Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/network/INetWorkProxy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010%\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010$\n\u0002\u0008\u0007\n\u0002\u0010\u0000\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 R2\u00020\u0001:\u0001RB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u001c\u0010\u001e\u001a\u00020\u001f2\u0008\u0010 \u001a\u0004\u0018\u00010\u00062\u0008\u0010!\u001a\u0004\u0018\u00010\"H\u0016J\u001a\u0010#\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u00062\u0008\u0010!\u001a\u0004\u0018\u00010\"H\u0016J\u001c\u0010$\u001a\u00020\u001f2\u0008\u0010 \u001a\u0004\u0018\u00010\u00062\u0008\u0010!\u001a\u0004\u0018\u00010\"H\u0016J\u0008\u0010%\u001a\u00020\u001fH\u0016J\u0010\u0010&\u001a\u00020\'2\u0006\u0010(\u001a\u00020)H\u0002Jb\u0010*\u001a\u00020\u001f2\u0006\u0010+\u001a\u00020\u00062\u0014\u0010,\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010-2\u0014\u0010.\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010-2\u0014\u0010/\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010-2\u0006\u00100\u001a\u00020\u00142\u0006\u0010(\u001a\u00020)H\u0016J@\u00101\u001a\u00020\u001f2\u0008\u0010+\u001a\u0004\u0018\u00010\u00062\u0006\u00102\u001a\u00020\u00062\u0006\u00103\u001a\u00020\u00062\u0008\u00104\u001a\u0004\u0018\u0001052\u0008\u0010(\u001a\u0004\u0018\u0001062\u0008\u00107\u001a\u0004\u0018\u00010\u0006H\u0002J@\u00108\u001a\u00020\u001f2\u0008\u0010+\u001a\u0004\u0018\u00010\u00062\u0006\u00102\u001a\u00020\u00062\u0006\u00103\u001a\u00020\u00062\u0008\u00104\u001a\u0004\u0018\u0001052\u0008\u0010(\u001a\u0004\u0018\u0001062\u0008\u00107\u001a\u0004\u0018\u00010\u0006H\u0002JP\u00109\u001a\u00020\u001f2\u0008\u0010:\u001a\u0004\u0018\u00010\u00062\u0008\u0010;\u001a\u0004\u0018\u00010\u00062\u0008\u0010<\u001a\u0004\u0018\u00010\u00062\u0014\u0010,\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010=2\u0008\u00107\u001a\u0004\u0018\u00010\u00062\u0008\u0010(\u001a\u0004\u0018\u000106H\u0016JM\u0010>\u001a\u00020\u001f2\u0006\u0010+\u001a\u00020\u00062\u0014\u0010,\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010-2\u0014\u0010.\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010-2\u0006\u00100\u001a\u00020\u00142\u0006\u0010(\u001a\u00020)H\u0096\u0002J \u0010?\u001a\u0004\u0018\u00010\u00062\u0014\u0010@\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010=H\u0002J\u0014\u0010?\u001a\u0004\u0018\u00010\u00062\u0008\u0010A\u001a\u0004\u0018\u00010\u000fH\u0002Jb\u0010B\u001a\u00020\u001f2\u0006\u0010+\u001a\u00020\u00062\u0014\u0010,\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010-2\u0014\u0010.\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010-2\u0014\u0010/\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010-2\u0006\u00100\u001a\u00020\u00142\u0006\u0010(\u001a\u00020)H\u0016JV\u0010C\u001a\u00020\u001f2\u0006\u0010+\u001a\u00020\u00062\u0014\u0010,\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010-2\u0014\u0010.\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010-2\u0008\u0010D\u001a\u0004\u0018\u00010E2\u0006\u00100\u001a\u00020\u00142\u0006\u0010(\u001a\u00020)H\u0016Jb\u0010F\u001a\u00020\u001f2\u0006\u0010+\u001a\u00020\u00062\u0014\u0010,\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010-2\u0014\u0010.\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010-2\u0014\u0010G\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010-2\u0006\u00100\u001a\u00020\u00142\u0006\u0010(\u001a\u00020)H\u0016Jb\u0010H\u001a\u00020\u001f2\u0006\u0010+\u001a\u00020\u00062\u0014\u0010,\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010-2\u0014\u0010.\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010-2\u0014\u0010/\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010-2\u0006\u00100\u001a\u00020\u00142\u0006\u0010(\u001a\u00020)H\u0016Jb\u0010I\u001a\u00020\u001f2\u0006\u0010+\u001a\u00020\u00062\u0014\u0010,\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010-2\u0014\u0010.\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010-2\u0014\u0010/\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010-2\u0006\u00100\u001a\u00020\u00142\u0006\u0010(\u001a\u00020)H\u0016J\"\u0010J\u001a\u00020K2\u0006\u0010+\u001a\u00020\u00062\u0008\u00107\u001a\u0004\u0018\u00010\u00062\u0006\u0010(\u001a\u00020LH\u0002J*\u0010M\u001a\u00020\u001f2\u0006\u00102\u001a\u00020\u00062\u0006\u00103\u001a\u00020\u00062\u0006\u0010(\u001a\u00020)2\u0008\u00107\u001a\u0004\u0018\u00010\u0006H\u0002J\u0008\u0010N\u001a\u00020\u001fH\u0016J6\u0010O\u001a\u00020\u001f2\u0008\u0010+\u001a\u0004\u0018\u00010\u00062\u0006\u00102\u001a\u00020\u00062\u0006\u00103\u001a\u00020\u00062\u0008\u0010(\u001a\u0004\u0018\u00010L2\u0008\u00107\u001a\u0004\u0018\u00010\u0006H\u0002Jt\u0010P\u001a\u00020\u001f2\u0006\u0010+\u001a\u00020\u00062\u0006\u0010Q\u001a\u00020\u00062\u0008\u00107\u001a\u0004\u0018\u00010\u00062\u0014\u0010,\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010-2\u0014\u0010.\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010-2\u0014\u0010/\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010-2\u0006\u00100\u001a\u00020\u00142\u0006\u0010(\u001a\u00020LH\u0016R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR1\u0010\r\u001a\"\u0012\u0004\u0012\u00020\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\u000ej\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u000f`\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\u0013\u001a\u00020\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001f\u0010\u0018\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\u0019\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR1\u0010\u001c\u001a\"\u0012\u0004\u0012\u00020\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\u000ej\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u000f`\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u0012\u00a8\u0006S"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;",
        "Lcom/cloud/tmc/kernel/proxy/network/INetWorkProxy;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "TAG",
        "",
        "getTAG",
        "()Ljava/lang/String;",
        "setTAG",
        "(Ljava/lang/String;)V",
        "getContext",
        "()Landroid/content/Context;",
        "downloadMap",
        "Ljava/util/HashMap;",
        "Lokhttp3/Call;",
        "Lkotlin/collections/HashMap;",
        "getDownloadMap",
        "()Ljava/util/HashMap;",
        "isNetworkImprove",
        "",
        "()Z",
        "setNetworkImprove",
        "(Z)V",
        "requestMap",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "getRequestMap",
        "()Ljava/util/concurrent/ConcurrentHashMap;",
        "uploadMap",
        "getUploadMap",
        "cancelDownloadCall",
        "",
        "id",
        "abortCallback",
        "Lcom/cloud/tmc/kernel/proxy/network/IAbortCallback;",
        "cancelHttpRequest",
        "cancelUploadCall",
        "clearDownloadCall",
        "convertHttpCallback",
        "Lcom/tmc/network/INetworkCallback;",
        "callback",
        "Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;",
        "delete",
        "url",
        "headers",
        "",
        "params",
        "formData",
        "useCommonHeader",
        "downloadCancel",
        "errorCode",
        "errorMsg",
        "e",
        "Ljava/io/IOException;",
        "Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;",
        "callbackId",
        "downloadFail",
        "downloadPackage",
        "appId",
        "downloadUrl",
        "downloadPath",
        "",
        "get",
        "getCallId",
        "header",
        "call",
        "post",
        "postJson",
        "json",
        "",
        "postMultipart",
        "multipartData",
        "postV2",
        "put",
        "registerUploadIntercept",
        "Lokhttp3/Interceptor;",
        "Lcom/cloud/tmc/kernel/proxy/network/IUploadCallback;",
        "requestFail",
        "startPreConnect",
        "uploadFail",
        "uploadFile",
        "filePath",
        "Companion",
        "com.cloud.tmc.integration"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final Companion:Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$Companion;

.field public static final TIME_OUT_VALUE:I = 0xea60


# instance fields
.field private TAG:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private final downloadMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lokhttp3/Call;",
            ">;"
        }
    .end annotation
.end field

.field private isNetworkImprove:Z

.field private final requestMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lokhttp3/Call;",
            ">;"
        }
    .end annotation
.end field

.field private final uploadMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lokhttp3/Call;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->Companion:Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->context:Landroid/content/Context;

    .line 10
    .line 11
    const-string v0, "TmcNetworkImpl"

    .line 12
    .line 13
    iput-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->TAG:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v0, Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->downloadMap:Ljava/util/HashMap;

    .line 21
    .line 22
    new-instance v0, Ljava/util/HashMap;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->uploadMap:Ljava/util/HashMap;

    .line 28
    .line 29
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->requestMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 35
    .line 36
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/AppDynamicBuildConfig;->getMINI_APP_BASE_URL()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/AppDynamicBuildConfig;->getBASE_OSS_URL()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/ProcessUtils;->isMiniProcess()Z

    .line 56
    .line 57
    .line 58
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/ProcessUtils;->isMiniProcess()Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    const/4 v2, 0x1

    .line 63
    if-eqz v1, :cond_1

    .line 64
    .line 65
    sget-object v1, Lcom/tmc/network/NetworkConfig;->INSTANCE:Lcom/tmc/network/NetworkConfig;

    .line 66
    .line 67
    invoke-virtual {v1, v0}, Lcom/tmc/network/NetworkConfig;->setPreHostList(Ljava/util/List;)V

    .line 68
    .line 69
    .line 70
    const-class v0, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 71
    .line 72
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 77
    .line 78
    const-string v3, "miniLauncherGlobal"

    .line 79
    .line 80
    const-string v4, "network_improve_key"

    .line 81
    .line 82
    invoke-interface {v0, p1, v3, v4}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 87
    .line 88
    .line 89
    move-result-wide v3

    .line 90
    const/16 v5, 0xa

    .line 91
    .line 92
    int-to-long v5, v5

    .line 93
    rem-long/2addr v3, v5

    .line 94
    int-to-long v5, v0

    .line 95
    cmp-long v0, v3, v5

    .line 96
    .line 97
    if-gez v0, :cond_0

    .line 98
    .line 99
    iput-boolean v2, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->isNetworkImprove:Z

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :catchall_0
    move-exception p1

    .line 103
    goto :goto_3

    .line 104
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->isNetworkImprove:Z

    .line 105
    .line 106
    invoke-virtual {v1, v0}, Lcom/tmc/network/NetworkConfig;->setNetworkImproveEnable(Z)V

    .line 107
    .line 108
    .line 109
    :cond_1
    sget-object v0, Lcom/tmc/network/HttpRequestor;->Companion:Lcom/tmc/network/HttpRequestor$Companion;

    .line 110
    .line 111
    const/4 v1, 0x0

    .line 112
    invoke-virtual {v0, v1}, Lcom/tmc/network/HttpRequestor$Companion;->setLoggable(Z)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0}, Lcom/tmc/network/HttpRequestor$Companion;->getInstance()Lcom/tmc/network/HttpRequestor;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    if-eqz v3, :cond_3

    .line 120
    .line 121
    const-string v5, "Lp84tK50u1uwuN3zNQ"

    .line 122
    .line 123
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/AppDynamicBuildConfig;->getMINI_API_WORK_MODE()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    const-string v4, "test"

    .line 128
    .line 129
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    if-eqz v1, :cond_2

    .line 134
    .line 135
    sget-object v1, Lcom/transsion/api/gateway/config/WorkMode;->MODE_TEST:Lcom/transsion/api/gateway/config/WorkMode;

    .line 136
    .line 137
    :goto_1
    move-object v6, v1

    .line 138
    goto :goto_2

    .line 139
    :cond_2
    sget-object v1, Lcom/transsion/api/gateway/config/WorkMode;->MODE_ONLINE:Lcom/transsion/api/gateway/config/WorkMode;

    .line 140
    .line 141
    goto :goto_1

    .line 142
    :goto_2
    new-instance v7, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$1;

    .line 143
    .line 144
    invoke-direct {v7, p0}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$1;-><init>(Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;)V

    .line 145
    .line 146
    .line 147
    const/4 v8, 0x1

    .line 148
    move-object v4, p1

    .line 149
    invoke-virtual/range {v3 .. v8}, Lcom/tmc/network/HttpRequestor;->init(Landroid/content/Context;Ljava/lang/String;Lcom/transsion/api/gateway/config/WorkMode;Lcom/tmc/network/ProgressListener;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    .line 151
    .line 152
    :cond_3
    :try_start_1
    sget-object p1, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    .line 153
    .line 154
    const-string v1, "merqm"

    .line 155
    .line 156
    invoke-virtual {p1, v1, v2}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetBool(Ljava/lang/String;Z)Z

    .line 157
    .line 158
    .line 159
    move-result p1

    .line 160
    invoke-virtual {v0, p1}, Lcom/tmc/network/HttpRequestor$Companion;->setPostMode(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 161
    .line 162
    .line 163
    goto :goto_4

    .line 164
    :catchall_1
    move-exception p1

    .line 165
    :try_start_2
    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->TAG:Ljava/lang/String;

    .line 166
    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .line 171
    .line 172
    const-string v2, "setPostMode error: "

    .line 173
    .line 174
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 185
    .line 186
    .line 187
    goto :goto_4

    .line 188
    :goto_3
    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->TAG:Ljava/lang/String;

    .line 189
    .line 190
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 191
    .line 192
    .line 193
    :goto_4
    return-void
.end method

.method public static final synthetic access$downloadCancel(Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/IOException;Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->downloadCancel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/IOException;Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$downloadFail(Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/IOException;Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->downloadFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/IOException;Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$getCallId(Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;Ljava/util/Map;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->getCallId(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCallId(Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;Lokhttp3/Call;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->getCallId(Lokhttp3/Call;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$requestFail(Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->requestFail(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$uploadFail(Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/network/IUploadCallback;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->uploadFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/network/IUploadCallback;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final convertHttpCallback(Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;)Lcom/tmc/network/INetworkCallback;
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$convertHttpCallback$1;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$convertHttpCallback$1;-><init>(Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private final downloadCancel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/IOException;Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;Ljava/lang/String;)V
    .locals 0

    .line 1
    if-eqz p5, :cond_0

    .line 2
    .line 3
    :try_start_0
    invoke-interface {p5, p1, p6}, Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;->onCancel(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :cond_0
    iget-object p1, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    new-instance p4, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string p5, "errorCode: "

    .line 14
    .line 15
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string p2, " errorMsg: "

    .line 22
    .line 23
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-nez p1, :cond_1

    .line 41
    .line 42
    iget-object p1, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->downloadMap:Ljava/util/HashMap;

    .line 43
    .line 44
    invoke-interface {p1, p6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-eqz p1, :cond_1

    .line 49
    .line 50
    iget-object p1, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->downloadMap:Ljava/util/HashMap;

    .line 51
    .line 52
    invoke-static {p1}, Lkotlin/jvm/internal/TypeIntrinsics;->d(Ljava/lang/Object;)Ljava/util/Map;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-interface {p1, p6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    .line 58
    .line 59
    :catchall_0
    :cond_1
    return-void
.end method

.method private final downloadFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/IOException;Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;Ljava/lang/String;)V
    .locals 6

    .line 1
    if-eqz p5, :cond_0

    .line 2
    .line 3
    move-object v0, p5

    .line 4
    move-object v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move-object v3, p3

    .line 7
    move-object v4, p4

    .line 8
    move-object v5, p6

    .line 9
    :try_start_0
    invoke-interface/range {v0 .. v5}, Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;->onFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object p1, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->TAG:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {p1, p3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-nez p1, :cond_1

    .line 22
    .line 23
    iget-object p1, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->downloadMap:Ljava/util/HashMap;

    .line 24
    .line 25
    invoke-interface {p1, p6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    iget-object p1, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->downloadMap:Ljava/util/HashMap;

    .line 32
    .line 33
    invoke-static {p1}, Lkotlin/jvm/internal/TypeIntrinsics;->d(Ljava/lang/Object;)Ljava/util/Map;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-interface {p1, p6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    .line 40
    :catchall_0
    :cond_1
    return-void
.end method

.method private final getCallId(Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 4
    const-string v0, "callbackId"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private final getCallId(Lokhttp3/Call;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Headers;->names()Ljava/util/Set;

    move-result-object v1

    .line 2
    const-string v2, "callbackId"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {p1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p1, v2}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private final registerUploadIntercept(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/network/IUploadCallback;)Lokhttp3/Interceptor;
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$registerUploadIntercept$1;

    .line 2
    .line 3
    invoke-direct {v0, p3, p1, p2}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$registerUploadIntercept$1;-><init>(Lcom/cloud/tmc/kernel/proxy/network/IUploadCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private final requestFail(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;Ljava/lang/String;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-interface {p3, p1, p2, p4}, Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;->onFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->TAG:Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->requestMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 16
    .line 17
    invoke-interface {p1, p4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    iget-object p1, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->requestMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 24
    .line 25
    invoke-static {p1}, Lkotlin/jvm/internal/TypeIntrinsics;->d(Ljava/lang/Object;)Ljava/util/Map;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-interface {p1, p4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    :catchall_0
    :cond_0
    return-void
.end method

.method private final uploadFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/network/IUploadCallback;Ljava/lang/String;)V
    .locals 0

    .line 1
    if-eqz p4, :cond_0

    .line 2
    .line 3
    :try_start_0
    invoke-interface {p4, p1, p2, p3, p5}, Lcom/cloud/tmc/kernel/proxy/network/IUploadCallback;->onFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :cond_0
    iget-object p1, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {p1, p3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-nez p1, :cond_1

    .line 16
    .line 17
    iget-object p1, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->uploadMap:Ljava/util/HashMap;

    .line 18
    .line 19
    invoke-interface {p1, p5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    iget-object p1, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->uploadMap:Ljava/util/HashMap;

    .line 26
    .line 27
    invoke-static {p1}, Lkotlin/jvm/internal/TypeIntrinsics;->d(Ljava/lang/Object;)Ljava/util/Map;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-interface {p1, p5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    .line 34
    :catchall_0
    :cond_1
    return-void
.end method


# virtual methods
.method public cancelDownloadCall(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/network/IAbortCallback;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "cancelDownloadCall, id: "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->downloadMap:Ljava/util/HashMap;

    .line 24
    .line 25
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lokhttp3/Call;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-interface {v0}, Lokhttp3/Call;->isCanceled()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->downloadMap:Ljava/util/HashMap;

    .line 40
    .line 41
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Lokhttp3/Call;

    .line 46
    .line 47
    if-eqz v0, :cond_0

    .line 48
    .line 49
    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception v0

    .line 54
    goto :goto_3

    .line 55
    :cond_0
    :goto_0
    if-eqz p2, :cond_2

    .line 56
    .line 57
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/proxy/network/IAbortCallback;->success()V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    if-eqz p2, :cond_2

    .line 62
    .line 63
    const-string v0, "download task un exist"

    .line 64
    .line 65
    invoke-interface {p2, v0}, Lcom/cloud/tmc/kernel/proxy/network/IAbortCallback;->fail(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .line 67
    .line 68
    :cond_2
    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 69
    .line 70
    .line 71
    move-result p2

    .line 72
    if-nez p2, :cond_4

    .line 73
    .line 74
    iget-object p2, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->downloadMap:Ljava/util/HashMap;

    .line 75
    .line 76
    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result p2

    .line 80
    if-eqz p2, :cond_4

    .line 81
    .line 82
    :goto_2
    iget-object p2, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->downloadMap:Ljava/util/HashMap;

    .line 83
    .line 84
    invoke-static {p2}, Lkotlin/jvm/internal/TypeIntrinsics;->d(Ljava/lang/Object;)Ljava/util/Map;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    goto :goto_5

    .line 92
    :goto_3
    if-eqz p2, :cond_3

    .line 93
    .line 94
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-interface {p2, v0}, Lcom/cloud/tmc/kernel/proxy/network/IAbortCallback;->fail(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    goto :goto_4

    .line 102
    :catchall_1
    move-exception p2

    .line 103
    goto :goto_6

    .line 104
    :cond_3
    :goto_4
    const-string p2, "cancel downloadCall error"

    .line 105
    .line 106
    invoke-static {p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 107
    .line 108
    .line 109
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 110
    .line 111
    .line 112
    move-result p2

    .line 113
    if-nez p2, :cond_4

    .line 114
    .line 115
    iget-object p2, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->downloadMap:Ljava/util/HashMap;

    .line 116
    .line 117
    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result p2

    .line 121
    if-eqz p2, :cond_4

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_4
    :goto_5
    return-void

    .line 125
    :goto_6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-nez v0, :cond_5

    .line 130
    .line 131
    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->downloadMap:Ljava/util/HashMap;

    .line 132
    .line 133
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    if-eqz v0, :cond_5

    .line 138
    .line 139
    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->downloadMap:Ljava/util/HashMap;

    .line 140
    .line 141
    invoke-static {v0}, Lkotlin/jvm/internal/TypeIntrinsics;->d(Ljava/lang/Object;)Ljava/util/Map;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    :cond_5
    throw p2
.end method

.method public cancelHttpRequest(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/network/IAbortCallback;)V
    .locals 3

    .line 1
    const-string v0, "id"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "cancelHttpRequest, id: "

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->requestMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 29
    .line 30
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lokhttp3/Call;

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    invoke-interface {v0}, Lokhttp3/Call;->isCanceled()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_1

    .line 43
    .line 44
    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->requestMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 45
    .line 46
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Lokhttp3/Call;

    .line 51
    .line 52
    if-eqz v0, :cond_0

    .line 53
    .line 54
    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catchall_0
    move-exception v0

    .line 59
    goto :goto_3

    .line 60
    :cond_0
    :goto_0
    if-eqz p2, :cond_2

    .line 61
    .line 62
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/proxy/network/IAbortCallback;->success()V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    if-eqz p2, :cond_2

    .line 67
    .line 68
    const-string v0, "request task un exist"

    .line 69
    .line 70
    invoke-interface {p2, v0}, Lcom/cloud/tmc/kernel/proxy/network/IAbortCallback;->fail(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    .line 72
    .line 73
    :cond_2
    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    if-nez p2, :cond_4

    .line 78
    .line 79
    iget-object p2, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->requestMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 80
    .line 81
    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result p2

    .line 85
    if-eqz p2, :cond_4

    .line 86
    .line 87
    :goto_2
    iget-object p2, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->requestMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 88
    .line 89
    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    goto :goto_5

    .line 93
    :goto_3
    if-eqz p2, :cond_3

    .line 94
    .line 95
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-interface {p2, v1}, Lcom/cloud/tmc/kernel/proxy/network/IAbortCallback;->fail(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    goto :goto_4

    .line 103
    :catchall_1
    move-exception p2

    .line 104
    goto :goto_6

    .line 105
    :cond_3
    :goto_4
    new-instance p2, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .line 109
    .line 110
    const-string v1, "cancel requestCall error:"

    .line 111
    .line 112
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p2

    .line 122
    invoke-static {p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 123
    .line 124
    .line 125
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 126
    .line 127
    .line 128
    move-result p2

    .line 129
    if-nez p2, :cond_4

    .line 130
    .line 131
    iget-object p2, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->requestMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 132
    .line 133
    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result p2

    .line 137
    if-eqz p2, :cond_4

    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_4
    :goto_5
    return-void

    .line 141
    :goto_6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    if-nez v0, :cond_5

    .line 146
    .line 147
    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->requestMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 148
    .line 149
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    if-eqz v0, :cond_5

    .line 154
    .line 155
    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->requestMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 156
    .line 157
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    :cond_5
    throw p2
.end method

.method public cancelUploadCall(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/network/IAbortCallback;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "cancelUploadCall, id: "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->uploadMap:Ljava/util/HashMap;

    .line 24
    .line 25
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lokhttp3/Call;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-interface {v0}, Lokhttp3/Call;->isCanceled()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->uploadMap:Ljava/util/HashMap;

    .line 40
    .line 41
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Lokhttp3/Call;

    .line 46
    .line 47
    if-eqz v0, :cond_0

    .line 48
    .line 49
    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception v0

    .line 54
    goto :goto_3

    .line 55
    :cond_0
    :goto_0
    if-eqz p2, :cond_2

    .line 56
    .line 57
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/proxy/network/IAbortCallback;->success()V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    if-eqz p2, :cond_2

    .line 62
    .line 63
    const-string v0, "upload task un exist"

    .line 64
    .line 65
    invoke-interface {p2, v0}, Lcom/cloud/tmc/kernel/proxy/network/IAbortCallback;->fail(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .line 67
    .line 68
    :cond_2
    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 69
    .line 70
    .line 71
    move-result p2

    .line 72
    if-nez p2, :cond_4

    .line 73
    .line 74
    iget-object p2, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->uploadMap:Ljava/util/HashMap;

    .line 75
    .line 76
    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result p2

    .line 80
    if-eqz p2, :cond_4

    .line 81
    .line 82
    :goto_2
    iget-object p2, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->uploadMap:Ljava/util/HashMap;

    .line 83
    .line 84
    invoke-static {p2}, Lkotlin/jvm/internal/TypeIntrinsics;->d(Ljava/lang/Object;)Ljava/util/Map;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    goto :goto_5

    .line 92
    :goto_3
    if-eqz p2, :cond_3

    .line 93
    .line 94
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-interface {p2, v0}, Lcom/cloud/tmc/kernel/proxy/network/IAbortCallback;->fail(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    goto :goto_4

    .line 102
    :catchall_1
    move-exception p2

    .line 103
    goto :goto_6

    .line 104
    :cond_3
    :goto_4
    const-string p2, "cancel uploadCall error"

    .line 105
    .line 106
    invoke-static {p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 107
    .line 108
    .line 109
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 110
    .line 111
    .line 112
    move-result p2

    .line 113
    if-nez p2, :cond_4

    .line 114
    .line 115
    iget-object p2, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->uploadMap:Ljava/util/HashMap;

    .line 116
    .line 117
    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result p2

    .line 121
    if-eqz p2, :cond_4

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_4
    :goto_5
    return-void

    .line 125
    :goto_6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-nez v0, :cond_5

    .line 130
    .line 131
    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->uploadMap:Ljava/util/HashMap;

    .line 132
    .line 133
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    if-eqz v0, :cond_5

    .line 138
    .line 139
    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->uploadMap:Ljava/util/HashMap;

    .line 140
    .line 141
    invoke-static {v0}, Lkotlin/jvm/internal/TypeIntrinsics;->d(Ljava/lang/Object;)Ljava/util/Map;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    :cond_5
    throw p2
.end method

.method public clearDownloadCall()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "clearDownloadCall"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->downloadMap:Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Ljava/util/Map$Entry;

    .line 29
    .line 30
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Lokhttp3/Call;

    .line 35
    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    invoke-interface {v1}, Lokhttp3/Call;->isCanceled()Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-nez v2, :cond_0

    .line 43
    .line 44
    invoke-interface {v1}, Lokhttp3/Call;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    const-string v0, "clear downloadMap error"

    .line 49
    .line 50
    invoke-static {v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :cond_1
    return-void
.end method

.method public bridge synthetic delete(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Boolean;Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;)V
    .locals 7

    .line 1
    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->delete(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;ZLcom/cloud/tmc/kernel/proxy/network/IResponseCallback;)V

    return-void
.end method

.method public delete(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;ZLcom/cloud/tmc/kernel/proxy/network/IResponseCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;",
            ")V"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete, url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/tmc/network/HttpRequestor;->Companion:Lcom/tmc/network/HttpRequestor$Companion;

    invoke-virtual {v0}, Lcom/tmc/network/HttpRequestor$Companion;->getInstance()Lcom/tmc/network/HttpRequestor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    sget-object v0, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppPrepareUtils;

    invoke-virtual {v0, p2, p5}, Lcom/cloud/tmc/integration/utils/BaseAppPrepareUtils;->getCommonHeader(Ljava/util/Map;Z)Ljava/util/Map;

    move-result-object v3

    .line 5
    invoke-direct {p0, p6}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->convertHttpCallback(Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;)Lcom/tmc/network/INetworkCallback;

    move-result-object v6

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    .line 6
    invoke-virtual/range {v1 .. v6}, Lcom/tmc/network/HttpRequestor;->delete(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/tmc/network/INetworkCallback;)Lokhttp3/Call;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    .line 7
    :goto_0
    invoke-direct {p0, p2}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->getCallId(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 8
    iget-object p4, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->requestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p4, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 9
    :goto_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Http Request Fail,Exception_"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ":R002"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-direct {p0, p2}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->getCallId(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    .line 11
    const-string p3, "R002"

    invoke-direct {p0, p3, p1, p6, p2}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->requestFail(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;Ljava/lang/String;)V

    :cond_1
    :goto_2
    return-void
.end method

.method public downloadPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;",
            ")V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_a

    .line 2
    .line 3
    :try_start_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_4

    .line 10
    .line 11
    :cond_0
    if-eqz p2, :cond_9

    .line 12
    .line 13
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    goto/16 :goto_3

    .line 20
    .line 21
    :cond_1
    invoke-static {p2}, Lcom/cloud/tmc/integration/utils/RegexUtils;->isURL(Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_2

    .line 26
    .line 27
    goto/16 :goto_3

    .line 28
    .line 29
    :cond_2
    if-eqz p3, :cond_8

    .line 30
    .line 31
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_3

    .line 36
    .line 37
    goto/16 :goto_2

    .line 38
    .line 39
    :cond_3
    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->TAG:Ljava/lang/String;

    .line 40
    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string v2, "downloadPackage, downloadUrl: "

    .line 47
    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    new-instance v0, Lokhttp3/Request$Builder;

    .line 62
    .line 63
    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, p2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    if-eqz p4, :cond_4

    .line 71
    .line 72
    sget-object v1, Lokhttp3/Headers;->Companion:Lokhttp3/Headers$Companion;

    .line 73
    .line 74
    invoke-virtual {v1, p4}, Lokhttp3/Headers$Companion;->of(Ljava/util/Map;)Lokhttp3/Headers;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :catchall_0
    move-exception p1

    .line 83
    goto/16 :goto_5

    .line 84
    .line 85
    :cond_4
    :goto_0
    if-eqz p5, :cond_5

    .line 86
    .line 87
    const-string v1, "callbackId"

    .line 88
    .line 89
    invoke-virtual {v0, v1, p5}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 90
    .line 91
    .line 92
    :cond_5
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    sget-object v1, Lcom/tmc/network/HttpRequestor;->Companion:Lcom/tmc/network/HttpRequestor$Companion;

    .line 97
    .line 98
    invoke-virtual {v1}, Lcom/tmc/network/HttpRequestor$Companion;->getInstance()Lcom/tmc/network/HttpRequestor;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    if-eqz v1, :cond_6

    .line 103
    .line 104
    invoke-virtual {v1}, Lcom/tmc/network/HttpRequestor;->getHttpClient()Lcom/tmc/network/HttpClient;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    if-eqz v1, :cond_6

    .line 109
    .line 110
    invoke-virtual {v1, v0}, Lcom/tmc/network/HttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    goto :goto_1

    .line 115
    :cond_6
    const/4 v0, 0x0

    .line 116
    :goto_1
    if-eqz p4, :cond_7

    .line 117
    .line 118
    const-string v1, "m-timeout"

    .line 119
    .line 120
    invoke-interface {p4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    check-cast v1, Ljava/lang/String;

    .line 125
    .line 126
    if-eqz v1, :cond_7

    .line 127
    .line 128
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 129
    .line 130
    .line 131
    move-result-wide v1

    .line 132
    if-eqz v0, :cond_7

    .line 133
    .line 134
    invoke-interface {v0}, Lokhttp3/Call;->timeout()Lokio/Timeout;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    if-eqz v3, :cond_7

    .line 139
    .line 140
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 141
    .line 142
    invoke-virtual {v3, v1, v2, v4}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 143
    .line 144
    .line 145
    :cond_7
    iget-object v1, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->downloadMap:Ljava/util/HashMap;

    .line 146
    .line 147
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    if-eqz v0, :cond_b

    .line 151
    .line 152
    new-instance p1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;

    .line 153
    .line 154
    move-object v2, p1

    .line 155
    move-object v3, p0

    .line 156
    move-object v4, p2

    .line 157
    move-object v5, p6

    .line 158
    move-object v6, p4

    .line 159
    move-object v7, p3

    .line 160
    move-object v8, p5

    .line 161
    invoke-direct/range {v2 .. v8}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;-><init>(Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    invoke-static {v0, p1}, Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;->enqueue(Lokhttp3/Call;Lokhttp3/Callback;)V

    .line 165
    .line 166
    .line 167
    goto/16 :goto_6

    .line 168
    .line 169
    :cond_8
    :goto_2
    const-string v2, "D005"

    .line 170
    .line 171
    const-string v3, "Download Fail,downloadPath is empty:D005"

    .line 172
    .line 173
    new-instance v4, Ljava/io/IOException;

    .line 174
    .line 175
    const-string p1, "Download Fail,downloadPath is empty:D005"

    .line 176
    .line 177
    invoke-direct {v4, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    invoke-direct {p0, p4}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->getCallId(Ljava/util/Map;)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v6

    .line 184
    move-object v0, p0

    .line 185
    move-object v1, p2

    .line 186
    move-object v5, p6

    .line 187
    invoke-direct/range {v0 .. v6}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->downloadFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/IOException;Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    return-void

    .line 191
    :cond_9
    :goto_3
    const-string v2, "D004"

    .line 192
    .line 193
    const-string v3, "Download Fail,downloadUrl is error:D004"

    .line 194
    .line 195
    new-instance v4, Ljava/io/IOException;

    .line 196
    .line 197
    const-string p1, "Download Fail,downloadUrl is error:D004"

    .line 198
    .line 199
    invoke-direct {v4, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    invoke-direct {p0, p4}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->getCallId(Ljava/util/Map;)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v6

    .line 206
    move-object v0, p0

    .line 207
    move-object v1, p2

    .line 208
    move-object v5, p6

    .line 209
    invoke-direct/range {v0 .. v6}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->downloadFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/IOException;Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    return-void

    .line 213
    :cond_a
    :goto_4
    const-string v2, "D003"

    .line 214
    .line 215
    const-string v3, "Download Fail,appId is empty:D003"

    .line 216
    .line 217
    new-instance v4, Ljava/io/IOException;

    .line 218
    .line 219
    const-string p1, "Download Fail,appId is empty:D003"

    .line 220
    .line 221
    invoke-direct {v4, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    invoke-direct {p0, p4}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->getCallId(Ljava/util/Map;)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v6

    .line 228
    move-object v0, p0

    .line 229
    move-object v1, p2

    .line 230
    move-object v5, p6

    .line 231
    invoke-direct/range {v0 .. v6}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->downloadFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/IOException;Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    .line 233
    .line 234
    return-void

    .line 235
    :goto_5
    new-instance p3, Ljava/lang/StringBuilder;

    .line 236
    .line 237
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 238
    .line 239
    .line 240
    const-string p5, "Download Fail,Exception_"

    .line 241
    .line 242
    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    const-string p5, ":D002"

    .line 249
    .line 250
    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v3

    .line 257
    new-instance v4, Ljava/io/IOException;

    .line 258
    .line 259
    invoke-direct {v4, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 260
    .line 261
    .line 262
    invoke-direct {p0, p4}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->getCallId(Ljava/util/Map;)Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v6

    .line 266
    const-string v2, "D002"

    .line 267
    .line 268
    move-object v0, p0

    .line 269
    move-object v1, p2

    .line 270
    move-object v5, p6

    .line 271
    invoke-direct/range {v0 .. v6}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->downloadFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/IOException;Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    :cond_b
    :goto_6
    return-void
.end method

.method public bridge synthetic get(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Boolean;Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;)V
    .locals 6

    .line 1
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->get(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLcom/cloud/tmc/kernel/proxy/network/IResponseCallback;)V

    return-void
.end method

.method public get(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLcom/cloud/tmc/kernel/proxy/network/IResponseCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;",
            ")V"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get, url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/tmc/network/HttpRequestor;->Companion:Lcom/tmc/network/HttpRequestor$Companion;

    invoke-virtual {v0}, Lcom/tmc/network/HttpRequestor$Companion;->getInstance()Lcom/tmc/network/HttpRequestor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    sget-object v1, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppPrepareUtils;

    invoke-virtual {v1, p2, p4}, Lcom/cloud/tmc/integration/utils/BaseAppPrepareUtils;->getCommonHeader(Ljava/util/Map;Z)Ljava/util/Map;

    move-result-object p4

    .line 5
    invoke-direct {p0, p5}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->convertHttpCallback(Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;)Lcom/tmc/network/INetworkCallback;

    move-result-object v1

    .line 6
    invoke-virtual {v0, p1, p4, p3, v1}, Lcom/tmc/network/HttpRequestor;->get(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/tmc/network/INetworkCallback;)Lokhttp3/Call;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    .line 7
    :goto_0
    invoke-direct {p0, p2}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->getCallId(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 8
    iget-object p4, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->requestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p4, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 9
    :goto_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Http Request Fail,Exception_"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ":R002"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-direct {p0, p2}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->getCallId(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    .line 11
    const-string p3, "R002"

    invoke-direct {p0, p3, p1, p5, p2}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->requestFail(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;Ljava/lang/String;)V

    :cond_1
    :goto_2
    return-void
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->context:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDownloadMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lokhttp3/Call;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->downloadMap:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRequestMap()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lokhttp3/Call;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->requestMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTAG()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getUploadMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lokhttp3/Call;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->uploadMap:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public final isNetworkImprove()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->isNetworkImprove:Z

    .line 2
    .line 3
    return v0
.end method

.method public bridge synthetic post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Boolean;Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;)V
    .locals 7

    .line 1
    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;ZLcom/cloud/tmc/kernel/proxy/network/IResponseCallback;)V

    return-void
.end method

.method public post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;ZLcom/cloud/tmc/kernel/proxy/network/IResponseCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;",
            ")V"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "post, url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/tmc/network/HttpRequestor;->Companion:Lcom/tmc/network/HttpRequestor$Companion;

    invoke-virtual {v0}, Lcom/tmc/network/HttpRequestor$Companion;->getInstance()Lcom/tmc/network/HttpRequestor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    sget-object v0, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppPrepareUtils;

    invoke-virtual {v0, p2, p5}, Lcom/cloud/tmc/integration/utils/BaseAppPrepareUtils;->getCommonHeader(Ljava/util/Map;Z)Ljava/util/Map;

    move-result-object v3

    .line 5
    invoke-direct {p0, p6}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->convertHttpCallback(Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;)Lcom/tmc/network/INetworkCallback;

    move-result-object v6

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    .line 6
    invoke-virtual/range {v1 .. v6}, Lcom/tmc/network/HttpRequestor;->post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/tmc/network/INetworkCallback;)Lokhttp3/Call;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    .line 7
    :goto_0
    invoke-direct {p0, p2}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->getCallId(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 8
    iget-object p4, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->requestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p4, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 9
    :goto_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Http Request Fail,Exception_"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ":R002"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-direct {p0, p2}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->getCallId(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    .line 11
    const-string p3, "R002"

    invoke-direct {p0, p3, p1, p6, p2}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->requestFail(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;Ljava/lang/String;)V

    :cond_1
    :goto_2
    return-void
.end method

.method public bridge synthetic postJson(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Boolean;Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;)V
    .locals 7

    .line 1
    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->postJson(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Object;ZLcom/cloud/tmc/kernel/proxy/network/IResponseCallback;)V

    return-void
.end method

.method public postJson(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Object;ZLcom/cloud/tmc/kernel/proxy/network/IResponseCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Z",
            "Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;",
            ")V"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postJson, url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/tmc/network/HttpRequestor;->Companion:Lcom/tmc/network/HttpRequestor$Companion;

    invoke-virtual {v0}, Lcom/tmc/network/HttpRequestor$Companion;->getInstance()Lcom/tmc/network/HttpRequestor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    sget-object v0, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppPrepareUtils;

    invoke-virtual {v0, p2, p5}, Lcom/cloud/tmc/integration/utils/BaseAppPrepareUtils;->getCommonHeader(Ljava/util/Map;Z)Ljava/util/Map;

    move-result-object v3

    .line 5
    invoke-direct {p0, p6}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->convertHttpCallback(Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;)Lcom/tmc/network/INetworkCallback;

    move-result-object v6

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    .line 6
    invoke-virtual/range {v1 .. v6}, Lcom/tmc/network/HttpRequestor;->postJSON(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Object;Lcom/tmc/network/INetworkCallback;)Lokhttp3/Call;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    .line 7
    :goto_0
    invoke-direct {p0, p2}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->getCallId(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 8
    iget-object p4, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->requestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p4, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 9
    :goto_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Http Request Fail,Exception_"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ":R002"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-direct {p0, p2}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->getCallId(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    .line 11
    const-string p3, "R002"

    invoke-direct {p0, p3, p1, p6, p2}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->requestFail(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;Ljava/lang/String;)V

    :cond_1
    :goto_2
    return-void
.end method

.method public bridge synthetic postMultipart(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Boolean;Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;)V
    .locals 7

    .line 1
    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->postMultipart(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;ZLcom/cloud/tmc/kernel/proxy/network/IResponseCallback;)V

    return-void
.end method

.method public postMultipart(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;ZLcom/cloud/tmc/kernel/proxy/network/IResponseCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;",
            ")V"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/tmc/network/HttpRequestor;->Companion:Lcom/tmc/network/HttpRequestor$Companion;

    invoke-virtual {v0}, Lcom/tmc/network/HttpRequestor$Companion;->getInstance()Lcom/tmc/network/HttpRequestor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    sget-object v0, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppPrepareUtils;

    invoke-virtual {v0, p2, p5}, Lcom/cloud/tmc/integration/utils/BaseAppPrepareUtils;->getCommonHeader(Ljava/util/Map;Z)Ljava/util/Map;

    move-result-object v3

    .line 4
    invoke-direct {p0, p6}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->convertHttpCallback(Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;)Lcom/tmc/network/INetworkCallback;

    move-result-object v6

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    .line 5
    invoke-virtual/range {v1 .. v6}, Lcom/tmc/network/HttpRequestor;->postMultipart(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/tmc/network/INetworkCallback;)Lokhttp3/Call;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    .line 6
    :goto_0
    invoke-direct {p0, p2}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->getCallId(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 7
    iget-object p4, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->requestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p4, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 8
    :goto_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Http Request Fail,Exception_"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ":R002"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-direct {p0, p2}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->getCallId(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    .line 10
    const-string p3, "R002"

    invoke-direct {p0, p3, p1, p6, p2}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->requestFail(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;Ljava/lang/String;)V

    :cond_1
    :goto_2
    return-void
.end method

.method public bridge synthetic postV2(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Boolean;Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;)V
    .locals 7

    .line 1
    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->postV2(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;ZLcom/cloud/tmc/kernel/proxy/network/IResponseCallback;)V

    return-void
.end method

.method public postV2(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;ZLcom/cloud/tmc/kernel/proxy/network/IResponseCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;",
            ")V"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "post, url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/tmc/network/HttpRequestor;->Companion:Lcom/tmc/network/HttpRequestor$Companion;

    invoke-virtual {v0}, Lcom/tmc/network/HttpRequestor$Companion;->getInstance()Lcom/tmc/network/HttpRequestor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    sget-object v0, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppPrepareUtils;

    invoke-virtual {v0, p2, p5}, Lcom/cloud/tmc/integration/utils/BaseAppPrepareUtils;->getCommonHeader(Ljava/util/Map;Z)Ljava/util/Map;

    move-result-object v3

    .line 5
    invoke-direct {p0, p6}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->convertHttpCallback(Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;)Lcom/tmc/network/INetworkCallback;

    move-result-object v6

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    .line 6
    invoke-virtual/range {v1 .. v6}, Lcom/tmc/network/HttpRequestor;->postV2(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/tmc/network/INetworkCallback;)Lokhttp3/Call;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    .line 7
    :goto_0
    invoke-direct {p0, p2}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->getCallId(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 8
    iget-object p4, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->requestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p4, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 9
    :goto_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Http Request Fail,Exception_"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ":R002"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-direct {p0, p2}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->getCallId(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    .line 11
    const-string p3, "R002"

    invoke-direct {p0, p3, p1, p6, p2}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->requestFail(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;Ljava/lang/String;)V

    :cond_1
    :goto_2
    return-void
.end method

.method public bridge synthetic put(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Boolean;Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;)V
    .locals 7

    .line 1
    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->put(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;ZLcom/cloud/tmc/kernel/proxy/network/IResponseCallback;)V

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;ZLcom/cloud/tmc/kernel/proxy/network/IResponseCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;",
            ")V"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "put, url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/tmc/network/HttpRequestor;->Companion:Lcom/tmc/network/HttpRequestor$Companion;

    invoke-virtual {v0}, Lcom/tmc/network/HttpRequestor$Companion;->getInstance()Lcom/tmc/network/HttpRequestor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    sget-object v0, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppPrepareUtils;

    invoke-virtual {v0, p2, p5}, Lcom/cloud/tmc/integration/utils/BaseAppPrepareUtils;->getCommonHeader(Ljava/util/Map;Z)Ljava/util/Map;

    move-result-object v3

    .line 5
    invoke-direct {p0, p6}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->convertHttpCallback(Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;)Lcom/tmc/network/INetworkCallback;

    move-result-object v6

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    .line 6
    invoke-virtual/range {v1 .. v6}, Lcom/tmc/network/HttpRequestor;->put(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/tmc/network/INetworkCallback;)Lokhttp3/Call;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    .line 7
    :goto_0
    invoke-direct {p0, p2}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->getCallId(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 8
    iget-object p4, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->requestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p4, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 9
    :goto_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Http Request Fail,Exception_"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ":R002"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-direct {p0, p2}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->getCallId(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    .line 11
    const-string p3, "R002"

    invoke-direct {p0, p3, p1, p6, p2}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->requestFail(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;Ljava/lang/String;)V

    :cond_1
    :goto_2
    return-void
.end method

.method public final setNetworkImprove(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->isNetworkImprove:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setTAG(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public startPreConnect()V
    .locals 3

    .line 1
    sget-object v0, Lcom/tmc/network/NetworkConfig;->INSTANCE:Lcom/tmc/network/NetworkConfig;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tmc/network/NetworkConfig;->isNetworkImproveEnable()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Lcom/tmc/network/strategy/c;

    .line 11
    .line 12
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/AppDynamicBuildConfig;->getMINI_APP_BASE_URL()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-direct {v0, v1}, Lcom/tmc/network/strategy/c;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    new-instance v1, Lcom/tmc/network/strategy/c;

    .line 20
    .line 21
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/AppDynamicBuildConfig;->getBASE_OSS_URL()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-direct {v1, v2}, Lcom/tmc/network/strategy/c;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/tmc/network/strategy/c;->a()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/tmc/network/strategy/c;->a()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public bridge synthetic uploadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Boolean;Lcom/cloud/tmc/kernel/proxy/network/IUploadCallback;)V
    .locals 9

    .line 1
    invoke-virtual/range {p7 .. p7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->uploadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;ZLcom/cloud/tmc/kernel/proxy/network/IUploadCallback;)V

    return-void
.end method

.method public uploadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;ZLcom/cloud/tmc/kernel/proxy/network/IUploadCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/cloud/tmc/kernel/proxy/network/IUploadCallback;",
            ")V"
        }
    .end annotation

    const-string p5, "url"

    invoke-static {p1, p5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "filePath"

    invoke-static {p2, p5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "callback"

    invoke-static {p8, p5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p5, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->TAG:Ljava/lang/String;

    new-instance p7, Ljava/lang/StringBuilder;

    invoke-direct {p7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "uploadFile, url: "

    invoke-virtual {p7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p7

    invoke-static {p5, p7}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :try_start_0
    new-instance p5, Ljava/util/LinkedHashMap;

    invoke-direct {p5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    const-string p7, "callbackId"

    if-nez p3, :cond_0

    const-string v0, ""

    goto :goto_0

    :catchall_0
    move-exception p2

    goto/16 :goto_4

    :cond_0
    move-object v0, p3

    :goto_0
    invoke-interface {p5, p7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    const-string p7, "upload"

    const-string v0, "true"

    invoke-interface {p5, p7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_1

    .line 6
    invoke-interface {p5, p4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 7
    :cond_1
    new-instance p7, Ljava/io/File;

    invoke-direct {p7, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    const-string p2, "multipart/form-data"

    const/4 v0, 0x1

    if-eqz p4, :cond_3

    .line 9
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 10
    const-string v3, "content-type"

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v3, v4, v0}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 11
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    goto :goto_1

    .line 12
    :cond_3
    sget-object v1, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    sget-object v2, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v2, p2}, Lokhttp3/MediaType$Companion;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p2

    invoke-virtual {v1, p2, p7}, Lokhttp3/RequestBody$Companion;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object p2

    .line 13
    new-instance v1, Lokhttp3/MultipartBody$Builder;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0, v2}, Lokhttp3/MultipartBody$Builder;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v0, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    invoke-virtual {v1, v0}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    move-result-object v0

    if-eqz p6, :cond_4

    .line 14
    invoke-interface {p6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p6

    invoke-interface {p6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p6

    :goto_2
    invoke-interface {p6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 15
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    goto :goto_2

    .line 16
    :cond_4
    const-string p6, "file"

    invoke-virtual {p7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p7

    invoke-virtual {v0, p6, p7, p2}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    .line 17
    new-instance p2, Lokhttp3/Request$Builder;

    invoke-direct {p2}, Lokhttp3/Request$Builder;-><init>()V

    .line 18
    invoke-virtual {p2, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p2

    .line 19
    invoke-virtual {v0}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object p6

    invoke-virtual {p2, p6}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p2

    .line 20
    sget-object p6, Lokhttp3/Headers;->Companion:Lokhttp3/Headers$Companion;

    invoke-virtual {p6, p5}, Lokhttp3/Headers$Companion;->of(Ljava/util/Map;)Lokhttp3/Headers;

    move-result-object p5

    invoke-virtual {p2, p5}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    move-result-object p2

    .line 21
    invoke-virtual {p2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p2

    .line 22
    sget-object p5, Lcom/tmc/network/HttpRequestor;->Companion:Lcom/tmc/network/HttpRequestor$Companion;

    invoke-virtual {p5}, Lcom/tmc/network/HttpRequestor$Companion;->getInstance()Lcom/tmc/network/HttpRequestor;

    move-result-object p5

    if-eqz p5, :cond_5

    invoke-virtual {p5}, Lcom/tmc/network/HttpRequestor;->getHttpClient()Lcom/tmc/network/HttpClient;

    move-result-object p5

    move-object v1, p5

    goto :goto_3

    :cond_5
    move-object v1, v2

    .line 23
    :goto_3
    invoke-direct {p0, p1, p3, p8}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->registerUploadIntercept(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/network/IUploadCallback;)Lokhttp3/Interceptor;

    move-result-object p5

    if-eqz v1, :cond_6

    .line 24
    invoke-virtual {v1}, Lcom/tmc/network/HttpClient;->getConfig()Lcom/tmc/network/HttpClientConfig;

    move-result-object p6

    if-eqz p6, :cond_6

    invoke-virtual {p6, p5}, Lcom/tmc/network/HttpClientConfig;->addInterceptor(Lokhttp3/Interceptor;)Lcom/tmc/network/HttpClientConfig;

    :cond_6
    if-eqz v1, :cond_7

    .line 25
    invoke-virtual {v1}, Lcom/tmc/network/HttpClient;->resetHttpClient()V

    :cond_7
    if-eqz v1, :cond_8

    .line 26
    invoke-virtual {v1, p2}, Lcom/tmc/network/HttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v2

    :cond_8
    move-object p2, v2

    if-eqz p4, :cond_9

    .line 27
    const-string p6, "m-timeout"

    invoke-interface {p4, p6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/String;

    if-eqz p6, :cond_9

    .line 28
    invoke-static {p6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p6

    if-eqz p2, :cond_9

    .line 29
    invoke-interface {p2}, Lokhttp3/Call;->timeout()Lokio/Timeout;

    move-result-object v0

    if-eqz v0, :cond_9

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p6, p7, v2}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    :cond_9
    if-eqz p3, :cond_a

    .line 30
    iget-object p6, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->uploadMap:Ljava/util/HashMap;

    invoke-interface {p6, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    if-eqz p2, :cond_b

    .line 31
    new-instance p3, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$uploadFile$6;

    move-object v0, p3

    move-object v2, p5

    move-object v3, p0

    move-object v4, p1

    move-object v5, p8

    invoke-direct/range {v0 .. v5}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$uploadFile$6;-><init>(Lcom/tmc/network/HttpClient;Lokhttp3/Interceptor;Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/network/IUploadCallback;)V

    invoke-static {p2, p3}, Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;->enqueue(Lokhttp3/Call;Lokhttp3/Callback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    .line 32
    :goto_4
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "UploadFile fail,Exception_"

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ":U002"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 33
    invoke-direct {p0, p4}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->getCallId(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    .line 34
    const-string v2, "U002"

    move-object v0, p0

    move-object v1, p1

    move-object v4, p8

    invoke-direct/range {v0 .. v5}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->uploadFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/network/IUploadCallback;Ljava/lang/String;)V

    :cond_b
    :goto_5
    return-void
.end method
