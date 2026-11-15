.class public final Ly17;
.super Lc82;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lsm9;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lc82;-><init>(Lsm9;)V

    return-void
.end method


# virtual methods
.method public J0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic T0(Lsm9;)Lb82;
    .locals 0

    invoke-virtual {p0, p1}, Ly17;->U0(Lsm9;)Ly17;

    move-result-object p0

    return-object p0
.end method

.method public U0(Lsm9;)Ly17;
    .locals 0

    const-string p0, "delegate"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ly17;

    invoke-direct {p0, p1}, Ly17;-><init>(Lsm9;)V

    return-object p0
.end method
