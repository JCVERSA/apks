.class public final enum Lcom/transsion/apiinvoke/invoke/connect/ConnectState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/apiinvoke/invoke/connect/ConnectState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/apiinvoke/invoke/connect/ConnectState;

.field public static final enum connected:Lcom/transsion/apiinvoke/invoke/connect/ConnectState;

.field public static final enum connecting:Lcom/transsion/apiinvoke/invoke/connect/ConnectState;

.field public static final enum disconnected:Lcom/transsion/apiinvoke/invoke/connect/ConnectState;

.field public static final enum disconnecting:Lcom/transsion/apiinvoke/invoke/connect/ConnectState;

.field public static final enum waitConnect:Lcom/transsion/apiinvoke/invoke/connect/ConnectState;


# direct methods
.method private static synthetic $values()[Lcom/transsion/apiinvoke/invoke/connect/ConnectState;
    .locals 5

    sget-object v0, Lcom/transsion/apiinvoke/invoke/connect/ConnectState;->connecting:Lcom/transsion/apiinvoke/invoke/connect/ConnectState;

    sget-object v1, Lcom/transsion/apiinvoke/invoke/connect/ConnectState;->connected:Lcom/transsion/apiinvoke/invoke/connect/ConnectState;

    sget-object v2, Lcom/transsion/apiinvoke/invoke/connect/ConnectState;->disconnecting:Lcom/transsion/apiinvoke/invoke/connect/ConnectState;

    sget-object v3, Lcom/transsion/apiinvoke/invoke/connect/ConnectState;->disconnected:Lcom/transsion/apiinvoke/invoke/connect/ConnectState;

    sget-object v4, Lcom/transsion/apiinvoke/invoke/connect/ConnectState;->waitConnect:Lcom/transsion/apiinvoke/invoke/connect/ConnectState;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/transsion/apiinvoke/invoke/connect/ConnectState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/transsion/apiinvoke/invoke/connect/ConnectState;

    const-string v1, "connecting"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/apiinvoke/invoke/connect/ConnectState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/apiinvoke/invoke/connect/ConnectState;->connecting:Lcom/transsion/apiinvoke/invoke/connect/ConnectState;

    new-instance v0, Lcom/transsion/apiinvoke/invoke/connect/ConnectState;

    const-string v1, "connected"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/transsion/apiinvoke/invoke/connect/ConnectState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/apiinvoke/invoke/connect/ConnectState;->connected:Lcom/transsion/apiinvoke/invoke/connect/ConnectState;

    new-instance v0, Lcom/transsion/apiinvoke/invoke/connect/ConnectState;

    const-string v1, "disconnecting"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/transsion/apiinvoke/invoke/connect/ConnectState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/apiinvoke/invoke/connect/ConnectState;->disconnecting:Lcom/transsion/apiinvoke/invoke/connect/ConnectState;

    new-instance v0, Lcom/transsion/apiinvoke/invoke/connect/ConnectState;

    const-string v1, "disconnected"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/transsion/apiinvoke/invoke/connect/ConnectState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/apiinvoke/invoke/connect/ConnectState;->disconnected:Lcom/transsion/apiinvoke/invoke/connect/ConnectState;

    new-instance v0, Lcom/transsion/apiinvoke/invoke/connect/ConnectState;

    const-string v1, "waitConnect"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/transsion/apiinvoke/invoke/connect/ConnectState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/apiinvoke/invoke/connect/ConnectState;->waitConnect:Lcom/transsion/apiinvoke/invoke/connect/ConnectState;

    invoke-static {}, Lcom/transsion/apiinvoke/invoke/connect/ConnectState;->$values()[Lcom/transsion/apiinvoke/invoke/connect/ConnectState;

    move-result-object v0

    sput-object v0, Lcom/transsion/apiinvoke/invoke/connect/ConnectState;->$VALUES:[Lcom/transsion/apiinvoke/invoke/connect/ConnectState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/connect/ConnectState;
    .locals 1

    const-class v0, Lcom/transsion/apiinvoke/invoke/connect/ConnectState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/apiinvoke/invoke/connect/ConnectState;

    return-object p0
.end method

.method public static values()[Lcom/transsion/apiinvoke/invoke/connect/ConnectState;
    .locals 1

    sget-object v0, Lcom/transsion/apiinvoke/invoke/connect/ConnectState;->$VALUES:[Lcom/transsion/apiinvoke/invoke/connect/ConnectState;

    invoke-virtual {v0}, [Lcom/transsion/apiinvoke/invoke/connect/ConnectState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/apiinvoke/invoke/connect/ConnectState;

    return-object v0
.end method
