.class public abstract Lad/n;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static final a(Lcom/google/firebase/c;)Lcom/google/firebase/remoteconfig/a;
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/google/firebase/remoteconfig/a;->k()Lcom/google/firebase/remoteconfig/a;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const-string v0, "getInstance()"

    .line 11
    .line 12
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public static final b(Lkotlin/jvm/functions/Function1;)Lad/j;
    .locals 1

    .line 1
    const-string v0, "init"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lad/j$b;

    .line 7
    .line 8
    invoke-direct {v0}, Lad/j$b;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lad/j$b;->c()Lad/j;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const-string v0, "builder.build()"

    .line 19
    .line 20
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-object p0
.end method
