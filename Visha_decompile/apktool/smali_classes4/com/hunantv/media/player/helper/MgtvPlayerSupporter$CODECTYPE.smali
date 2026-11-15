.class public final enum Lcom/hunantv/media/player/helper/MgtvPlayerSupporter$CODECTYPE;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/player/helper/MgtvPlayerSupporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CODECTYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hunantv/media/player/helper/MgtvPlayerSupporter$CODECTYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hunantv/media/player/helper/MgtvPlayerSupporter$CODECTYPE;

.field public static final enum AVC:Lcom/hunantv/media/player/helper/MgtvPlayerSupporter$CODECTYPE;

.field public static final enum HEVC:Lcom/hunantv/media/player/helper/MgtvPlayerSupporter$CODECTYPE;

.field public static final enum OTHER:Lcom/hunantv/media/player/helper/MgtvPlayerSupporter$CODECTYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/hunantv/media/player/helper/MgtvPlayerSupporter$CODECTYPE;

    const-string v1, "HEVC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hunantv/media/player/helper/MgtvPlayerSupporter$CODECTYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hunantv/media/player/helper/MgtvPlayerSupporter$CODECTYPE;->HEVC:Lcom/hunantv/media/player/helper/MgtvPlayerSupporter$CODECTYPE;

    new-instance v1, Lcom/hunantv/media/player/helper/MgtvPlayerSupporter$CODECTYPE;

    const-string v2, "AVC"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/hunantv/media/player/helper/MgtvPlayerSupporter$CODECTYPE;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hunantv/media/player/helper/MgtvPlayerSupporter$CODECTYPE;->AVC:Lcom/hunantv/media/player/helper/MgtvPlayerSupporter$CODECTYPE;

    new-instance v2, Lcom/hunantv/media/player/helper/MgtvPlayerSupporter$CODECTYPE;

    const-string v3, "OTHER"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/hunantv/media/player/helper/MgtvPlayerSupporter$CODECTYPE;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/hunantv/media/player/helper/MgtvPlayerSupporter$CODECTYPE;->OTHER:Lcom/hunantv/media/player/helper/MgtvPlayerSupporter$CODECTYPE;

    filled-new-array {v0, v1, v2}, [Lcom/hunantv/media/player/helper/MgtvPlayerSupporter$CODECTYPE;

    move-result-object v0

    sput-object v0, Lcom/hunantv/media/player/helper/MgtvPlayerSupporter$CODECTYPE;->$VALUES:[Lcom/hunantv/media/player/helper/MgtvPlayerSupporter$CODECTYPE;

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

.method public static valueOf(Ljava/lang/String;)Lcom/hunantv/media/player/helper/MgtvPlayerSupporter$CODECTYPE;
    .locals 1

    const-class v0, Lcom/hunantv/media/player/helper/MgtvPlayerSupporter$CODECTYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hunantv/media/player/helper/MgtvPlayerSupporter$CODECTYPE;

    return-object p0
.end method

.method public static values()[Lcom/hunantv/media/player/helper/MgtvPlayerSupporter$CODECTYPE;
    .locals 1

    sget-object v0, Lcom/hunantv/media/player/helper/MgtvPlayerSupporter$CODECTYPE;->$VALUES:[Lcom/hunantv/media/player/helper/MgtvPlayerSupporter$CODECTYPE;

    invoke-virtual {v0}, [Lcom/hunantv/media/player/helper/MgtvPlayerSupporter$CODECTYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hunantv/media/player/helper/MgtvPlayerSupporter$CODECTYPE;

    return-object v0
.end method
