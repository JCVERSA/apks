.class public Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$f;
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

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$f;->e:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;

    invoke-direct {p0}, Lgf7;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$f;->e:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;

    invoke-static {v0}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->x(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x496

    invoke-virtual {p1, v1, v0}, Lh27;->e(I[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$f;->e:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;

    invoke-static {p0}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->G(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;)V

    return-void
.end method
