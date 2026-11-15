.class public abstract Lcom/caverock/androidsvg/SVG$j;
.super Lcom/caverock/androidsvg/SVG$j0;
.source "SourceFile"

# interfaces
.implements Lcom/caverock/androidsvg/SVG$h0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "j"
.end annotation


# instance fields
.field public h:Ljava/util/List;

.field public i:Ljava/lang/Boolean;

.field public j:Landroid/graphics/Matrix;

.field public k:Lcom/caverock/androidsvg/SVG$GradientSpread;

.field public l:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVG$j0;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$j;->h:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getChildren()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/caverock/androidsvg/SVG$j;->h:Ljava/util/List;

    return-object p0
.end method

.method public i(Lcom/caverock/androidsvg/SVG$l0;)V
    .locals 2

    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$c0;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/caverock/androidsvg/SVG$j;->h:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p0, Lcom/caverock/androidsvg/SVGParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Gradient elements cannot contain "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " elements."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
