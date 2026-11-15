.class public Lcom/hunantv/media/player/helper/MediaCodecHelp$CodecPerformance;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/player/helper/MediaCodecHelp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CodecPerformance"
.end annotation


# instance fields
.field public volatile codecName:Ljava/lang/String;

.field public volatile hdr:Ljava/lang/String;

.field public volatile hdr_support:Z

.field public volatile max_def:Ljava/lang/String;

.field public volatile max_def_fps:Ljava/lang/String;

.field public volatile max_fps_1080p:Ljava/lang/String;

.field public volatile max_fps_4k:Ljava/lang/String;

.field public volatile mimeType:Ljava/lang/String;

.field public volatile performance:Ljava/lang/String;

.field public volatile s4k:Z

.field public volatile shdrt:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/hunantv/media/player/helper/MediaCodecHelp$CodecPerformance;->hdr:Ljava/lang/String;

    return-void
.end method
