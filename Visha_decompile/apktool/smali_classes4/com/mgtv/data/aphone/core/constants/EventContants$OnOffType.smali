.class public final enum Lcom/mgtv/data/aphone/core/constants/EventContants$OnOffType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgtv/data/aphone/core/constants/EventContants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OnOffType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mgtv/data/aphone/core/constants/EventContants$OnOffType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mgtv/data/aphone/core/constants/EventContants$OnOffType;

.field public static final enum OFF:Lcom/mgtv/data/aphone/core/constants/EventContants$OnOffType;

.field public static final enum ON:Lcom/mgtv/data/aphone/core/constants/EventContants$OnOffType;

.field public static final enum SOME:Lcom/mgtv/data/aphone/core/constants/EventContants$OnOffType;


# instance fields
.field private bid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/mgtv/data/aphone/core/constants/EventContants$OnOffType;

    const/4 v1, 0x0

    const-string v2, "0"

    const-string v3, "OFF"

    invoke-direct {v0, v3, v1, v2}, Lcom/mgtv/data/aphone/core/constants/EventContants$OnOffType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mgtv/data/aphone/core/constants/EventContants$OnOffType;->OFF:Lcom/mgtv/data/aphone/core/constants/EventContants$OnOffType;

    new-instance v1, Lcom/mgtv/data/aphone/core/constants/EventContants$OnOffType;

    const/4 v2, 0x1

    const-string v3, "1"

    const-string v4, "ON"

    invoke-direct {v1, v4, v2, v3}, Lcom/mgtv/data/aphone/core/constants/EventContants$OnOffType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/mgtv/data/aphone/core/constants/EventContants$OnOffType;->ON:Lcom/mgtv/data/aphone/core/constants/EventContants$OnOffType;

    new-instance v2, Lcom/mgtv/data/aphone/core/constants/EventContants$OnOffType;

    const/4 v3, 0x2

    const-string v4, "2"

    const-string v5, "SOME"

    invoke-direct {v2, v5, v3, v4}, Lcom/mgtv/data/aphone/core/constants/EventContants$OnOffType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/mgtv/data/aphone/core/constants/EventContants$OnOffType;->SOME:Lcom/mgtv/data/aphone/core/constants/EventContants$OnOffType;

    filled-new-array {v0, v1, v2}, [Lcom/mgtv/data/aphone/core/constants/EventContants$OnOffType;

    move-result-object v0

    sput-object v0, Lcom/mgtv/data/aphone/core/constants/EventContants$OnOffType;->$VALUES:[Lcom/mgtv/data/aphone/core/constants/EventContants$OnOffType;

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

    iput-object p3, p0, Lcom/mgtv/data/aphone/core/constants/EventContants$OnOffType;->bid:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mgtv/data/aphone/core/constants/EventContants$OnOffType;
    .locals 1

    const-class v0, Lcom/mgtv/data/aphone/core/constants/EventContants$OnOffType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mgtv/data/aphone/core/constants/EventContants$OnOffType;

    return-object p0
.end method

.method public static values()[Lcom/mgtv/data/aphone/core/constants/EventContants$OnOffType;
    .locals 1

    sget-object v0, Lcom/mgtv/data/aphone/core/constants/EventContants$OnOffType;->$VALUES:[Lcom/mgtv/data/aphone/core/constants/EventContants$OnOffType;

    invoke-virtual {v0}, [Lcom/mgtv/data/aphone/core/constants/EventContants$OnOffType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mgtv/data/aphone/core/constants/EventContants$OnOffType;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/data/aphone/core/constants/EventContants$OnOffType;->bid:Ljava/lang/String;

    return-object p0
.end method
