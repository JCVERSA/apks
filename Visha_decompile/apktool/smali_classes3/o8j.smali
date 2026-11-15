.class public final Lo8j;
.super Lfhi;
.source "SourceFile"

# interfaces
.implements Lk0j;


# direct methods
.method public synthetic constructor <init>(Ls8j;)V
    .locals 0

    invoke-static {}, Lu8j;->z()Lu8j;

    move-result-object p1

    invoke-direct {p0, p1}, Lfhi;-><init>(Lkli;)V

    return-void
.end method


# virtual methods
.method public final j(I)Lo8j;
    .locals 1

    invoke-virtual {p0}, Lfhi;->h()V

    iget-object v0, p0, Lfhi;->c:Lkli;

    check-cast v0, Lu8j;

    invoke-static {v0, p1}, Lu8j;->A(Lu8j;I)V

    return-object p0
.end method
