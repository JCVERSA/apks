.class public interface abstract Landroidx/media3/exoplayer/audio/DefaultAudioSink$f;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/audio/DefaultAudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "f"
.end annotation


# static fields
.field public static final a:Landroidx/media3/exoplayer/audio/DefaultAudioSink$f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/media3/exoplayer/audio/z0;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/media3/exoplayer/audio/z0;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$f;->a:Landroidx/media3/exoplayer/audio/DefaultAudioSink$f;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public abstract a(Landroidx/media3/exoplayer/audio/AudioSink$a;Landroidx/media3/common/c;I)Landroid/media/AudioTrack;
.end method
