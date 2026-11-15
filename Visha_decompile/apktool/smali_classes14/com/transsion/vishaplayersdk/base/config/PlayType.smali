.class public final enum Lcom/transsion/vishaplayersdk/base/config/PlayType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/vishaplayersdk/base/config/PlayType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/vishaplayersdk/base/config/PlayType;

.field public static final enum PLAY_TYPE_LIVE:Lcom/transsion/vishaplayersdk/base/config/PlayType;

.field public static final enum PLAY_TYPE_LOCAL:Lcom/transsion/vishaplayersdk/base/config/PlayType;

.field public static final enum PLAY_TYPE_SHORT_VIDEO:Lcom/transsion/vishaplayersdk/base/config/PlayType;

.field public static final enum PLAY_TYPE_VOD:Lcom/transsion/vishaplayersdk/base/config/PlayType;


# direct methods
.method private static synthetic $values()[Lcom/transsion/vishaplayersdk/base/config/PlayType;
    .locals 4

    sget-object v0, Lcom/transsion/vishaplayersdk/base/config/PlayType;->PLAY_TYPE_VOD:Lcom/transsion/vishaplayersdk/base/config/PlayType;

    sget-object v1, Lcom/transsion/vishaplayersdk/base/config/PlayType;->PLAY_TYPE_LIVE:Lcom/transsion/vishaplayersdk/base/config/PlayType;

    sget-object v2, Lcom/transsion/vishaplayersdk/base/config/PlayType;->PLAY_TYPE_LOCAL:Lcom/transsion/vishaplayersdk/base/config/PlayType;

    sget-object v3, Lcom/transsion/vishaplayersdk/base/config/PlayType;->PLAY_TYPE_SHORT_VIDEO:Lcom/transsion/vishaplayersdk/base/config/PlayType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/transsion/vishaplayersdk/base/config/PlayType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/transsion/vishaplayersdk/base/config/PlayType;

    const-string v1, "PLAY_TYPE_VOD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/vishaplayersdk/base/config/PlayType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/vishaplayersdk/base/config/PlayType;->PLAY_TYPE_VOD:Lcom/transsion/vishaplayersdk/base/config/PlayType;

    new-instance v0, Lcom/transsion/vishaplayersdk/base/config/PlayType;

    const-string v1, "PLAY_TYPE_LIVE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/transsion/vishaplayersdk/base/config/PlayType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/vishaplayersdk/base/config/PlayType;->PLAY_TYPE_LIVE:Lcom/transsion/vishaplayersdk/base/config/PlayType;

    new-instance v0, Lcom/transsion/vishaplayersdk/base/config/PlayType;

    const-string v1, "PLAY_TYPE_LOCAL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/transsion/vishaplayersdk/base/config/PlayType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/vishaplayersdk/base/config/PlayType;->PLAY_TYPE_LOCAL:Lcom/transsion/vishaplayersdk/base/config/PlayType;

    new-instance v0, Lcom/transsion/vishaplayersdk/base/config/PlayType;

    const-string v1, "PLAY_TYPE_SHORT_VIDEO"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/transsion/vishaplayersdk/base/config/PlayType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/vishaplayersdk/base/config/PlayType;->PLAY_TYPE_SHORT_VIDEO:Lcom/transsion/vishaplayersdk/base/config/PlayType;

    invoke-static {}, Lcom/transsion/vishaplayersdk/base/config/PlayType;->$values()[Lcom/transsion/vishaplayersdk/base/config/PlayType;

    move-result-object v0

    sput-object v0, Lcom/transsion/vishaplayersdk/base/config/PlayType;->$VALUES:[Lcom/transsion/vishaplayersdk/base/config/PlayType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/vishaplayersdk/base/config/PlayType;
    .locals 1

    const-class v0, Lcom/transsion/vishaplayersdk/base/config/PlayType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/vishaplayersdk/base/config/PlayType;

    return-object p0
.end method

.method public static values()[Lcom/transsion/vishaplayersdk/base/config/PlayType;
    .locals 1

    sget-object v0, Lcom/transsion/vishaplayersdk/base/config/PlayType;->$VALUES:[Lcom/transsion/vishaplayersdk/base/config/PlayType;

    invoke-virtual {v0}, [Lcom/transsion/vishaplayersdk/base/config/PlayType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/vishaplayersdk/base/config/PlayType;

    return-object v0
.end method
