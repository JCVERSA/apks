.class public final synthetic Lu07;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/cloud/upload/model/UploadProgressInfo$Action;


# instance fields
.field public final synthetic a:Lcom/transsion/cloud/upload/task/NewUploadTask;

.field public final synthetic b:Z

.field public final synthetic c:F


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/cloud/upload/task/NewUploadTask;ZF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu07;->a:Lcom/transsion/cloud/upload/task/NewUploadTask;

    iput-boolean p2, p0, Lu07;->b:Z

    iput p3, p0, Lu07;->c:F

    return-void
.end method


# virtual methods
.method public final call(Lcom/transsion/cloud/upload/model/UploadProgressInfo;)V
    .locals 2

    iget-object v0, p0, Lu07;->a:Lcom/transsion/cloud/upload/task/NewUploadTask;

    iget-boolean v1, p0, Lu07;->b:Z

    iget p0, p0, Lu07;->c:F

    invoke-static {v0, v1, p0, p1}, Lcom/transsion/cloud/upload/task/NewUploadTask;->e(Lcom/transsion/cloud/upload/task/NewUploadTask;ZFLcom/transsion/cloud/upload/model/UploadProgressInfo;)V

    return-void
.end method
