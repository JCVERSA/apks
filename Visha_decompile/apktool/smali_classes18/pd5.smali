.class public abstract Lpd5;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lu95;Lk92;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deserializer"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stream"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lk85;

    invoke-direct {v0, p2}, Lk85;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    invoke-static {p0, p1, v0}, Lyb5;->a(Lu95;Lk92;Lkd9;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lk85;->b()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lk85;->b()V

    throw p0
.end method

.method public static final b(Lu95;Lnd9;Ljava/lang/Object;Ljava/io/OutputStream;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serializer"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stream"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcc5;

    invoke-direct {v0, p3}, Lcc5;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    invoke-static {p0, v0, p1, p2}, Lyb5;->b(Lu95;Lsc5;Lnd9;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcc5;->g()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lcc5;->g()V

    throw p0
.end method
