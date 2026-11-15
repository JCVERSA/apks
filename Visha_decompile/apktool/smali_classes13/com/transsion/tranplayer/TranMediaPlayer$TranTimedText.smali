.class public Lcom/transsion/tranplayer/TranMediaPlayer$TranTimedText;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/tranplayer/ITimedText;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/tranplayer/TranMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TranTimedText"
.end annotation


# instance fields
.field private mDuration:J

.field private mStartTime:J

.field private mTextBounds:Landroid/graphics/Rect;

.field private mTextChars:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/tranplayer/TranMediaPlayer$TranTimedText;->mTextBounds:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/transsion/tranplayer/TranMediaPlayer$TranTimedText;->mTextChars:Ljava/lang/String;

    iput-wide p2, p0, Lcom/transsion/tranplayer/TranMediaPlayer$TranTimedText;->mStartTime:J

    iput-wide p4, p0, Lcom/transsion/tranplayer/TranMediaPlayer$TranTimedText;->mDuration:J

    return-void
.end method


# virtual methods
.method public getBounds()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tranplayer/TranMediaPlayer$TranTimedText;->mTextBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/tranplayer/TranMediaPlayer$TranTimedText;->mDuration:J

    return-wide v0
.end method

.method public getStartTime()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/tranplayer/TranMediaPlayer$TranTimedText;->mStartTime:J

    return-wide v0
.end method

.method public getText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tranplayer/TranMediaPlayer$TranTimedText;->mTextChars:Ljava/lang/String;

    return-object p0
.end method
