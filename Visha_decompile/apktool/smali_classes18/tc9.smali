.class public abstract Ltc9;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ls74;)Ljava/util/Iterator;
    .locals 1

    const-string v0, "block"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lrc9;

    invoke-direct {v0}, Lrc9;-><init>()V

    invoke-static {p0, v0, v0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->a(Ls74;Ljava/lang/Object;Lwh1;)Lwh1;

    move-result-object p0

    invoke-virtual {v0, p0}, Lrc9;->g(Lwh1;)V

    return-object v0
.end method

.method public static b(Ls74;)Lpc9;
    .locals 1

    const-string v0, "block"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ltc9$a;

    invoke-direct {v0, p0}, Ltc9$a;-><init>(Ls74;)V

    return-object v0
.end method
