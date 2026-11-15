.class final enum Lcom/mq/mgmi/client/message/internal/CommsReceiver$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mq/mgmi/client/message/internal/CommsReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mq/mgmi/client/message/internal/CommsReceiver$State;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum RECEIVING:Lcom/mq/mgmi/client/message/internal/CommsReceiver$State;

.field public static final enum RUNNING:Lcom/mq/mgmi/client/message/internal/CommsReceiver$State;

.field public static final enum STARTING:Lcom/mq/mgmi/client/message/internal/CommsReceiver$State;

.field public static final enum STOPPED:Lcom/mq/mgmi/client/message/internal/CommsReceiver$State;

.field public static final synthetic b:[Lcom/mq/mgmi/client/message/internal/CommsReceiver$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/mq/mgmi/client/message/internal/CommsReceiver$State;

    const-string v1, "STOPPED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mq/mgmi/client/message/internal/CommsReceiver$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mq/mgmi/client/message/internal/CommsReceiver$State;->STOPPED:Lcom/mq/mgmi/client/message/internal/CommsReceiver$State;

    new-instance v1, Lcom/mq/mgmi/client/message/internal/CommsReceiver$State;

    const-string v2, "RUNNING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/mq/mgmi/client/message/internal/CommsReceiver$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/mq/mgmi/client/message/internal/CommsReceiver$State;->RUNNING:Lcom/mq/mgmi/client/message/internal/CommsReceiver$State;

    new-instance v2, Lcom/mq/mgmi/client/message/internal/CommsReceiver$State;

    const-string v3, "STARTING"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/mq/mgmi/client/message/internal/CommsReceiver$State;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/mq/mgmi/client/message/internal/CommsReceiver$State;->STARTING:Lcom/mq/mgmi/client/message/internal/CommsReceiver$State;

    new-instance v3, Lcom/mq/mgmi/client/message/internal/CommsReceiver$State;

    const-string v4, "RECEIVING"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/mq/mgmi/client/message/internal/CommsReceiver$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/mq/mgmi/client/message/internal/CommsReceiver$State;->RECEIVING:Lcom/mq/mgmi/client/message/internal/CommsReceiver$State;

    filled-new-array {v0, v1, v2, v3}, [Lcom/mq/mgmi/client/message/internal/CommsReceiver$State;

    move-result-object v0

    sput-object v0, Lcom/mq/mgmi/client/message/internal/CommsReceiver$State;->b:[Lcom/mq/mgmi/client/message/internal/CommsReceiver$State;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mq/mgmi/client/message/internal/CommsReceiver$State;
    .locals 1

    const-class v0, Lcom/mq/mgmi/client/message/internal/CommsReceiver$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mq/mgmi/client/message/internal/CommsReceiver$State;

    return-object p0
.end method

.method public static values()[Lcom/mq/mgmi/client/message/internal/CommsReceiver$State;
    .locals 1

    sget-object v0, Lcom/mq/mgmi/client/message/internal/CommsReceiver$State;->b:[Lcom/mq/mgmi/client/message/internal/CommsReceiver$State;

    invoke-virtual {v0}, [Lcom/mq/mgmi/client/message/internal/CommsReceiver$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mq/mgmi/client/message/internal/CommsReceiver$State;

    return-object v0
.end method
