.class Lcom/transsion/audio/widgets/AudioPlayerLayout$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lin9;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/widgets/AudioPlayerLayout;->requestAudioInfoFromMusicBrain(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lin9;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/audio/widgets/AudioPlayerLayout;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/widgets/AudioPlayerLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout$6;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    sget p1, Lcom/transsion/playercommon/R$string;->visha_no_smart_match_info:I

    invoke-static {p1}, Lcom/transsion/utils/ToastUtils;->s(I)V

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout$6;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    invoke-static {p0}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->M(Lcom/transsion/audio/widgets/AudioPlayerLayout;)V

    return-void
.end method

.method public onSubscribe(Lrc2;)V
    .locals 0

    return-void
.end method

.method public onSuccess(Lcom/transsion/dbdata/beans/media/MusicBrainzResponseBean;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout$6;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    invoke-static {v0, p1}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->L(Lcom/transsion/audio/widgets/AudioPlayerLayout;Lcom/transsion/dbdata/beans/media/MusicBrainzResponseBean;)V

    .line 3
    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout$6;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    invoke-static {p0}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->J(Lcom/transsion/audio/widgets/AudioPlayerLayout;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/transsion/dbdata/beans/media/MusicBrainzResponseBean;

    invoke-virtual {p0, p1}, Lcom/transsion/audio/widgets/AudioPlayerLayout$6;->onSuccess(Lcom/transsion/dbdata/beans/media/MusicBrainzResponseBean;)V

    return-void
.end method
