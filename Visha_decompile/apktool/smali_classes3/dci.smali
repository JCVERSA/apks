.class public final synthetic Ldci;
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

    check-cast p1, Ljci;

    sget-object p0, Lfci;->a:Ljji;

    new-instance p0, Lzbi;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lzbi;-><init>(Laci;)V

    invoke-virtual {p0, p1}, Lzbi;->c(Ljci;)Lzbi;

    invoke-virtual {p0, p2}, Lzbi;->a(Ljava/lang/Integer;)Lzbi;

    invoke-virtual {p1}, Ljci;->b()I

    move-result p1

    invoke-static {p1}, Lfri;->c(I)Lfri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lzbi;->b(Lfri;)Lzbi;

    invoke-virtual {p0}, Lzbi;->d()Lbci;

    move-result-object p0

    return-object p0
.end method
