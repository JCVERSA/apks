.class public interface abstract Lcom/transsion/vishaads/datasource/AdSourceDownloader$DownloadCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/vishaads/datasource/AdSourceDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DownloadCallback"
.end annotation


# virtual methods
.method public abstract onDownloadFailure(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onDownloadSuccess(Ljava/lang/String;Ljava/lang/String;)V
.end method
