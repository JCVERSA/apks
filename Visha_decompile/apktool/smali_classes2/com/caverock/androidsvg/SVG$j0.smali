.class public abstract Lcom/caverock/androidsvg/SVG$j0;
.super Lcom/caverock/androidsvg/SVG$l0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "j0"
.end annotation


# instance fields
.field public c:Ljava/lang/String;

.field public d:Ljava/lang/Boolean;

.field public e:Lcom/caverock/androidsvg/SVG$Style;

.field public f:Lcom/caverock/androidsvg/SVG$Style;

.field public g:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVG$l0;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$j0;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$j0;->d:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$j0;->e:Lcom/caverock/androidsvg/SVG$Style;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$j0;->f:Lcom/caverock/androidsvg/SVG$Style;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$j0;->g:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVG$l0;->n()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
