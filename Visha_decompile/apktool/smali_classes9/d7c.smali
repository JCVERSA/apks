.class public final synthetic Ld7c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;

.field public final synthetic c:Lcom/transsion/playercommon/adapter/FileOperateMenuAdapter;

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;Lcom/transsion/playercommon/adapter/FileOperateMenuAdapter;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld7c;->b:Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;

    iput-object p2, p0, Ld7c;->c:Lcom/transsion/playercommon/adapter/FileOperateMenuAdapter;

    iput-boolean p3, p0, Ld7c;->d:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Ld7c;->b:Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;

    iget-object v1, p0, Ld7c;->c:Lcom/transsion/playercommon/adapter/FileOperateMenuAdapter;

    iget-boolean p0, p0, Ld7c;->d:Z

    invoke-static {v0, v1, p0}, Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;->k0(Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;Lcom/transsion/playercommon/adapter/FileOperateMenuAdapter;Z)V

    return-void
.end method
