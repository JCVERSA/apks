.class public abstract Lqga;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final synthetic a(Llx7;)Lwn2;
    .locals 0

    invoke-static {p0}, Lqga;->b(Llx7;)Lwn2;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Llx7;)Lwn2;
    .locals 4

    new-instance v0, Lwn2;

    new-instance v1, Liq0;

    new-instance v2, Lzy4;

    invoke-direct {v2}, Lzy4;-><init>()V

    sget-object v3, Lkga;->a:Lkga$a;

    invoke-virtual {v3}, Lkga$a;->a()Lkga;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Liq0;-><init>(Lzy4;Lkga;)V

    invoke-direct {v0, p0, v1}, Lwn2;-><init>(Llx7;Liq0;)V

    return-object v0
.end method
