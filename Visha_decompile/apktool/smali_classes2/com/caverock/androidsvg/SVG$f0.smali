.class public abstract Lcom/caverock/androidsvg/SVG$f0;
.super Lcom/caverock/androidsvg/SVG$i0;
.source "SourceFile"

# interfaces
.implements Lcom/caverock/androidsvg/SVG$h0;
.implements Lcom/caverock/androidsvg/SVG$e0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "f0"
.end annotation


# instance fields
.field public i:Ljava/util/List;

.field public j:Ljava/util/Set;

.field public k:Ljava/lang/String;

.field public l:Ljava/util/Set;

.field public m:Ljava/util/Set;

.field public n:Ljava/util/Set;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVG$i0;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$f0;->i:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$f0;->j:Ljava/util/Set;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$f0;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$f0;->l:Ljava/util/Set;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$f0;->m:Ljava/util/Set;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$f0;->n:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/caverock/androidsvg/SVG$f0;->k:Ljava/lang/String;

    return-object p0
.end method

.method public b(Ljava/util/Set;)V
    .locals 0

    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$f0;->n:Ljava/util/Set;

    return-void
.end method

.method public d(Ljava/util/Set;)V
    .locals 0

    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$f0;->l:Ljava/util/Set;

    return-void
.end method

.method public e()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/caverock/androidsvg/SVG$f0;->m:Ljava/util/Set;

    return-object p0
.end method

.method public f()Ljava/util/Set;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public g(Ljava/util/Set;)V
    .locals 0

    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$f0;->j:Ljava/util/Set;

    return-void
.end method

.method public getChildren()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/caverock/androidsvg/SVG$f0;->i:Ljava/util/List;

    return-object p0
.end method

.method public h()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/caverock/androidsvg/SVG$f0;->j:Ljava/util/Set;

    return-object p0
.end method

.method public i(Lcom/caverock/androidsvg/SVG$l0;)V
    .locals 0

    iget-object p0, p0, Lcom/caverock/androidsvg/SVG$f0;->i:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public j(Ljava/util/Set;)V
    .locals 0

    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$f0;->m:Ljava/util/Set;

    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$f0;->k:Ljava/lang/String;

    return-void
.end method

.method public m()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/caverock/androidsvg/SVG$f0;->n:Ljava/util/Set;

    return-object p0
.end method
