.class public final Lpd;
.super Libb;
.source "SourceFile"


# instance fields
.field public final a:Lmd;


# direct methods
.method public constructor <init>(Lmd;)V
    .locals 1

    const-string v0, "annotations"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Libb;-><init>()V

    iput-object p1, p0, Lpd;->a:Lmd;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Libb;)Libb;
    .locals 0

    check-cast p1, Lpd;

    invoke-virtual {p0, p1}, Lpd;->d(Lpd;)Lpd;

    move-result-object p0

    return-object p0
.end method

.method public b()Lde5;
    .locals 0

    const-class p0, Lpd;

    invoke-static {p0}, Lxq8;->b(Ljava/lang/Class;)Lde5;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic c(Libb;)Libb;
    .locals 0

    check-cast p1, Lpd;

    invoke-virtual {p0, p1}, Lpd;->f(Lpd;)Lpd;

    move-result-object p0

    return-object p0
.end method

.method public d(Lpd;)Lpd;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lpd;

    iget-object p0, p0, Lpd;->a:Lmd;

    iget-object p1, p1, Lpd;->a:Lmd;

    invoke-static {p0, p1}, Lod;->a(Lmd;Lmd;)Lmd;

    move-result-object p0

    invoke-direct {v0, p0}, Lpd;-><init>(Lmd;)V

    return-object v0
.end method

.method public final e()Lmd;
    .locals 0

    iget-object p0, p0, Lpd;->a:Lmd;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lpd;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Lpd;

    iget-object p1, p1, Lpd;->a:Lmd;

    iget-object p0, p0, Lpd;->a:Lmd;

    invoke-static {p1, p0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public f(Lpd;)Lpd;
    .locals 0

    invoke-static {p1, p0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lpd;->a:Lmd;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method
