.class public abstract Lie1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ly7a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ly7a;

    const-string v1, "CLOSED"

    invoke-direct {v0, v1}, Ly7a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lie1;->a:Ly7a;

    return-void
.end method

.method public static final synthetic a()Ly7a;
    .locals 1

    sget-object v0, Lie1;->a:Ly7a;

    return-object v0
.end method

.method public static final b(Lje1;)Lje1;
    .locals 2

    :cond_0
    :goto_0
    invoke-static {p0}, Lje1;->b(Lje1;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lie1;->a()Ly7a;

    move-result-object v1

    if-ne v0, v1, :cond_1

    return-object p0

    :cond_1
    check-cast v0, Lje1;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lje1;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_2
    move-object p0, v0

    goto :goto_0
.end method

.method public static final c(Loa9;JLs74;)Ljava/lang/Object;
    .locals 4

    :cond_0
    :goto_0
    iget-wide v0, p0, Loa9;->d:J

    cmp-long v0, v0, p1

    if-ltz v0, :cond_2

    invoke-virtual {p0}, Loa9;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p0}, Lpa9;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    invoke-static {p0}, Lje1;->b(Lje1;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lie1;->a()Ly7a;

    move-result-object v1

    if-ne v0, v1, :cond_3

    sget-object p0, Lie1;->a:Ly7a;

    invoke-static {p0}, Lpa9;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_3
    check-cast v0, Lje1;

    check-cast v0, Loa9;

    if-eqz v0, :cond_5

    :cond_4
    :goto_2
    move-object p0, v0

    goto :goto_0

    :cond_5
    iget-wide v0, p0, Loa9;->d:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p3, v0, p0}, Ls74;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loa9;

    invoke-virtual {p0, v0}, Lje1;->o(Lje1;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Loa9;->k()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lje1;->n()V

    goto :goto_2
.end method
