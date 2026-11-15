.class public abstract Lxp5$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxp5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Lxp5;
.end method

.method public abstract b(Lcom/google/android/datatransport/cct/internal/ClientInfo;)Lxp5$a;
.end method

.method public abstract c(Ljava/util/List;)Lxp5$a;
.end method

.method public abstract d(Ljava/lang/Integer;)Lxp5$a;
.end method

.method public abstract e(Ljava/lang/String;)Lxp5$a;
.end method

.method public abstract f(Lcom/google/android/datatransport/cct/internal/QosTier;)Lxp5$a;
.end method

.method public abstract g(J)Lxp5$a;
.end method

.method public abstract h(J)Lxp5$a;
.end method

.method public i(I)Lxp5$a;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lxp5$a;->d(Ljava/lang/Integer;)Lxp5$a;

    move-result-object p0

    return-object p0
.end method

.method public j(Ljava/lang/String;)Lxp5$a;
    .locals 0

    invoke-virtual {p0, p1}, Lxp5$a;->e(Ljava/lang/String;)Lxp5$a;

    move-result-object p0

    return-object p0
.end method
