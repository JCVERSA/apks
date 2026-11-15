.class public final enum Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/player/MgtvMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PlayStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;

.field public static final enum COMPLETED:Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;

.field public static final enum ERROR:Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;

.field public static final enum IDLE:Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;

.field public static final enum PAUSED:Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;

.field public static final enum PLAYING:Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;

.field public static final enum PREPARED:Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;

.field public static final enum PREPARING:Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;

    const-string v1, "ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;->ERROR:Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;

    new-instance v1, Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;

    const-string v2, "IDLE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;->IDLE:Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;

    new-instance v2, Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;

    const-string v3, "PREPARING"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;->PREPARING:Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;

    new-instance v3, Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;

    const-string v4, "PREPARED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;->PREPARED:Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;

    new-instance v4, Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;

    const-string v5, "PLAYING"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;->PLAYING:Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;

    new-instance v5, Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;

    const-string v6, "PAUSED"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;->PAUSED:Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;

    new-instance v6, Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;

    const-string v7, "COMPLETED"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;->COMPLETED:Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;

    filled-new-array/range {v0 .. v6}, [Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;

    move-result-object v0

    sput-object v0, Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;->$VALUES:[Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;
    .locals 1

    const-class v0, Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;

    return-object p0
.end method

.method public static values()[Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;
    .locals 1

    sget-object v0, Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;->$VALUES:[Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;

    invoke-virtual {v0}, [Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;

    return-object v0
.end method
