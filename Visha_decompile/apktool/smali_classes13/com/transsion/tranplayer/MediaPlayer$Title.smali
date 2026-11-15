.class public Lcom/transsion/tranplayer/MediaPlayer$Title;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/tranplayer/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Title"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/tranplayer/MediaPlayer$Title$Flags;
    }
.end annotation


# instance fields
.field public final duration:J

.field private final flags:I

.field public final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/transsion/tranplayer/MediaPlayer$Title;->duration:J

    iput-object p3, p0, Lcom/transsion/tranplayer/MediaPlayer$Title;->name:Ljava/lang/String;

    iput p4, p0, Lcom/transsion/tranplayer/MediaPlayer$Title;->flags:I

    return-void
.end method


# virtual methods
.method public isInteractive()Z
    .locals 0

    iget p0, p0, Lcom/transsion/tranplayer/MediaPlayer$Title;->flags:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMenu()Z
    .locals 1

    iget p0, p0, Lcom/transsion/tranplayer/MediaPlayer$Title;->flags:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
