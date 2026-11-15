.class public Lcom/caverock/androidsvg/SVG$b0;
.super Lcom/caverock/androidsvg/SVG$j0;
.source "SourceFile"

# interfaces
.implements Lcom/caverock/androidsvg/SVG$h0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b0"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVG$j0;-><init>()V

    return-void
.end method


# virtual methods
.method public getChildren()Ljava/util/List;
    .locals 0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public i(Lcom/caverock/androidsvg/SVG$l0;)V
    .locals 0

    return-void
.end method

.method public n()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "solidColor"

    return-object p0
.end method
