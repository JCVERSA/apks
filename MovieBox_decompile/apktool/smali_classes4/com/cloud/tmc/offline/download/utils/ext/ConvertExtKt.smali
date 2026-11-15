.class public final Lcom/cloud/tmc/offline/download/utils/ext/ConvertExtKt;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u000e\n\u0002\u0010\t\n\u0000\u001a\u000c\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0000\u00a8\u0006\u0003"
    }
    d2 = {
        "formatMemorySize",
        "",
        "",
        "com.cloud.tmc.offline_download"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final formatMemorySize(J)Ljava/lang/String;
    .locals 6

    .line 1
    sget-object v0, Lcom/cloud/tmc/offline/download/utils/ConvertUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/ConvertUtils;

    .line 2
    .line 3
    const/4 v4, 0x2

    .line 4
    const/4 v5, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    move-wide v1, p0

    .line 7
    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/offline/download/utils/ConvertUtils;->getFormatMemorySize$default(Lcom/cloud/tmc/offline/download/utils/ConvertUtils;JIILjava/lang/Object;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method
