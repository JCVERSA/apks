.class public Lcom/caverock/androidsvg/CSSParser$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/caverock/androidsvg/CSSParser$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/CSSParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "k"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/caverock/androidsvg/CSSParser$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/caverock/androidsvg/CSSParser$k;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/caverock/androidsvg/CSSParser$m;Lcom/caverock/androidsvg/SVG$j0;)Z
    .locals 0

    const/4 p0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/caverock/androidsvg/CSSParser$m;->a:Lcom/caverock/androidsvg/SVG$j0;

    if-ne p2, p1, :cond_0

    const/4 p0, 0x1

    :cond_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "target"

    return-object p0
.end method
