.class public Lfb;
.super Lj1;
.source "SourceFile"


# instance fields
.field public final b:Loa;


# direct methods
.method public constructor <init>(Loa;)V
    .locals 0

    invoke-direct {p0}, Lj1;-><init>()V

    iput-object p1, p0, Lfb;->b:Loa;

    return-void
.end method

.method public static m(Lgk3;)Lfb;
    .locals 1

    sget-object v0, Lbk3;->L:Ll1;

    invoke-static {p0, v0}, Lgk3;->r(Lgk3;Ll1;)Lx0;

    move-result-object p0

    invoke-static {p0}, Lfb;->n(Ljava/lang/Object;)Lfb;

    move-result-object p0

    return-object p0
.end method

.method public static n(Ljava/lang/Object;)Lfb;
    .locals 1

    instance-of v0, p0, Lfb;

    if-eqz v0, :cond_0

    check-cast p0, Lfb;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lfb;

    invoke-static {p0}, Loa;->o(Ljava/lang/Object;)Loa;

    move-result-object p0

    invoke-direct {v0, p0}, Lfb;-><init>(Loa;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public j()Lp1;
    .locals 0

    iget-object p0, p0, Lfb;->b:Loa;

    invoke-virtual {p0}, Loa;->j()Lp1;

    move-result-object p0

    return-object p0
.end method
