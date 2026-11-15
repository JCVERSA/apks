.class public final synthetic Luai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leii;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lp9i;Ljava/lang/Integer;)Lb9i;
    .locals 1

    check-cast p1, Lbbi;

    sget-object p0, Lvai;->a:Ljji;

    invoke-virtual {p1}, Lbbi;->b()I

    move-result p0

    const/16 v0, 0x10

    if-eq p0, v0, :cond_1

    invoke-virtual {p1}, Lbbi;->b()I

    move-result p0

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "AES key size must be 16 or 32 bytes"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    new-instance p0, Lpai;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lpai;-><init>(Lqai;)V

    invoke-virtual {p0, p1}, Lpai;->d(Lbbi;)Lpai;

    invoke-virtual {p0, p2}, Lpai;->c(Ljava/lang/Integer;)Lpai;

    invoke-virtual {p1}, Lbbi;->b()I

    move-result p2

    invoke-static {p2}, Lfri;->c(I)Lfri;

    move-result-object p2

    invoke-virtual {p0, p2}, Lpai;->a(Lfri;)Lpai;

    invoke-virtual {p1}, Lbbi;->c()I

    move-result p1

    invoke-static {p1}, Lfri;->c(I)Lfri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lpai;->b(Lfri;)Lpai;

    invoke-virtual {p0}, Lpai;->e()Lrai;

    move-result-object p0

    return-object p0
.end method
