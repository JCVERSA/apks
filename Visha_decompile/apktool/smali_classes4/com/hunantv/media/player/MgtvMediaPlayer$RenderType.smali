.class public final enum Lcom/hunantv/media/player/MgtvMediaPlayer$RenderType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/player/MgtvMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RenderType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hunantv/media/player/MgtvMediaPlayer$RenderType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hunantv/media/player/MgtvMediaPlayer$RenderType;

.field public static final enum NATIVE_WINDOW:Lcom/hunantv/media/player/MgtvMediaPlayer$RenderType;

.field public static final enum OPENGL_ES:Lcom/hunantv/media/player/MgtvMediaPlayer$RenderType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/hunantv/media/player/MgtvMediaPlayer$RenderType;

    const-string v1, "NATIVE_WINDOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hunantv/media/player/MgtvMediaPlayer$RenderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hunantv/media/player/MgtvMediaPlayer$RenderType;->NATIVE_WINDOW:Lcom/hunantv/media/player/MgtvMediaPlayer$RenderType;

    new-instance v1, Lcom/hunantv/media/player/MgtvMediaPlayer$RenderType;

    const-string v2, "OPENGL_ES"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/hunantv/media/player/MgtvMediaPlayer$RenderType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hunantv/media/player/MgtvMediaPlayer$RenderType;->OPENGL_ES:Lcom/hunantv/media/player/MgtvMediaPlayer$RenderType;

    filled-new-array {v0, v1}, [Lcom/hunantv/media/player/MgtvMediaPlayer$RenderType;

    move-result-object v0

    sput-object v0, Lcom/hunantv/media/player/MgtvMediaPlayer$RenderType;->$VALUES:[Lcom/hunantv/media/player/MgtvMediaPlayer$RenderType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/hunantv/media/player/MgtvMediaPlayer$RenderType;
    .locals 1

    const-class v0, Lcom/hunantv/media/player/MgtvMediaPlayer$RenderType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hunantv/media/player/MgtvMediaPlayer$RenderType;

    return-object p0
.end method

.method public static values()[Lcom/hunantv/media/player/MgtvMediaPlayer$RenderType;
    .locals 1

    sget-object v0, Lcom/hunantv/media/player/MgtvMediaPlayer$RenderType;->$VALUES:[Lcom/hunantv/media/player/MgtvMediaPlayer$RenderType;

    invoke-virtual {v0}, [Lcom/hunantv/media/player/MgtvMediaPlayer$RenderType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hunantv/media/player/MgtvMediaPlayer$RenderType;

    return-object v0
.end method
