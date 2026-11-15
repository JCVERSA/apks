.class public final enum Lcom/example/dispatcher_client/FlowStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/example/dispatcher_client/FlowStatus;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0008\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/example/dispatcher_client/FlowStatus;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "START",
        "COMPONENT",
        "COMPLETE",
        "ERROR",
        "COMPONENT_TRICKLE",
        "dispatcher_client_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Ldb3;

.field private static final synthetic $VALUES:[Lcom/example/dispatcher_client/FlowStatus;

.field public static final enum COMPLETE:Lcom/example/dispatcher_client/FlowStatus;

.field public static final enum COMPONENT:Lcom/example/dispatcher_client/FlowStatus;

.field public static final enum COMPONENT_TRICKLE:Lcom/example/dispatcher_client/FlowStatus;

.field public static final enum ERROR:Lcom/example/dispatcher_client/FlowStatus;

.field public static final enum START:Lcom/example/dispatcher_client/FlowStatus;


# direct methods
.method private static final synthetic $values()[Lcom/example/dispatcher_client/FlowStatus;
    .locals 5

    sget-object v0, Lcom/example/dispatcher_client/FlowStatus;->START:Lcom/example/dispatcher_client/FlowStatus;

    sget-object v1, Lcom/example/dispatcher_client/FlowStatus;->COMPONENT:Lcom/example/dispatcher_client/FlowStatus;

    sget-object v2, Lcom/example/dispatcher_client/FlowStatus;->COMPLETE:Lcom/example/dispatcher_client/FlowStatus;

    sget-object v3, Lcom/example/dispatcher_client/FlowStatus;->ERROR:Lcom/example/dispatcher_client/FlowStatus;

    sget-object v4, Lcom/example/dispatcher_client/FlowStatus;->COMPONENT_TRICKLE:Lcom/example/dispatcher_client/FlowStatus;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/example/dispatcher_client/FlowStatus;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/example/dispatcher_client/FlowStatus;

    const-string v1, "START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/example/dispatcher_client/FlowStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/example/dispatcher_client/FlowStatus;->START:Lcom/example/dispatcher_client/FlowStatus;

    new-instance v0, Lcom/example/dispatcher_client/FlowStatus;

    const-string v1, "COMPONENT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/example/dispatcher_client/FlowStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/example/dispatcher_client/FlowStatus;->COMPONENT:Lcom/example/dispatcher_client/FlowStatus;

    new-instance v0, Lcom/example/dispatcher_client/FlowStatus;

    const-string v1, "COMPLETE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/example/dispatcher_client/FlowStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/example/dispatcher_client/FlowStatus;->COMPLETE:Lcom/example/dispatcher_client/FlowStatus;

    new-instance v0, Lcom/example/dispatcher_client/FlowStatus;

    const-string v1, "ERROR"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/example/dispatcher_client/FlowStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/example/dispatcher_client/FlowStatus;->ERROR:Lcom/example/dispatcher_client/FlowStatus;

    new-instance v0, Lcom/example/dispatcher_client/FlowStatus;

    const-string v1, "COMPONENT_TRICKLE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/example/dispatcher_client/FlowStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/example/dispatcher_client/FlowStatus;->COMPONENT_TRICKLE:Lcom/example/dispatcher_client/FlowStatus;

    invoke-static {}, Lcom/example/dispatcher_client/FlowStatus;->$values()[Lcom/example/dispatcher_client/FlowStatus;

    move-result-object v0

    sput-object v0, Lcom/example/dispatcher_client/FlowStatus;->$VALUES:[Lcom/example/dispatcher_client/FlowStatus;

    invoke-static {v0}, Lkotlin/enums/a;->a([Ljava/lang/Enum;)Ldb3;

    move-result-object v0

    sput-object v0, Lcom/example/dispatcher_client/FlowStatus;->$ENTRIES:Ldb3;

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

.method public static getEntries()Ldb3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldb3;"
        }
    .end annotation

    sget-object v0, Lcom/example/dispatcher_client/FlowStatus;->$ENTRIES:Ldb3;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/example/dispatcher_client/FlowStatus;
    .locals 1

    const-class v0, Lcom/example/dispatcher_client/FlowStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/example/dispatcher_client/FlowStatus;

    return-object p0
.end method

.method public static values()[Lcom/example/dispatcher_client/FlowStatus;
    .locals 1

    sget-object v0, Lcom/example/dispatcher_client/FlowStatus;->$VALUES:[Lcom/example/dispatcher_client/FlowStatus;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/example/dispatcher_client/FlowStatus;

    return-object v0
.end method
