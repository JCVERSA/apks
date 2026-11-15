.class public final Lcij;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[Lvqf;

.field public final b:Lfjj;

.field public final c:Lutf;


# direct methods
.method public varargs constructor <init>([Lvqf;)V
    .locals 4

    new-instance v0, Lfjj;

    invoke-direct {v0}, Lfjj;-><init>()V

    new-instance v1, Lutf;

    invoke-direct {v1}, Lutf;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [Lvqf;

    iput-object v2, p0, Lcij;->a:[Lvqf;

    const/4 v3, 0x0

    invoke-static {p1, v3, v2, v3, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcij;->b:Lfjj;

    iput-object v1, p0, Lcij;->c:Lutf;

    aput-object v0, v2, v3

    const/4 p0, 0x1

    aput-object v1, v2, p0

    return-void
.end method


# virtual methods
.method public final a(J)J
    .locals 1

    iget-object p0, p0, Lcij;->c:Lutf;

    invoke-virtual {p0}, Lutf;->zzg()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lutf;->c(J)J

    move-result-wide p0

    return-wide p0

    :cond_0
    return-wide p1
.end method

.method public final b()J
    .locals 2

    iget-object p0, p0, Lcij;->b:Lfjj;

    invoke-virtual {p0}, Lfjj;->i()J

    move-result-wide v0

    return-wide v0
.end method

.method public final c(Lvwe;)Lvwe;
    .locals 1

    iget-object p0, p0, Lcij;->c:Lutf;

    iget v0, p1, Lvwe;->a:F

    invoke-virtual {p0, v0}, Lutf;->e(F)V

    iget v0, p1, Lvwe;->b:F

    invoke-virtual {p0, v0}, Lutf;->d(F)V

    return-object p1
.end method

.method public final d(Z)Z
    .locals 0

    iget-object p0, p0, Lcij;->b:Lfjj;

    invoke-virtual {p0, p1}, Lfjj;->j(Z)V

    return p1
.end method

.method public final e()[Lvqf;
    .locals 0

    iget-object p0, p0, Lcij;->a:[Lvqf;

    return-object p0
.end method
