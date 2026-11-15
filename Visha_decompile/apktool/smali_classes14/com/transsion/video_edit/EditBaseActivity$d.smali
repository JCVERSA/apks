.class public Lcom/transsion/video_edit/EditBaseActivity$d;
.super Lux0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/video_edit/EditBaseActivity;->X0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/video_edit/EditBaseActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/video_edit/EditBaseActivity;I)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/video_edit/EditBaseActivity$d;->b:Lcom/transsion/video_edit/EditBaseActivity;

    invoke-direct {p0, p2}, Lux0;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/transsion/video_edit/R$id;->iv_play:I

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/transsion/video_edit/EditBaseActivity$d;->b:Lcom/transsion/video_edit/EditBaseActivity;

    invoke-static {p0}, Lcom/transsion/video_edit/EditBaseActivity;->R0(Lcom/transsion/video_edit/EditBaseActivity;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/transsion/video_edit/R$id;->iv_video_play_setting:I

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/transsion/video_edit/EditBaseActivity$d;->b:Lcom/transsion/video_edit/EditBaseActivity;

    invoke-static {p0}, Lcom/transsion/video_edit/EditBaseActivity;->P0(Lcom/transsion/video_edit/EditBaseActivity;)V

    const-string p0, "vd_export_confirmation_cl"

    const-wide v0, 0xd91af27344L

    const/4 p1, 0x0

    invoke-static {p1, p0, v0, v1}, Lp06;->f0(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/transsion/video_edit/R$id;->iv_video_play_back:I

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/transsion/video_edit/EditBaseActivity$d;->b:Lcom/transsion/video_edit/EditBaseActivity;

    const/16 v0, 0x4d5

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    iget-object p0, p0, Lcom/transsion/video_edit/EditBaseActivity$d;->b:Lcom/transsion/video_edit/EditBaseActivity;

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BasePermissionActivity;->finish()V

    :cond_2
    :goto_0
    return-void
.end method
