.class public final synthetic Landroidx/media3/exoplayer/audio/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioRouting$OnRoutingChangedListener;


# instance fields
.field public final synthetic a:Landroidx/media3/exoplayer/audio/DefaultAudioSink$OnRoutingChangedListenerApi24;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/audio/DefaultAudioSink$OnRoutingChangedListenerApi24;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/a;->a:Landroidx/media3/exoplayer/audio/DefaultAudioSink$OnRoutingChangedListenerApi24;

    return-void
.end method


# virtual methods
.method public final onRoutingChanged(Landroid/media/AudioRouting;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/a;->a:Landroidx/media3/exoplayer/audio/DefaultAudioSink$OnRoutingChangedListenerApi24;

    invoke-static {p0, p1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$OnRoutingChangedListenerApi24;->a(Landroidx/media3/exoplayer/audio/DefaultAudioSink$OnRoutingChangedListenerApi24;Landroid/media/AudioRouting;)V

    return-void
.end method
