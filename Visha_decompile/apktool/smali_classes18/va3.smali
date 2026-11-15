.class public final Lva3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmd;


# instance fields
.field public final b:Lo54;


# direct methods
.method public constructor <init>(Lo54;)V
    .locals 1

    const-string v0, "fqNameToMatch"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lva3;->b:Lo54;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lo54;)Lgd;
    .locals 0

    invoke-virtual {p0, p1}, Lva3;->b(Lo54;)Lua3;

    move-result-object p0

    return-object p0
.end method

.method public b(Lo54;)Lua3;
    .locals 1

    const-string v0, "fqName"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lva3;->b:Lo54;

    invoke-static {p1, p0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lua3;->a:Lua3;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public h(Lo54;)Z
    .locals 0

    invoke-static {p0, p1}, Lmd$b;->b(Lmd;Lo54;)Z

    move-result p0

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method
