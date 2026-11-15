.class public final synthetic Lmci;
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
    .locals 0

    check-cast p1, Lpci;

    sget-object p0, Lnci;->a:Ljji;

    invoke-virtual {p1}, Lpci;->b()Loci;

    move-result-object p0

    const/16 p1, 0x20

    invoke-static {p1}, Lfri;->c(I)Lfri;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lkci;->c(Loci;Lfri;Ljava/lang/Integer;)Lkci;

    move-result-object p0

    return-object p0
.end method
