.class public Lcom/transsion/playercommon/utils/storage/FileOperateUtils$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls08;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->Y(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Z

.field public final synthetic c:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$g;->c:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    iput-boolean p2, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$g;->a:Z

    iput-boolean p3, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$g;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "preRename operateContinue isRename:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$g;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "visha_FileOperateUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$g;->a:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$g;->c:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    invoke-static {p0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->w(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$g;->c:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    iget-boolean p0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$g;->b:Z

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->j0(ZZ)V

    :goto_0
    return-void
.end method

.method public b()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "preRename operateCancel, path"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$g;->c:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    invoke-static {p0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->l(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/transsion/utils/BaseConstant;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/transsion/utils/BaseConstant;->g:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "visha_FileOperateUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget p0, Lcom/transsion/playercommon/R$string;->operation_fail:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    return-void
.end method
