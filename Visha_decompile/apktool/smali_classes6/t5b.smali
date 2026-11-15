.class public final Lt5b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls5b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;
    .locals 0

    const-string p0, "fileId"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/transsion/cloud_drive/base/internal/request/GetDownloadUrlRequest;

    invoke-direct {p0, p1}, Lcom/transsion/cloud_drive/base/internal/request/GetDownloadUrlRequest;-><init>(Ljava/lang/String;)V

    sget-object p1, Lcom/transsion/cloud_drive/base/internal/ServiceProvider;->a:Lcom/transsion/cloud_drive/base/internal/ServiceProvider;

    invoke-virtual {p1}, Lcom/transsion/cloud_drive/base/internal/ServiceProvider;->a()Lpr3;

    move-result-object p1

    invoke-interface {p1, p0}, Lpr3;->g(Lcom/transsion/cloud_drive/base/internal/request/GetDownloadUrlRequest;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;

    move-result-object p0

    return-object p0
.end method
