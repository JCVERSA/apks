.class public interface abstract Lcom/transsion/magicvideo/services/ICloudFileService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/android/arouter/facade/template/IProvider;


# virtual methods
.method public abstract startDownload(Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;Ljava/lang/String;)V
.end method

.method public abstract startDownload(Lcom/transsion/dbdata/beans/VideoCloudData;)V
.end method

.method public abstract startDownload(Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;)V
.end method
