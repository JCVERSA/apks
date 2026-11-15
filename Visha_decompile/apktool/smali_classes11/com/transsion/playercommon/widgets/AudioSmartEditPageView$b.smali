.class public Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lin9;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->requestAudioInfoFromMusicBrain(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$b;->b:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/dbdata/beans/media/MusicBrainzResponseBean;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$b;->b:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;

    invoke-static {v0}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->D(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;)V

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$b;->b:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;

    invoke-static {p0, p1}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->I(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;Lcom/transsion/dbdata/beans/media/MusicBrainzResponseBean;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$b;->b:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;

    invoke-static {p0}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->D(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;)V

    sget p0, Lcom/transsion/playercommon/R$string;->visha_no_smart_match_info:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    return-void
.end method

.method public onSubscribe(Lrc2;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/transsion/dbdata/beans/media/MusicBrainzResponseBean;

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$b;->a(Lcom/transsion/dbdata/beans/media/MusicBrainzResponseBean;)V

    return-void
.end method
