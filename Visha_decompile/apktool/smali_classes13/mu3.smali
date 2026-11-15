.class public final Lmu3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lmu3;

.field public static b:Lcom/transsion/widgetslib/dialog/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmu3;

    invoke-direct {v0}, Lmu3;-><init>()V

    sput-object v0, Lmu3;->a:Lmu3;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Le74;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lmu3;->n(Le74;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lmu3;->i(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic c(Lcom/transsion/dbdata/beans/media/MediaItem;)Z
    .locals 0

    invoke-static {p0}, Lmu3;->m(Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Le74;Ljava/lang/Object;)Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$Companion$FileTransItem;
    .locals 0

    invoke-static {p0, p1}, Lmu3;->p(Le74;Ljava/lang/Object;)Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$Companion$FileTransItem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lcom/transsion/dbdata/beans/media/MediaItem;)Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$Companion$FileTransItem;
    .locals 0

    invoke-static {p0}, Lmu3;->o(Lcom/transsion/dbdata/beans/media/MediaItem;)Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$Companion$FileTransItem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Landroid/content/Context;Landroid/content/Intent;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lmu3;->h(Landroid/content/Context;Landroid/content/Intent;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static final h(Landroid/content/Context;Landroid/content/Intent;Landroid/content/DialogInterface;I)V
    .locals 0

    sget-object p2, Lmu3;->a:Lmu3;

    invoke-virtual {p2}, Lmu3;->q()V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x0

    sput-object p0, Lmu3;->b:Lcom/transsion/widgetslib/dialog/d;

    return-void
.end method

.method public static final i(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p0, 0x0

    sput-object p0, Lmu3;->b:Lcom/transsion/widgetslib/dialog/d;

    return-void
.end method

.method public static synthetic l(Lmu3;Landroid/content/Context;ZLjava/util/List;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lmu3;->k(Landroid/content/Context;ZLjava/util/List;)V

    return-void
.end method

.method public static final m(Lcom/transsion/dbdata/beans/media/MediaItem;)Z
    .locals 4

    if-eqz p0, :cond_0

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {p0}, Lcom/alibaba/android/arouter/utils/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final n(Le74;Ljava/lang/Object;)Z
    .locals 0

    invoke-interface {p0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static final o(Lcom/transsion/dbdata/beans/media/MediaItem;)Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$Companion$FileTransItem;
    .locals 3

    new-instance v0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$Companion$FileTransItem;

    invoke-direct {v0}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$Companion$FileTransItem;-><init>()V

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$Companion$FileTransItem;->setPath(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->size:J

    invoke-virtual {v0, v1, v2}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$Companion$FileTransItem;->setSize(J)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-class v1, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {p0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$Companion$FileTransItem;->setAudio(Z)V

    return-object v0
.end method

.method public static final p(Le74;Ljava/lang/Object;)Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$Companion$FileTransItem;
    .locals 0

    invoke-interface {p0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$Companion$FileTransItem;

    return-object p0
.end method


# virtual methods
.method public final g(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p0}, Lmu3;->j()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget v0, Lcom/transsion/tools/R$layout;->dialog_connect_confirm:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    sget v0, Lcom/transsion/tools/R$id;->info:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    sget v1, Lcom/transsion/tools/R$string;->visha_start_file_trans_need_stop_old_tasking:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    sget v0, Lcom/transsion/tools/R$string;->visha_start_file_trans_need_stop_old_tasking:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[TEST] checkConnect: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FileTransSheetDialogActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/transsion/widgetslib/dialog/d$a;

    invoke-direct {v0, p1}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Lcom/transsion/widgetslib/dialog/d$a;->E(Landroid/view/View;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/transsion/widgetslib/dialog/d$a;->f(Z)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    sget v0, Lcom/transsion/tools/R$string;->video_preview_continue:I

    new-instance v1, Lku3;

    invoke-direct {v1, p1, p2}, Lku3;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {p0, v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->u(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    sget p1, Lcom/transsion/tools/R$string;->cancel:I

    new-instance p2, Llu3;

    invoke-direct {p2}, Llu3;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslib/dialog/d$a;->m(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d$a;->F()Lcom/transsion/widgetslib/dialog/d;

    move-result-object p0

    sput-object p0, Lmu3;->b:Lcom/transsion/widgetslib/dialog/d;

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public final j()Z
    .locals 4

    sget-object p0, Lcom/transsion/vishatransfer/manager/TransferManager;->INSTANCE:Lcom/transsion/vishatransfer/manager/TransferManager;

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v0

    const-string v1, "getApp(...)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v0, v3, v1, v2}, Lcom/transsion/vishatransfer/manager/TransferManager;->getInstance$default(Lcom/transsion/vishatransfer/manager/TransferManager;Landroid/app/Application;IILjava/lang/Object;)Lcom/transsion/vishatransfer/manager/ITransferHelper;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/vishatransfer/manager/ITransferHelper;->getConnectState()Lcom/transsion/vishatransfer/data/ConnectedState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishatransfer/data/ConnectedState;->getState()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[TEST] isConnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FileTransStartUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p0}, Lcom/transsion/vishatransfer/manager/ITransferHelper;->getConnectState()Lcom/transsion/vishatransfer/data/ConnectedState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishatransfer/data/ConnectedState;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-interface {p0}, Lcom/transsion/vishatransfer/manager/ITransferHelper;->getConnectState()Lcom/transsion/vishatransfer/data/ConnectedState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishatransfer/data/ConnectedState;->getState()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/transsion/vishatransfer/manager/ITransferHelper;->getConnectState()Lcom/transsion/vishatransfer/data/ConnectedState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/vishatransfer/data/ConnectedState;->getState()I

    move-result p0

    const/4 v0, 0x7

    if-ne p0, v0, :cond_1

    :cond_0
    move v3, v1

    :cond_1
    return v3
.end method

.method public final k(Landroid/content/Context;ZLjava/util/List;)V
    .locals 8

    const-string v0, "mSelectMediaItems"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startFileTrans size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FileTransStartUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p3

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-object v4, v3, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    iget-wide v5, v3, Lcom/transsion/dbdata/beans/media/MediaItem;->size:J

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startFileTrans data: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-interface {p3}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v3, Lgu3;

    invoke-direct {v3}, Lgu3;-><init>()V

    new-instance v4, Lhu3;

    invoke-direct {v4, v3}, Lhu3;-><init>(Le74;)V

    invoke-interface {v0, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v3, Liu3;

    invoke-direct {v3}, Liu3;-><init>()V

    new-instance v4, Lju3;

    invoke-direct {v4, v3}, Lju3;-><init>(Le74;)V

    invoke-interface {v0, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->distinct()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    const-string v3, "null cannot be cast to non-null type java.util.ArrayList<com.transsion.tools.filetrans.activities.FileTransSheetDialogActivity.Companion.FileTransItem>"

    invoke-static {v0, v3}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p3, 0x1

    if-ne p2, p3, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_2

    return-void

    :cond_2
    sget-object p3, Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;->W:Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity$a;

    invoke-virtual {p3, p1}, Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity$a;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-nez p2, :cond_3

    sget-object p2, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->x0:Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$Companion;

    invoke-virtual {p2, p1}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$Companion;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p2

    goto :goto_1

    :cond_3
    sget-object p2, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->x0:Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$Companion;

    invoke-virtual {p2, p1, v0}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$Companion;->b(Landroid/content/Context;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object p2

    goto :goto_1

    :cond_4
    if-nez p2, :cond_5

    invoke-virtual {p3, p1}, Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity$a;->c(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p2

    goto :goto_1

    :cond_5
    invoke-virtual {p3, p1, v0}, Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity$a;->d(Landroid/content/Context;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object p2

    :goto_1
    invoke-virtual {p0, p1, p2}, Lmu3;->g(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public final q()V
    .locals 0

    sget-object p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->s:Lcom/transsion/vishatransfers/manager/TransferNotificationManager$a;

    invoke-virtual {p0}, Lcom/transsion/vishatransfers/manager/TransferNotificationManager$a;->a()Lcom/transsion/vishatransfers/manager/TransferNotificationManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->w()V

    return-void
.end method
