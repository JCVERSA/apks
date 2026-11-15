.class public abstract Lcom/hunantv/media/player/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/player/d;


# static fields
.field public static final BUNDLE_KEY_BOOLEAN_AUDIO_MODE:Ljava/lang/String; = "BUNDLE_KEY_BOOLEAN_AUDIO_MODE"

.field public static final BUNDLE_KEY_BOOLEAN_ENABLE_REPORT:Ljava/lang/String; = "BUNDLE_KEY_BOOLEAN_ENABLE_REPORT"

.field public static final BUNDLE_KEY_LOG_TAG_KEY:Ljava/lang/String; = "BUNDLE_KEY_LOG_TAG_KEY"


# instance fields
.field private mBundle:Landroid/os/Bundle;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mLogTagKey:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mOnBufferingTimeoutListener:Lcom/hunantv/media/player/d$a;

.field private mOnBufferingUpdateListener:Lcom/hunantv/media/player/d$b;

.field private mOnCompletionListener:Lcom/hunantv/media/player/d$c;

.field private mOnDrmListener:Lcom/hunantv/media/player/d$d;

.field private mOnErrorListener:Lcom/hunantv/media/player/d$e;

.field private mOnGetFrameImageListener:Lcom/hunantv/media/player/d$f;

.field private mOnInfoListener:Lcom/hunantv/media/player/d$g;

.field private mOnInfoStringListener:Lcom/hunantv/media/player/d$h;

.field private mOnLoopSwitchSourceListener:Lcom/hunantv/media/player/d$i;

.field private mOnPlayerEventListener:Lcom/hunantv/media/player/d$j;

.field private mOnPreparedListener:Lcom/hunantv/media/player/d$k;

.field private mOnRecordVideoListener:Lcom/hunantv/media/player/d$l;

.field private mOnSeekCompleteListener:Lcom/hunantv/media/player/d$m;

.field private mOnSmoothSwitchSourceListener:Lcom/hunantv/media/player/d$n;

.field private mOnSourceFlowHandledListener:Lcom/hunantv/media/player/d$o;

.field private mOnSourceNetHandledListener:Lcom/hunantv/media/player/d$p;

.field private mOnStreamInfoListener:Lcom/hunantv/media/player/d$q;

.field private mOnSwitchSourceListener:Lcom/hunantv/media/player/d$r;

.field private mOnVideoSizeChangedListener:Lcom/hunantv/media/player/d$s;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hunantv/media/player/a;->mLogTagKey:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hunantv/media/player/a;->mLogTagKey:Ljava/lang/String;

    iput-object p1, p0, Lcom/hunantv/media/player/a;->mBundle:Landroid/os/Bundle;

    if-eqz p1, :cond_0

    const-string v0, "BUNDLE_KEY_LOG_TAG_KEY"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hunantv/media/player/a;->mLogTagKey:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public getAVCachedTimeMs()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getBundle()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/a;->mBundle:Landroid/os/Bundle;

    return-object p0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hunantv/media/player/a;->mLogTagKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final notifyOnBufferingTimeout(II)Z
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/player/a;->mOnBufferingTimeoutListener:Lcom/hunantv/media/player/d$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Lcom/hunantv/media/player/d$a;->a(Lcom/hunantv/media/player/d;II)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final notifyOnBufferingUpdate(I)V
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/player/a;->mOnBufferingUpdateListener:Lcom/hunantv/media/player/d$b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/hunantv/media/player/d$b;->a(Lcom/hunantv/media/player/d;I)V

    :cond_0
    return-void
.end method

.method public final notifyOnCompletion(II)V
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/player/a;->mOnCompletionListener:Lcom/hunantv/media/player/d$c;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Lcom/hunantv/media/player/d$c;->a(Lcom/hunantv/media/player/d;II)V

    :cond_0
    return-void
.end method

