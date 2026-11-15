.class Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler$InnerPlayHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InnerPlayHandler"
.end annotation


# static fields
.field private static final instance:Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    invoke-direct {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;-><init>()V

    sput-object v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler$InnerPlayHandler;->instance:Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;
    .locals 1

    sget-object v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler$InnerPlayHandler;->instance:Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    return-object v0
.end method
