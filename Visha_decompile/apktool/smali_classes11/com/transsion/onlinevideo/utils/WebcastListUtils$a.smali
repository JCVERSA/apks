.class public Lcom/transsion/onlinevideo/utils/WebcastListUtils$a;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/onlinevideo/utils/WebcastListUtils;->D()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/onlinevideo/utils/WebcastListUtils;


# direct methods
.method public constructor <init>(Lcom/transsion/onlinevideo/utils/WebcastListUtils;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$a;->a:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 7

    new-instance p0, Landroid/graphics/Path;

    invoke-direct {p0}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float v4, p1

    const/16 p1, 0x8

    new-array v5, p1, [F

    fill-array-data v5, :array_0

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->addRoundRect(FFFF[FLandroid/graphics/Path$Direction;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt p1, v0, :cond_0

    invoke-static {p2, p0}, Lq23;->a(Landroid/graphics/Outline;Landroid/graphics/Path;)V

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x42580000    # 54.0f
        0x42580000    # 54.0f
        0x42580000    # 54.0f
        0x42580000    # 54.0f
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method
