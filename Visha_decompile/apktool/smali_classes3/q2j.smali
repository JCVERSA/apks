.class public final Lq2j;
.super Lfhi;
.source "SourceFile"

# interfaces
.implements Lk0j;


# direct methods
.method public synthetic constructor <init>(Lw2j;)V
    .locals 0

    invoke-static {}, Lz2j;->z()Lz2j;

    move-result-object p1

    invoke-direct {p0, p1}, Lfhi;-><init>(Lkli;)V

    return-void
.end method


# virtual methods
.method public final j(Ljava/lang/String;Lv4j;)Lq2j;
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lfhi;->c:Lkli;

    invoke-virtual {v0}, Lkli;->h()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lfhi;->i()V

    :cond_0
    iget-object v0, p0, Lfhi;->c:Lkli;

    check-cast v0, Lz2j;

    invoke-static {v0}, Lz2j;->A(Lz2j;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
