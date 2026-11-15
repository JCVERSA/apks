.class public final Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u0000 :2\u00020\u00012\u00020\u0002:\u0001;B\'\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000c\u001a\u00020\u000bH\u0014\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u000bH\u0014\u00a2\u0006\u0004\u0008\u000e\u0010\rJ\u001d\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0017\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0015J\r\u0010\u0016\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\r\u0010\u0018\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0018\u0010\u0017J\u0017\u0010\u001b\u001a\u00020\u000b2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0019\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\r\u0010\u001d\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u001d\u0010\rJ\u0015\u0010\u001f\u001a\u00020\u000b2\u0006\u0010\u001e\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u001f\u0010 J\u001f\u0010%\u001a\u00020\u000b2\u0006\u0010\"\u001a\u00020!2\u0006\u0010$\u001a\u00020#H\u0016\u00a2\u0006\u0004\u0008%\u0010&J\r\u0010(\u001a\u00020\'\u00a2\u0006\u0004\u0008(\u0010)R\u0014\u0010-\u001a\u00020*8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008+\u0010,R\u0014\u00100\u001a\u00020\'8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008.\u0010/R\u0014\u00104\u001a\u0002018\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00082\u00103R*\u00108\u001a\u00020\u000f2\u0006\u00105\u001a\u00020\u000f8\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00086\u00107\u001a\u0004\u00088\u0010\u0017\"\u0004\u00089\u0010 \u00a8\u0006<"
    }
    d2 = {
        "Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;",
        "Landroid/widget/FrameLayout;",
        "Landroidx/lifecycle/LifecycleEventObserver;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "Lzfb;",
        "onAttachedToWindow",
        "()V",
        "onDetachedFromWindow",
        "",
        "isAudio",
        "isShow",
        "setVisibility",
        "(ZZ)V",
        "visibility",
        "(I)V",
        "isAudioShowing",
        "()Z",
        "isVideoShowing",
        "Lcom/transsion/dbdata/beans/media/AudioItem;",
        "audioItem",
        "loadPlayBackground",
        "(Lcom/transsion/dbdata/beans/media/AudioItem;)V",
        "updateState",
        "start",
        "startOrStopMusicProgress",
        "(Z)V",
        "Landroidx/lifecycle/LifecycleOwner;",
        "source",
        "Landroidx/lifecycle/Lifecycle$Event;",
        "event",
        "onStateChanged",
        "(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V",
        "Lcom/transsion/audio/widgets/BottomAudioBar;",
        "getAudioBar",
        "()Lcom/transsion/audio/widgets/BottomAudioBar;",
        "Landroid/view/View;",
        "b",
        "Landroid/view/View;",
        "container",
        "c",
        "Lcom/transsion/audio/widgets/BottomAudioBar;",
        "audioBar",
        "Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;",
        "d",
        "Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;",
        "videoBar",
        "value",
        "e",
        "Z",
        "isShouldUpdate",
        "setShouldUpdate",
        "Companion",
        "a",
        "main_videoplayer_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3$a;


# instance fields
.field public final b:Landroid/view/View;

.field public final c:Lcom/transsion/audio/widgets/BottomAudioBar;

.field public final d:Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;

.field public e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;->Companion:Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 5
    iput-boolean p2, p0, Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;->e:Z

    .line 6
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p3, Lcom/transsion/magicmovie/R$layout;->bottom_operate_bar_main:I

    invoke-virtual {p1, p3, p0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;->b:Landroid/view/View;

    .line 7
    sget p2, Lcom/transsion/magicmovie/R$id;->audio_bar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/audio/widgets/BottomAudioBar;

    iput-object p2, p0, Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;->c:Lcom/transsion/audio/widgets/BottomAudioBar;

    .line 8
    sget p2, Lcom/transsion/magicmovie/R$id;->video_bar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;

    iput-object p1, p0, Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;->d:Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 3
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final getAudioBar()Lcom/transsion/audio/widgets/BottomAudioBar;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;->c:Lcom/transsion/audio/widgets/BottomAudioBar;

    return-object p0
.end method

.method public final isAudioShowing()Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;->c:Lcom/transsion/audio/widgets/BottomAudioBar;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isShouldUpdate()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;->e:Z

    return p0
.end method

.method public final isVideoShowing()Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;->d:Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final loadPlayBackground(Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;->c:Lcom/transsion/audio/widgets/BottomAudioBar;

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->loadPlayBackground(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;->isVideoShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;->d:Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V

    :cond_0
    return-void
.end method

.method public final setShouldUpdate(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;->e:Z

    iget-object v0, p0, Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;->c:Lcom/transsion/audio/widgets/BottomAudioBar;

    invoke-virtual {v0, p1}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->setShouldUpdate(Z)V

    iget-object p0, p0, Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;->d:Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->setShouldUpdate(Z)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVisibility :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BottomOperateBarLayoutV3"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    const-string v0, "bottom_bar_show"

    if-nez p1, :cond_0

    .line 13
    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object p1

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/eventbus/LiveEventBus;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 14
    iget-object p1, p0, Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;->c:Lcom/transsion/audio/widgets/BottomAudioBar;

    invoke-virtual {p1}, Lcom/transsion/audio/widgets/BottomAudioBar;->getNeedShow()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 15
    iget-object p0, p0, Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;->c:Lcom/transsion/audio/widgets/BottomAudioBar;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/audio/widgets/BottomAudioBar;->startOrStopMusicProgress(Z)V

    goto :goto_0

    .line 16
    :cond_0
    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object p1

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/eventbus/LiveEventBus;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 17
    iget-object p1, p0, Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;->c:Lcom/transsion/audio/widgets/BottomAudioBar;

    invoke-virtual {p1}, Lcom/transsion/audio/widgets/BottomAudioBar;->getNeedShow()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 18
    iget-object p0, p0, Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;->c:Lcom/transsion/audio/widgets/BottomAudioBar;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/widgets/BottomAudioBar;->startOrStopMusicProgress(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final setVisibility(ZZ)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVisibility isAudio:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isShow:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BottomOperateBarLayoutV3"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/16 v2, 0x8

    if-eqz p2, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, v2

    .line 2
    :goto_0
    invoke-virtual {p0, v3}, Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;->setVisibility(I)V

    if-eqz p1, :cond_3

    if-eqz p2, :cond_1

    .line 3
    iget-object p1, p0, Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;->d:Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;

    invoke-virtual {p1, v2}, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->setVisibility(I)V

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;->c:Lcom/transsion/audio/widgets/BottomAudioBar;

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    invoke-virtual {p1, v0}, Lcom/transsion/audio/widgets/BottomAudioBar;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;->c:Lcom/transsion/audio/widgets/BottomAudioBar;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/transsion/audio/widgets/BottomAudioBar;->setNeedShow(Z)V

    goto :goto_3

    :cond_3
    if-eqz p2, :cond_4

    .line 6
    iget-object p1, p0, Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;->c:Lcom/transsion/audio/widgets/BottomAudioBar;

    invoke-virtual {p1, v2}, Lcom/transsion/audio/widgets/BottomAudioBar;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;->c:Lcom/transsion/audio/widgets/BottomAudioBar;

    invoke-virtual {p1, v0}, Lcom/transsion/audio/widgets/BottomAudioBar;->setNeedShow(Z)V

    .line 8
    :cond_4
    iget-object p1, p0, Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;->d:Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;

    if-eqz p2, :cond_5

    goto :goto_2

    :cond_5
    move v0, v2

    :goto_2
    invoke-virtual {p1, v0}, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->setVisibility(I)V

    .line 9
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    iget-object p2, p0, Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;->c:Lcom/transsion/audio/widgets/BottomAudioBar;

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    iget-object p0, p0, Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;->d:Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "visibility:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " audio visibility:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " video visibility:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final startOrStopMusicProgress(Z)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;->c:Lcom/transsion/audio/widgets/BottomAudioBar;

    invoke-virtual {v0, p1}, Lcom/transsion/audio/widgets/BottomAudioBar;->startOrStopMusicProgress(Z)V

    iget-object p0, p0, Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;->d:Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->startOrStopMusicProgress(Z)V

    return-void
.end method

.method public final updateState()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;->c:Lcom/transsion/audio/widgets/BottomAudioBar;

    invoke-virtual {p0}, Lcom/transsion/audio/widgets/BottomAudioBar;->updateState()V

    return-void
.end method
