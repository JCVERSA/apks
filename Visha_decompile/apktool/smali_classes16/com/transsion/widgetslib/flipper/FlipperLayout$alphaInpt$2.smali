.class final Lcom/transsion/widgetslib/flipper/FlipperLayout$alphaInpt$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lc74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/flipper/FlipperLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lc74;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Landroid/view/animation/PathInterpolator;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/transsion/widgetslib/flipper/FlipperLayout$alphaInpt$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/widgetslib/flipper/FlipperLayout$alphaInpt$2;

    invoke-direct {v0}, Lcom/transsion/widgetslib/flipper/FlipperLayout$alphaInpt$2;-><init>()V

    sput-object v0, Lcom/transsion/widgetslib/flipper/FlipperLayout$alphaInpt$2;->INSTANCE:Lcom/transsion/widgetslib/flipper/FlipperLayout$alphaInpt$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/view/animation/PathInterpolator;
    .locals 4

    .line 2
    new-instance p0, Landroid/view/animation/PathInterpolator;

    const v0, 0x3f28f5c3    # 0.66f

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3ea8f5c3    # 0.33f

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, v0, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout$alphaInpt$2;->invoke()Landroid/view/animation/PathInterpolator;

    move-result-object p0

    return-object p0
.end method
