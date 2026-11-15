.class public final Lf7j;
.super Lfhi;
.source "SourceFile"

# interfaces
.implements Lk0j;


# direct methods
.method public synthetic constructor <init>(Lk7j;)V
    .locals 0

    invoke-static {}, Lm7j;->z()Lm7j;

    move-result-object p1

    invoke-direct {p0, p1}, Lfhi;-><init>(Lkli;)V

    return-void
.end method


# virtual methods
.method public final j(I)Lf7j;
    .locals 1

    invoke-virtual {p0}, Lfhi;->h()V

    iget-object v0, p0, Lfhi;->c:Lkli;

    check-cast v0, Lm7j;

    invoke-static {v0, p1}, Lm7j;->A(Lm7j;I)V

    return-object p0
.end method
