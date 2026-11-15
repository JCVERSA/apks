.class public Lwm8;
.super Lj1;
.source "SourceFile"


# instance fields
.field public b:Lt1;


# direct methods
.method public constructor <init>(Ll1;Lx0;)V
    .locals 1

    .line 1
    new-instance v0, Lnl;

    invoke-direct {v0, p1, p2}, Lnl;-><init>(Ll1;Lx0;)V

    invoke-direct {p0, v0}, Lwm8;-><init>(Lnl;)V

    return-void
.end method

.method public constructor <init>(Lnl;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lj1;-><init>()V

    new-instance v0, Lbq1;

    invoke-direct {v0, p1}, Lbq1;-><init>(Lx0;)V

    iput-object v0, p0, Lwm8;->b:Lt1;

    return-void
.end method

.method public constructor <init>(Lt1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lj1;-><init>()V

    iput-object p1, p0, Lwm8;->b:Lt1;

    return-void
.end method

.method public constructor <init>([Lnl;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lj1;-><init>()V

    new-instance v0, Lbq1;

    invoke-direct {v0, p1}, Lbq1;-><init>([Lx0;)V

    iput-object v0, p0, Lwm8;->b:Lt1;

    return-void
.end method

.method public static n(Ljava/lang/Object;)Lwm8;
    .locals 1

    instance-of v0, p0, Lwm8;

    if-eqz v0, :cond_0

    check-cast p0, Lwm8;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lwm8;

    invoke-static {p0}, Lt1;->y(Ljava/lang/Object;)Lt1;

    move-result-object p0

    invoke-direct {v0, p0}, Lwm8;-><init>(Lt1;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public j()Lp1;
    .locals 0

    iget-object p0, p0, Lwm8;->b:Lt1;

    return-object p0
.end method

.method public m()Lnl;
    .locals 1

    iget-object v0, p0, Lwm8;->b:Lt1;

    invoke-virtual {v0}, Lt1;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lwm8;->b:Lt1;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lt1;->z(I)Lx0;

    move-result-object p0

    invoke-static {p0}, Lnl;->m(Ljava/lang/Object;)Lnl;

    move-result-object p0

    return-object p0
.end method

.method public o()[Lnl;
    .locals 4

    iget-object v0, p0, Lwm8;->b:Lt1;

    invoke-virtual {v0}, Lt1;->size()I

    move-result v0

    new-array v1, v0, [Lnl;

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_0

    iget-object v3, p0, Lwm8;->b:Lt1;

    invoke-virtual {v3, v2}, Lt1;->z(I)Lx0;

    move-result-object v3

    invoke-static {v3}, Lnl;->m(Ljava/lang/Object;)Lnl;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public p()Z
    .locals 1

    iget-object p0, p0, Lwm8;->b:Lt1;

    invoke-virtual {p0}, Lt1;->size()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lwm8;->b:Lt1;

    invoke-virtual {p0}, Lt1;->size()I

    move-result p0

    return p0
.end method
