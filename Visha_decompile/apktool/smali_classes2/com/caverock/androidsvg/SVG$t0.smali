.class public Lcom/caverock/androidsvg/SVG$t0;
.super Lcom/caverock/androidsvg/SVG$y0;
.source "SourceFile"

# interfaces
.implements Lcom/caverock/androidsvg/SVG$v0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "t0"
.end annotation


# instance fields
.field public s:Lcom/caverock/androidsvg/SVG$z0;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVG$y0;-><init>()V

    return-void
.end method


# virtual methods
.method public c()Lcom/caverock/androidsvg/SVG$z0;
    .locals 0

    iget-object p0, p0, Lcom/caverock/androidsvg/SVG$t0;->s:Lcom/caverock/androidsvg/SVG$z0;

    return-object p0
.end method

.method public n()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "tspan"

    return-object p0
.end method

.method public o(Lcom/caverock/androidsvg/SVG$z0;)V
    .locals 0

    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$t0;->s:Lcom/caverock/androidsvg/SVG$z0;

    return-void
.end method
