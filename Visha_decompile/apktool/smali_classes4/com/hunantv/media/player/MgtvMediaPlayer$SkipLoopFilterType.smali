.class public final enum Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/player/MgtvMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SkipLoopFilterType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;

.field public static final enum TYPE_SKIPLOOPFILTER_ALL:Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;

.field public static final enum TYPE_SKIPLOOPFILTER_BIDIR:Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;

.field public static final enum TYPE_SKIPLOOPFILTER_NONE:Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;

.field public static final enum TYPE_SKIPLOOPFILTER_NONKEY:Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;

.field public static final enum TYPE_SKIPLOOPFILTER_NONREF:Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;

    const-string v1, "TYPE_SKIPLOOPFILTER_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;->TYPE_SKIPLOOPFILTER_NONE:Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;

    new-instance v1, Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;

    const-string v2, "TYPE_SKIPLOOPFILTER_NONREF"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;->TYPE_SKIPLOOPFILTER_NONREF:Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;

    new-instance v2, Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;

    const-string v3, "TYPE_SKIPLOOPFILTER_BIDIR"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;->TYPE_SKIPLOOPFILTER_BIDIR:Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;

    new-instance v3, Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;

    const-string v4, "TYPE_SKIPLOOPFILTER_NONKEY"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;->TYPE_SKIPLOOPFILTER_NONKEY:Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;

    new-instance v4, Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;

    const-string v5, "TYPE_SKIPLOOPFILTER_ALL"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;->TYPE_SKIPLOOPFILTER_ALL:Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;

    move-result-object v0

    sput-object v0, Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;->$VALUES:[Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;
    .locals 1

    const-class v0, Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;

    return-object p0
.end method

.method public static values()[Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;
    .locals 1

    sget-object v0, Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;->$VALUES:[Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;

    invoke-virtual {v0}, [Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;

    return-object v0
.end method
