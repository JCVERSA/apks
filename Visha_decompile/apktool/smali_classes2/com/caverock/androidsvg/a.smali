.class public Lcom/caverock/androidsvg/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/caverock/androidsvg/CSSParser$n;

.field public b:Lcom/caverock/androidsvg/PreserveAspectRatio;

.field public c:Ljava/lang/String;

.field public d:Lcom/caverock/androidsvg/SVG$b;

.field public e:Ljava/lang/String;

.field public f:Lcom/caverock/androidsvg/SVG$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/caverock/androidsvg/a;->a:Lcom/caverock/androidsvg/CSSParser$n;

    .line 3
    iput-object v0, p0, Lcom/caverock/androidsvg/a;->b:Lcom/caverock/androidsvg/PreserveAspectRatio;

    .line 4
    iput-object v0, p0, Lcom/caverock/androidsvg/a;->c:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/caverock/androidsvg/a;->d:Lcom/caverock/androidsvg/SVG$b;

    .line 6
    iput-object v0, p0, Lcom/caverock/androidsvg/a;->e:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/caverock/androidsvg/a;->f:Lcom/caverock/androidsvg/SVG$b;

    return-void
.end method

.method public constructor <init>(Lcom/caverock/androidsvg/a;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/caverock/androidsvg/a;->a:Lcom/caverock/androidsvg/CSSParser$n;

    .line 10
    iput-object v0, p0, Lcom/caverock/androidsvg/a;->b:Lcom/caverock/androidsvg/PreserveAspectRatio;

    .line 11
    iput-object v0, p0, Lcom/caverock/androidsvg/a;->c:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/caverock/androidsvg/a;->d:Lcom/caverock/androidsvg/SVG$b;

    .line 13
    iput-object v0, p0, Lcom/caverock/androidsvg/a;->e:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/caverock/androidsvg/a;->f:Lcom/caverock/androidsvg/SVG$b;

    if-nez p1, :cond_0

    return-void

    .line 15
    :cond_0
    iget-object v0, p1, Lcom/caverock/androidsvg/a;->a:Lcom/caverock/androidsvg/CSSParser$n;

    iput-object v0, p0, Lcom/caverock/androidsvg/a;->a:Lcom/caverock/androidsvg/CSSParser$n;

    .line 16
    iget-object v0, p1, Lcom/caverock/androidsvg/a;->b:Lcom/caverock/androidsvg/PreserveAspectRatio;

    iput-object v0, p0, Lcom/caverock/androidsvg/a;->b:Lcom/caverock/androidsvg/PreserveAspectRatio;

    .line 17
    iget-object v0, p1, Lcom/caverock/androidsvg/a;->d:Lcom/caverock/androidsvg/SVG$b;

    iput-object v0, p0, Lcom/caverock/androidsvg/a;->d:Lcom/caverock/androidsvg/SVG$b;

    .line 18
    iget-object v0, p1, Lcom/caverock/androidsvg/a;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/caverock/androidsvg/a;->e:Ljava/lang/String;

    .line 19
    iget-object p1, p1, Lcom/caverock/androidsvg/a;->f:Lcom/caverock/androidsvg/SVG$b;

    iput-object p1, p0, Lcom/caverock/androidsvg/a;->f:Lcom/caverock/androidsvg/SVG$b;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/caverock/androidsvg/a;
    .locals 2

    new-instance v0, Lcom/caverock/androidsvg/CSSParser;

    sget-object v1, Lcom/caverock/androidsvg/CSSParser$Source;->RenderOptions:Lcom/caverock/androidsvg/CSSParser$Source;

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/CSSParser;-><init>(Lcom/caverock/androidsvg/CSSParser$Source;)V

    invoke-virtual {v0, p1}, Lcom/caverock/androidsvg/CSSParser;->d(Ljava/lang/String;)Lcom/caverock/androidsvg/CSSParser$n;

    move-result-object p1

    iput-object p1, p0, Lcom/caverock/androidsvg/a;->a:Lcom/caverock/androidsvg/CSSParser$n;

    return-object p0
.end method

.method public b()Z
    .locals 0

    iget-object p0, p0, Lcom/caverock/androidsvg/a;->a:Lcom/caverock/androidsvg/CSSParser$n;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$n;->f()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public c()Z
    .locals 0

    iget-object p0, p0, Lcom/caverock/androidsvg/a;->b:Lcom/caverock/androidsvg/PreserveAspectRatio;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public d()Z
    .locals 0

    iget-object p0, p0, Lcom/caverock/androidsvg/a;->c:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public e()Z
    .locals 0

    iget-object p0, p0, Lcom/caverock/androidsvg/a;->e:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public f()Z
    .locals 0

    iget-object p0, p0, Lcom/caverock/androidsvg/a;->d:Lcom/caverock/androidsvg/SVG$b;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public g()Z
    .locals 0

    iget-object p0, p0, Lcom/caverock/androidsvg/a;->f:Lcom/caverock/androidsvg/SVG$b;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public h(FFFF)Lcom/caverock/androidsvg/a;
    .locals 1

    new-instance v0, Lcom/caverock/androidsvg/SVG$b;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/caverock/androidsvg/SVG$b;-><init>(FFFF)V

    iput-object v0, p0, Lcom/caverock/androidsvg/a;->f:Lcom/caverock/androidsvg/SVG$b;

    return-object p0
.end method
