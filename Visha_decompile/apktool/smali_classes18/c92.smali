.class public abstract Lc92;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lc92;)Ljava/lang/Integer;
    .locals 1

    const-string v0, "visibility"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lc92;->b()Ltfc;

    move-result-object p0

    invoke-virtual {p1}, Lc92;->b()Ltfc;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltfc;->a(Ltfc;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public abstract b()Ltfc;
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public final d()Z
    .locals 0

    invoke-virtual {p0}, Lc92;->b()Ltfc;

    move-result-object p0

    invoke-virtual {p0}, Ltfc;->c()Z

    move-result p0

    return p0
.end method

.method public abstract e(Lto8;Leu1;Lxt1;Z)Z
.end method

.method public abstract f()Lc92;
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lc92;->b()Ltfc;

    move-result-object p0

    invoke-virtual {p0}, Ltfc;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
