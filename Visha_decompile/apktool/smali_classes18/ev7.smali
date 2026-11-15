.class public abstract Lev7;
.super Lau1;
.source "SourceFile"

# interfaces
.implements Ldv7;


# instance fields
.field public final f:Lo54;

.field public final g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lqq6;Lo54;)V
    .locals 3

    const-string v0, "module"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fqName"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lmd;->u1:Lmd$a;

    invoke-virtual {v0}, Lmd$a;->b()Lmd;

    move-result-object v0

    invoke-virtual {p2}, Lo54;->h()Lby6;

    move-result-object v1

    sget-object v2, Lyt9;->a:Lyt9;

    invoke-direct {p0, p1, v0, v1, v2}, Lau1;-><init>(Lxt1;Lmd;Lby6;Lyt9;)V

    iput-object p2, p0, Lev7;->f:Lo54;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " of "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lev7;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public b()Lqq6;
    .locals 1

    .line 2
    invoke-super {p0}, Lau1;->b()Lxt1;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ModuleDescriptor"

    invoke-static {p0, v0}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lqq6;

    return-object p0
.end method

.method public bridge synthetic b()Lxt1;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lev7;->b()Lqq6;

    move-result-object p0

    return-object p0
.end method

.method public final d()Lo54;
    .locals 0

    iget-object p0, p0, Lev7;->f:Lo54;

    return-object p0
.end method

.method public getSource()Lyt9;
    .locals 1

    sget-object p0, Lyt9;->a:Lyt9;

    const-string v0, "NO_SOURCE"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public q0(Lbu1;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const-string v0, "visitor"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p0, p2}, Lbu1;->c(Ldv7;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lev7;->g:Ljava/lang/String;

    return-object p0
.end method
