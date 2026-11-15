.class public final Lo92;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpw0;


# instance fields
.field public final a:Lfv7;


# direct methods
.method public constructor <init>(Lfv7;)V
    .locals 1

    const-string v0, "packageFragmentProvider"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo92;->a:Lfv7;

    return-void
.end method


# virtual methods
.method public a(Lxw0;)Low0;
    .locals 2

    const-string v0, "classId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lo92;->a:Lfv7;

    invoke-virtual {p1}, Lxw0;->h()Lo54;

    move-result-object v0

    const-string v1, "classId.packageFqName"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lgv7;->c(Lfv7;Lo54;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldv7;

    instance-of v1, v0, Lr92;

    if-eqz v1, :cond_0

    check-cast v0, Lr92;

    invoke-virtual {v0}, Lr92;->C0()Lpw0;

    move-result-object v0

    invoke-interface {v0, p1}, Lpw0;->a(Lxw0;)Low0;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
