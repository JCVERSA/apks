.class public Lcom/caverock/androidsvg/SVG$f;
.super Lcom/caverock/androidsvg/SVG$m0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# static fields
.field public static final c:Lcom/caverock/androidsvg/SVG$f;

.field public static final d:Lcom/caverock/androidsvg/SVG$f;


# instance fields
.field public b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/caverock/androidsvg/SVG$f;

    const/high16 v1, -0x1000000

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVG$f;-><init>(I)V

    sput-object v0, Lcom/caverock/androidsvg/SVG$f;->c:Lcom/caverock/androidsvg/SVG$f;

    new-instance v0, Lcom/caverock/androidsvg/SVG$f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVG$f;-><init>(I)V

    sput-object v0, Lcom/caverock/androidsvg/SVG$f;->d:Lcom/caverock/androidsvg/SVG$f;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVG$m0;-><init>()V

    iput p1, p0, Lcom/caverock/androidsvg/SVG$f;->b:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget p0, p0, Lcom/caverock/androidsvg/SVG$f;->b:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "#%08x"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
