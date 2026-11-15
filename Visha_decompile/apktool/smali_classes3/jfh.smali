.class public final Ljfh;
.super Lfhi;
.source "SourceFile"

# interfaces
.implements Lk0j;


# direct methods
.method public synthetic constructor <init>(Llhh;)V
    .locals 0

    invoke-static {}, Llgh;->z()Llgh;

    move-result-object p1

    invoke-direct {p0, p1}, Lfhi;-><init>(Lkli;)V

    return-void
.end method


# virtual methods
.method public final j(Ljava/lang/String;)Ljfh;
    .locals 1

    invoke-virtual {p0}, Lfhi;->h()V

    iget-object v0, p0, Lfhi;->c:Lkli;

    check-cast v0, Llgh;

    invoke-static {v0, p1}, Llgh;->A(Llgh;Ljava/lang/String;)V

    return-object p0
.end method
