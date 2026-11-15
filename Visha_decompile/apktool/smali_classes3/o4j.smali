.class public final Lo4j;
.super Lfhi;
.source "SourceFile"

# interfaces
.implements Lk0j;


# direct methods
.method public synthetic constructor <init>(Lr4j;)V
    .locals 0

    invoke-static {}, Lv4j;->z()Lv4j;

    move-result-object p1

    invoke-direct {p0, p1}, Lfhi;-><init>(Lkli;)V

    return-void
.end method


# virtual methods
.method public final j(Ljava/lang/String;)Lo4j;
    .locals 1

    iget-object v0, p0, Lfhi;->c:Lkli;

    invoke-virtual {v0}, Lkli;->h()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lfhi;->i()V

    :cond_0
    iget-object v0, p0, Lfhi;->c:Lkli;

    check-cast v0, Lv4j;

    invoke-static {v0, p1}, Lv4j;->B(Lv4j;Ljava/lang/String;)V

    return-object p0
.end method
