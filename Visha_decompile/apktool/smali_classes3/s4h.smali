.class public final Ls4h;
.super Lfhi;
.source "SourceFile"

# interfaces
.implements Lk0j;


# direct methods
.method public synthetic constructor <init>(Lx8h;)V
    .locals 0

    invoke-static {}, Lr5h;->z()Lr5h;

    move-result-object p1

    invoke-direct {p0, p1}, Lfhi;-><init>(Lkli;)V

    return-void
.end method


# virtual methods
.method public final j(Ljfh;)Ls4h;
    .locals 1

    invoke-virtual {p0}, Lfhi;->h()V

    iget-object v0, p0, Lfhi;->c:Lkli;

    check-cast v0, Lr5h;

    invoke-virtual {p1}, Lfhi;->f()Lkli;

    move-result-object p1

    check-cast p1, Llgh;

    invoke-static {v0, p1}, Lr5h;->A(Lr5h;Llgh;)V

    return-object p0
.end method

.method public final k(Ljfh;)Ls4h;
    .locals 1

    invoke-virtual {p0}, Lfhi;->h()V

    iget-object v0, p0, Lfhi;->c:Lkli;

    check-cast v0, Lr5h;

    invoke-virtual {p1}, Lfhi;->f()Lkli;

    move-result-object p1

    check-cast p1, Llgh;

    invoke-static {v0, p1}, Lr5h;->B(Lr5h;Llgh;)V

    return-object p0
.end method

.method public final l(I)Ls4h;
    .locals 1

    invoke-virtual {p0}, Lfhi;->h()V

    iget-object v0, p0, Lfhi;->c:Lkli;

    check-cast v0, Lr5h;

    invoke-static {v0, p1}, Lr5h;->C(Lr5h;I)V

    return-object p0
.end method
