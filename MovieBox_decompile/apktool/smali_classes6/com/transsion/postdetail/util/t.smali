.class public abstract Lcom/transsion/postdetail/util/t;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/postdetail/util/t$a;
    }
.end annotation


# direct methods
.method public static final a(Ljava/util/List;)Lcom/transsion/moviedetailapi/bean/Video;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_2

    .line 3
    .line 4
    move-object v1, p0

    .line 5
    check-cast v1, Ljava/lang/Iterable;

    .line 6
    .line 7
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_2

    .line 16
    .line 17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lcom/transsion/moviedetailapi/bean/Video;

    .line 22
    .line 23
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Video;->getDefinition()Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    if-nez v3, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    const/4 v4, 0x3

    .line 35
    if-ne v3, v4, :cond_0

    .line 36
    .line 37
    move-object v0, v2

    .line 38
    goto :goto_0

    .line 39
    :cond_2
    if-nez v0, :cond_3

    .line 40
    .line 41
    if-eqz p0, :cond_3

    .line 42
    .line 43
    move-object v1, p0

    .line 44
    check-cast v1, Ljava/util/Collection;

    .line 45
    .line 46
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    const/4 v2, 0x1

    .line 51
    xor-int/2addr v1, v2

    .line 52
    if-ne v1, v2, :cond_3

    .line 53
    .line 54
    const/4 v0, 0x0

    .line 55
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    :cond_3
    check-cast v0, Lcom/transsion/moviedetailapi/bean/Video;

    .line 60
    .line 61
    return-object v0
.end method

.method public static final b(Lcom/transsion/baselib/db/download/DownloadBean;)Ljava/lang/String;
    .locals 2

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/transsion/baselib/db/download/DownloadBean;->isInnerRes()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_1

    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    const/4 v0, 0x5

    .line 17
    if-ne p0, v0, :cond_0

    .line 18
    .line 19
    const-string p0, "0"

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const-string p0, "1"

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const-string p0, "2"

    .line 26
    .line 27
    :goto_0
    return-object p0
.end method

.method public static final c(Lcom/transsion/postdetail/layer/local/LocalUiType;)Lcom/transsion/subtitle/helper/LocalVideoUiType;
    .locals 1

    .line 1
    const-string v0, "uiType"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/transsion/postdetail/util/t$a;->b:[I

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    aget p0, v0, p0

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    if-eq p0, v0, :cond_2

    .line 16
    .line 17
    const/4 v0, 0x2

    .line 18
    if-eq p0, v0, :cond_1

    .line 19
    .line 20
    const/4 v0, 0x3

    .line 21
    if-ne p0, v0, :cond_0

    .line 22
    .line 23
    sget-object p0, Lcom/transsion/subtitle/helper/LocalVideoUiType;->PORTRAIT:Lcom/transsion/subtitle/helper/LocalVideoUiType;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 27
    .line 28
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 29
    .line 30
    .line 31
    throw p0

    .line 32
    :cond_1
    sget-object p0, Lcom/transsion/subtitle/helper/LocalVideoUiType;->MIDDLE:Lcom/transsion/subtitle/helper/LocalVideoUiType;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    sget-object p0, Lcom/transsion/subtitle/helper/LocalVideoUiType;->LAND:Lcom/transsion/subtitle/helper/LocalVideoUiType;

    .line 36
    .line 37
    :goto_0
    return-object p0
.end method

.method public static final d()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    new-instance v2, Ljava/text/SimpleDateFormat;

    .line 6
    .line 7
    const-string v3, "HH:mm"

    .line 8
    .line 9
    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v2, v0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    return-object v0
.end method
