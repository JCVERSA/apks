.class public abstract Lf68$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf68;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Lf68;I)Landroidx/lifecycle/LiveData;
    .locals 8

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move v5, p1

    invoke-static/range {v1 .. v7}, Lf68$a;->d(Lf68;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Boolean;IILjava/lang/Object;)Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lf68;I)Landroidx/lifecycle/LiveData;
    .locals 8

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move v5, p1

    invoke-static/range {v1 .. v7}, Lf68$a;->d(Lf68;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Boolean;IILjava/lang/Object;)Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lf68;JII)Landroidx/lifecycle/LiveData;
    .locals 7

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v4, p4

    invoke-static/range {v0 .. v6}, Lf68$a;->d(Lf68;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Boolean;IILjava/lang/Object;)Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lf68;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Boolean;IILjava/lang/Object;)Landroidx/lifecycle/LiveData;
    .locals 1

    if-nez p6, :cond_3

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    move-object p3, v0

    :cond_2
    invoke-interface {p0, p1, p2, p3, p4}, Lf68;->getPlayListMediaItemsLiveData(Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Boolean;I)Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getPlayListMediaItemsLiveData"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
