.class public final Ln7j;
.super Lfhi;
.source "SourceFile"

# interfaces
.implements Lk0j;


# direct methods
.method public synthetic constructor <init>(Lu7j;)V
    .locals 0

    invoke-static {}, Lw7j;->y()Lw7j;

    move-result-object p1

    invoke-direct {p0, p1}, Lfhi;-><init>(Lkli;)V

    return-void
.end method


# virtual methods
.method public final j(Z)Ln7j;
    .locals 1

    invoke-virtual {p0}, Lfhi;->h()V

    iget-object v0, p0, Lfhi;->c:Lkli;

    check-cast v0, Lw7j;

    invoke-static {v0, p1}, Lw7j;->A(Lw7j;Z)V

    return-object p0
.end method
