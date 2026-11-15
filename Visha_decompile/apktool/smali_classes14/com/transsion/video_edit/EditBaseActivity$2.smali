.class Lcom/transsion/video_edit/EditBaseActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/video_edit/EditBaseActivity;->onPlaybackStateChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/video_edit/EditBaseActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/video_edit/EditBaseActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/video_edit/EditBaseActivity$2;->this$0:Lcom/transsion/video_edit/EditBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/video_edit/EditBaseActivity$2;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/video_edit/EditBaseActivity$2;->lambda$run$0()V

    return-void
.end method

.method private synthetic lambda$run$0()V
    .locals 2

    iget-object p0, p0, Lcom/transsion/video_edit/EditBaseActivity$2;->this$0:Lcom/transsion/video_edit/EditBaseActivity;

    invoke-static {p0}, Lcom/transsion/video_edit/EditBaseActivity;->N0(Lcom/transsion/video_edit/EditBaseActivity;)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/transsion/video_edit/EditBaseActivity;->Q0(Lcom/transsion/video_edit/EditBaseActivity;J)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/video_edit/EditBaseActivity$2;->this$0:Lcom/transsion/video_edit/EditBaseActivity;

    invoke-static {v0}, Lcom/transsion/video_edit/EditBaseActivity;->F0(Lcom/transsion/video_edit/EditBaseActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/video_edit/EditBaseActivity$2;->this$0:Lcom/transsion/video_edit/EditBaseActivity;

    invoke-static {v0}, Lcom/transsion/video_edit/EditBaseActivity;->J0(Lcom/transsion/video_edit/EditBaseActivity;)Lcom/transsion/video_edit/ThumbnailSelectorBar;

    move-result-object v0

    new-instance v1, Lcom/transsion/video_edit/a;

    invoke-direct {v1, p0}, Lcom/transsion/video_edit/a;-><init>(Lcom/transsion/video_edit/EditBaseActivity$2;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
