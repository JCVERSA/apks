.class final enum Lcom/mq/mgmi/client/message/internal/CommsSender$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mq/mgmi/client/message/internal/CommsSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mq/mgmi/client/message/internal/CommsSender$State;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum RUNNING:Lcom/mq/mgmi/client/message/internal/CommsSender$State;

.field public static final enum STARTING:Lcom/mq/mgmi/client/message/internal/CommsSender$State;

.field public static final enum STOPPED:Lcom/mq/mgmi/client/message/internal/CommsSender$State;

.field public static final synthetic b:[Lcom/mq/mgmi/client/message/internal/CommsSender$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/mq/mgmi/client/message/internal/CommsSender$State;

    const-string v1, "STOPPED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mq/mgmi/client/message/internal/CommsSender$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mq/mgmi/client/message/internal/CommsSender$State;->STOPPED:Lcom/mq/mgmi/client/message/internal/CommsSender$State;

    new-instance v1, Lcom/mq/mgmi/client/message/internal/CommsSender$State;

    const-string v2, "RUNNING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/mq/mgmi/client/message/internal/CommsSender$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/mq/mgmi/client/message/internal/CommsSender$State;->RUNNING:Lcom/mq/mgmi/client/message/internal/CommsSender$State;

    new-instance v2, Lcom/mq/mgmi/client/message/internal/CommsSender$State;

    const-string v3, "STARTING"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/mq/mgmi/client/message/internal/CommsSender$State;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/mq/mgmi/client/message/internal/CommsSender$State;->STARTING:Lcom/mq/mgmi/client/message/internal/CommsSender$State;

    filled-new-array {v0, v1, v2}, [Lcom/mq/mgmi/client/message/internal/CommsSender$State;

    move-result-object v0

    sput-object v0, Lcom/mq/mgmi/client/message/internal/CommsSender$State;->b:[Lcom/mq/mgmi/client/message/internal/CommsSender$State;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mq/mgmi/client/message/internal/CommsSender$State;
    .locals 1

    const-class v0, Lcom/mq/mgmi/client/message/internal/CommsSender$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mq/mgmi/client/message/internal/CommsSender$State;

    return-object p0
.end method

.method public static values()[Lcom/mq/mgmi/client/message/internal/CommsSender$State;
    .locals 1

    sget-object v0, Lcom/mq/mgmi/client/message/internal/CommsSender$State;->b:[Lcom/mq/mgmi/client/message/internal/CommsSender$State;

    invoke-virtual {v0}, [Lcom/mq/mgmi/client/message/internal/CommsSender$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mq/mgmi/client/message/internal/CommsSender$State;

    return-object v0
.end method
