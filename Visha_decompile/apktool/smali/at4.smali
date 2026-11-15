.class public abstract synthetic Lat4;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic a(Landroid/net/http/NetworkException;)I
    .locals 0

    invoke-virtual {p0}, Landroid/net/http/NetworkException;->getErrorCode()I

    move-result p0

    return p0
.end method
