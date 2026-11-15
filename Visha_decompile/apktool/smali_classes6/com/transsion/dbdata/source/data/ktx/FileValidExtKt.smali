.class public final Lcom/transsion/dbdata/source/data/ktx/FileValidExtKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u001a*\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u0001H\u0000\u001a\u001a\u0010\u0007\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u0001H\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "isValidVideoFilePath",
        "",
        "filePath",
        "",
        "checkFileExist",
        "checkFileSuffix",
        "isBucketCheck",
        "isValidAudioFilePath",
        "dbdata_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final isValidAudioFilePath(Ljava/lang/String;Z)Z
    .locals 0

    invoke-static {p0, p1}, Lge6;->p(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static final isValidVideoFilePath(Ljava/lang/String;ZZZ)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-eqz p2, :cond_1

    sget-object p2, Lge6;->a:Lge6;

    invoke-virtual {p2, p0, v1}, Lge6;->f(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_1

    return v0

    :cond_1
    if-eqz p3, :cond_2

    const/4 p2, 0x2

    const/4 p3, 0x0

    const-string v2, "visha_hls_"

    invoke-static {p0, v2, v0, p2, p3}, Lj1a;->X(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, ".ts"

    invoke-static {p0, p2, v1}, Lg1a;->C(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_2

    return v0

    :cond_2
    invoke-static {p0, p1}, Lge6;->p(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    return v0
.end method
