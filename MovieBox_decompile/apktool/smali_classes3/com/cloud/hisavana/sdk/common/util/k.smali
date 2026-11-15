.class public abstract synthetic Lcom/cloud/hisavana/sdk/common/util/k;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static bridge synthetic a(Ljava/nio/file/Path;)[B
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
