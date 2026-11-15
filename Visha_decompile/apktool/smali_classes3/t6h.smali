.class public final Lt6h;
.super Lfhi;
.source "SourceFile"

# interfaces
.implements Lk0j;


# direct methods
.method public synthetic constructor <init>(Lx8h;)V
    .locals 0

    invoke-static {}, Lw7h;->z()Lw7h;

    move-result-object p1

    invoke-direct {p0, p1}, Lfhi;-><init>(Lkli;)V

    return-void
.end method


# virtual methods
.method public final j(Ljava/lang/Iterable;)Lt6h;
    .locals 1

    invoke-virtual {p0}, Lfhi;->h()V

    iget-object v0, p0, Lfhi;->c:Lkli;

    check-cast v0, Lw7h;

    invoke-static {v0, p1}, Lw7h;->A(Lw7h;Ljava/lang/Iterable;)V

    return-object p0
.end method
