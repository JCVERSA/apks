.class final enum Lcom/hunantv/media/widget/MgtvAudioView$ResetResult;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/widget/MgtvAudioView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResetResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hunantv/media/widget/MgtvAudioView$ResetResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hunantv/media/widget/MgtvAudioView$ResetResult;

.field public static final enum NONE:Lcom/hunantv/media/widget/MgtvAudioView$ResetResult;

.field public static final enum RESET_ERR:Lcom/hunantv/media/widget/MgtvAudioView$ResetResult;

.field public static final enum RESET_OK:Lcom/hunantv/media/widget/MgtvAudioView$ResetResult;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/hunantv/media/widget/MgtvAudioView$ResetResult;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hunantv/media/widget/MgtvAudioView$ResetResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hunantv/media/widget/MgtvAudioView$ResetResult;->NONE:Lcom/hunantv/media/widget/MgtvAudioView$ResetResult;

    new-instance v1, Lcom/hunantv/media/widget/MgtvAudioView$ResetResult;

    const-string v2, "RESET_OK"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/hunantv/media/widget/MgtvAudioView$ResetResult;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hunantv/media/widget/MgtvAudioView$ResetResult;->RESET_OK:Lcom/hunantv/media/widget/MgtvAudioView$ResetResult;

    new-instance v2, Lcom/hunantv/media/widget/MgtvAudioView$ResetResult;

    const-string v3, "RESET_ERR"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/hunantv/media/widget/MgtvAudioView$ResetResult;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/hunantv/media/widget/MgtvAudioView$ResetResult;->RESET_ERR:Lcom/hunantv/media/widget/MgtvAudioView$ResetResult;

    filled-new-array {v0, v1, v2}, [Lcom/hunantv/media/widget/MgtvAudioView$ResetResult;

    move-result-object v0

    sput-object v0, Lcom/hunantv/media/widget/MgtvAudioView$ResetResult;->$VALUES:[Lcom/hunantv/media/widget/MgtvAudioView$ResetResult;

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

.method public static valueOf(Ljava/lang/String;)Lcom/hunantv/media/widget/MgtvAudioView$ResetResult;
    .locals 1

    const-class v0, Lcom/hunantv/media/widget/MgtvAudioView$ResetResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hunantv/media/widget/MgtvAudioView$ResetResult;

    return-object p0
.end method

.method public static values()[Lcom/hunantv/media/widget/MgtvAudioView$ResetResult;
    .locals 1

    sget-object v0, Lcom/hunantv/media/widget/MgtvAudioView$ResetResult;->$VALUES:[Lcom/hunantv/media/widget/MgtvAudioView$ResetResult;

    invoke-virtual {v0}, [Lcom/hunantv/media/widget/MgtvAudioView$ResetResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hunantv/media/widget/MgtvAudioView$ResetResult;

    return-object v0
.end method
