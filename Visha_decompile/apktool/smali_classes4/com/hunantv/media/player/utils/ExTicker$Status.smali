.class final enum Lcom/hunantv/media/player/utils/ExTicker$Status;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/player/utils/ExTicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hunantv/media/player/utils/ExTicker$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hunantv/media/player/utils/ExTicker$Status;

.field public static final enum STATE_PAUSE:Lcom/hunantv/media/player/utils/ExTicker$Status;

.field public static final enum STATE_START:Lcom/hunantv/media/player/utils/ExTicker$Status;

.field public static final enum STATE_STOP:Lcom/hunantv/media/player/utils/ExTicker$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/hunantv/media/player/utils/ExTicker$Status;

    const-string v1, "STATE_START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hunantv/media/player/utils/ExTicker$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hunantv/media/player/utils/ExTicker$Status;->STATE_START:Lcom/hunantv/media/player/utils/ExTicker$Status;

    new-instance v1, Lcom/hunantv/media/player/utils/ExTicker$Status;

    const-string v2, "STATE_PAUSE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/hunantv/media/player/utils/ExTicker$Status;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hunantv/media/player/utils/ExTicker$Status;->STATE_PAUSE:Lcom/hunantv/media/player/utils/ExTicker$Status;

    new-instance v2, Lcom/hunantv/media/player/utils/ExTicker$Status;

    const-string v3, "STATE_STOP"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/hunantv/media/player/utils/ExTicker$Status;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/hunantv/media/player/utils/ExTicker$Status;->STATE_STOP:Lcom/hunantv/media/player/utils/ExTicker$Status;

    filled-new-array {v0, v1, v2}, [Lcom/hunantv/media/player/utils/ExTicker$Status;

    move-result-object v0

    sput-object v0, Lcom/hunantv/media/player/utils/ExTicker$Status;->$VALUES:[Lcom/hunantv/media/player/utils/ExTicker$Status;

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

.method public static valueOf(Ljava/lang/String;)Lcom/hunantv/media/player/utils/ExTicker$Status;
    .locals 1

    const-class v0, Lcom/hunantv/media/player/utils/ExTicker$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hunantv/media/player/utils/ExTicker$Status;

    return-object p0
.end method

.method public static values()[Lcom/hunantv/media/player/utils/ExTicker$Status;
    .locals 1

    sget-object v0, Lcom/hunantv/media/player/utils/ExTicker$Status;->$VALUES:[Lcom/hunantv/media/player/utils/ExTicker$Status;

    invoke-virtual {v0}, [Lcom/hunantv/media/player/utils/ExTicker$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hunantv/media/player/utils/ExTicker$Status;

    return-object v0
.end method
