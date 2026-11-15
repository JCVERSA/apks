.class public Ljqc;
.super Lhqc;
.source "SourceFile"

# interfaces
.implements Ljava/security/Principal;


# direct methods
.method public constructor <init>(Lcqc;)V
    .locals 0

    invoke-virtual {p1}, Lcqc;->j()Lp1;

    move-result-object p1

    check-cast p1, Ls1;

    invoke-direct {p0, p1}, Lhqc;-><init>(Ls1;)V

    return-void
.end method


# virtual methods
.method public getEncoded()[B
    .locals 1

    :try_start_0
    const-string v0, "DER"

    invoke-virtual {p0, v0}, Lj1;->l(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lhqc;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
