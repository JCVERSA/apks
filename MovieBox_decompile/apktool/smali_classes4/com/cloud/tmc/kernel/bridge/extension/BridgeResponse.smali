.class public Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse$NamedValue;,
        Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse$Error;
    }
.end annotation


# static fields
.field public static final ERROR_CODE_FORBIDDEN_ERROR:I = 0x4

.field public static final ERROR_CODE_INVALID_PARAM:I = 0x2

.field public static final ERROR_CODE_JAVA_EXCEPTION:I = 0x6

.field public static final ERROR_CODE_NOT_FOUND:I = 0x1

.field public static final ERROR_CODE_SUCCESS:I = 0x0

.field public static final ERROR_CODE_SYSTEM_ERROR:I = 0x5

.field public static final ERROR_CODE_UNAUTHORIZED_USERINFO:I = 0xa

.field public static final ERROR_CODE_UNKNOWN_ERROR:I = 0x3

.field public static FORBIDDEN_ERROR:Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse;

.field public static INVALID_PARAM:Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse;

.field public static NOT_FOUND:Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse;

.field public static SUCCESS:Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse;

.field public static UNAUTHORIZED_USERINFO_ERROR:Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse;

.field public static UNKNOWN_ERROR:Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse;


# instance fields
.field private response:Lcom/google/gson/JsonObject;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse$1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse$1;-><init>(Lcom/google/gson/JsonObject;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse;->SUCCESS:Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse;

    .line 8
    .line 9
    new-instance v0, Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse$Error;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    const-string v2, "not implemented!"

    .line 13
    .line 14
    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse$Error;-><init>(ILjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse;->NOT_FOUND:Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse;

    .line 18
    .line 19
    new-instance v0, Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse$Error;

    .line 20
    .line 21
    const/4 v1, 0x2

    .line 22
    const-string v2, "invalid parameter!"

    .line 23
    .line 24
    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse$Error;-><init>(ILjava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse;->INVALID_PARAM:Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse;

    .line 28
    .line 29
    new-instance v0, Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse$Error;

    .line 30
    .line 31
    const/4 v1, 0x3

    .line 32
    const-string v2, "unknown error!"

    .line 33
    .line 34
    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse$Error;-><init>(ILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    sput-object v0, Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse;->UNKNOWN_ERROR:Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse;

    .line 38
    .line 39
    new-instance v0, Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse$Error;

    .line 40
    .line 41
    const/4 v1, 0x4

    .line 42
    const-string v2, "forbidden error!"

    .line 43
    .line 44
    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse$Error;-><init>(ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse;->FORBIDDEN_ERROR:Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse;

    .line 48
    .line 49
    new-instance v0, Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse$Error;

    .line 50
    .line 51
    const/16 v1, 0xa

    .line 52
    .line 53
    const-string v2, "\u672a\u6388\u6743\u8bfb\u53d6\u7528\u6237\u4fe1\u606f!"

    .line 54
    .line 55
    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse$Error;-><init>(ILjava/lang/String;)V

    .line 56
    .line 57
    .line 58
    sput-object v0, Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse;->UNAUTHORIZED_USERINFO_ERROR:Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse;

    .line 59
    .line 60
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/gson/JsonObject;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse;->response:Lcom/google/gson/JsonObject;

    return-void
.end method

.method public static newError(ILjava/lang/String;)Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse$Error;
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse$Error;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse$Error;-><init>(ILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static newValue(Ljava/lang/String;Lcom/google/gson/JsonObject;)Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse$NamedValue;
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse$NamedValue;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse$NamedValue;-><init>(Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public get()Lcom/google/gson/JsonObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse;->response:Lcom/google/gson/JsonObject;

    .line 2
    .line 3
    return-object v0
.end method
