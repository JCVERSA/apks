.class public Lcom/transsion/magicvideo/fragments/VideosBaseFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->editMode(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Lcom/transsion/magicvideo/fragments/VideosBaseFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/fragments/VideosBaseFragment;Z)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment$b;->c:Lcom/transsion/magicvideo/fragments/VideosBaseFragment;

    iput-boolean p2, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment$b;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-boolean p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment$b;->b:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment$b;->c:Lcom/transsion/magicvideo/fragments/VideosBaseFragment;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->editMode(Z)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment$b;->c:Lcom/transsion/magicvideo/fragments/VideosBaseFragment;

    invoke-static {p0}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->C0(Lcom/transsion/magicvideo/fragments/VideosBaseFragment;)Lcom/transsion/playercommon/activities/BaseActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    :goto_0
    return-void
.end method
