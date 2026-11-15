.class public Lcom/transsion/playercommon/gallery/ImageFolderFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/gallery/ImageFolderFragment;->U()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/playercommon/gallery/ImageFolderFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/gallery/ImageFolderFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/gallery/ImageFolderFragment$a;->b:Lcom/transsion/playercommon/gallery/ImageFolderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    iget-object p1, p0, Lcom/transsion/playercommon/gallery/ImageFolderFragment$a;->b:Lcom/transsion/playercommon/gallery/ImageFolderFragment;

    invoke-static {p1}, Lcom/transsion/playercommon/gallery/ImageFolderFragment;->Q(Lcom/transsion/playercommon/gallery/ImageFolderFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yalantis/gallery/dbhelper/entity/LocalMediaFolder;

    new-instance p2, Landroid/content/Intent;

    iget-object p3, p0, Lcom/transsion/playercommon/gallery/ImageFolderFragment$a;->b:Lcom/transsion/playercommon/gallery/ImageFolderFragment;

    invoke-static {p3}, Lcom/transsion/playercommon/gallery/ImageFolderFragment;->S(Lcom/transsion/playercommon/gallery/ImageFolderFragment;)Lcom/transsion/playercommon/activities/BaseActivity;

    move-result-object p3

    const-class v0, Lcom/transsion/playercommon/gallery/ImageFolderActivity;

    invoke-direct {p2, p3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p3, "bucket_id"

    invoke-virtual {p1}, Lcom/yalantis/gallery/dbhelper/entity/LocalMediaFolder;->getBucketId()J

    move-result-wide v0

    invoke-virtual {p2, p3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p1, "list_flag"

    const/16 p3, 0x28

    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p1, p0, Lcom/transsion/playercommon/gallery/ImageFolderFragment$a;->b:Lcom/transsion/playercommon/gallery/ImageFolderFragment;

    invoke-static {p1}, Lcom/transsion/playercommon/gallery/ImageFolderFragment;->P(Lcom/transsion/playercommon/gallery/ImageFolderFragment;)I

    move-result p1

    const-string p3, "crop_type"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/transsion/playercommon/gallery/ImageFolderFragment$a;->b:Lcom/transsion/playercommon/gallery/ImageFolderFragment;

    invoke-static {p0}, Lcom/transsion/playercommon/gallery/ImageFolderFragment;->T(Lcom/transsion/playercommon/gallery/ImageFolderFragment;)Lcom/transsion/playercommon/activities/BaseActivity;

    move-result-object p0

    const/16 p1, 0x45

    invoke-virtual {p0, p2, p1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
