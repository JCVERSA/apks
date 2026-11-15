.class public final synthetic Lgbi;
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

    check-cast p1, Llbi;

    sget-object p0, Lhbi;->a:Ljji;

    invoke-virtual {p1}, Llbi;->c()I

    move-result p0

    const/16 v0, 0x18

    if-eq p0, v0, :cond_0

    new-instance p0, Lcbi;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcbi;-><init>(Ldbi;)V

    invoke-virtual {p0, p1}, Lcbi;->c(Llbi;)Lcbi;

    invoke-virtual {p0, p2}, Lcbi;->a(Ljava/lang/Integer;)Lcbi;

    invoke-virtual {p1}, Llbi;->c()I

    move-result p1

    invoke-static {p1}, Lfri;->c(I)Lfri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcbi;->b(Lfri;)Lcbi;

    invoke-virtual {p0}, Lcbi;->d()Lebi;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "192 bit AES GCM Parameters are not valid"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
