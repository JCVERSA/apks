.class public Lcom/transsion/magicvideo/fragments/VideosBaseFragment$a;
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
.field public final synthetic b:Lcom/transsion/magicvideo/fragments/VideosBaseFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/fragments/VideosBaseFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment$a;->b:Lcom/transsion/magicvideo/fragments/VideosBaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment$a;->b:Lcom/transsion/magicvideo/fragments/VideosBaseFragment;

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    invoke-static {p0}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->B0(Lcom/transsion/magicvideo/fragments/VideosBaseFragment;)Landroid/widget/CheckBox;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->R(Z)V

    return-void
.end method
