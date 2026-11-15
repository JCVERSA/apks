.class public final Lrnb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsnb;


# instance fields
.field public final a:Lsnb;

.field public final b:Lvf1;


# direct methods
.method public constructor <init>(Lsnb;Lvf1;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "constants"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrnb;->a:Lsnb;

    iput-object p2, p0, Lrnb;->b:Lvf1;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lqnb;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lrnb;->a:Lsnb;

    invoke-interface {p0, p1}, Lsnb;->a(Ljava/lang/String;)Lqnb;

    move-result-object p0

    return-object p0
.end method

.method public c(Ljava/util/List;ZLe74;)Lqc2;
    .locals 1

    const-string v0, "names"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "observer"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lrnb;->a:Lsnb;

    invoke-interface {p0, p1, p2, p3}, Lsnb;->c(Ljava/util/List;ZLe74;)Lqc2;

    move-result-object p0

    return-object p0
.end method

.method public d()V
    .locals 0

    iget-object p0, p0, Lrnb;->a:Lsnb;

    invoke-interface {p0}, Lsnb;->d()V

    return-void
.end method

.method public e()V
    .locals 0

    iget-object p0, p0, Lrnb;->a:Lsnb;

    invoke-interface {p0}, Lsnb;->e()V

    return-void
.end method

.method public g(Ljava/util/List;Le74;)Lqc2;
    .locals 1

    const-string v0, "names"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "observer"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lrnb;->a:Lsnb;

    invoke-interface {p0, p1, p2}, Lsnb;->g(Ljava/util/List;Le74;)Lqc2;

    move-result-object p0

    return-object p0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lrnb;->b:Lvf1;

    invoke-virtual {v0, p1}, Lvf1;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lwnb;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lrnb;->a:Lsnb;

    invoke-interface {p0, p1}, Lcob;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public h(Ljava/lang/String;Lwc3;ZLe74;)Lqc2;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "observer"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lrnb;->a:Lsnb;

    invoke-interface {p0, p1, p2, p3, p4}, Lsnb;->h(Ljava/lang/String;Lwc3;ZLe74;)Lqc2;

    move-result-object p0

    return-object p0
.end method

.method public i(Lqnb;)V
    .locals 1

    const-string v0, "variable"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lrnb;->a:Lsnb;

    invoke-interface {p0, p1}, Lsnb;->i(Lqnb;)V

    return-void
.end method

.method public j(Loj3;Le74;)V
    .locals 1

    const-string v0, "owner"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lrnb;->a:Lsnb;

    invoke-interface {p0, p1, p2}, Lsnb;->j(Loj3;Le74;)V

    return-void
.end method
