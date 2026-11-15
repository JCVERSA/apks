.class public final Lvhb;
.super Lwc0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvhb$a;
    }
.end annotation


# instance fields
.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public k:Ljhb;

.field public l:Lthb;

.field public m:Lnt4;

.field public n:Z

.field public o:Lmhb;


# direct methods
.method public constructor <init>(Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;)V
    .locals 1

    const-string v0, "taskInfo"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lwc0;-><init>(Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;)V

    const-string v0, "UploadSerialTask"

    iput-object v0, p0, Lvhb;->i:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->getTaskId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lvhb;->j:Ljava/lang/String;

    return-void
.end method

.method public static synthetic E(Lvhb;J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lvhb;->V(Lvhb;J)V

    return-void
.end method

.method public static final synthetic F(Lvhb;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lvhb;->i:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic G(Lvhb;)Lthb;
    .locals 0

    iget-object p0, p0, Lvhb;->l:Lthb;

    return-object p0
.end method

.method public static final synthetic H(Lvhb;)Lmhb;
    .locals 0

    iget-object p0, p0, Lvhb;->o:Lmhb;

    return-object p0
.end method

.method public static final synthetic I(Lvhb;)V
    .locals 0

    invoke-virtual {p0}, Lvhb;->S()V

    return-void
.end method

.method public static final synthetic J(Lvhb;Z)V
    .locals 0

    iput-boolean p1, p0, Lvhb;->n:Z

    return-void
.end method

.method private final L()V
    .locals 5

    sget-object v0, Loq5;->a:Loq5;

    iget-object v1, p0, Lvhb;->i:Ljava/lang/String;

    invoke-virtual {p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v2

    check-cast v2, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;

    invoke-virtual {v2}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->getTaskId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "upload task["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] is cancelled!"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Loq5;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lwc0;->y()V

    return-void
.end method

.method private final N()V
    .locals 5

    sget-object v0, Loq5;->a:Loq5;

    iget-object v1, p0, Lvhb;->i:Ljava/lang/String;

    invoke-virtual {p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v2

    check-cast v2, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;

    invoke-virtual {v2}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->getTaskId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "execute upload task start:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Loq5;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lwc0;->w()V

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v1

    check-cast v1, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;

    invoke-virtual {v1}, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;->getFile()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lvhb;->Q()Ljava/util/List;

    move-result-object v0

    :cond_0
    :goto_0
    iget-boolean v1, p0, Lvhb;->n:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lvhb;->o:Lmhb;

    if-nez v1, :cond_1

    const-string v1, "uploadInfo"

    invoke-static {v1}, Ly45;->B(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_1
    invoke-virtual {v1}, Lmhb;->g()Lcom/transsion/cloud_drive/transfer/internal/upload/UploadState;

    move-result-object v1

    sget-object v2, Lvhb$a;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const-string v2, "upload task["

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lvhb;->W()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Loq5;->a:Loq5;

    iget-object v1, p0, Lvhb;->i:Ljava/lang/String;

    invoke-virtual {p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v3

    check-cast v3, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;

    invoke-virtual {v3}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->getTaskId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object p0

    check-cast p0, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;

    invoke-virtual {p0}, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;->getFileName()Ljava/lang/String;

    move-result-object p0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] file:"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " completed!"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Loq5;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void

    :pswitch_1
    invoke-virtual {p0, v0}, Lvhb;->U(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v0, Loq5;->a:Loq5;

    iget-object v1, p0, Lvhb;->i:Ljava/lang/String;

    invoke-virtual {p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object p0

    check-cast p0, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;

    invoke-virtual {p0}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->getTaskId()Ljava/lang/String;

    move-result-object p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] chunks fail"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Loq5;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :pswitch_2
    invoke-virtual {p0, v0}, Lvhb;->O(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :pswitch_3
    invoke-virtual {p0}, Lvhb;->K()V

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lvhb;->R()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :pswitch_5
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lvhb;->M(Ljava/util/List;Z)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :pswitch_6
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lvhb;->M(Ljava/util/List;Z)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    return-void

    :cond_4
    new-instance p0, Ljava/io/FileNotFoundException;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final V(Lvhb;J)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v0

    check-cast v0, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;

    invoke-virtual {v0}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->getTransferredSize()J

    move-result-wide v1

    add-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->setTransferredSize(J)V

    invoke-virtual {p0}, Lwc0;->t()V

    return-void
.end method


# virtual methods
.method public final K()V
    .locals 11

    iget-object v0, p0, Lvhb;->o:Lmhb;

    const/4 v1, 0x0

    const-string v2, "uploadInfo"

    if-nez v0, :cond_0

    invoke-static {v2}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lmhb;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lj1a;->o0(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Loq5;->a:Loq5;

    iget-object p0, p0, Lvhb;->i:Ljava/lang/String;

    const-string v1, "CRC algorithm is empty, cannot calculate CRC"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Loq5;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v3

    check-cast v3, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;

    invoke-virtual {v3}, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;->getFile()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-virtual {p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v5

    check-cast v5, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;

    invoke-virtual {v5}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->getFileSize()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    const-string v6, ""

    if-nez v5, :cond_5

    sget-object v0, Loq5;->a:Loq5;

    iget-object v5, p0, Lvhb;->i:Ljava/lang/String;

    const-string v7, "file size is 0, CRC value is empty"

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Loq5;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lvhb;->o:Lmhb;

    if-nez v0, :cond_2

    invoke-static {v2}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    invoke-virtual {v0, v6}, Lmhb;->k(Ljava/lang/String;)V

    iget-object v0, p0, Lvhb;->o:Lmhb;

    if-nez v0, :cond_3

    invoke-static {v2}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v1

    :cond_3
    sget-object v5, Lcom/transsion/cloud_drive/transfer/internal/upload/UploadState;->UPLOADING:Lcom/transsion/cloud_drive/transfer/internal/upload/UploadState;

    invoke-virtual {v0, v5}, Lmhb;->p(Lcom/transsion/cloud_drive/transfer/internal/upload/UploadState;)V

    iget-object v0, p0, Lvhb;->o:Lmhb;

    if-nez v0, :cond_4

    invoke-static {v2}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v1, v0

    :goto_0
    invoke-virtual {v1, v3, v4}, Lmhb;->n(J)V

    invoke-virtual {p0}, Lvhb;->S()V

    return-void

    :cond_5
    iget-object v5, p0, Lvhb;->o:Lmhb;

    if-nez v5, :cond_6

    invoke-static {v2}, Ly45;->B(Ljava/lang/String;)V

    move-object v5, v1

    :cond_6
    invoke-virtual {v5}, Lmhb;->e()J

    move-result-wide v7

    cmp-long v5, v7, v3

    if-nez v5, :cond_b

    iget-object v5, p0, Lvhb;->o:Lmhb;

    if-nez v5, :cond_7

    invoke-static {v2}, Ly45;->B(Ljava/lang/String;)V

    move-object v5, v1

    :cond_7
    invoke-virtual {v5}, Lmhb;->b()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_8

    goto :goto_2

    :cond_8
    sget-object v0, Loq5;->a:Loq5;

    iget-object v3, p0, Lvhb;->i:Ljava/lang/String;

    iget-object v4, p0, Lvhb;->o:Lmhb;

    if-nez v4, :cond_9

    invoke-static {v2}, Ly45;->B(Ljava/lang/String;)V

    move-object v4, v1

    :cond_9
    invoke-virtual {v4}, Lmhb;->b()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file not changed, use cached CRC value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Loq5;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lvhb;->o:Lmhb;

    if-nez v0, :cond_a

    invoke-static {v2}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_1

    :cond_a
    move-object v1, v0

    :goto_1
    sget-object v0, Lcom/transsion/cloud_drive/transfer/internal/upload/UploadState;->UPLOADING:Lcom/transsion/cloud_drive/transfer/internal/upload/UploadState;

    invoke-virtual {v1, v0}, Lmhb;->p(Lcom/transsion/cloud_drive/transfer/internal/upload/UploadState;)V

    invoke-virtual {p0}, Lvhb;->S()V

    return-void

    :cond_b
    :goto_2
    :try_start_0
    iget-object v5, p0, Lvhb;->o:Lmhb;

    if-nez v5, :cond_c

    invoke-static {v2}, Ly45;->B(Ljava/lang/String;)V

    move-object v5, v1

    goto :goto_3

    :catch_0
    move-exception v0

    goto/16 :goto_7

    :cond_c
    :goto_3
    iget-object v7, p0, Lvhb;->o:Lmhb;

    if-nez v7, :cond_d

    invoke-static {v2}, Ly45;->B(Ljava/lang/String;)V

    move-object v7, v1

    :cond_d
    invoke-virtual {v7}, Lmhb;->a()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "toLowerCase(...)"

    invoke-static {v7, v8}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    const v9, -0x509bfc70

    if-eq v8, v9, :cond_11

    const v9, 0x5a86333

    if-eq v8, v9, :cond_10

    const v9, 0x5a86392

    if-eq v8, v9, :cond_e

    goto :goto_4

    :cond_e
    const-string v8, "crc64"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_f

    goto :goto_4

    :cond_f
    new-instance v6, Leq3;

    invoke-direct {v6, v0}, Leq3;-><init>(Ljava/io/File;)V

    invoke-virtual {v6}, Leq3;->a()Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    :cond_10
    const-string v8, "crc32"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    new-instance v6, Ldq3;

    invoke-direct {v6, v0}, Ldq3;-><init>(Ljava/io/File;)V

    invoke-virtual {v6}, Ldq3;->a()Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    :cond_11
    const-string v8, "crc32c"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_14

    :cond_12
    :goto_4
    sget-object v0, Loq5;->a:Loq5;

    iget-object v7, p0, Lvhb;->i:Ljava/lang/String;

    iget-object v8, p0, Lvhb;->o:Lmhb;

    if-nez v8, :cond_13

    invoke-static {v2}, Ly45;->B(Ljava/lang/String;)V

    move-object v8, v1

    :cond_13
    invoke-virtual {v8}, Lmhb;->a()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "unsupported CRC algorithm: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Loq5;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    :cond_14
    new-instance v6, Lcq3;

    invoke-direct {v6, v0}, Lcq3;-><init>(Ljava/io/File;)V

    invoke-virtual {v6}, Lcq3;->a()Ljava/lang/String;

    move-result-object v6

    :goto_5
    invoke-virtual {v5, v6}, Lmhb;->k(Ljava/lang/String;)V

    sget-object v0, Loq5;->a:Loq5;

    iget-object v5, p0, Lvhb;->i:Ljava/lang/String;

    iget-object v6, p0, Lvhb;->o:Lmhb;

    if-nez v6, :cond_15

    invoke-static {v2}, Ly45;->B(Ljava/lang/String;)V

    move-object v6, v1

    :cond_15
    invoke-virtual {v6}, Lmhb;->a()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lvhb;->o:Lmhb;

    if-nez v7, :cond_16

    invoke-static {v2}, Ly45;->B(Ljava/lang/String;)V

    move-object v7, v1

    :cond_16
    invoke-virtual {v7}, Lmhb;->b()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "calculate file CRC with algorithm: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "  hash:"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Loq5;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lvhb;->o:Lmhb;

    if-nez v0, :cond_17

    invoke-static {v2}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v1

    :cond_17
    invoke-virtual {v0, v3, v4}, Lmhb;->n(J)V

    iget-object v0, p0, Lvhb;->o:Lmhb;

    if-nez v0, :cond_18

    invoke-static {v2}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_6

    :cond_18
    move-object v1, v0

    :goto_6
    sget-object v0, Lcom/transsion/cloud_drive/transfer/internal/upload/UploadState;->UPLOADING:Lcom/transsion/cloud_drive/transfer/internal/upload/UploadState;

    invoke-virtual {v1, v0}, Lmhb;->p(Lcom/transsion/cloud_drive/transfer/internal/upload/UploadState;)V

    invoke-virtual {p0}, Lvhb;->S()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :goto_7
    sget-object v1, Loq5;->a:Loq5;

    iget-object p0, p0, Lvhb;->i:Ljava/lang/String;

    const-string v2, "calculate file CRC error:"

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Loq5;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_8
    return-void
.end method

.method public final M(Ljava/util/List;Z)Z
    .locals 8

    new-instance v0, Lcom/transsion/cloud_drive/base/internal/request/CreateFileRequest;

    invoke-virtual {p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v1

    check-cast v1, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;

    invoke-virtual {v1}, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v2

    check-cast v2, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;

    invoke-virtual {v2}, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;->getParentId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "file"

    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/cloud_drive/base/internal/request/CreateFileRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v1

    check-cast v1, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;

    invoke-virtual {v1}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->getFileSize()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/transsion/cloud_drive/base/internal/request/CreateFileRequest;->setSize(J)V

    move-object v1, p1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lihb;

    new-instance v5, Lcom/transsion/cloud_drive/base/api/model/UploadPartInfo;

    invoke-virtual {v3}, Lihb;->a()I

    move-result v3

    const/4 v6, 0x2

    invoke-direct {v5, v3, v4, v6, v4}, Lcom/transsion/cloud_drive/base/api/model/UploadPartInfo;-><init>(ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Lcom/transsion/cloud_drive/base/internal/request/CreateFileRequest;->setPartInfoList(Ljava/util/List;)V

    if-eqz p2, :cond_1

    sget-object p2, Lcom/transsion/cloud_drive/transfer/common/CommonFileUtils;->a:Lcom/transsion/cloud_drive/transfer/common/CommonFileUtils;

    invoke-virtual {p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v1

    check-cast v1, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;

    invoke-virtual {v1}, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;->getFile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/transsion/cloud_drive/transfer/common/CommonFileUtils;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/transsion/cloud_drive/base/internal/request/CreateFileRequest;->setPreHash(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    sget-object p2, Lcom/transsion/cloud_drive/transfer/common/CommonFileUtils;->a:Lcom/transsion/cloud_drive/transfer/common/CommonFileUtils;

    invoke-virtual {p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v1

    check-cast v1, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;

    invoke-virtual {v1}, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;->getFile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/transsion/cloud_drive/transfer/common/CommonFileUtils;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/transsion/cloud_drive/base/internal/request/CreateFileRequest;->setContentHash(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object p2

    check-cast p2, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;

    invoke-virtual {p2}, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;->getTags()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-static {p2}, Li81;->e1(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p2

    new-instance v1, Lcom/transsion/cloud_drive/base/api/model/FileUserTag;

    invoke-virtual {p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v2

    check-cast v2, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;

    invoke-virtual {v2}, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;->getFile()Ljava/lang/String;

    move-result-object v2

    const-string v3, "file_path"

    invoke-direct {v1, v3, v2}, Lcom/transsion/cloud_drive/base/api/model/FileUserTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p2}, Lcom/transsion/cloud_drive/base/internal/request/CreateFileRequest;->setUserTags(Ljava/util/List;)V

    sget-object p2, Lcom/transsion/cloud_drive/base/internal/ServiceProvider;->a:Lcom/transsion/cloud_drive/base/internal/ServiceProvider;

    invoke-virtual {p2}, Lcom/transsion/cloud_drive/base/internal/ServiceProvider;->a()Lpr3;

    move-result-object p2

    invoke-interface {p2, v0}, Lpr3;->b(Lcom/transsion/cloud_drive/base/internal/request/CreateFileRequest;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;

    move-result-object p2

    instance-of v0, p2, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;

    const-string v1, "upload file ["

    const/4 v2, 0x1

    const-string v3, "uploadInfo"

    if-eqz v0, :cond_b

    move-object v0, p2

    check-cast v0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;

    invoke-virtual {v0}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;->getData()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    check-cast v0, Lcom/transsion/cloud_drive/base/api/model/CreateFileResult;

    invoke-static {p0}, Lvhb;->H(Lvhb;)Lmhb;

    move-result-object v5

    if-nez v5, :cond_2

    invoke-static {v3}, Ly45;->B(Ljava/lang/String;)V

    move-object v5, v4

    :cond_2
    invoke-virtual {v0}, Lcom/transsion/cloud_drive/base/api/model/CreateFileResult;->getFileId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lmhb;->m(Ljava/lang/String;)V

    invoke-static {p0}, Lvhb;->H(Lvhb;)Lmhb;

    move-result-object v5

    if-nez v5, :cond_3

    invoke-static {v3}, Ly45;->B(Ljava/lang/String;)V

    move-object v5, v4

    :cond_3
    invoke-virtual {v0}, Lcom/transsion/cloud_drive/base/api/model/CreateFileResult;->getUploadId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lmhb;->r(Ljava/lang/String;)V

    invoke-virtual {p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v5

    check-cast v5, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;

    invoke-virtual {v0}, Lcom/transsion/cloud_drive/base/api/model/CreateFileResult;->getFileId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;->setFileId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v5

    check-cast v5, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;

    invoke-virtual {v0}, Lcom/transsion/cloud_drive/base/api/model/CreateFileResult;->getHasTranscodeTask()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;->setHasTranscodeTask(Z)V

    invoke-virtual {v0}, Lcom/transsion/cloud_drive/base/api/model/CreateFileResult;->getRapidUpload()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {p0, v2}, Lvhb;->J(Lvhb;Z)V

    invoke-static {p0}, Lvhb;->G(Lvhb;)Lthb;

    move-result-object p1

    if-nez p1, :cond_4

    const-string p1, "uploadDbChannel"

    invoke-static {p1}, Ly45;->B(Ljava/lang/String;)V

    move-object p1, v4

    :cond_4
    invoke-static {p0}, Lvhb;->H(Lvhb;)Lmhb;

    move-result-object v5

    if-nez v5, :cond_5

    invoke-static {v3}, Ly45;->B(Ljava/lang/String;)V

    move-object v5, v4

    :cond_5
    invoke-virtual {v5}, Lmhb;->h()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Lthb;->delete(Ljava/lang/String;)V

    invoke-virtual {p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object p1

    check-cast p1, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;

    invoke-virtual {v0}, Lcom/transsion/cloud_drive/base/api/model/CreateFileResult;->getFileId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;->setFileId(Ljava/lang/String;)V

    sget-object p1, Loq5;->a:Loq5;

    invoke-static {p0}, Lvhb;->F(Lvhb;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v5

    check-cast v5, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;

    invoke-virtual {v5}, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] rapid success,taskInfo:"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v0, v5}, Loq5;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lwc0;->n()V

    goto :goto_3

    :cond_6
    invoke-virtual {v0}, Lcom/transsion/cloud_drive/base/api/model/CreateFileResult;->getPartInfoList()Ljava/util/List;

    move-result-object v5

    invoke-virtual {p0, p1, v5}, Lvhb;->T(Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/transsion/cloud_drive/base/api/model/CreateFileResult;->getCrc()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_9

    invoke-static {p0}, Lvhb;->H(Lvhb;)Lmhb;

    move-result-object p1

    if-nez p1, :cond_7

    invoke-static {v3}, Ly45;->B(Ljava/lang/String;)V

    move-object p1, v4

    :cond_7
    invoke-virtual {v0}, Lcom/transsion/cloud_drive/base/api/model/CreateFileResult;->getCrc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmhb;->j(Ljava/lang/String;)V

    invoke-static {p0}, Lvhb;->H(Lvhb;)Lmhb;

    move-result-object p1

    if-nez p1, :cond_8

    invoke-static {v3}, Ly45;->B(Ljava/lang/String;)V

    move-object p1, v4

    :cond_8
    sget-object v0, Lcom/transsion/cloud_drive/transfer/internal/upload/UploadState;->CRC_HASH:Lcom/transsion/cloud_drive/transfer/internal/upload/UploadState;

    invoke-virtual {p1, v0}, Lmhb;->p(Lcom/transsion/cloud_drive/transfer/internal/upload/UploadState;)V

    goto :goto_2

    :cond_9
    invoke-static {p0}, Lvhb;->H(Lvhb;)Lmhb;

    move-result-object p1

    if-nez p1, :cond_a

    invoke-static {v3}, Ly45;->B(Ljava/lang/String;)V

    move-object p1, v4

    :cond_a
    sget-object v0, Lcom/transsion/cloud_drive/transfer/internal/upload/UploadState;->UPLOADING:Lcom/transsion/cloud_drive/transfer/internal/upload/UploadState;

    invoke-virtual {p1, v0}, Lmhb;->p(Lcom/transsion/cloud_drive/transfer/internal/upload/UploadState;)V

    :goto_2
    invoke-static {p0}, Lvhb;->I(Lvhb;)V

    :goto_3
    move p1, v2

    goto :goto_4

    :cond_b
    const/4 p1, 0x0

    :goto_4
    instance-of v0, p2, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;

    if-eqz v0, :cond_10

    move-object v0, p2

    check-cast v0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;

    invoke-virtual {v0}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;->getErrorCode()I

    move-result v5

    sget-object v6, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->FILE_PRE_HASH_COLLISION:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    invoke-virtual {v6}, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->getCode()I

    move-result v6

    if-ne v5, v6, :cond_d

    invoke-static {p0}, Lvhb;->H(Lvhb;)Lmhb;

    move-result-object p1

    if-nez p1, :cond_c

    invoke-static {v3}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_5

    :cond_c
    move-object v4, p1

    :goto_5
    sget-object p1, Lcom/transsion/cloud_drive/transfer/internal/upload/UploadState;->PRE_HASH_COLLISION:Lcom/transsion/cloud_drive/transfer/internal/upload/UploadState;

    invoke-virtual {v4, p1}, Lmhb;->p(Lcom/transsion/cloud_drive/transfer/internal/upload/UploadState;)V

    sget-object p1, Loq5;->a:Loq5;

    invoke-static {p0}, Lvhb;->F(Lvhb;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v3

    check-cast v3, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;

    invoke-virtual {v3}, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;->getFileName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] pre-hash collision,try create file again"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Loq5;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_d
    invoke-virtual {v0}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;->getErrorCode()I

    move-result v5

    sget-object v6, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->PARENT_NOT_EXIST:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    invoke-virtual {v6}, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->getCode()I

    move-result v6

    if-ne v5, v6, :cond_f

    sget-object p1, Loq5;->a:Loq5;

    invoke-static {p0}, Lvhb;->F(Lvhb;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v5

    check-cast v5, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;

    invoke-virtual {v5}, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;->getFileName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] parent not exist, try restore parent file"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Loq5;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0}, Lvhb;->H(Lvhb;)Lmhb;

    move-result-object p1

    if-nez p1, :cond_e

    invoke-static {v3}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_6

    :cond_e
    move-object v4, p1

    :goto_6
    sget-object p1, Lcom/transsion/cloud_drive/transfer/internal/upload/UploadState;->RESTORE_PARENT:Lcom/transsion/cloud_drive/transfer/internal/upload/UploadState;

    invoke-virtual {v4, p1}, Lmhb;->p(Lcom/transsion/cloud_drive/transfer/internal/upload/UploadState;)V

    goto :goto_7

    :cond_f
    sget-object v1, Loq5;->a:Loq5;

    invoke-static {p0}, Lvhb;->F(Lvhb;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;->getErrorCode()I

    move-result v3

    invoke-virtual {v0}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;->getMessage()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "create upload file fail, errCode:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  message:"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Loq5;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lr5b;

    sget-object v2, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;->CREATE_FILE_ERROR:Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

    invoke-virtual {v0}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;->getErrorCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v4, v3, v0}, Lr5b;-><init>(Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;Ljava/lang/Throwable;Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lwc0;->p(Lr5b;)V

    move v2, p1

    :goto_7
    move p1, v2

    :cond_10
    instance-of v0, p2, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;

    if-eqz v0, :cond_13

    check-cast p2, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;

    invoke-virtual {p2}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;->getThrowable()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Ljava/io/InterruptedIOException;

    if-nez p1, :cond_12

    invoke-virtual {p2}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;->getThrowable()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Ljava/lang/InterruptedException;

    if-eqz p1, :cond_11

    goto :goto_8

    :cond_11
    sget-object p1, Loq5;->a:Loq5;

    invoke-static {p0}, Lvhb;->F(Lvhb;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "create file error:"

    invoke-virtual {p2}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;->getThrowable()Ljava/lang/Throwable;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Loq5;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;->getThrowable()Ljava/lang/Throwable;

    move-result-object p0

    throw p0

    :cond_12
    :goto_8
    new-instance p0, Ljava/lang/InterruptedException;

    invoke-direct {p0}, Ljava/lang/InterruptedException;-><init>()V

    throw p0

    :cond_13
    return p1
.end method

.method public final O(Ljava/util/List;)Z
    .locals 9

    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lihb;

    new-instance v4, Lcom/transsion/cloud_drive/base/api/model/UploadPartInfo;

    invoke-virtual {v2}, Lihb;->a()I

    move-result v2

    const/4 v5, 0x2

    invoke-direct {v4, v2, v3, v5, v3}, Lcom/transsion/cloud_drive/base/api/model/UploadPartInfo;-><init>(ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsion/cloud_drive/base/internal/request/GetUploadUrlRequest;

    iget-object v2, p0, Lvhb;->o:Lmhb;

    const-string v4, "uploadInfo"

    if-nez v2, :cond_1

    invoke-static {v4}, Ly45;->B(Ljava/lang/String;)V

    move-object v2, v3

    :cond_1
    invoke-virtual {v2}, Lmhb;->d()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lvhb;->o:Lmhb;

    if-nez v5, :cond_2

    invoke-static {v4}, Ly45;->B(Ljava/lang/String;)V

    move-object v5, v3

    :cond_2
    invoke-virtual {v5}, Lmhb;->i()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v2, v5, v1}, Lcom/transsion/cloud_drive/base/internal/request/GetUploadUrlRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    sget-object v1, Lcom/transsion/cloud_drive/base/internal/ServiceProvider;->a:Lcom/transsion/cloud_drive/base/internal/ServiceProvider;

    invoke-virtual {v1}, Lcom/transsion/cloud_drive/base/internal/ServiceProvider;->a()Lpr3;

    move-result-object v1

    invoke-interface {v1, v0}, Lpr3;->e(Lcom/transsion/cloud_drive/base/internal/request/GetUploadUrlRequest;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;

    move-result-object v0

    instance-of v1, v0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;

    invoke-virtual {v1}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;->getData()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ly45;->g(Ljava/lang/Object;)V

    check-cast v1, Lcom/transsion/cloud_drive/base/api/model/FileUploadUrl;

    invoke-virtual {v1}, Lcom/transsion/cloud_drive/base/api/model/FileUploadUrl;->getPartInfoList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lvhb;->T(Ljava/util/List;Ljava/util/List;)V

    invoke-static {p0}, Lvhb;->H(Lvhb;)Lmhb;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-static {v4}, Ly45;->B(Ljava/lang/String;)V

    move-object p1, v3

    :cond_3
    sget-object v1, Lcom/transsion/cloud_drive/transfer/internal/upload/UploadState;->UPLOADING:Lcom/transsion/cloud_drive/transfer/internal/upload/UploadState;

    invoke-virtual {p1, v1}, Lmhb;->p(Lcom/transsion/cloud_drive/transfer/internal/upload/UploadState;)V

    const/4 p1, 0x1

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    :goto_1
    instance-of v1, v0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;

    if-eqz v1, :cond_5

    move-object v1, v0

    check-cast v1, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;

    sget-object v2, Loq5;->a:Loq5;

    invoke-static {p0}, Lvhb;->F(Lvhb;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;->getErrorCode()I

    move-result v5

    invoke-virtual {v1}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;->getMessage()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "get download url fail,errCode:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "  errMsg:"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Loq5;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Lr5b;

    sget-object v4, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;->GET_UPLOAD_URL_ERROR:Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

    invoke-virtual {v1}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;->getErrorCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v4, v3, v5, v1}, Lr5b;-><init>(Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;Ljava/lang/Throwable;Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lwc0;->p(Lr5b;)V

    :cond_5
    instance-of v1, v0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;

    if-eqz v1, :cond_8

    check-cast v0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;

    invoke-virtual {v0}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;->getThrowable()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Ljava/lang/InterruptedException;

    if-nez p1, :cond_7

    invoke-virtual {v0}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;->getThrowable()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Ljava/io/InterruptedIOException;

    if-eqz p1, :cond_6

    goto :goto_2

    :cond_6
    sget-object p1, Loq5;->a:Loq5;

    invoke-static {p0}, Lvhb;->F(Lvhb;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "get download url occur exception:"

    invoke-virtual {v0}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;->getThrowable()Ljava/lang/Throwable;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, p0, v1}, Loq5;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;->getThrowable()Ljava/lang/Throwable;

    move-result-object p0

    throw p0

    :cond_7
    :goto_2
    new-instance p0, Ljava/lang/InterruptedException;

    invoke-direct {p0}, Ljava/lang/InterruptedException;-><init>()V

    throw p0

    :cond_8
    return p1
.end method

.method public final P(Ljhb;Lthb;Lnt4;)V
    .locals 1

    const-string v0, "config"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uploadBlockDbChannel"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "httpUploadChannel"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lvhb;->k:Ljhb;

    iput-object p2, p0, Lvhb;->l:Lthb;

    iput-object p3, p0, Lvhb;->m:Lnt4;

    return-void
.end method

.method public final Q()Ljava/util/List;
    .locals 17

    move-object/from16 v1, p0

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_0
    iget-object v2, v1, Lvhb;->l:Lthb;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const-string v2, "uploadDbChannel"

    invoke-static {v2}, Ly45;->B(Ljava/lang/String;)V

    move-object v2, v3

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lvhb;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lthb;->a(Ljava/lang/String;)Lmhb;

    move-result-object v2

    if-eqz v2, :cond_1

    iput-object v2, v1, Lvhb;->o:Lmhb;

    goto :goto_1

    :cond_1
    new-instance v2, Lmhb;

    invoke-direct {v2}, Lmhb;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v4

    check-cast v4, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;

    invoke-virtual {v4}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->getTaskId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lmhb;->q(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lmhb;->l(I)V

    iput-object v2, v1, Lvhb;->o:Lmhb;

    iget-object v2, v1, Lvhb;->l:Lthb;

    if-nez v2, :cond_2

    const-string v2, "uploadDbChannel"

    invoke-static {v2}, Ly45;->B(Ljava/lang/String;)V

    move-object v2, v3

    :cond_2
    iget-object v4, v1, Lvhb;->o:Lmhb;

    if-nez v4, :cond_3

    const-string v4, "uploadInfo"

    invoke-static {v4}, Ly45;->B(Ljava/lang/String;)V

    move-object v4, v3

    :cond_3
    invoke-interface {v2, v4}, Lthb;->b(Lmhb;)V

    :goto_1
    sget-object v2, Lzfb;->a:Lzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    sget-object v2, Loq5;->a:Loq5;

    iget-object v4, v1, Lvhb;->i:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v5

    check-cast v5, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;

    invoke-virtual {v5}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->getTaskId()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " upload task["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] info:"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lvhb;->o:Lmhb;

    if-nez v6, :cond_4

    const-string v6, "uploadInfo"

    invoke-static {v6}, Ly45;->B(Ljava/lang/String;)V

    move-object v6, v3

    :cond_4
    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Loq5;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v4

    check-cast v4, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;

    invoke-virtual {v4}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->getFileSize()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_5

    iget-object v0, v1, Lvhb;->i:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v1

    check-cast v1, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;

    invoke-virtual {v1}, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;->getFileName()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "upload file ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] skip,size is 0"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Loq5;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v2

    check-cast v2, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;

    invoke-virtual {v2}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->getFileSize()J

    move-result-wide v4

    iget-object v2, v1, Lvhb;->k:Ljhb;

    if-nez v2, :cond_6

    const-string v2, "config"

    invoke-static {v2}, Ly45;->B(Ljava/lang/String;)V

    move-object v2, v3

    :cond_6
    invoke-virtual {v2}, Ljhb;->b()J

    move-result-wide v8

    rem-long/2addr v4, v8

    cmp-long v2, v4, v6

    if-nez v2, :cond_8

    invoke-virtual/range {p0 .. p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v2

    check-cast v2, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;

    invoke-virtual {v2}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->getFileSize()J

    move-result-wide v4

    iget-object v2, v1, Lvhb;->k:Ljhb;

    if-nez v2, :cond_7

    const-string v2, "config"

    invoke-static {v2}, Ly45;->B(Ljava/lang/String;)V

    move-object v2, v3

    :cond_7
    invoke-virtual {v2}, Ljhb;->b()J

    move-result-wide v8

    div-long/2addr v4, v8

    :goto_2
    long-to-int v2, v4

    goto :goto_3

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v2

    check-cast v2, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;

    invoke-virtual {v2}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->getFileSize()J

    move-result-wide v4

    iget-object v2, v1, Lvhb;->k:Ljhb;

    if-nez v2, :cond_9

    const-string v2, "config"

    invoke-static {v2}, Ly45;->B(Ljava/lang/String;)V

    move-object v2, v3

    :cond_9
    invoke-virtual {v2}, Ljhb;->b()J

    move-result-wide v8

    div-long/2addr v4, v8

    const-wide/16 v8, 0x1

    add-long/2addr v4, v8

    goto :goto_2

    :goto_3
    iget-object v4, v1, Lvhb;->k:Ljhb;

    if-nez v4, :cond_a

    const-string v4, "config"

    invoke-static {v4}, Ly45;->B(Ljava/lang/String;)V

    move-object v4, v3

    :cond_a
    invoke-virtual {v4}, Ljhb;->a()I

    move-result v4

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ne v2, v0, :cond_b

    invoke-virtual/range {p0 .. p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v4

    check-cast v4, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;

    invoke-virtual {v4}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->getFileSize()J

    move-result-wide v4

    invoke-virtual/range {p0 .. p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v6

    check-cast v6, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;

    invoke-virtual {v6}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->getFileSize()J

    goto :goto_4

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v4

    check-cast v4, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;

    invoke-virtual {v4}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->getFileSize()J

    move-result-wide v4

    int-to-long v8, v2

    rem-long/2addr v4, v8

    cmp-long v4, v4, v6

    if-nez v4, :cond_c

    invoke-virtual/range {p0 .. p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v4

    check-cast v4, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;

    invoke-virtual {v4}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->getFileSize()J

    move-result-wide v4

    div-long/2addr v4, v8

    goto :goto_4

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v4

    check-cast v4, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;

    invoke-virtual {v4}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->getFileSize()J

    move-result-wide v4

    invoke-virtual/range {p0 .. p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v6

    check-cast v6, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;

    invoke-virtual {v6}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->getFileSize()J

    move-result-wide v6

    rem-long/2addr v6, v8

    sub-long/2addr v4, v6

    add-int/lit8 v6, v2, -0x1

    int-to-long v6, v6

    div-long/2addr v4, v6

    invoke-virtual/range {p0 .. p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v6

    check-cast v6, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;

    invoke-virtual {v6}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->getFileSize()J

    :goto_4
    invoke-virtual/range {p0 .. p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v6

    check-cast v6, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;

    iget-object v7, v1, Lvhb;->o:Lmhb;

    if-nez v7, :cond_d

    const-string v7, "uploadInfo"

    invoke-static {v7}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_5

    :cond_d
    move-object v3, v7

    :goto_5
    invoke-virtual {v3}, Lmhb;->c()I

    move-result v3

    sub-int/2addr v3, v0

    int-to-long v7, v3

    mul-long/2addr v7, v4

    invoke-virtual {v6, v7, v8}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->setTransferredSize(J)V

    new-instance v3, Lu15;

    invoke-direct {v3, v0, v2}, Lu15;-><init>(II)V

    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v3, v7}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    move-object v7, v3

    check-cast v7, Lq15;

    invoke-virtual {v7}, Lq15;->nextInt()I

    move-result v9

    new-instance v7, Lihb;

    add-int/lit8 v8, v9, -0x1

    int-to-long v10, v8

    mul-long/2addr v10, v4

    if-ne v9, v2, :cond_e

    invoke-virtual/range {p0 .. p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v8

    check-cast v8, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;

    invoke-virtual {v8}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->getFileSize()J

    move-result-wide v12

    goto :goto_7

    :cond_e
    int-to-long v12, v9

    mul-long/2addr v12, v4

    :goto_7
    const/16 v15, 0x8

    const/16 v16, 0x0

    const/4 v14, 0x0

    move-object v8, v7

    invoke-direct/range {v8 .. v16}, Lihb;-><init>(IJJLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_f
    return-object v6

    :goto_8
    monitor-exit p0

    throw v0
.end method

.method public final R()Z
    .locals 13

    new-instance v0, Lcom/transsion/cloud_drive/base/internal/request/RestoreRecycleBinFileRequest;

    invoke-virtual {p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v1

    check-cast v1, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;

    invoke-virtual {v1}, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;->getParentId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/cloud_drive/base/internal/request/RestoreRecycleBinFileRequest;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/transsion/cloud_drive/base/internal/ServiceProvider;->a:Lcom/transsion/cloud_drive/base/internal/ServiceProvider;

    invoke-virtual {v1}, Lcom/transsion/cloud_drive/base/internal/ServiceProvider;->a()Lpr3;

    move-result-object v1

    invoke-interface {v1, v0}, Lpr3;->d(Lcom/transsion/cloud_drive/base/internal/request/RestoreRecycleBinFileRequest;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;

    move-result-object v0

    instance-of v1, v0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-static {p0}, Lvhb;->H(Lvhb;)Lmhb;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "uploadInfo"

    invoke-static {v1}, Ly45;->B(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    sget-object v3, Lcom/transsion/cloud_drive/transfer/internal/upload/UploadState;->UPLOADING:Lcom/transsion/cloud_drive/transfer/internal/upload/UploadState;

    invoke-virtual {v1, v3}, Lmhb;->p(Lcom/transsion/cloud_drive/transfer/internal/upload/UploadState;)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    instance-of v3, v0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;

    if-eqz v3, :cond_3

    move-object v3, v0

    check-cast v3, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;

    invoke-virtual {v3}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;->getErrorCode()I

    move-result v4

    sget-object v5, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->FILE_NOT_IN_RECYCLE_BIN:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    invoke-virtual {v5}, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->getCode()I

    move-result v5

    if-ne v4, v5, :cond_2

    new-instance v2, Lr5b;

    sget-object v7, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;->PARENT_FILE_NOT_EXIST:Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

    const/16 v11, 0xe

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lr5b;-><init>(Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;Ljava/lang/Throwable;Ljava/lang/Integer;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, v2}, Lwc0;->p(Lr5b;)V

    goto :goto_1

    :cond_2
    sget-object v4, Loq5;->a:Loq5;

    invoke-static {p0}, Lvhb;->F(Lvhb;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;->getErrorCode()I

    move-result v6

    invoke-virtual {v3}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;->getMessage()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "restore upload file parent dir fail,errCode:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "  message:"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Loq5;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v4, Lr5b;

    sget-object v5, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;->RESTORE_PARENT_ERROR:Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

    invoke-virtual {v3}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;->getErrorCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v2, v6, v3}, Lr5b;-><init>(Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;Ljava/lang/Throwable;Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lwc0;->p(Lr5b;)V

    :cond_3
    :goto_1
    instance-of v2, v0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;

    if-eqz v2, :cond_6

    check-cast v0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;

    invoke-virtual {v0}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;->getThrowable()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/io/InterruptedIOException;

    if-nez v1, :cond_5

    invoke-virtual {v0}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;->getThrowable()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/InterruptedException;

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    sget-object v1, Loq5;->a:Loq5;

    invoke-static {p0}, Lvhb;->F(Lvhb;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "restore upload file parent dir occur exception "

    invoke-virtual {v0}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;->getThrowable()Ljava/lang/Throwable;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Loq5;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;->getThrowable()Ljava/lang/Throwable;

    move-result-object p0

    throw p0

    :cond_5
    :goto_2
    new-instance p0, Ljava/lang/InterruptedException;

    invoke-direct {p0}, Ljava/lang/InterruptedException;-><init>()V

    throw p0

    :cond_6
    return v1
.end method

.method public final S()V
    .locals 2

    iget-object v0, p0, Lvhb;->l:Lthb;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "uploadDbChannel"

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object p0, p0, Lvhb;->o:Lmhb;

    if-nez p0, :cond_1

    const-string p0, "uploadInfo"

    invoke-static {p0}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    invoke-interface {v0, v1}, Lthb;->c(Lmhb;)V

    return-void
.end method

.method public final T(Ljava/util/List;Ljava/util/List;)V
    .locals 4

    const-string p0, "chunkList"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "partInfoList"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lihb;

    move-object v0, p2

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/transsion/cloud_drive/base/api/model/UploadPartInfo;

    invoke-virtual {v2}, Lcom/transsion/cloud_drive/base/api/model/UploadPartInfo;->getPartNumber()I

    move-result v2

    invoke-virtual {p1}, Lihb;->a()I

    move-result v3

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    check-cast v1, Lcom/transsion/cloud_drive/base/api/model/UploadPartInfo;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/transsion/cloud_drive/base/api/model/UploadPartInfo;->getUploadUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lihb;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final U(Ljava/util/List;)Z
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "upload chunk ["

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    const-string v5, "uploadInfo"

    const/4 v6, 0x0

    if-eqz v3, :cond_2

    sget-object v0, Loq5;->a:Loq5;

    iget-object v2, v1, Lvhb;->i:Ljava/lang/String;

    const-string v3, "upload chunk list is empty,exit"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Loq5;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v4, v1, Lvhb;->n:Z

    iget-object v0, v1, Lvhb;->l:Lthb;

    if-nez v0, :cond_0

    const-string v0, "uploadDbChannel"

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v6

    :cond_0
    iget-object v1, v1, Lvhb;->o:Lmhb;

    if-nez v1, :cond_1

    invoke-static {v5}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v6, v1

    :goto_0
    invoke-virtual {v6}, Lmhb;->h()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lthb;->delete(Ljava/lang/String;)V

    return v4

    :cond_2
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    instance-of v7, v3, Ljava/util/Collection;

    if-eqz v7, :cond_3

    move-object v7, v3

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lihb;

    invoke-virtual {v7}, Lihb;->d()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lj1a;->o0(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    sget-object v0, Loq5;->a:Loq5;

    iget-object v2, v1, Lvhb;->i:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lvhb;->getId()Ljava/lang/String;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "upload task["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] url is empty"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Loq5;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v1, Lvhb;->o:Lmhb;

    if-nez v0, :cond_5

    invoke-static {v5}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move-object v6, v0

    :goto_1
    sget-object v0, Lcom/transsion/cloud_drive/transfer/internal/upload/UploadState;->GET_URL:Lcom/transsion/cloud_drive/transfer/internal/upload/UploadState;

    invoke-virtual {v6, v0}, Lmhb;->p(Lcom/transsion/cloud_drive/transfer/internal/upload/UploadState;)V

    return v4

    :cond_6
    :goto_2
    new-instance v3, Luhb;

    invoke-direct {v3, v1}, Luhb;-><init>(Lvhb;)V

    :goto_3
    iget-object v7, v1, Lvhb;->o:Lmhb;

    if-nez v7, :cond_7

    invoke-static {v5}, Ly45;->B(Ljava/lang/String;)V

    move-object v7, v6

    :cond_7
    invoke-virtual {v7}, Lmhb;->c()I

    move-result v7

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v8

    if-gt v7, v8, :cond_14

    sget-object v15, Loq5;->a:Loq5;

    iget-object v7, v1, Lvhb;->i:Ljava/lang/String;

    iget-object v8, v1, Lvhb;->o:Lmhb;

    if-nez v8, :cond_8

    invoke-static {v5}, Ly45;->B(Ljava/lang/String;)V

    move-object v8, v6

    :cond_8
    invoke-virtual {v8}, Lmhb;->c()I

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "start upload chunk ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "]"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v15, v7, v8}, Loq5;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v7, v1, Lvhb;->o:Lmhb;

    if-nez v7, :cond_9

    invoke-static {v5}, Ly45;->B(Ljava/lang/String;)V

    move-object v7, v6

    :cond_9
    invoke-virtual {v7}, Lmhb;->c()I

    move-result v7

    sub-int/2addr v7, v4

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lihb;

    :try_start_0
    iget-object v8, v1, Lvhb;->m:Lnt4;

    if-nez v8, :cond_a

    const-string v8, "httpUploadChannel"

    invoke-static {v8}, Ly45;->B(Ljava/lang/String;)V

    move-object v8, v6

    goto :goto_4

    :catchall_0
    move-exception v0

    goto/16 :goto_c

    :catch_0
    move-exception v0

    goto/16 :goto_9

    :catch_1
    move-exception v0

    goto/16 :goto_a

    :catch_2
    move-exception v0

    goto/16 :goto_b

    :cond_a
    :goto_4
    new-instance v9, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v10

    check-cast v10, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;

    invoke-virtual {v10}, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;->getFile()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lihb;->d()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7}, Lihb;->c()J

    move-result-wide v11

    invoke-virtual {v7}, Lihb;->b()J

    move-result-wide v13

    invoke-virtual {v7}, Lihb;->c()J

    move-result-wide v16

    sub-long v13, v13, v16

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-wide v10, v11

    move-wide v12, v13

    move-object v14, v3

    invoke-interface/range {v7 .. v14}, Lnt4;->a(Ljava/io/File;Ljava/lang/String;JJLis3;)Lokhttp3/Response;

    move-result-object v7
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v8, v1, Lvhb;->i:Ljava/lang/String;

    iget-object v9, v1, Lvhb;->o:Lmhb;

    if-nez v9, :cond_b

    invoke-static {v5}, Ly45;->B(Ljava/lang/String;)V

    move-object v9, v6

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v6, v7

    goto/16 :goto_c

    :catch_3
    move-exception v0

    move-object v6, v7

    goto/16 :goto_9

    :catch_4
    move-exception v0

    move-object v6, v7

    goto/16 :goto_a

    :catch_5
    move-exception v0

    move-object v6, v7

    goto/16 :goto_b

    :cond_b
    :goto_5
    invoke-virtual {v9}, Lmhb;->c()I

    move-result v9

    invoke-virtual {v7}, Lokhttp3/Response;->code()I

    move-result v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "] result:"

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v15, v8, v9}, Loq5;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {v7}, Lokhttp3/Response;->close()V

    invoke-static {v7}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v7}, Lokhttp3/Response;->code()I

    move-result v8

    const/16 v9, 0xc8

    if-eq v9, v8, :cond_11

    const/16 v8, 0x199

    invoke-virtual {v7}, Lokhttp3/Response;->code()I

    move-result v9

    if-ne v8, v9, :cond_c

    goto/16 :goto_8

    :cond_c
    const/16 v0, 0x193

    invoke-virtual {v7}, Lokhttp3/Response;->code()I

    move-result v3

    if-ne v0, v3, :cond_e

    iget-object v0, v1, Lvhb;->o:Lmhb;

    if-nez v0, :cond_d

    invoke-static {v5}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_6

    :cond_d
    move-object v6, v0

    :goto_6
    sget-object v0, Lcom/transsion/cloud_drive/transfer/internal/upload/UploadState;->GET_URL:Lcom/transsion/cloud_drive/transfer/internal/upload/UploadState;

    invoke-virtual {v6, v0}, Lmhb;->p(Lcom/transsion/cloud_drive/transfer/internal/upload/UploadState;)V

    return v4

    :cond_e
    iget-object v0, v1, Lvhb;->i:Ljava/lang/String;

    iget-object v3, v1, Lvhb;->o:Lmhb;

    if-nez v3, :cond_f

    invoke-static {v5}, Ly45;->B(Ljava/lang/String;)V

    move-object v3, v6

    :cond_f
    invoke-virtual {v3}, Lmhb;->c()I

    move-result v3

    invoke-virtual {v7}, Lokhttp3/Response;->code()I

    move-result v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] error,code:"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v15, v0, v2}, Loq5;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual/range {p0 .. p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v2

    check-cast v2, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;

    invoke-virtual {v2}, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;->getFileName()Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Lvhb;->o:Lmhb;

    if-nez v1, :cond_10

    invoke-static {v5}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_7

    :cond_10
    move-object v6, v1

    :goto_7
    invoke-virtual {v6}, Lmhb;->c()I

    move-result v1

    invoke-virtual {v7}, Lokhttp3/Response;->code()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "upload file["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] chunk "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " fail, code:"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    :goto_8
    iget-object v7, v1, Lvhb;->o:Lmhb;

    if-nez v7, :cond_12

    invoke-static {v5}, Ly45;->B(Ljava/lang/String;)V

    move-object v7, v6

    :cond_12
    invoke-virtual {v7}, Lmhb;->c()I

    move-result v8

    add-int/2addr v8, v4

    invoke-virtual {v7, v8}, Lmhb;->l(I)V

    invoke-virtual/range {p0 .. p0}, Lvhb;->S()V

    goto/16 :goto_3

    :goto_9
    :try_start_2
    sget-object v2, Loq5;->a:Loq5;

    iget-object v1, v1, Lvhb;->i:Ljava/lang/String;

    const-string v3, "uploading file occur exception:"

    filled-new-array {v3, v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Loq5;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :goto_a
    sget-object v2, Loq5;->a:Loq5;

    iget-object v1, v1, Lvhb;->i:Ljava/lang/String;

    const-string v3, " upload interrupt:"

    filled-new-array {v3, v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Loq5;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :goto_b
    sget-object v2, Loq5;->a:Loq5;

    iget-object v1, v1, Lvhb;->i:Ljava/lang/String;

    const-string v3, " upload io interrupt:"

    filled-new-array {v3, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Loq5;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_c
    if-eqz v6, :cond_13

    invoke-virtual {v6}, Lokhttp3/Response;->close()V

    :cond_13
    throw v0

    :cond_14
    iget-object v0, v1, Lvhb;->o:Lmhb;

    if-nez v0, :cond_15

    invoke-static {v5}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v6

    :cond_15
    invoke-virtual {v0}, Lmhb;->g()Lcom/transsion/cloud_drive/transfer/internal/upload/UploadState;

    move-result-object v0

    sget-object v2, Lcom/transsion/cloud_drive/transfer/internal/upload/UploadState;->UPLOADING:Lcom/transsion/cloud_drive/transfer/internal/upload/UploadState;

    if-ne v0, v2, :cond_17

    iget-object v0, v1, Lvhb;->o:Lmhb;

    if-nez v0, :cond_16

    invoke-static {v5}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_d

    :cond_16
    move-object v6, v0

    :goto_d
    sget-object v0, Lcom/transsion/cloud_drive/transfer/internal/upload/UploadState;->FILE_COMPLETE:Lcom/transsion/cloud_drive/transfer/internal/upload/UploadState;

    invoke-virtual {v6, v0}, Lmhb;->p(Lcom/transsion/cloud_drive/transfer/internal/upload/UploadState;)V

    invoke-virtual/range {p0 .. p0}, Lvhb;->S()V

    :cond_17
    sget-object v0, Loq5;->a:Loq5;

    iget-object v1, v1, Lvhb;->i:Ljava/lang/String;

    const-string v2, " upload chunks complete"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Loq5;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return v4
.end method

.method public final W()Z
    .locals 10

    iget-object v0, p0, Lvhb;->o:Lmhb;

    const-string v1, "uploadInfo"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v0}, Lmhb;->d()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lvhb;->o:Lmhb;

    if-nez v3, :cond_1

    invoke-static {v1}, Ly45;->B(Ljava/lang/String;)V

    move-object v3, v2

    :cond_1
    invoke-virtual {v3}, Lmhb;->i()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lvhb;->o:Lmhb;

    if-nez v4, :cond_2

    invoke-static {v1}, Ly45;->B(Ljava/lang/String;)V

    move-object v4, v2

    :cond_2
    invoke-virtual {v4}, Lmhb;->b()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_3

    goto :goto_0

    :cond_3
    move-object v4, v2

    :goto_0
    new-instance v5, Lcom/transsion/cloud_drive/base/internal/request/CompleteUploadFileRequest;

    invoke-direct {v5, v0, v3, v4}, Lcom/transsion/cloud_drive/base/internal/request/CompleteUploadFileRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/cloud_drive/base/internal/ServiceProvider;->a:Lcom/transsion/cloud_drive/base/internal/ServiceProvider;

    invoke-virtual {v0}, Lcom/transsion/cloud_drive/base/internal/ServiceProvider;->a()Lpr3;

    move-result-object v0

    invoke-interface {v0, v5}, Lpr3;->c(Lcom/transsion/cloud_drive/base/internal/request/CompleteUploadFileRequest;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;

    move-result-object v0

    instance-of v3, v0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;

    if-eqz v3, :cond_7

    move-object v3, v0

    check-cast v3, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;

    invoke-static {p0}, Lvhb;->G(Lvhb;)Lthb;

    move-result-object v4

    if-nez v4, :cond_4

    const-string v4, "uploadDbChannel"

    invoke-static {v4}, Ly45;->B(Ljava/lang/String;)V

    move-object v4, v2

    :cond_4
    invoke-static {p0}, Lvhb;->H(Lvhb;)Lmhb;

    move-result-object v5

    if-nez v5, :cond_5

    invoke-static {v1}, Ly45;->B(Ljava/lang/String;)V

    move-object v5, v2

    :cond_5
    invoke-virtual {v5}, Lmhb;->h()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lthb;->delete(Ljava/lang/String;)V

    invoke-virtual {p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v4

    check-cast v4, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;

    invoke-static {p0}, Lvhb;->H(Lvhb;)Lmhb;

    move-result-object v5

    if-nez v5, :cond_6

    invoke-static {v1}, Ly45;->B(Ljava/lang/String;)V

    move-object v5, v2

    :cond_6
    invoke-virtual {v5}, Lmhb;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;->setFileId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v1

    check-cast v1, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;

    invoke-virtual {v3}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/cloud_drive/base/api/model/FileInfo;

    invoke-virtual {v1, v3}, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;->setFileInfo(Lcom/transsion/cloud_drive/base/api/model/FileInfo;)V

    sget-object v1, Loq5;->a:Loq5;

    invoke-static {p0}, Lvhb;->F(Lvhb;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "upload task success -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Loq5;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lvhb;->J(Lvhb;Z)V

    invoke-virtual {p0}, Lwc0;->n()V

    goto :goto_1

    :cond_7
    const/4 v1, 0x0

    :goto_1
    instance-of v3, v0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;

    if-eqz v3, :cond_8

    move-object v3, v0

    check-cast v3, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;

    sget-object v4, Loq5;->a:Loq5;

    invoke-static {p0}, Lvhb;->F(Lvhb;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;->getErrorCode()I

    move-result v6

    invoke-virtual {v3}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;->getMessage()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "upload file occur exception,complete step is fail,errCode:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " errMsg:"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Loq5;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v4, Lr5b;

    sget-object v5, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;->UPLOAD_FAIL:Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

    invoke-virtual {v3}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;->getErrorCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v2, v6, v3}, Lr5b;-><init>(Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;Ljava/lang/Throwable;Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lwc0;->p(Lr5b;)V

    :cond_8
    instance-of v2, v0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;

    if-eqz v2, :cond_b

    check-cast v0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;

    invoke-virtual {v0}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;->getThrowable()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/io/InterruptedIOException;

    if-nez v1, :cond_a

    invoke-virtual {v0}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;->getThrowable()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/InterruptedException;

    if-eqz v1, :cond_9

    goto :goto_2

    :cond_9
    sget-object v1, Loq5;->a:Loq5;

    invoke-static {p0}, Lvhb;->F(Lvhb;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "upload file occur exception,complete step is fail:"

    invoke-virtual {v0}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;->getThrowable()Ljava/lang/Throwable;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Loq5;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;->getThrowable()Ljava/lang/Throwable;

    move-result-object p0

    throw p0

    :cond_a
    :goto_2
    new-instance p0, Ljava/lang/InterruptedException;

    invoke-direct {p0}, Ljava/lang/InterruptedException;-><init>()V

    throw p0

    :cond_b
    return v1
.end method

.method public clear()V
    .locals 4

    iget-object v0, p0, Lvhb;->l:Lthb;

    if-eqz v0, :cond_1

    if-nez v0, :cond_0

    const-string v0, "uploadDbChannel"

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v1

    check-cast v1, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;

    invoke-virtual {v1}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->getTaskId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lthb;->delete(Ljava/lang/String;)V

    sget-object v0, Loq5;->a:Loq5;

    iget-object v1, p0, Lvhb;->i:Ljava/lang/String;

    invoke-virtual {p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object p0

    check-cast p0, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;

    invoke-virtual {p0}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->getTaskId()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upload task["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] cache cleared"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Loq5;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public execute()V
    .locals 17

    move-object/from16 v1, p0

    const-string v2, "]"

    const-string v3, " fail, retry "

    const-string v4, " fileName: "

    invoke-virtual/range {p0 .. p0}, Lwc0;->z()V

    iget-object v0, v1, Lvhb;->k:Ljhb;

    const-string v5, "config"

    const/4 v6, 0x0

    if-nez v0, :cond_0

    invoke-static {v5}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v6

    :cond_0
    invoke-virtual {v0}, Ljhb;->d()I

    move-result v0

    const-wide/16 v7, 0x7d0

    const-string v9, "] occur error:"

    const-string v10, "upload task["

    if-ltz v0, :cond_20

    const/4 v0, 0x0

    :goto_0
    move-object v11, v6

    :goto_1
    iget-boolean v12, v1, Lvhb;->n:Z

    if-nez v12, :cond_1f

    invoke-virtual/range {p0 .. p0}, Lwc0;->h()Z

    move-result v12

    if-nez v12, :cond_1f

    iget-object v12, v1, Lvhb;->k:Ljhb;

    if-nez v12, :cond_1

    invoke-static {v5}, Ly45;->B(Ljava/lang/String;)V

    move-object v12, v6

    :cond_1
    invoke-virtual {v12}, Ljhb;->d()I

    move-result v12

    if-gt v0, v12, :cond_1f

    add-int/lit8 v11, v0, 0x1

    const-wide/16 v12, 0x0

    const/4 v14, 0x1

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lvhb;->N()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v0, v1, Lvhb;->n:Z

    if-nez v0, :cond_7

    invoke-virtual/range {p0 .. p0}, Lwc0;->h()Z

    move-result v0

    if-nez v0, :cond_7

    :try_start_1
    invoke-virtual {v1, v6}, Lwc0;->v(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v1, Lvhb;->k:Ljhb;

    if-nez v0, :cond_2

    invoke-static {v5}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v6

    :cond_2
    invoke-virtual {v0}, Ljhb;->d()I

    move-result v0

    add-int/2addr v0, v14

    goto :goto_0

    :cond_3
    iget-object v0, v1, Lvhb;->k:Ljhb;

    if-nez v0, :cond_4

    invoke-static {v5}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v6

    :cond_4
    invoke-virtual {v0}, Ljhb;->e()J

    move-result-wide v14

    cmp-long v0, v14, v12

    if-lez v0, :cond_6

    iget-object v0, v1, Lvhb;->k:Ljhb;

    if-nez v0, :cond_5

    invoke-static {v5}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v6

    :cond_5
    invoke-virtual {v0}, Ljhb;->e()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V

    :cond_6
    sget-object v0, Loq5;->a:Loq5;

    iget-object v12, v1, Lvhb;->i:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v13

    check-cast v13, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;

    invoke-virtual {v13}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->getTaskId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v14

    check-cast v14, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;

    invoke-virtual {v14}, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;->getFileName()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v0, v12, v13}, Loq5;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    invoke-direct/range {p0 .. p0}, Lvhb;->L()V

    :cond_7
    :goto_2
    move v0, v11

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v15, v0

    :try_start_2
    invoke-virtual {v1, v15}, Lwc0;->k(Ljava/lang/Throwable;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz v0, :cond_8

    :try_start_3
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v15, v6

    goto/16 :goto_b

    :cond_8
    :goto_3
    :try_start_4
    invoke-virtual {v1, v15}, Lwc0;->A(Ljava/lang/Throwable;)Lcom/transsion/cloud_drive/transfer/exception/TransferException;

    move-result-object v15
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    sget-object v0, Loq5;->a:Loq5;

    iget-object v6, v1, Lvhb;->i:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v16

    check-cast v16, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;

    invoke-virtual/range {v16 .. v16}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->getTaskId()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    filled-new-array {v7, v15}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Loq5;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v0

    goto/16 :goto_b

    :catchall_3
    move-exception v0

    const/4 v15, 0x0

    goto/16 :goto_b

    :catch_1
    :try_start_6
    invoke-direct/range {p0 .. p0}, Lvhb;->L()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    const/4 v15, 0x0

    :goto_4
    iget-boolean v0, v1, Lvhb;->n:Z

    if-nez v0, :cond_f

    invoke-virtual/range {p0 .. p0}, Lwc0;->h()Z

    move-result v0

    if-nez v0, :cond_f

    if-eqz v15, :cond_9

    :try_start_7
    invoke-virtual {v15}, Lcom/transsion/cloud_drive/transfer/exception/TransferException;->isNoNetwork()Z

    move-result v0

    if-ne v0, v14, :cond_9

    goto :goto_5

    :cond_9
    invoke-virtual {v1, v15}, Lwc0;->v(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_b

    :goto_5
    iget-object v0, v1, Lvhb;->k:Ljhb;

    if-nez v0, :cond_a

    invoke-static {v5}, Ly45;->B(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_a
    invoke-virtual {v0}, Ljhb;->d()I

    move-result v0

    add-int/2addr v0, v14

    :goto_6
    move-object v11, v15

    goto :goto_8

    :cond_b
    iget-object v0, v1, Lvhb;->k:Ljhb;

    if-nez v0, :cond_c

    invoke-static {v5}, Ly45;->B(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_c
    invoke-virtual {v0}, Ljhb;->e()J

    move-result-wide v6

    cmp-long v0, v6, v12

    if-lez v0, :cond_e

    iget-object v0, v1, Lvhb;->k:Ljhb;

    if-nez v0, :cond_d

    invoke-static {v5}, Ly45;->B(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_d
    invoke-virtual {v0}, Ljhb;->e()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    :cond_e
    sget-object v0, Loq5;->a:Loq5;

    iget-object v6, v1, Lvhb;->i:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v7

    check-cast v7, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;

    invoke-virtual {v7}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->getTaskId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v8

    check-cast v8, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;

    invoke-virtual {v8}, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;->getFileName()Ljava/lang/String;

    move-result-object v8

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Loq5;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_7

    :catch_2
    invoke-direct/range {p0 .. p0}, Lvhb;->L()V

    move v0, v11

    const/4 v11, 0x0

    goto :goto_8

    :cond_f
    :goto_7
    move v0, v11

    goto :goto_6

    :goto_8
    const/4 v6, 0x0

    const-wide/16 v7, 0x7d0

    goto/16 :goto_1

    :catch_3
    move-exception v0

    move-object v6, v0

    :try_start_8
    invoke-virtual/range {p0 .. p0}, Lwc0;->D()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-direct/range {p0 .. p0}, Lvhb;->L()V

    const/4 v15, 0x0

    goto :goto_9

    :cond_10
    invoke-virtual {v1, v6}, Lwc0;->A(Ljava/lang/Throwable;)Lcom/transsion/cloud_drive/transfer/exception/TransferException;

    move-result-object v15
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    sget-object v0, Loq5;->a:Loq5;

    iget-object v6, v1, Lvhb;->i:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v7

    check-cast v7, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;

    invoke-virtual {v7}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->getTaskId()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    filled-new-array {v7, v15}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Loq5;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :goto_9
    iget-boolean v0, v1, Lvhb;->n:Z

    if-nez v0, :cond_17

    invoke-virtual/range {p0 .. p0}, Lwc0;->h()Z

    move-result v0

    if-nez v0, :cond_17

    if-eqz v15, :cond_11

    :try_start_a
    invoke-virtual {v15}, Lcom/transsion/cloud_drive/transfer/exception/TransferException;->isNoNetwork()Z

    move-result v0

    if-ne v0, v14, :cond_11

    goto :goto_a

    :cond_11
    invoke-virtual {v1, v15}, Lwc0;->v(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_13

    :goto_a
    iget-object v0, v1, Lvhb;->k:Ljhb;

    if-nez v0, :cond_12

    invoke-static {v5}, Ly45;->B(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_12
    invoke-virtual {v0}, Ljhb;->d()I

    move-result v0

    add-int/2addr v0, v14

    goto/16 :goto_6

    :cond_13
    iget-object v0, v1, Lvhb;->k:Ljhb;

    if-nez v0, :cond_14

    invoke-static {v5}, Ly45;->B(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_14
    invoke-virtual {v0}, Ljhb;->e()J

    move-result-wide v6

    cmp-long v0, v6, v12

    if-lez v0, :cond_16

    iget-object v0, v1, Lvhb;->k:Ljhb;

    if-nez v0, :cond_15

    invoke-static {v5}, Ly45;->B(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_15
    invoke-virtual {v0}, Ljhb;->e()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    :cond_16
    sget-object v0, Loq5;->a:Loq5;

    iget-object v6, v1, Lvhb;->i:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v7

    check-cast v7, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;

    invoke-virtual {v7}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->getTaskId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v8

    check-cast v8, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;

    invoke-virtual {v8}, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;->getFileName()Ljava/lang/String;

    move-result-object v8

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Loq5;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_2

    :cond_17
    move v0, v11

    goto/16 :goto_6

    :goto_b
    iget-boolean v6, v1, Lvhb;->n:Z

    if-nez v6, :cond_1e

    invoke-virtual/range {p0 .. p0}, Lwc0;->h()Z

    move-result v6

    if-nez v6, :cond_1e

    if-eqz v15, :cond_18

    :try_start_b
    invoke-virtual {v15}, Lcom/transsion/cloud_drive/transfer/exception/TransferException;->isNoNetwork()Z

    move-result v6

    if-ne v6, v14, :cond_18

    goto :goto_c

    :cond_18
    invoke-virtual {v1, v15}, Lwc0;->v(Ljava/lang/Throwable;)Z

    move-result v6

    if-eqz v6, :cond_1a

    :goto_c
    iget-object v2, v1, Lvhb;->k:Ljhb;

    if-nez v2, :cond_19

    invoke-static {v5}, Ly45;->B(Ljava/lang/String;)V

    const/4 v6, 0x0

    goto :goto_d

    :cond_19
    move-object v6, v2

    :goto_d
    invoke-virtual {v6}, Ljhb;->d()I

    goto :goto_e

    :cond_1a
    iget-object v6, v1, Lvhb;->k:Ljhb;

    if-nez v6, :cond_1b

    invoke-static {v5}, Ly45;->B(Ljava/lang/String;)V

    const/4 v6, 0x0

    :cond_1b
    invoke-virtual {v6}, Ljhb;->e()J

    move-result-wide v6

    cmp-long v6, v6, v12

    if-lez v6, :cond_1d

    iget-object v6, v1, Lvhb;->k:Ljhb;

    if-nez v6, :cond_1c

    invoke-static {v5}, Ly45;->B(Ljava/lang/String;)V

    const/4 v6, 0x0

    :cond_1c
    invoke-virtual {v6}, Ljhb;->e()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    :cond_1d
    sget-object v5, Loq5;->a:Loq5;

    iget-object v6, v1, Lvhb;->i:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v7

    check-cast v7, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;

    invoke-virtual {v7}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->getTaskId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v8

    check-cast v8, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;

    invoke-virtual {v8}, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;->getFileName()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v5, v6, v2}, Loq5;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_4

    goto :goto_e

    :catch_4
    invoke-direct/range {p0 .. p0}, Lvhb;->L()V

    :cond_1e
    :goto_e
    throw v0

    :cond_1f
    move-object v6, v11

    goto/16 :goto_10

    :cond_20
    :try_start_c
    invoke-direct/range {p0 .. p0}, Lvhb;->N()V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    goto :goto_f

    :catchall_4
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Lwc0;->k(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-wide/16 v3, 0x7d0

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    :cond_21
    invoke-virtual {v1, v2}, Lwc0;->A(Ljava/lang/Throwable;)Lcom/transsion/cloud_drive/transfer/exception/TransferException;

    move-result-object v6

    sget-object v0, Loq5;->a:Loq5;

    iget-object v2, v1, Lvhb;->i:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v3

    check-cast v3, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;

    invoke-virtual {v3}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->getTaskId()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3, v6}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Loq5;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_10

    :catch_5
    move-exception v0

    move-object v2, v0

    invoke-virtual/range {p0 .. p0}, Lwc0;->D()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-direct/range {p0 .. p0}, Lvhb;->L()V

    :goto_f
    const/4 v6, 0x0

    goto :goto_10

    :cond_22
    invoke-virtual {v1, v2}, Lwc0;->A(Ljava/lang/Throwable;)Lcom/transsion/cloud_drive/transfer/exception/TransferException;

    move-result-object v6

    sget-object v0, Loq5;->a:Loq5;

    iget-object v2, v1, Lvhb;->i:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v3

    check-cast v3, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;

    invoke-virtual {v3}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->getTaskId()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3, v6}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Loq5;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_10
    if-nez v6, :cond_23

    return-void

    :cond_23
    sget-object v0, Loq5;->a:Loq5;

    iget-object v2, v1, Lvhb;->i:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v3

    check-cast v3, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;

    invoke-virtual {v3}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->getTaskId()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] finish,post error:"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3, v6}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Loq5;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lr5b;->f:Lr5b$a;

    invoke-virtual {v0, v6}, Lr5b$a;->a(Lcom/transsion/cloud_drive/transfer/exception/TransferException;)Lr5b;

    move-result-object v0

    invoke-virtual {v1, v0}, Lwc0;->p(Lr5b;)V

    throw v6
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lvhb;->j:Ljava/lang/String;

    return-object p0
.end method

.method public isCompleted()Z
    .locals 0

    iget-boolean p0, p0, Lvhb;->n:Z

    return p0
.end method
