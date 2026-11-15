.class public final Lyih;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmph;


# instance fields
.field public final a:Lwjh;


# direct methods
.method public constructor <init>(Lwjh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyih;->a:Lwjh;

    return-void
.end method


# virtual methods
.method public final a(Lnph;)Lim5;
    .locals 2

    check-cast p1, Lzih;

    iget-object v0, p1, Lzih;->b:Lxjh;

    iget-object p1, p1, Lzih;->a:Lvjh;

    iget-object p0, p0, Lyih;->a:Lwjh;

    const/4 v1, 0x0

    check-cast p0, Lvih;

    invoke-virtual {p0, v0, p1, v1}, Lvih;->c(Lxjh;Lvjh;Loyf;)Lim5;

    move-result-object p0

    return-object p0
.end method

.method public final b(Lbph;)V
    .locals 0

    iget-object p0, p0, Lyih;->a:Lwjh;

    check-cast p0, Lvih;

    invoke-virtual {p0}, Lvih;->b()Loyf;

    move-result-object p0

    iput-object p0, p1, Lbph;->a:Loyf;

    return-void
.end method
