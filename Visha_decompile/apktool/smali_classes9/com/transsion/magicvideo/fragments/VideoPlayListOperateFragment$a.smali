.class public Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;->initTitleBar(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment$a;->b:Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment$a;->b:Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    invoke-static {p0}, Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;->N1(Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;)Landroid/widget/CheckBox;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->R(Z)V

    return-void
.end method
