.class public Lcom/transsion/tranplayer/MediaPlayer$Chapter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/tranplayer/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Chapter"
.end annotation


# instance fields
.field public final duration:J

.field public final name:Ljava/lang/String;

.field public final timeOffset:J


# direct methods
.method private constructor <init>(JJLjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Lcom/transsion/tranplayer/MediaPlayer$Chapter;->timeOffset:J

    .line 4
    iput-wide p3, p0, Lcom/transsion/tranplayer/MediaPlayer$Chapter;->duration:J

    .line 5
    iput-object p5, p0, Lcom/transsion/tranplayer/MediaPlayer$Chapter;->name:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(JJLjava/lang/String;Lcom/transsion/tranplayer/MediaPlayer$1;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/transsion/tranplayer/MediaPlayer$Chapter;-><init>(JJLjava/lang/String;)V

    return-void
.end method
