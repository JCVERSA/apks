.class public final enum Lcom/transsion/liblan/TranMediaPlayer$ScaleType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/liblan/TranMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScaleType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/liblan/TranMediaPlayer$ScaleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/liblan/TranMediaPlayer$ScaleType;

.field public static final enum SURFACE_16_9:Lcom/transsion/liblan/TranMediaPlayer$ScaleType;

.field public static final enum SURFACE_4_3:Lcom/transsion/liblan/TranMediaPlayer$ScaleType;

.field public static final enum SURFACE_BEST_FIT:Lcom/transsion/liblan/TranMediaPlayer$ScaleType;

.field public static final enum SURFACE_FILL:Lcom/transsion/liblan/TranMediaPlayer$ScaleType;

.field public static final enum SURFACE_FIT_SCREEN:Lcom/transsion/liblan/TranMediaPlayer$ScaleType;

.field public static final enum SURFACE_ORIGINAL:Lcom/transsion/liblan/TranMediaPlayer$ScaleType;


# direct methods
.method private static synthetic $values()[Lcom/transsion/liblan/TranMediaPlayer$ScaleType;
    .locals 6

    sget-object v0, Lcom/transsion/liblan/TranMediaPlayer$ScaleType;->SURFACE_BEST_FIT:Lcom/transsion/liblan/TranMediaPlayer$ScaleType;

    sget-object v1, Lcom/transsion/liblan/TranMediaPlayer$ScaleType;->SURFACE_FIT_SCREEN:Lcom/transsion/liblan/TranMediaPlayer$ScaleType;

    sget-object v2, Lcom/transsion/liblan/TranMediaPlayer$ScaleType;->SURFACE_FILL:Lcom/transsion/liblan/TranMediaPlayer$ScaleType;

    sget-object v3, Lcom/transsion/liblan/TranMediaPlayer$ScaleType;->SURFACE_16_9:Lcom/transsion/liblan/TranMediaPlayer$ScaleType;

    sget-object v4, Lcom/transsion/liblan/TranMediaPlayer$ScaleType;->SURFACE_4_3:Lcom/transsion/liblan/TranMediaPlayer$ScaleType;

    sget-object v5, Lcom/transsion/liblan/TranMediaPlayer$ScaleType;->SURFACE_ORIGINAL:Lcom/transsion/liblan/TranMediaPlayer$ScaleType;

    filled-new-array/range {v0 .. v5}, [Lcom/transsion/liblan/TranMediaPlayer$ScaleType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/transsion/liblan/TranMediaPlayer$ScaleType;

    const-string v1, "SURFACE_BEST_FIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/liblan/TranMediaPlayer$ScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/liblan/TranMediaPlayer$ScaleType;->SURFACE_BEST_FIT:Lcom/transsion/liblan/TranMediaPlayer$ScaleType;

    new-instance v0, Lcom/transsion/liblan/TranMediaPlayer$ScaleType;

    const-string v1, "SURFACE_FIT_SCREEN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/transsion/liblan/TranMediaPlayer$ScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/liblan/TranMediaPlayer$ScaleType;->SURFACE_FIT_SCREEN:Lcom/transsion/liblan/TranMediaPlayer$ScaleType;

    new-instance v0, Lcom/transsion/liblan/TranMediaPlayer$ScaleType;

    const-string v1, "SURFACE_FILL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/transsion/liblan/TranMediaPlayer$ScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/liblan/TranMediaPlayer$ScaleType;->SURFACE_FILL:Lcom/transsion/liblan/TranMediaPlayer$ScaleType;

    new-instance v0, Lcom/transsion/liblan/TranMediaPlayer$ScaleType;

    const-string v1, "SURFACE_16_9"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/transsion/liblan/TranMediaPlayer$ScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/liblan/TranMediaPlayer$ScaleType;->SURFACE_16_9:Lcom/transsion/liblan/TranMediaPlayer$ScaleType;

    new-instance v0, Lcom/transsion/liblan/TranMediaPlayer$ScaleType;

    const-string v1, "SURFACE_4_3"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/transsion/liblan/TranMediaPlayer$ScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/liblan/TranMediaPlayer$ScaleType;->SURFACE_4_3:Lcom/transsion/liblan/TranMediaPlayer$ScaleType;

    new-instance v0, Lcom/transsion/liblan/TranMediaPlayer$ScaleType;

    const-string v1, "SURFACE_ORIGINAL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/transsion/liblan/TranMediaPlayer$ScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/liblan/TranMediaPlayer$ScaleType;->SURFACE_ORIGINAL:Lcom/transsion/liblan/TranMediaPlayer$ScaleType;

    invoke-static {}, Lcom/transsion/liblan/TranMediaPlayer$ScaleType;->$values()[Lcom/transsion/liblan/TranMediaPlayer$ScaleType;

    move-result-object v0

    sput-object v0, Lcom/transsion/liblan/TranMediaPlayer$ScaleType;->$VALUES:[Lcom/transsion/liblan/TranMediaPlayer$ScaleType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/liblan/TranMediaPlayer$ScaleType;
    .locals 1

    const-class v0, Lcom/transsion/liblan/TranMediaPlayer$ScaleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/liblan/TranMediaPlayer$ScaleType;

    return-object p0
.end method

.method public static values()[Lcom/transsion/liblan/TranMediaPlayer$ScaleType;
    .locals 1

    sget-object v0, Lcom/transsion/liblan/TranMediaPlayer$ScaleType;->$VALUES:[Lcom/transsion/liblan/TranMediaPlayer$ScaleType;

    invoke-virtual {v0}, [Lcom/transsion/liblan/TranMediaPlayer$ScaleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/liblan/TranMediaPlayer$ScaleType;

    return-object v0
.end method
