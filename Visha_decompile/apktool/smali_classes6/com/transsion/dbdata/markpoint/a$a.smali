.class public final Lcom/transsion/dbdata/markpoint/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/dbdata/markpoint/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/dbdata/markpoint/a$a;-><init>()V

    return-void
.end method

.method public static synthetic c(Lcom/transsion/dbdata/markpoint/a$a;Ljava/lang/String;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/dbdata/markpoint/a$a;->b(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic t(Lcom/transsion/dbdata/markpoint/a$a;JIJILjava/lang/Object;)V
    .locals 6

    and-int/lit8 p6, p6, 0x4

    if-eqz p6, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p4

    :cond_0
    move-wide v4, p4

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/dbdata/markpoint/a$a;->s(JIJ)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;)V
    .locals 1

    invoke-static {p1}, Lcom/alibaba/android/arouter/utils/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    sget-object p0, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo;->a:Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo;

    invoke-virtual {p0}, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo;->e()Ljava/lang/String;

    move-result-object p0

    const-string v0, "transfer_id"

    invoke-virtual {p2, v0, p0}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    invoke-virtual {p3, v0, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2, p3}, Lhb0;->markDirect(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;)V

    return-void
.end method

.method public final b(Ljava/lang/String;I)V
    .locals 4

    const-string v0, "cancelStep"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v0}, Lcom/transsion/athena/data/TrackData;-><init>()V

    const-string v1, "progress"

    invoke-virtual {v0, v1, p2}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    const-string v2, "cancel_stepstring"

    invoke-virtual {v0, v2, p1}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v3, v1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v3, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "vd_filetransfer_cancel_cl"

    invoke-virtual {p0, p1, v0, v3}, Lcom/transsion/dbdata/markpoint/a$a;->a(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;)V

    return-void
.end method

.method public final d()V
    .locals 3

    new-instance v0, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v0}, Lcom/transsion/athena/data/TrackData;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "vd_filetransfer_device_cl"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/dbdata/markpoint/a$a;->a(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;)V

    return-void
.end method

.method public final e(ZJI)V
    .locals 5

    new-instance v0, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v0}, Lcom/transsion/athena/data/TrackData;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "status"

    invoke-virtual {v0, v2, p1}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    const-string v3, "connect_duration"

    invoke-virtual {v0, v3, p2, p3}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;J)Lcom/transsion/athena/data/TrackData;

    if-nez p1, :cond_0

    const-string v4, "error_code"

    invoke-virtual {v0, v4, p4}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    invoke-virtual {v1, v4, p4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v3, p2, p3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string p1, "vd_filetransfer_device_connect"

    invoke-virtual {p0, p1, v0, v1}, Lcom/transsion/dbdata/markpoint/a$a;->a(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;)V

    return-void
.end method

.method public final f(IJ)V
    .locals 4

    new-instance v0, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v0}, Lcom/transsion/athena/data/TrackData;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "device_count"

    invoke-virtual {v0, v2, p1}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    const-string v3, "scan_duration"

    invoke-virtual {v0, v3, p2, p3}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;J)Lcom/transsion/athena/data/TrackData;

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v3, p2, p3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string p1, "vd_filetransfer_device_found"

    invoke-virtual {p0, p1, v0, v1}, Lcom/transsion/dbdata/markpoint/a$a;->a(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;)V

    return-void
.end method

.method public final g(Ljava/lang/String;I)V
    .locals 6

    const-string v0, "step"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/transsion/dbdata/markpoint/a$a;->u(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v1}, Lcom/transsion/athena/data/TrackData;-><init>()V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "error_type"

    invoke-virtual {v1, v3, v0}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    const-string v4, "error_step"

    invoke-virtual {v1, v4, p1}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    const-string v5, "error_code"

    invoke-virtual {v1, v5, p2}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    invoke-virtual {v2, v3, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "vd_filetransfer_error_show"

    invoke-virtual {p0, p1, v1, v2}, Lcom/transsion/dbdata/markpoint/a$a;->a(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;)V

    sget-object p0, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo;->a:Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo;->l(Ljava/lang/Integer;)V

    return-void
.end method

.method public final h(I)V
    .locals 3

    new-instance v0, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v0}, Lcom/transsion/athena/data/TrackData;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "total_size"

    invoke-virtual {v0, v2, p1}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "vd_filetransfer_file_cl"

    invoke-virtual {p0, p1, v0, v1}, Lcom/transsion/dbdata/markpoint/a$a;->a(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;)V

    return-void
.end method

.method public final i()V
    .locals 3

    new-instance v0, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v0}, Lcom/transsion/athena/data/TrackData;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "vd_filetransfer_fileselect_show"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/dbdata/markpoint/a$a;->a(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;)V

    return-void
.end method

.method public final j()V
    .locals 4

    sget-object v0, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo;->a:Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo;

    invoke-virtual {v0}, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v1}, Lcom/transsion/athena/data/TrackData;-><init>()V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "from"

    invoke-virtual {v1, v3, v0}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    invoke-virtual {v2, v3, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "vd_filetransfer_show"

    invoke-virtual {p0, v0, v1, v2}, Lcom/transsion/dbdata/markpoint/a$a;->a(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;)V

    return-void
.end method

.method public final k()V
    .locals 3

    new-instance v0, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v0}, Lcom/transsion/athena/data/TrackData;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "vd_filetransfer_history_cl"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/dbdata/markpoint/a$a;->a(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;)V

    return-void
