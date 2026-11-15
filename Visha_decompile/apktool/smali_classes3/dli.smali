.class public final synthetic Ldli;
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

    check-cast p1, Ljli;

    sget-object p0, Leli;->a:Ljji;

    new-instance p0, Lxki;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lxki;-><init>(Lyki;)V

    invoke-virtual {p0, p1}, Lxki;->c(Ljli;)Lxki;

    invoke-virtual {p1}, Ljli;->c()I

    move-result p1

    invoke-static {p1}, Lfri;->c(I)Lfri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lxki;->b(Lfri;)Lxki;

    invoke-virtual {p0, p2}, Lxki;->a(Ljava/lang/Integer;)Lxki;

    invoke-virtual {p0}, Lxki;->d()Lzki;

    move-result-object p0

    return-object p0
.end method
