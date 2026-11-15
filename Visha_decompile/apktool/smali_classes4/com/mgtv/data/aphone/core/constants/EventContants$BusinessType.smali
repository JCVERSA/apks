.class public final enum Lcom/mgtv/data/aphone/core/constants/EventContants$BusinessType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgtv/data/aphone/core/constants/EventContants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BusinessType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mgtv/data/aphone/core/constants/EventContants$BusinessType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mgtv/data/aphone/core/constants/EventContants$BusinessType;

.field public static final enum ADVERT:Lcom/mgtv/data/aphone/core/constants/EventContants$BusinessType;

.field public static final enum LIVE_PLAY:Lcom/mgtv/data/aphone/core/constants/EventContants$BusinessType;

.field public static final enum NOT_NET_WORK_PLAY:Lcom/mgtv/data/aphone/core/constants/EventContants$BusinessType;

.field public static final enum POINT_PLAY:Lcom/mgtv/data/aphone/core/constants/EventContants$BusinessType;

.field public static final enum USER_ACTION:Lcom/mgtv/data/aphone/core/constants/EventContants$BusinessType;


# instance fields
.field private bid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/mgtv/data/aphone/core/constants/EventContants$BusinessType;

    const/4 v1, 0x0

    const-string v2, "2.1.1"

    const-string v3, "POINT_PLAY"

    invoke-direct {v0, v3, v1, v2}, Lcom/mgtv/data/aphone/core/constants/EventContants$BusinessType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mgtv/data/aphone/core/constants/EventContants$BusinessType;->POINT_PLAY:Lcom/mgtv/data/aphone/core/constants/EventContants$BusinessType;

    new-instance v1, Lcom/mgtv/data/aphone/core/constants/EventContants$BusinessType;

    const/4 v2, 0x1

    const-string v3, "2.1.1.1"

    const-string v4, "LIVE_PLAY"

    invoke-direct {v1, v4, v2, v3}, Lcom/mgtv/data/aphone/core/constants/EventContants$BusinessType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/mgtv/data/aphone/core/constants/EventContants$BusinessType;->LIVE_PLAY:Lcom/mgtv/data/aphone/core/constants/EventContants$BusinessType;

    new-instance v2, Lcom/mgtv/data/aphone/core/constants/EventContants$BusinessType;

    const/4 v3, 0x2

    const-string v4, "2.1.10"

    const-string v5, "ADVERT"

    invoke-direct {v2, v5, v3, v4}, Lcom/mgtv/data/aphone/core/constants/EventContants$BusinessType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/mgtv/data/aphone/core/constants/EventContants$BusinessType;->ADVERT:Lcom/mgtv/data/aphone/core/constants/EventContants$BusinessType;

    new-instance v3, Lcom/mgtv/data/aphone/core/constants/EventContants$BusinessType;

    const/4 v4, 0x3

    const-string v5, "2.1.11"

    const-string v6, "USER_ACTION"

    invoke-direct {v3, v6, v4, v5}, Lcom/mgtv/data/aphone/core/constants/EventContants$BusinessType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/mgtv/data/aphone/core/constants/EventContants$BusinessType;->USER_ACTION:Lcom/mgtv/data/aphone/core/constants/EventContants$BusinessType;

    new-instance v4, Lcom/mgtv/data/aphone/core/constants/EventContants$BusinessType;

    const/4 v5, 0x4

    const-string v6, "2.1.1.3"

    const-string v7, "NOT_NET_WORK_PLAY"

    invoke-direct {v4, v7, v5, v6}, Lcom/mgtv/data/aphone/core/constants/EventContants$BusinessType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/mgtv/data/aphone/core/constants/EventContants$BusinessType;->NOT_NET_WORK_PLAY:Lcom/mgtv/data/aphone/core/constants/EventContants$BusinessType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/mgtv/data/aphone/core/constants/EventContants$BusinessType;

    move-result-object v0

    sput-object v0, Lcom/mgtv/data/aphone/core/constants/EventContants$BusinessType;->$VALUES:[Lcom/mgtv/data/aphone/core/constants/EventContants$BusinessType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/mgtv/data/aphone/core/constants/EventContants$BusinessType;->bid:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mgtv/data/aphone/core/constants/EventContants$BusinessType;
    .locals 1

    const-class v0, Lcom/mgtv/data/aphone/core/constants/EventContants$BusinessType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mgtv/data/aphone/core/constants/EventContants$BusinessType;

    return-object p0
.end method

.method public static values()[Lcom/mgtv/data/aphone/core/constants/EventContants$BusinessType;
    .locals 1

    sget-object v0, Lcom/mgtv/data/aphone/core/constants/EventContants$BusinessType;->$VALUES:[Lcom/mgtv/data/aphone/core/constants/EventContants$BusinessType;

    invoke-virtual {v0}, [Lcom/mgtv/data/aphone/core/constants/EventContants$BusinessType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mgtv/data/aphone/core/constants/EventContants$BusinessType;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/data/aphone/core/constants/EventContants$BusinessType;->bid:Ljava/lang/String;

    return-object p0
.end method