.method public final notifyOnDrmPsshMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/util/UUID;",
            "Lcom/hunantv/media/drm/utils/MgtvDrmUtils$PSSH;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/hunantv/media/player/a;->mOnDrmListener:Lcom/hunantv/media/player/d$d;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/hunantv/media/player/d$d;->a(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public final notifyOnError(II)Z
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/player/a;->mOnErrorListener:Lcom/hunantv/media/player/d$e;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Lcom/hunantv/media/player/d$e;->a(Lcom/hunantv/media/player/d;II)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final notifyOnGetFrameImageInfo(IILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/player/a;->mOnGetFrameImageListener:Lcom/hunantv/media/player/d$f;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/hunantv/media/player/d$f;->a(Lcom/hunantv/media/player/d;IILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final notifyOnGetFrameImageStatus(II)V
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/player/a;->mOnGetFrameImageListener:Lcom/hunantv/media/player/d$f;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Lcom/hunantv/media/player/d$f;->a(Lcom/hunantv/media/player/d;II)V

    :cond_0
    return-void
.end method

.method public final notifyOnInfo(II)Z
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/player/a;->mOnInfoListener:Lcom/hunantv/media/player/d$g;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Lcom/hunantv/media/player/d$g;->a(Lcom/hunantv/media/player/d;II)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final notifyOnInfoString(ILjava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/player/a;->mOnInfoStringListener:Lcom/hunantv/media/player/d$h;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Lcom/hunantv/media/player/d$h;->a(Lcom/hunantv/media/player/d;ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final notifyOnLoopSwitchSourceComplete(Ljava/lang/String;II)V
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/player/a;->mOnLoopSwitchSourceListener:Lcom/hunantv/media/player/d$i;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/hunantv/media/player/d$i;->b(Lcom/hunantv/media/player/d;Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method public final notifyOnLoopSwitchSourceFail(Ljava/lang/String;II)V
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/player/a;->mOnLoopSwitchSourceListener:Lcom/hunantv/media/player/d$i;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/hunantv/media/player/d$i;->c(Lcom/hunantv/media/player/d;Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method public final notifyOnLoopSwitchSourceInfo(Ljava/lang/String;II)V
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/player/a;->mOnLoopSwitchSourceListener:Lcom/hunantv/media/player/d$i;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/hunantv/media/player/d$i;->a(Lcom/hunantv/media/player/d;Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method public final notifyOnMaskDrmInit([B)V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/a;->mOnDrmListener:Lcom/hunantv/media/player/d$d;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/hunantv/media/player/d$d;->a([B)V

    :cond_0
    return-void
.end method

.method public final notifyOnPlayerEvent(ILandroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/player/a;->mOnPlayerEventListener:Lcom/hunantv/media/player/d$j;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Lcom/hunantv/media/player/d$j;->a(Lcom/hunantv/media/player/d;ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public final notifyOnPrepared()V
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/player/a;->mOnPreparedListener:Lcom/hunantv/media/player/d$k;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/hunantv/media/player/d$k;->a(Lcom/hunantv/media/player/d;)V

    :cond_0
    return-void
.end method

.method public final notifyOnRecordVideoErr(II)V
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/player/a;->mOnRecordVideoListener:Lcom/hunantv/media/player/d$l;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Lcom/hunantv/media/player/d$l;->b(Lcom/hunantv/media/player/d;II)V

    :cond_0
    return-void
.end method

.method public final notifyOnRecordVideoInfo(II)V
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/player/a;->mOnRecordVideoListener:Lcom/hunantv/media/player/d$l;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Lcom/hunantv/media/player/d$l;->a(Lcom/hunantv/media/player/d;II)V

    :cond_0
    return-void
.end method

.method public final notifyOnSeekComplete(II)V
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/player/a;->mOnSeekCompleteListener:Lcom/hunantv/media/player/d$m;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Lcom/hunantv/media/player/d$m;->a(Lcom/hunantv/media/player/d;II)V

    :cond_0
    return-void
.end method

.method public final notifyOnSmoothSwitchSourceComplete(IILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/player/a;->mOnSmoothSwitchSourceListener:Lcom/hunantv/media/player/d$n;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/hunantv/media/player/d$n;->onSmoothSwitchSourceComplete(Lcom/hunantv/media/player/d;IILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final notifyOnSmoothSwitchSourceFailed(IILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/player/a;->mOnSmoothSwitchSourceListener:Lcom/hunantv/media/player/d$n;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/hunantv/media/player/d$n;->onSmoothSwitchSourceFailed(Lcom/hunantv/media/player/d;IILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final notifyOnSmoothSwitchSourceInfo(IILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/player/a;->mOnSmoothSwitchSourceListener:Lcom/hunantv/media/player/d$n;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/hunantv/media/player/d$n;->onSmoothSwitchSourceInfo(Lcom/hunantv/media/player/d;IILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final notifyOnSourceFlowInfoEvent(ILandroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/player/a;->mOnSourceFlowHandledListener:Lcom/hunantv/media/player/d$o;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Lcom/hunantv/media/player/d$o;->a(Lcom/hunantv/media/player/d;ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public final notifyOnSourceNetCtrl(ILandroid/os/Bundle;)Z
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/player/a;->mOnSourceNetHandledListener:Lcom/hunantv/media/player/d$p;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Lcom/hunantv/media/player/d$p;->a(Lcom/hunantv/media/player/d;ILandroid/os/Bundle;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final notifyOnSourceNetEvent(ILandroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/player/a;->mOnSourceNetHandledListener:Lcom/hunantv/media/player/d$p;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Lcom/hunantv/media/player/d$p;->b(Lcom/hunantv/media/player/d;ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public final notifyOnStreamInfoEvent(ILandroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/player/a;->mOnStreamInfoListener:Lcom/hunantv/media/player/d$q;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Lcom/hunantv/media/player/d$q;->a(Lcom/hunantv/media/player/d;ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public final notifyOnSwitchSourceComplete(Ljava/lang/String;II)V
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/player/a;->mOnSwitchSourceListener:Lcom/hunantv/media/player/d$r;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/hunantv/media/player/d$r;->b(Lcom/hunantv/media/player/d;Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method public final notifyOnSwitchSourceFailed(Ljava/lang/String;II)V
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/player/a;->mOnSwitchSourceListener:Lcom/hunantv/media/player/d$r;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/hunantv/media/player/d$r;->c(Lcom/hunantv/media/player/d;Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method public final notifyOnSwitchSourceInfo(Ljava/lang/String;II)V
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/player/a;->mOnSwitchSourceListener:Lcom/hunantv/media/player/d$r;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/hunantv/media/player/d$r;->a(Lcom/hunantv/media/player/d;Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method public final notifyOnVideoSizeChanged(IIII)V
    .locals 6

    iget-object v0, p0, Lcom/hunantv/media/player/a;->mOnVideoSizeChangedListener:Lcom/hunantv/media/player/d$s;

    if-eqz v0, :cond_0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/hunantv/media/player/d$s;->a(Lcom/hunantv/media/player/d;IIII)V

    :cond_0
    return-void
.end method

.method public resetListeners()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hunantv/media/player/a;->mOnPreparedListener:Lcom/hunantv/media/player/d$k;

    iput-object v0, p0, Lcom/hunantv/media/player/a;->mOnBufferingUpdateListener:Lcom/hunantv/media/player/d$b;

    iput-object v0, p0, Lcom/hunantv/media/player/a;->mOnCompletionListener:Lcom/hunantv/media/player/d$c;

    iput-object v0, p0, Lcom/hunantv/media/player/a;->mOnSeekCompleteListener:Lcom/hunantv/media/player/d$m;

    iput-object v0, p0, Lcom/hunantv/media/player/a;->mOnVideoSizeChangedListener:Lcom/hunantv/media/player/d$s;

    iput-object v0, p0, Lcom/hunantv/media/player/a;->mOnErrorListener:Lcom/hunantv/media/player/d$e;

    iput-object v0, p0, Lcom/hunantv/media/player/a;->mOnInfoListener:Lcom/hunantv/media/player/d$g;

    iput-object v0, p0, Lcom/hunantv/media/player/a;->mOnInfoStringListener:Lcom/hunantv/media/player/d$h;

    iput-object v0, p0, Lcom/hunantv/media/player/a;->mOnBufferingTimeoutListener:Lcom/hunantv/media/player/d$a;

    iput-object v0, p0, Lcom/hunantv/media/player/a;->mOnSwitchSourceListener:Lcom/hunantv/media/player/d$r;

    iput-object v0, p0, Lcom/hunantv/media/player/a;->mOnSmoothSwitchSourceListener:Lcom/hunantv/media/player/d$n;

    iput-object v0, p0, Lcom/hunantv/media/player/a;->mOnSourceNetHandledListener:Lcom/hunantv/media/player/d$p;

    iput-object v0, p0, Lcom/hunantv/media/player/a;->mOnStreamInfoListener:Lcom/hunantv/media/player/d$q;

    iput-object v0, p0, Lcom/hunantv/media/player/a;->mOnRecordVideoListener:Lcom/hunantv/media/player/d$l;

    iput-object v0, p0, Lcom/hunantv/media/player/a;->mOnLoopSwitchSourceListener:Lcom/hunantv/media/player/d$i;

    iput-object v0, p0, Lcom/hunantv/media/player/a;->mOnGetFrameImageListener:Lcom/hunantv/media/player/d$f;

    iput-object v0, p0, Lcom/hunantv/media/player/a;->mOnDrmListener:Lcom/hunantv/media/player/d$d;

    iput-object v0, p0, Lcom/hunantv/media/player/a;->mOnPlayerEventListener:Lcom/hunantv/media/player/d$j;

    return-void
.end method

.method public final setOnBufferingTimeoutListener(Lcom/hunantv/media/player/d$a;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/a;->mOnBufferingTimeoutListener:Lcom/hunantv/media/player/d$a;

    return-void
.end method

.method public final setOnBufferingUpdateListener(Lcom/hunantv/media/player/d$b;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/a;->mOnBufferingUpdateListener:Lcom/hunantv/media/player/d$b;

    return-void
.end method

.method public final setOnCompletionListener(Lcom/hunantv/media/player/d$c;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/a;->mOnCompletionListener:Lcom/hunantv/media/player/d$c;

    return-void
.end method

.method public final setOnDrmListener(Lcom/hunantv/media/player/d$d;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/a;->mOnDrmListener:Lcom/hunantv/media/player/d$d;

    return-void
.end method

.method public final setOnErrorListener(Lcom/hunantv/media/player/d$e;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/a;->mOnErrorListener:Lcom/hunantv/media/player/d$e;

    return-void
.end method

.method public final setOnGetFrameImageListener(Lcom/hunantv/media/player/d$f;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/a;->mOnGetFrameImageListener:Lcom/hunantv/media/player/d$f;

    return-void
.end method

.method public final setOnInfoListener(Lcom/hunantv/media/player/d$g;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/a;->mOnInfoListener:Lcom/hunantv/media/player/d$g;

    return-void
.end method

.method public final setOnInfoStringListener(Lcom/hunantv/media/player/d$h;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/a;->mOnInfoStringListener:Lcom/hunantv/media/player/d$h;

    return-void
.end method

.method public final setOnLoopSwitchSourceListener(Lcom/hunantv/media/player/d$i;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/a;->mOnLoopSwitchSourceListener:Lcom/hunantv/media/player/d$i;

    return-void
.end method

.method public final setOnPlayerEventListener(Lcom/hunantv/media/player/d$j;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/a;->mOnPlayerEventListener:Lcom/hunantv/media/player/d$j;

    return-void
.end method

.method public final setOnPreparedListener(Lcom/hunantv/media/player/d$k;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/a;->mOnPreparedListener:Lcom/hunantv/media/player/d$k;

    return-void
.end method

.method public final setOnRecordVideoListener(Lcom/hunantv/media/player/d$l;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/a;->mOnRecordVideoListener:Lcom/hunantv/media/player/d$l;

    return-void
.end method

.method public final setOnSeekCompleteListener(Lcom/hunantv/media/player/d$m;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/a;->mOnSeekCompleteListener:Lcom/hunantv/media/player/d$m;

    return-void
.end method

.method public final setOnSmoothSwitchSourceListener(Lcom/hunantv/media/player/d$n;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/a;->mOnSmoothSwitchSourceListener:Lcom/hunantv/media/player/d$n;

    return-void
.end method

.method public final setOnSourceFlowHandledListener(Lcom/hunantv/media/player/d$o;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/a;->mOnSourceFlowHandledListener:Lcom/hunantv/media/player/d$o;

    return-void
.end method

.method public final setOnSourceNetHandledListener(Lcom/hunantv/media/player/d$p;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/a;->mOnSourceNetHandledListener:Lcom/hunantv/media/player/d$p;

    return-void
.end method

.method public final setOnStreamInfoListener(Lcom/hunantv/media/player/d$q;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/a;->mOnStreamInfoListener:Lcom/hunantv/media/player/d$q;

    return-void
.end method

.method public final setOnSwitchSourceListener(Lcom/hunantv/media/player/d$r;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/a;->mOnSwitchSourceListener:Lcom/hunantv/media/player/d$r;

    return-void
.end method

.method public final setOnVideoSizeChangedListener(Lcom/hunantv/media/player/d$s;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/a;->mOnVideoSizeChangedListener:Lcom/hunantv/media/player/d$s;

    return-void
.end method
