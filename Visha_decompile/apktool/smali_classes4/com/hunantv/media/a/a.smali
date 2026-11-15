.class public final Lcom/hunantv/media/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/hunantv/media/a/a;


# instance fields
.field public b:I

.field public c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:Landroid/graphics/Typeface;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v7, Lcom/hunantv/media/a/a;

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v1, -0x1

    const/high16 v2, 0x7f000000

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/hunantv/media/a/a;-><init>(IIIIILandroid/graphics/Typeface;)V

    sput-object v7, Lcom/hunantv/media/a/a;->a:Lcom/hunantv/media/a/a;

    return-void
.end method

.method public constructor <init>(IIIIILandroid/graphics/Typeface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/hunantv/media/a/a;->b:I

    iput p2, p0, Lcom/hunantv/media/a/a;->c:I

    iput p3, p0, Lcom/hunantv/media/a/a;->d:I

    iput p4, p0, Lcom/hunantv/media/a/a;->e:I

    iput p5, p0, Lcom/hunantv/media/a/a;->f:I

    iput-object p6, p0, Lcom/hunantv/media/a/a;->g:Landroid/graphics/Typeface;

    return-void
.end method

.method public static a(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Lcom/hunantv/media/a/a;
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    invoke-static {p0}, Lcom/hunantv/media/a/a;->c(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Lcom/hunantv/media/a/a;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Lcom/hunantv/media/a/a;
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    new-instance v7, Lcom/hunantv/media/a/a;

    iget v1, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    iget v2, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    iget v4, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    iget v5, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v6

    const/4 v3, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/hunantv/media/a/a;-><init>(IIIIILandroid/graphics/Typeface;)V

    return-object v7
.end method

.method private static c(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Lcom/hunantv/media/a/a;
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    new-instance v7, Lcom/hunantv/media/a/a;

    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasForegroundColor()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    :goto_0
    move v1, v0

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/hunantv/media/a/a;->a:Lcom/hunantv/media/a/a;

    iget v0, v0, Lcom/hunantv/media/a/a;->b:I

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasBackgroundColor()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    :goto_2
    move v2, v0

    goto :goto_3

    :cond_1
    sget-object v0, Lcom/hunantv/media/a/a;->a:Lcom/hunantv/media/a/a;

    iget v0, v0, Lcom/hunantv/media/a/a;->c:I

    goto :goto_2

    :goto_3
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasWindowColor()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->windowColor:I

    :goto_4
    move v3, v0

    goto :goto_5

    :cond_2
    sget-object v0, Lcom/hunantv/media/a/a;->a:Lcom/hunantv/media/a/a;

    iget v0, v0, Lcom/hunantv/media/a/a;->d:I

    goto :goto_4

    :goto_5
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasEdgeType()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    :goto_6
    move v4, v0

    goto :goto_7

    :cond_3
    sget-object v0, Lcom/hunantv/media/a/a;->a:Lcom/hunantv/media/a/a;

    iget v0, v0, Lcom/hunantv/media/a/a;->e:I

    goto :goto_6

    :goto_7
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasEdgeColor()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    :goto_8
    move v5, v0

    goto :goto_9

    :cond_4
    sget-object v0, Lcom/hunantv/media/a/a;->a:Lcom/hunantv/media/a/a;

    iget v0, v0, Lcom/hunantv/media/a/a;->f:I

    goto :goto_8

    :goto_9
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/hunantv/media/a/a;-><init>(IIIIILandroid/graphics/Typeface;)V

    return-object v7
.end method
