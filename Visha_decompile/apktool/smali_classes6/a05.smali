.class public abstract La05;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lny2;)Ls03;
    .locals 1

    const-string v0, "downloadConfig"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadManagerImpl;

    invoke-direct {v0, p0}, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadManagerImpl;-><init>(Lny2;)V

    return-object v0
.end method

.method public static final b(Ljhb;)Lqhb;
    .locals 1

    const-string v0, "uploadConfig"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/cloud_drive/transfer/internal/upload/UploadManagerImpl;

    invoke-direct {v0, p0}, Lcom/transsion/cloud_drive/transfer/internal/upload/UploadManagerImpl;-><init>(Ljhb;)V

    return-object v0
.end method
