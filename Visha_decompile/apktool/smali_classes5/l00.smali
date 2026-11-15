.class public final synthetic Ll00;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/audio/activities/AudioSheetDialogActivity;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:I

.field public final synthetic e:Z

.field public final synthetic f:Lcom/transsion/playercommon/adapter/FileOperateMenuAdapter;

.field public final synthetic g:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/activities/AudioSheetDialogActivity;Ljava/util/List;IZLcom/transsion/playercommon/adapter/FileOperateMenuAdapter;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll00;->b:Lcom/transsion/audio/activities/AudioSheetDialogActivity;

    iput-object p2, p0, Ll00;->c:Ljava/util/List;

    iput p3, p0, Ll00;->d:I

    iput-boolean p4, p0, Ll00;->e:Z

    iput-object p5, p0, Ll00;->f:Lcom/transsion/playercommon/adapter/FileOperateMenuAdapter;

    iput-object p6, p0, Ll00;->g:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Ll00;->b:Lcom/transsion/audio/activities/AudioSheetDialogActivity;

    iget-object v1, p0, Ll00;->c:Ljava/util/List;

    iget v2, p0, Ll00;->d:I

    iget-boolean v3, p0, Ll00;->e:Z

    iget-object v4, p0, Ll00;->f:Lcom/transsion/playercommon/adapter/FileOperateMenuAdapter;

    iget-object v5, p0, Ll00;->g:Landroid/app/Activity;

    invoke-static/range {v0 .. v5}, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->p0(Lcom/transsion/audio/activities/AudioSheetDialogActivity;Ljava/util/List;IZLcom/transsion/playercommon/adapter/FileOperateMenuAdapter;Landroid/app/Activity;)V

    return-void
.end method
