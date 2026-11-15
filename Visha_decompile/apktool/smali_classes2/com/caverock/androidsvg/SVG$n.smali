.class public Lcom/caverock/androidsvg/SVG$n;
.super Lcom/caverock/androidsvg/SVG$n0;
.source "SourceFile"

# interfaces
.implements Lcom/caverock/androidsvg/SVG$m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "n"
.end annotation


# instance fields
.field public p:Ljava/lang/String;

.field public q:Lcom/caverock/androidsvg/SVG$o;

.field public r:Lcom/caverock/androidsvg/SVG$o;

.field public s:Lcom/caverock/androidsvg/SVG$o;

.field public t:Lcom/caverock/androidsvg/SVG$o;

.field public u:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVG$n0;-><init>()V

    return-void
.end method


# virtual methods
.method public l(Landroid/graphics/Matrix;)V
    .locals 0

    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$n;->u:Landroid/graphics/Matrix;

    return-void
.end method

.method public n()Ljava/lang/String;
    .locals 0

    const-string p0, "image"

    return-object p0
.end method
