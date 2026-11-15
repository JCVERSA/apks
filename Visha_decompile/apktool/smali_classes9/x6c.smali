.class public final synthetic Lx6c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;

.field public final synthetic c:Z

.field public final synthetic d:Lcom/transsion/dbdata/beans/media/MediaItem;

.field public final synthetic e:Landroid/app/Activity;

.field public final synthetic f:Ljava/util/List;

.field public final synthetic g:I

.field public final synthetic h:Lcom/transsion/playercommon/adapter/FileOperateMenuAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;ZLcom/transsion/dbdata/beans/media/MediaItem;Landroid/app/Activity;Ljava/util/List;ILcom/transsion/playercommon/adapter/FileOperateMenuAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx6c;->b:Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;

    iput-boolean p2, p0, Lx6c;->c:Z

    iput-object p3, p0, Lx6c;->d:Lcom/transsion/dbdata/beans/media/MediaItem;

    iput-object p4, p0, Lx6c;->e:Landroid/app/Activity;

    iput-object p5, p0, Lx6c;->f:Ljava/util/List;

    iput p6, p0, Lx6c;->g:I

    iput-object p7, p0, Lx6c;->h:Lcom/transsion/playercommon/adapter/FileOperateMenuAdapter;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lx6c;->b:Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;

    iget-boolean v1, p0, Lx6c;->c:Z

    iget-object v2, p0, Lx6c;->d:Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-object v3, p0, Lx6c;->e:Landroid/app/Activity;

    iget-object v4, p0, Lx6c;->f:Ljava/util/List;

    iget v5, p0, Lx6c;->g:I

    iget-object v6, p0, Lx6c;->h:Lcom/transsion/playercommon/adapter/FileOperateMenuAdapter;

    invoke-static/range {v0 .. v6}, Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;->j0(Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;ZLcom/transsion/dbdata/beans/media/MediaItem;Landroid/app/Activity;Ljava/util/List;ILcom/transsion/playercommon/adapter/FileOperateMenuAdapter;)V

    return-void
.end method
