.class public final enum Lcom/hunantv/media/player/MgtvMediaPlayer$EncodeType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/player/MgtvMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EncodeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hunantv/media/player/MgtvMediaPlayer$EncodeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hunantv/media/player/MgtvMediaPlayer$EncodeType;

.field public static final enum H264:Lcom/hunantv/media/player/MgtvMediaPlayer$EncodeType;

.field public static final enum H265:Lcom/hunantv/media/player/MgtvMediaPlayer$EncodeType;

.field public static final enum MPEG2:Lcom/hunantv/media/player/MgtvMediaPlayer$EncodeType;

.field public static final enum MPEG4:Lcom/hunantv/media/player/MgtvMediaPlayer$EncodeType;

.field public static final enum OTHER:Lcom/hunantv/media/player/MgtvMediaPlayer$EncodeType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/hunantv/media/player/MgtvMediaPlayer$EncodeType;

    const-string v1, "H264"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hunantv/media/player/MgtvMediaPlayer$EncodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hunantv/media/player/MgtvMediaPlayer$EncodeType;->H264:Lcom/hunantv/media/player/MgtvMediaPlayer$EncodeType;

    new-instance v1, Lcom/hunantv/media/player/MgtvMediaPlayer$EncodeType;

    const-string v2, "H265"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/hunantv/media/player/MgtvMediaPlayer$EncodeType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hunantv/media/player/MgtvMediaPlayer$EncodeType;->H265:Lcom/hunantv/media/player/MgtvMediaPlayer$EncodeType;

    new-instance v2, Lcom/hunantv/media/player/MgtvMediaPlayer$EncodeType;

    const-string v3, "MPEG2"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/hunantv/media/player/MgtvMediaPlayer$EncodeType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/hunantv/media/player/MgtvMediaPlayer$EncodeType;->MPEG2:Lcom/hunantv/media/player/MgtvMediaPlayer$EncodeType;

    new-instance v3, Lcom/hunantv/media/player/MgtvMediaPlayer$EncodeType;

    const-string v4, "MPEG4"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/hunantv/media/player/MgtvMediaPlayer$EncodeType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/hunantv/media/player/MgtvMediaPlayer$EncodeType;->MPEG4:Lcom/hunantv/media/player/MgtvMediaPlayer$EncodeType;

    new-instance v4, Lcom/hunantv/media/player/MgtvMediaPlayer$EncodeType;

    const-string v5, "OTHER"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/hunantv/media/player/MgtvMediaPlayer$EncodeType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/hunantv/media/player/MgtvMediaPlayer$EncodeType;->OTHER:Lcom/hunantv/media/player/MgtvMediaPlayer$EncodeType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/hunantv/media/player/MgtvMediaPlayer$EncodeType;

    move-result-object v0

    sput-object v0, Lcom/hunantv/media/player/MgtvMediaPlayer$EncodeType;->$VALUES:[Lcom/hunantv/media/player/MgtvMediaPlayer$EncodeType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/hunantv/media/player/MgtvMediaPlayer$EncodeType;
    .locals 1

    const-class v0, Lcom/hunantv/media/player/MgtvMediaPlayer$EncodeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hunantv/media/player/MgtvMediaPlayer$EncodeType;

    return-object p0
.end method

.method public static values()[Lcom/hunantv/media/player/MgtvMediaPlayer$EncodeType;
    .locals 1

    sget-object v0, Lcom/hunantv/media/player/MgtvMediaPlayer$EncodeType;->$VALUES:[Lcom/hunantv/media/player/MgtvMediaPlayer$EncodeType;

    invoke-virtual {v0}, [Lcom/hunantv/media/player/MgtvMediaPlayer$EncodeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hunantv/media/player/MgtvMediaPlayer$EncodeType;

    return-object v0
.end method
