.class public Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$h;
.super Lgf7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->T(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$h;->e:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;

    invoke-direct {p0}, Lgf7;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 0

    const-string p1, "vd_vmore_edit_pop_digger_cl"

    invoke-static {p1}, Lhb0;->markDirect(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$h;->e:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;

    invoke-static {p1}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->x(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$h;->e:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;

    invoke-static {p0}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->x(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p1

    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->requestAudioInfoFromMusicBrain(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
