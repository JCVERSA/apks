.class public abstract Lj72;
.super Lc92;
.source "SourceFile"


# instance fields
.field public final a:Ltfc;


# direct methods
.method public constructor <init>(Ltfc;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lc92;-><init>()V

    iput-object p1, p0, Lj72;->a:Ltfc;

    return-void
.end method


# virtual methods
.method public b()Ltfc;
    .locals 0

    iget-object p0, p0, Lj72;->a:Ltfc;

    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lj72;->b()Ltfc;

    move-result-object p0

    invoke-virtual {p0}, Ltfc;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public f()Lc92;
    .locals 1

    invoke-virtual {p0}, Lj72;->b()Ltfc;

    move-result-object p0

    invoke-virtual {p0}, Ltfc;->d()Ltfc;

    move-result-object p0

    invoke-static {p0}, Lb92;->j(Ltfc;)Lc92;

    move-result-object p0

    const-string v0, "toDescriptorVisibility(delegate.normalize())"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
