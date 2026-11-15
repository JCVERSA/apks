.class public final Lw8j;
.super Lfhi;
.source "SourceFile"

# interfaces
.implements Lk0j;


# direct methods
.method public synthetic constructor <init>(Ly8j;)V
    .locals 0

    invoke-static {}, La9j;->z()La9j;

    move-result-object p1

    invoke-direct {p0, p1}, Lfhi;-><init>(Lkli;)V

    return-void
.end method


# virtual methods
.method public final j(Lp5j;)Lw8j;
    .locals 1

    invoke-virtual {p0}, Lfhi;->h()V

    iget-object v0, p0, Lfhi;->c:Lkli;

    check-cast v0, La9j;

    invoke-virtual {p1}, Lfhi;->f()Lkli;

    move-result-object p1

    check-cast p1, Lv5j;

    invoke-static {v0, p1}, La9j;->A(La9j;Lv5j;)V

    return-object p0
.end method

.method public final k(J)Lw8j;
    .locals 1

    invoke-virtual {p0}, Lfhi;->h()V

    iget-object v0, p0, Lfhi;->c:Lkli;

    check-cast v0, La9j;

    invoke-static {v0, p1, p2}, La9j;->B(La9j;J)V

    return-object p0
.end method
