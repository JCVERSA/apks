.class public final synthetic Lc7c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:I

.field public final synthetic e:Z

.field public final synthetic f:Lcom/transsion/playercommon/adapter/FileOperateMenuAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;Ljava/util/List;IZLcom/transsion/playercommon/adapter/FileOperateMenuAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc7c;->b:Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;

    iput-object p2, p0, Lc7c;->c:Ljava/util/List;

    iput p3, p0, Lc7c;->d:I

    iput-boolean p4, p0, Lc7c;->e:Z

    iput-object p5, p0, Lc7c;->f:Lcom/transsion/playercommon/adapter/FileOperateMenuAdapter;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lc7c;->b:Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;

    iget-object v1, p0, Lc7c;->c:Ljava/util/List;

    iget v2, p0, Lc7c;->d:I

    iget-boolean v3, p0, Lc7c;->e:Z

    iget-object p0, p0, Lc7c;->f:Lcom/transsion/playercommon/adapter/FileOperateMenuAdapter;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;->l0(Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;Ljava/util/List;IZLcom/transsion/playercommon/adapter/FileOperateMenuAdapter;)V

    return-void
.end method
