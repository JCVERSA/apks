.class public abstract Lj43;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj43$a;
    }
.end annotation


# static fields
.field public static final a:Lj43$a;

.field public static final b:Ljava/util/HashMap;

.field public static final c:[I

.field public static final d:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lj43$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lj43$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lj43;->a:Lj43$a;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lj43;->b:Ljava/util/HashMap;

    sget v1, Lcom/transsion/widgetslib/R$style;->OSBrandBlueDy:I

    sget v2, Lcom/transsion/widgetslib/R$style;->OSBrandGreenDy:I

    sget v3, Lcom/transsion/widgetslib/R$style;->OSTrendyDy:I

    sget v4, Lcom/transsion/widgetslib/R$style;->OSElegantDy:I

    sget v5, Lcom/transsion/widgetslib/R$style;->OSPovaDy:I

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    sput-object v1, Lj43;->c:[I

    sget v1, Lcom/transsion/widgetslib/R$style;->OS_Dialog_Alert_Base_Blue_dy:I

    sget v2, Lcom/transsion/widgetslib/R$style;->OS_Dialog_Alert_Base_Green_dy:I

    sget v3, Lcom/transsion/widgetslib/R$style;->OS_Dialog_Alert_Base_Trendy_dy:I

    sget v4, Lcom/transsion/widgetslib/R$style;->OS_Dialog_Alert_Base_Elegant_dy:I

    sget v5, Lcom/transsion/widgetslib/R$style;->OS_Dialog_Alert_Base_Pova_dy:I

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    sput-object v1, Lj43;->d:[I

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "preset_brand"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "preset_brand_green"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "preset_trendy"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "preset_elegant"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "preset_pova"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic a()[I
    .locals 1

    sget-object v0, Lj43;->c:[I

    return-object v0
.end method

.method public static final synthetic b()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lj43;->b:Ljava/util/HashMap;

    return-object v0
.end method

.method public static final synthetic c()[I
    .locals 1

    sget-object v0, Lj43;->d:[I

    return-object v0
.end method

.method public static final d(Landroid/content/Context;ZIIIZ)V
    .locals 7

    sget-object v0, Lj43;->a:Lj43$a;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lj43$a;->a(Landroid/content/Context;ZIIIZ)V

    return-void
.end method

.method public static final e(Landroid/content/Context;)I
    .locals 1

    sget-object v0, Lj43;->a:Lj43$a;

    invoke-virtual {v0, p0}, Lj43$a;->h(Landroid/content/Context;)I

    move-result p0

    return p0
.end method
