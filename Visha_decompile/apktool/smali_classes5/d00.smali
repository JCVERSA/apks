.class public final synthetic Ld00;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/audio/activities/AudioSheetDialogActivity;

.field public final synthetic c:Z

.field public final synthetic d:Lcom/transsion/dbdata/beans/media/AudioItem;

.field public final synthetic e:Landroid/app/Activity;

.field public final synthetic f:Ljava/util/List;

.field public final synthetic g:I

.field public final synthetic h:Lcom/transsion/playercommon/adapter/FileOperateMenuAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/activities/AudioSheetDialogActivity;ZLcom/transsion/dbdata/beans/media/AudioItem;Landroid/app/Activity;Ljava/util/List;ILcom/transsion/playercommon/adapter/FileOperateMenuAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld00;->b:Lcom/transsion/audio/activities/AudioSheetDialogActivity;

    iput-boolean p2, p0, Ld00;->c:Z

    iput-object p3, p0, Ld00;->d:Lcom/transsion/dbdata/beans/media/AudioItem;

    iput-object p4, p0, Ld00;->e:Landroid/app/Activity;

    iput-object p5, p0, Ld00;->f:Ljava/util/List;

    iput p6, p0, Ld00;->g:I

    iput-object p7, p0, Ld00;->h:Lcom/transsion/playercommon/adapter/FileOperateMenuAdapter;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Ld00;->b:Lcom/transsion/audio/activities/AudioSheetDialogActivity;

    iget-boolean v1, p0, Ld00;->c:Z

    iget-object v2, p0, Ld00;->d:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v3, p0, Ld00;->e:Landroid/app/Activity;

    iget-object v4, p0, Ld00;->f:Ljava/util/List;

    iget v5, p0, Ld00;->g:I

    iget-object v6, p0, Ld00;->h:Lcom/transsion/playercommon/adapter/FileOperateMenuAdapter;

    invoke-static/range {v0 .. v6}, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->f0(Lcom/transsion/audio/activities/AudioSheetDialogActivity;ZLcom/transsion/dbdata/beans/media/AudioItem;Landroid/app/Activity;Ljava/util/List;ILcom/transsion/playercommon/adapter/FileOperateMenuAdapter;)V

    return-void
.end method
