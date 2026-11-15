.class public final Lcom/transsion/cloud_drive/transfer/internal/upload/UploadManagerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqhb;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/cloud_drive/transfer/internal/upload/UploadManagerImpl$a;
    }
.end annotation


# static fields
.field public static final e:Lcom/transsion/cloud_drive/transfer/internal/upload/UploadManagerImpl$a;


# instance fields
.field public final a:Ljhb;

.field public final b:Lthb;

.field public final c:Lgea;

.field public final d:Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/cloud_drive/transfer/internal/upload/UploadManagerImpl$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/cloud_drive/transfer/internal/upload/UploadManagerImpl$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/cloud_drive/transfer/internal/upload/UploadManagerImpl;->e:Lcom/transsion/cloud_drive/transfer/internal/upload/UploadManagerImpl$a;

    return-void
.end method

.method public constructor <init>(Ljhb;)V
    .locals 7

    const-string v0, "config"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/cloud_drive/transfer/internal/upload/UploadManagerImpl;->a:Ljhb;

    new-instance v0, Lcom/transsion/cloud_drive/transfer/internal/impl/database/b;

    sget-object v1, Lcom/transsion/cloud_drive/transfer/internal/impl/database/DbProvider;->a:Lcom/transsion/cloud_drive/transfer/internal/impl/database/DbProvider;

    invoke-virtual {v1}, Lcom/transsion/cloud_drive/transfer/internal/impl/database/DbProvider;->a()Lq5b;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/cloud_drive/transfer/internal/impl/database/b;-><init>(Lq5b;)V

    iput-object v0, p0, Lcom/transsion/cloud_drive/transfer/internal/upload/UploadManagerImpl;->b:Lthb;

    invoke-virtual {p1}, Ljhb;->f()Lgea;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljfb;

    invoke-direct {v0}, Ljfb;-><init>()V

    :cond_0
    iput-object v0, p0, Lcom/transsion/cloud_drive/transfer/internal/upload/UploadManagerImpl;->c:Lgea;

    new-instance v0, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;

    invoke-virtual {p1}, Ljhb;->c()I

    move-result v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "upload"

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;-><init>(Ljava/lang/String;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/transsion/cloud_drive/transfer/internal/upload/UploadManagerImpl;->d:Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    const-string v0, "taskId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "UploadManagerImpl"

    const-string v1, "pause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/cloud_drive/transfer/internal/upload/UploadManagerImpl;->d:Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;

    invoke-virtual {p0, p1}, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->q(Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    const-string v0, "taskId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "UploadManagerImpl"

    const-string v1, "resume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/cloud_drive/transfer/internal/upload/UploadManagerImpl;->d:Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;

    sget-object v0, Lcom/transsion/cloud_drive/transfer/internal/upload/UploadManagerImpl$resume$1;->INSTANCE:Lcom/transsion/cloud_drive/transfer/internal/upload/UploadManagerImpl$resume$1;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->u(Ljava/lang/String;Le74;)V

    return-void
.end method

.method public c(Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;Lof7;)V
    .locals 3

    const-string v0, "taskInfo"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lvhb;

    invoke-direct {v0, p1}, Lvhb;-><init>(Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;)V

    iget-object p1, p0, Lcom/transsion/cloud_drive/transfer/internal/upload/UploadManagerImpl;->a:Ljhb;

    iget-object v1, p0, Lcom/transsion/cloud_drive/transfer/internal/upload/UploadManagerImpl;->b:Lthb;

    sget-object v2, Lmt4;->a:Lmt4;

    invoke-virtual {v0, p1, v1, v2}, Lvhb;->P(Ljhb;Lthb;Lnt4;)V

    invoke-virtual {v0, p2}, Lwc0;->setListener(Lof7;)V

    const-string p1, "UploadManagerImpl"

    const-string p2, "start"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/cloud_drive/transfer/internal/upload/UploadManagerImpl;->d:Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;

    invoke-virtual {p0, v0}, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->m(Lwda;)V

    return-void
.end method

.method public cancel(Ljava/lang/String;)V
    .locals 2

    const-string v0, "taskId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "UploadManagerImpl"

    const-string v1, "cancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/cloud_drive/transfer/internal/upload/UploadManagerImpl;->d:Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;

    invoke-virtual {p0, p1}, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->s(Ljava/lang/String;)V

    return-void
.end method