.end method

.method public final l()V
    .locals 6

    sget-object p0, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo;->a:Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo;

    invoke-virtual {p0}, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo;->f()Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo$PermissionType;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo$PermissionType;->getPermission()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo$PermissionType;->getResult()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v2}, Lcom/transsion/athena/data/TrackData;-><init>()V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "permission_type"

    invoke-virtual {v2, v4, v1}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    const-string v5, "result"

    invoke-virtual {v2, v5, v0}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    invoke-virtual {v3, v4, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/dbdata/markpoint/a;->a:Lcom/transsion/dbdata/markpoint/a$a;

    const-string v1, "vd_filetransfer_permission_result"

    invoke-virtual {v0, v1, v2, v3}, Lcom/transsion/dbdata/markpoint/a$a;->a(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo;->n(Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo$PermissionType;)V

    :cond_0
    return-void
.end method

.method public final m(Ljava/lang/String;)V
    .locals 3

    const-string v0, "type"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v0}, Lcom/transsion/athena/data/TrackData;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "permission_type"

    invoke-virtual {v0, v2, p1}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "vd_filetransfer_permission_show"

    invoke-virtual {p0, p1, v0, v1}, Lcom/transsion/dbdata/markpoint/a$a;->a(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;)V

    return-void
.end method

.method public final n()V
    .locals 3

    new-instance v0, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v0}, Lcom/transsion/athena/data/TrackData;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "vd_filetransfer_receive_cl"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/dbdata/markpoint/a$a;->a(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;)V

    return-void
.end method

.method public final o(I)V
    .locals 6

    sget-object v0, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo;->a:Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo;

    invoke-virtual {v0}, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo;->c()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/16 v1, 0x3ee

    :goto_0
    new-instance v2, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v2}, Lcom/transsion/athena/data/TrackData;-><init>()V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "retry_count"

    invoke-virtual {v2, v4, p1}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    const-string v5, "error_code"

    invoke-virtual {v2, v5, v1}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    invoke-virtual {v3, v4, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v3, v5, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "vd_filetransfer_retry_cl"

    invoke-virtual {p0, p1, v2, v3}, Lcom/transsion/dbdata/markpoint/a$a;->a(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo;->l(Ljava/lang/Integer;)V

    return-void
.end method

.method public final p()V
    .locals 3

    new-instance v0, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v0}, Lcom/transsion/athena/data/TrackData;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "vd_filetransfer_send_cl"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/dbdata/markpoint/a$a;->a(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;)V

    return-void
.end method

.method public final q(IJJII)V
    .locals 7

    new-instance v0, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v0}, Lcom/transsion/athena/data/TrackData;-><init>()V

    const-string v1, "status"

    invoke-virtual {v0, v1, p1}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    const-string v2, "duration"

    invoke-virtual {v0, v2, p2, p3}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;J)Lcom/transsion/athena/data/TrackData;

    const-string v3, "average_speed"

    invoke-virtual {v0, v3, p4, p5}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;J)Lcom/transsion/athena/data/TrackData;

    const-string v4, "file_count_success"

    invoke-virtual {v0, v4, p6}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    const-string v5, "file_count_fail"

    invoke-virtual {v0, v5, p7}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v6, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v6, v2, p2, p3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v6, v3, p4, p5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v6, v4, p6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v6, v5, p7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "vd_filetransfer_complete"

    invoke-virtual {p0, p1, v0, v6}, Lcom/transsion/dbdata/markpoint/a$a;->a(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;)V

    return-void
.end method

.method public final r(IJJ)V
    .locals 5

    new-instance v0, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v0}, Lcom/transsion/athena/data/TrackData;-><init>()V

    const-string v1, "progress_percentage"

    invoke-virtual {v0, v1, p1}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    const-string v2, "current_speed"

    invoke-virtual {v0, v2, p2, p3}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;J)Lcom/transsion/athena/data/TrackData;

    const-string v3, "elapsed_duration"

    invoke-virtual {v0, v3, p4, p5}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;J)Lcom/transsion/athena/data/TrackData;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v4, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v4, v2, p2, p3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v4, v3, p4, p5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string p1, "vd_filetransfer_progress"

    invoke-virtual {p0, p1, v0, v4}, Lcom/transsion/dbdata/markpoint/a$a;->a(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;)V

    return-void
.end method

.method public final s(JIJ)V
    .locals 5

    new-instance v0, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v0}, Lcom/transsion/athena/data/TrackData;-><init>()V

    const-string v1, "total_size"

    invoke-virtual {v0, v1, p1, p2}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;J)Lcom/transsion/athena/data/TrackData;

    const-string v2, "file_count"

    invoke-virtual {v0, v2, p3}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    const-string v3, "start_timestamp"

    invoke-virtual {v0, v3, p4, p5}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;J)Lcom/transsion/athena/data/TrackData;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v4, v1, p1, p2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v4, v2, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v4, v3, p4, p5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string p1, "vd_filetransfer_start"

    invoke-virtual {p0, p1, v0, v4}, Lcom/transsion/dbdata/markpoint/a$a;->a(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;)V

    return-void
.end method

.method public final u(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string p0, "unknown"

    return-object p0

    :pswitch_1
    const-string p0, "device"

    return-object p0

    :pswitch_2
    const-string p0, "network"

    return-object p0

    :pswitch_3
    const-string p0, "permission"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
