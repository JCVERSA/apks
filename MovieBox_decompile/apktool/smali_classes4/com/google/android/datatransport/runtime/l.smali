.class public abstract Lcom/google/android/datatransport/runtime/l;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static a(Lt8/h;Lcom/google/android/datatransport/Priority;)V
    .locals 1

    .line 1
    instance-of v0, p0, Lcom/google/android/datatransport/runtime/r;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lcom/google/android/datatransport/runtime/r;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/r;->d()Lcom/google/android/datatransport/runtime/o;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0, p1}, Lcom/google/android/datatransport/runtime/o;->f(Lcom/google/android/datatransport/Priority;)Lcom/google/android/datatransport/runtime/o;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-static {}, Lcom/google/android/datatransport/runtime/t;->c()Lcom/google/android/datatransport/runtime/t;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/t;->e()Lb9/o;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const/4 v0, 0x1

    .line 24
    invoke-virtual {p1, p0, v0}, Lb9/o;->u(Lcom/google/android/datatransport/runtime/o;I)Lcom/google/android/datatransport/runtime/backends/BackendResponse;

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const-string p1, "ForcedSender"

    .line 29
    .line 30
    const-string v0, "Expected instance of `TransportImpl`, got `%s`."

    .line 31
    .line 32
    invoke-static {p1, v0, p0}, Ly8/a;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    return-void
.end method
