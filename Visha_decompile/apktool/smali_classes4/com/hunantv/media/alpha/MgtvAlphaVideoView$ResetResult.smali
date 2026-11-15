.class final enum Lcom/hunantv/media/alpha/MgtvAlphaVideoView$ResetResult;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/alpha/MgtvAlphaVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResetResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hunantv/media/alpha/MgtvAlphaVideoView$ResetResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hunantv/media/alpha/MgtvAlphaVideoView$ResetResult;

.field public static final enum NONE:Lcom/hunantv/media/alpha/MgtvAlphaVideoView$ResetResult;

.field public static final enum RESET_ERR:Lcom/hunantv/media/alpha/MgtvAlphaVideoView$ResetResult;

.field public static final enum RESET_OK:Lcom/hunantv/media/alpha/MgtvAlphaVideoView$ResetResult;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$ResetResult;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$ResetResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$ResetResult;->NONE:Lcom/hunantv/media/alpha/MgtvAlphaVideoView$ResetResult;

    new-instance v1, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$ResetResult;

    const-string v2, "RESET_OK"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$ResetResult;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$ResetResult;->RESET_OK:Lcom/hunantv/media/alpha/MgtvAlphaVideoView$ResetResult;

    new-instance v2, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$ResetResult;

    const-string v3, "RESET_ERR"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$ResetResult;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$ResetResult;->RESET_ERR:Lcom/hunantv/media/alpha/MgtvAlphaVideoView$ResetResult;

    filled-new-array {v0, v1, v2}, [Lcom/hunantv/media/alpha/MgtvAlphaVideoView$ResetResult;

    move-result-object v0

    sput-object v0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$ResetResult;->$VALUES:[Lcom/hunantv/media/alpha/MgtvAlphaVideoView$ResetResult;

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

.method public static valueOf(Ljava/lang/String;)Lcom/hunantv/media/alpha/MgtvAlphaVideoView$ResetResult;
    .locals 1

    const-class v0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$ResetResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$ResetResult;

    return-object p0
.end method

.method public static values()[Lcom/hunantv/media/alpha/MgtvAlphaVideoView$ResetResult;
    .locals 1

    sget-object v0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$ResetResult;->$VALUES:[Lcom/hunantv/media/alpha/MgtvAlphaVideoView$ResetResult;

    invoke-virtual {v0}, [Lcom/hunantv/media/alpha/MgtvAlphaVideoView$ResetResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hunantv/media/alpha/MgtvAlphaVideoView$ResetResult;

    return-object v0
.end method
