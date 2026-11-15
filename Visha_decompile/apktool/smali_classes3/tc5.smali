.class public abstract Ltc5;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Lzb5;
    .locals 2

    new-instance v0, Lzb5;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lzb5;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static b(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    new-instance v0, Lzb5;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lzb5;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Luc5;->z(Ljava/lang/Object;)Luc5;

    move-result-object p0

    check-cast p0, Lzb5;

    invoke-virtual {p0}, Lzb5;->H()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
