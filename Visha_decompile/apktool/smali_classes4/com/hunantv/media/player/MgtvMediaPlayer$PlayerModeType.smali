.class public final enum Lcom/hunantv/media/player/MgtvMediaPlayer$PlayerModeType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/player/MgtvMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PlayerModeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hunantv/media/player/MgtvMediaPlayer$PlayerModeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hunantv/media/player/MgtvMediaPlayer$PlayerModeType;

.field public static final enum TYPE_PLAYER_MODE_LIVE:Lcom/hunantv/media/player/MgtvMediaPlayer$PlayerModeType;

.field public static final enum TYPE_PLAYER_MODE_LOOP:Lcom/hunantv/media/player/MgtvMediaPlayer$PlayerModeType;

.field public static final enum TYPE_PLAYER_MODE_NORMAL:Lcom/hunantv/media/player/MgtvMediaPlayer$PlayerModeType;

.field public static final enum TYPE_PLAYER_MODE_SMOOTH:Lcom/hunantv/media/player/MgtvMediaPlayer$PlayerModeType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/hunantv/media/player/MgtvMediaPlayer$PlayerModeType;

    const-string v1, "TYPE_PLAYER_MODE_NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hunantv/media/player/MgtvMediaPlayer$PlayerModeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hunantv/media/player/MgtvMediaPlayer$PlayerModeType;->TYPE_PLAYER_MODE_NORMAL:Lcom/hunantv/media/player/MgtvMediaPlayer$PlayerModeType;

    new-instance v1, Lcom/hunantv/media/player/MgtvMediaPlayer$PlayerModeType;

    const-string v2, "TYPE_PLAYER_MODE_LIVE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/hunantv/media/player/MgtvMediaPlayer$PlayerModeType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hunantv/media/player/MgtvMediaPlayer$PlayerModeType;->TYPE_PLAYER_MODE_LIVE:Lcom/hunantv/media/player/MgtvMediaPlayer$PlayerModeType;

    new-instance v2, Lcom/hunantv/media/player/MgtvMediaPlayer$PlayerModeType;

    const-string v3, "TYPE_PLAYER_MODE_LOOP"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/hunantv/media/player/MgtvMediaPlayer$PlayerModeType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/hunantv/media/player/MgtvMediaPlayer$PlayerModeType;->TYPE_PLAYER_MODE_LOOP:Lcom/hunantv/media/player/MgtvMediaPlayer$PlayerModeType;

    new-instance v3, Lcom/hunantv/media/player/MgtvMediaPlayer$PlayerModeType;

    const-string v4, "TYPE_PLAYER_MODE_SMOOTH"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/hunantv/media/player/MgtvMediaPlayer$PlayerModeType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/hunantv/media/player/MgtvMediaPlayer$PlayerModeType;->TYPE_PLAYER_MODE_SMOOTH:Lcom/hunantv/media/player/MgtvMediaPlayer$PlayerModeType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/hunantv/media/player/MgtvMediaPlayer$PlayerModeType;

    move-result-object v0

    sput-object v0, Lcom/hunantv/media/player/MgtvMediaPlayer$PlayerModeType;->$VALUES:[Lcom/hunantv/media/player/MgtvMediaPlayer$PlayerModeType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/hunantv/media/player/MgtvMediaPlayer$PlayerModeType;
    .locals 1

    const-class v0, Lcom/hunantv/media/player/MgtvMediaPlayer$PlayerModeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hunantv/media/player/MgtvMediaPlayer$PlayerModeType;

    return-object p0
.end method

.method public static values()[Lcom/hunantv/media/player/MgtvMediaPlayer$PlayerModeType;
    .locals 1

    sget-object v0, Lcom/hunantv/media/player/MgtvMediaPlayer$PlayerModeType;->$VALUES:[Lcom/hunantv/media/player/MgtvMediaPlayer$PlayerModeType;

    invoke-virtual {v0}, [Lcom/hunantv/media/player/MgtvMediaPlayer$PlayerModeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hunantv/media/player/MgtvMediaPlayer$PlayerModeType;

    return-object v0
.end method
