.class public Lcom/transsion/playercommon/utils/MediaVolumeManager$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/utils/MediaVolumeManager;->p(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/transsion/playercommon/utils/MediaVolumeManager;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/utils/MediaVolumeManager;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager$c;->b:Lcom/transsion/playercommon/utils/MediaVolumeManager;

    iput-object p2, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager$c;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;IFZ)V
    .locals 0

    return-void
.end method

.method public onStartTrackingTouch(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->getProgressFloat()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x42c80000    # 100.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager$c;->b:Lcom/transsion/playercommon/utils/MediaVolumeManager;

    invoke-virtual {v0, p1}, Lcom/transsion/playercommon/utils/MediaVolumeManager;->y(F)V

    iget-object v0, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager$c;->b:Lcom/transsion/playercommon/utils/MediaVolumeManager;

    iget-object p0, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager$c;->a:Landroid/content/Context;

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p1, v1

    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, v1}, Lcom/transsion/playercommon/utils/MediaVolumeManager;->D(Landroid/content/Context;FZ)V

    :cond_0
    return-void
.end method
