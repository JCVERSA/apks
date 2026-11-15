.class public abstract Lcom/google/android/datatransport/cct/internal/r$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/datatransport/cct/internal/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public abstract a()Lcom/google/android/datatransport/cct/internal/r;
.end method

.method public abstract b(Lcom/google/android/datatransport/cct/internal/ClientInfo;)Lcom/google/android/datatransport/cct/internal/r$a;
.end method

.method public abstract c(Ljava/util/List;)Lcom/google/android/datatransport/cct/internal/r$a;
.end method

.method abstract d(Ljava/lang/Integer;)Lcom/google/android/datatransport/cct/internal/r$a;
.end method

.method abstract e(Ljava/lang/String;)Lcom/google/android/datatransport/cct/internal/r$a;
.end method

.method public abstract f(Lcom/google/android/datatransport/cct/internal/QosTier;)Lcom/google/android/datatransport/cct/internal/r$a;
.end method

.method public abstract g(J)Lcom/google/android/datatransport/cct/internal/r$a;
.end method

.method public abstract h(J)Lcom/google/android/datatransport/cct/internal/r$a;
.end method

.method public i(I)Lcom/google/android/datatransport/cct/internal/r$a;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/datatransport/cct/internal/r$a;->d(Ljava/lang/Integer;)Lcom/google/android/datatransport/cct/internal/r$a;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public j(Ljava/lang/String;)Lcom/google/android/datatransport/cct/internal/r$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/datatransport/cct/internal/r$a;->e(Ljava/lang/String;)Lcom/google/android/datatransport/cct/internal/r$a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
