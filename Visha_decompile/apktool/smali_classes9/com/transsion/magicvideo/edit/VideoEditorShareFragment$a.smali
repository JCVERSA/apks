.class public Lcom/transsion/magicvideo/edit/VideoEditorShareFragment$a;
.super Lux0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;->a0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/edit/VideoEditorShareFragment$a;->b:Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;

    invoke-direct {p0}, Lux0;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/transsion/magicvideo/R$id;->btn_share_more:I

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/transsion/magicvideo/edit/VideoEditorShareFragment$a;->b:Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;

    invoke-static {p1}, Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;->X(Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;)Landroid/net/Uri;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/magicvideo/edit/VideoEditorShareFragment$a;->b:Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;

    invoke-static {v0}, Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;->Z(Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "video/*"

    invoke-static {v1, p1, v0}, Lrr3;->a(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;)V

    iget-object p0, p0, Lcom/transsion/magicvideo/edit/VideoEditorShareFragment$a;->b:Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;

    invoke-static {p0}, Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;->V(Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "vd_share_to_others"

    invoke-static {p0, p1}, Lp06;->L(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
