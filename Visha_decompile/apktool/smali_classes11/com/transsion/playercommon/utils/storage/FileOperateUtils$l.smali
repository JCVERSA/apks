.class public Lcom/transsion/playercommon/utils/storage/FileOperateUtils$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/playercommon/fragments/AlertDialogFragment$RenameDialogFragment$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/playercommon/utils/storage/FileOperateUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "l"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public final synthetic b:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$l;->b:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$l;->a:Ljava/lang/String;

    return-void
.end method

.method public static synthetic b(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$l;->g(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic c(Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$l;->f(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic d(Lcom/transsion/playercommon/utils/storage/FileOperateUtils$l;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$l;->e()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Ljava/lang/Boolean;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "visha_FileOperateUtils"

    const-string v0, "videoRename db sync failed"

    invoke-static {p0, v0}, Lvmb;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static synthetic g(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "visha_FileOperateUtils"

    const-string v1, "videoRename db sync error"

    invoke-static {v0, v1, p0}, Lvmb;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$l;->b:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    invoke-static {v0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->l(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$l;->b:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    invoke-static {v0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->l(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->L(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$l;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    const-string v4, "visha_FileOperateUtils"

    if-eqz v3, :cond_1

    const-string v0, "rename,new file is exist."

    invoke-static {v4, v0}, Lvmb;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$l;->b:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    invoke-static {p0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->g(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/playercommon/R$string;->already_exists:I

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->w(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    sget-boolean v3, Lpp3;->j:Z

    if-nez v3, :cond_2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1e

    if-lt v3, v5, :cond_2

    iget-object v0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$l;->b:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    invoke-static {v0, p1}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->r(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$l;->b:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$l;->b:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    invoke-static {v1}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->p(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$l;->a:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x4d6

    invoke-virtual {p1, v0, p0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->c0(ILjava/lang/String;)V

    goto/16 :goto_3

    :cond_2
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$l;->b:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    invoke-static {v5}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->g(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v3, v2}, Lnx8;->q(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    sget p0, Lcom/transsion/playercommon/R$string;->operation_fail:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    goto/16 :goto_3

    :cond_4
    :goto_0
    iget-object v2, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$l;->b:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    invoke-static {v2}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->n(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;)Lzl6;

    move-result-object v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$l;->b:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    new-instance v3, Lzl6;

    invoke-static {v2}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->g(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Lzl6;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v3}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->q(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;Lzl6;)V

    :cond_5
    const/4 v2, 0x1

    invoke-static {v2}, Luq3;->b(Z)V

    iget-object v2, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$l;->b:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    invoke-static {v2}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->n(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;)Lzl6;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lzl6;->j(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->Companion:Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$Companion;

    invoke-virtual {v2}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$Companion;->getInstance()Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->synCountWhenReName(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$l;->b:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    invoke-static {v2}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->l(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$l;->b:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    invoke-static {v3}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->i(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object v3, p1

    goto :goto_1

    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$l;->a:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v2, v3}, Lcom/transsion/dbdata/beans/media/MediaItem;->setDisplayName(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$l;->b:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    invoke-static {v2}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->l(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v2

    iput-object v1, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$l;->b:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    invoke-static {v2}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->g(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/transsion/playercommon/activities/BaseActivity;

    new-instance v3, Lir3;

    invoke-direct {v3, p0}, Lir3;-><init>(Lcom/transsion/playercommon/utils/storage/FileOperateUtils$l;)V

    invoke-static {v3}, Lmc7;->D(Ljava/util/concurrent/Callable;)Lmc7;

    move-result-object v3

    invoke-virtual {v2}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object v2

    invoke-virtual {v3, v2}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object v2

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v2

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v2

    new-instance v3, Ljr3;

    invoke-direct {v3}, Ljr3;-><init>()V

    new-instance v5, Lkr3;

    invoke-direct {v5}, Lkr3;-><init>()V

    invoke-virtual {v2, v3, v5}, Lmc7;->a0(Lzf1;Lzf1;)Lrc2;

    iget-object v2, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$l;->b:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    invoke-static {v2}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->h(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;)Lcom/transsion/playercommon/utils/storage/FileOperateUtils$k;

    move-result-object v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$l;->b:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    invoke-static {v2}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->h(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;)Lcom/transsion/playercommon/utils/storage/FileOperateUtils$k;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$l;->b:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    invoke-static {v3}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->i(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_2

    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$l;->a:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_2
    invoke-interface {v2, p1, v1}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$k;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    iget-object p0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$l;->b:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    invoke-static {p0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->i(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;)Z

    move-result p0

    if-eqz p0, :cond_9

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->synRename(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const/16 v2, 0x430

    invoke-virtual {p0, v2, p1}, Lh27;->e(I[Ljava/lang/Object;)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    const/16 p1, 0x456

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lh27;->e(I[Ljava/lang/Object;)V

    const-string p0, "rename success."

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void
.end method

.method public final synthetic e()Ljava/lang/Boolean;
    .locals 1

    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$l;->b:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    invoke-static {p0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->l(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    invoke-virtual {v0, p0}, Ltpb;->C(Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
