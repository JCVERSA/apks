.class public Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$e;
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

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$e;->e:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;

    invoke-direct {p0}, Lgf7;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$e;->e:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;

    invoke-static {p1}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->x(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$e;->e:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;

    invoke-static {v1}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->v(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->loadAudioCover(Lcom/transsion/dbdata/beans/media/AudioItem;Landroid/widget/ImageView;)V

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$e;->e:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->z(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;Z)V

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$e;->e:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;

    invoke-static {p1}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->w(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$e;->e:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;

    invoke-static {p1}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->y(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$e;->e:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;

    invoke-static {p0}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->u(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;)Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method
