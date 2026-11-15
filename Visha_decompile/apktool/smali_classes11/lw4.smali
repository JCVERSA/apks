.class public interface abstract Llw4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001Ju\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b2\n\u0008\u0001\u0010\u0003\u001a\u0004\u0018\u00010\u00022\n\u0008\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u00022\n\u0008\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u00022\n\u0008\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u00022\n\u0008\u0001\u0010\u0007\u001a\u0004\u0018\u00010\u00022\n\u0008\u0001\u0010\u0008\u001a\u0004\u0018\u00010\u00022\n\u0008\u0001\u0010\t\u001a\u0004\u0018\u00010\u00022\n\u0008\u0001\u0010\n\u001a\u0004\u0018\u00010\u0002H\'\u00a2\u0006\u0004\u0008\r\u0010\u000eJ7\u0010\u0014\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00010\u00130\u000b2\n\u0008\u0001\u0010\u000f\u001a\u0004\u0018\u00010\u00022\u000e\u0008\u0001\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010H\'\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u001f\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u000b2\u0008\u0008\u0001\u0010\u0017\u001a\u00020\u0016H\'\u00a2\u0006\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001b"
    }
    d2 = {
        "Llw4;",
        "",
        "",
        "dt",
        "deviceBrand",
        "os",
        "osVersion",
        "clientVersion",
        "ac",
        "country",
        "osLanguage",
        "Lmc7;",
        "Lcom/transsion/dbdata/beans/onlinevideo/tiktok/TtStreamResponse;",
        "a",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmc7;",
        "eventType",
        "",
        "Lcom/transsion/dbdata/beans/onlinevideo/tiktok/TtLogEvent;",
        "events",
        "Lcom/transsion/retrofit/reponse/BaseResponse;",
        "b",
        "(Ljava/lang/String;Ljava/util/List;)Lmc7;",
        "Lcom/transsion/dbdata/beans/onlinevideo/tiktok/TtPlayUrlRequest;",
        "body",
        "Lcom/transsion/dbdata/beans/onlinevideo/tiktok/TtPlayUrlResponse;",
        "c",
        "(Lcom/transsion/dbdata/beans/onlinevideo/tiktok/TtPlayUrlRequest;)Lmc7;",
        "onlinevideo_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmc7;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lwk8;
            value = "dt"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lwk8;
            value = "device_brand"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lwk8;
            value = "os"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lwk8;
            value = "os_version"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lwk8;
            value = "client_version"
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Lwk8;
            value = "ac"
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation runtime Lwk8;
            value = "country"
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation runtime Lwk8;
            value = "os_language"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lmc7<",
            "Lcom/transsion/dbdata/beans/onlinevideo/tiktok/TtStreamResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lq94;
        value = "/visha/api/tt/data/stream"
    .end annotation

    .annotation runtime Lwy9;
    .end annotation
.end method

.method public abstract b(Ljava/lang/String;Ljava/util/List;)Lmc7;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lwk8;
            value = "eventType"
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation runtime Lgg0;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/onlinevideo/tiktok/TtLogEvent;",
            ">;)",
            "Lmc7<",
            "Lcom/transsion/retrofit/reponse/BaseResponse<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lzu7;
        value = "/visha/api/tt/action/logs"
    .end annotation
.end method

.method public abstract c(Lcom/transsion/dbdata/beans/onlinevideo/tiktok/TtPlayUrlRequest;)Lmc7;
    .param p1    # Lcom/transsion/dbdata/beans/onlinevideo/tiktok/TtPlayUrlRequest;
        .annotation runtime Lgg0;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/dbdata/beans/onlinevideo/tiktok/TtPlayUrlRequest;",
            ")",
            "Lmc7<",
            "Lcom/transsion/dbdata/beans/onlinevideo/tiktok/TtPlayUrlResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lzu7;
        value = "/visha/api/tt/video/url"
    .end annotation
.end method
