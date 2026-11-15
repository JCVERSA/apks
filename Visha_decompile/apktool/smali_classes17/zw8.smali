.class public abstract Lzw8;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lmc7;)Lyk5;
    .locals 1

    new-instance v0, Lyk5;

    invoke-direct {v0, p0}, Lyk5;-><init>(Lmc7;)V

    return-object v0
.end method

.method public static b(Lmc7;Lt74;)Lyk5;
    .locals 1

    const-string v0, "lifecycle == null"

    invoke-static {p0, v0}, Lzd8;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "correspondingEvents == null"

    invoke-static {p1, v0}, Lzd8;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lmc7;->U()Lmc7;

    move-result-object p0

    invoke-static {p0, p1}, Lzw8;->d(Lmc7;Lt74;)Lmc7;

    move-result-object p0

    invoke-static {p0}, Lzw8;->a(Lmc7;)Lyk5;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lmc7;Ljava/lang/Object;)Lyk5;
    .locals 1

    const-string v0, "lifecycle == null"

    invoke-static {p0, v0}, Lzd8;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "event == null"

    invoke-static {p1, v0}, Lzd8;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0, p1}, Lzw8;->e(Lmc7;Ljava/lang/Object;)Lmc7;

    move-result-object p0

    invoke-static {p0}, Lzw8;->a(Lmc7;)Lyk5;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lmc7;Lt74;)Lmc7;
    .locals 3

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lmc7;->e0(J)Lmc7;

    move-result-object v2

    invoke-virtual {v2, p1}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p1

    invoke-virtual {p0, v0, v1}, Lmc7;->X(J)Lmc7;

    move-result-object p0

    new-instance v0, Lzw8$b;

    invoke-direct {v0}, Lzw8$b;-><init>()V

    invoke-static {p1, p0, v0}, Lmc7;->e(Lld7;Lld7;Lbe0;)Lmc7;

    move-result-object p0

    sget-object p1, Lg94;->a:Lt74;

    invoke-virtual {p0, p1}, Lmc7;->P(Lt74;)Lmc7;

    move-result-object p0

    sget-object p1, Lg94;->b:Lie8;

    invoke-virtual {p0, p1}, Lmc7;->u(Lie8;)Lmc7;

    move-result-object p0

    return-object p0
.end method

.method public static e(Lmc7;Ljava/lang/Object;)Lmc7;
    .locals 1

    new-instance v0, Lzw8$a;

    invoke-direct {v0, p1}, Lzw8$a;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lmc7;->u(Lie8;)Lmc7;

    move-result-object p0

    return-object p0
.end method
