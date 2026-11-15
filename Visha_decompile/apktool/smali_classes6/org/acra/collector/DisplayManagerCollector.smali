.class public Lorg/acra/collector/DisplayManagerCollector;
.super Lorg/acra/collector/BaseReportFieldCollector;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0017\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001d\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0012\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0017\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0007H\u0012\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u001f\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u000bH\u0012\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u001f\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u000bH\u0012\u00a2\u0006\u0004\u0008\u0012\u0010\u0011J\u0017\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0014\u001a\u00020\u0013H\u0012\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u001f\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u000bH\u0012\u00a2\u0006\u0004\u0008\u0018\u0010\u0011J\u001f\u0010\u0019\u001a\u00020\u000f2\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u000bH\u0012\u00a2\u0006\u0004\u0008\u0019\u0010\u0011J\u001f\u0010\u001a\u001a\u00020\u000f2\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u000bH\u0012\u00a2\u0006\u0004\u0008\u001a\u0010\u0011J\u001f\u0010\u001b\u001a\u00020\u000f2\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u000bH\u0012\u00a2\u0006\u0004\u0008\u001b\u0010\u0011J\u001f\u0010\u001c\u001a\u00020\u000f2\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u000bH\u0012\u00a2\u0006\u0004\u0008\u001c\u0010\u0011J\u001f\u0010\u001d\u001a\u00020\u000f2\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u000bH\u0012\u00a2\u0006\u0004\u0008\u001d\u0010\u0011J\u001f\u0010\u001e\u001a\u00020\u000f2\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u000bH\u0012\u00a2\u0006\u0004\u0008\u001e\u0010\u0011J\u001f\u0010\u001f\u001a\u00020\u000f2\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u000bH\u0012\u00a2\u0006\u0004\u0008\u001f\u0010\u0011J\u001f\u0010\u001e\u001a\u00020\u000f2\u0006\u0010!\u001a\u00020 2\u0006\u0010\u000e\u001a\u00020\u000bH\u0012\u00a2\u0006\u0004\u0008\u001e\u0010\"J%\u0010&\u001a\u00020\u00152\u000c\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\u00150#2\u0006\u0010%\u001a\u00020\u0013H\u0012\u00a2\u0006\u0004\u0008&\u0010\'J7\u00100\u001a\u00020\u000f2\u0006\u0010)\u001a\u00020(2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010+\u001a\u00020*2\u0006\u0010-\u001a\u00020,2\u0006\u0010/\u001a\u00020.H\u0016\u00a2\u0006\u0004\u00080\u00101\u00a8\u00062"
    }
    d2 = {
        "Lorg/acra/collector/DisplayManagerCollector;",
        "Lorg/acra/collector/BaseReportFieldCollector;",
        "<init>",
        "()V",
        "Landroid/content/Context;",
        "context",
        "",
        "Landroid/view/Display;",
        "getDisplays",
        "(Landroid/content/Context;)[Landroid/view/Display;",
        "display",
        "Lorg/json/JSONObject;",
        "collectDisplayData",
        "(Landroid/view/Display;)Lorg/json/JSONObject;",
        "container",
        "Lzfb;",
        "collectIsValid",
        "(Landroid/view/Display;Lorg/json/JSONObject;)V",
        "collectRotation",
        "",
        "rotation",
        "",
        "rotationToString",
        "(I)Ljava/lang/String;",
        "collectRectSize",
        "collectSize",
        "collectRealSize",
        "collectCurrentSizeRange",
        "collectFlags",
        "collectName",
        "collectMetrics",
        "collectRealMetrics",
        "Landroid/util/DisplayMetrics;",
        "metrics",
        "(Landroid/util/DisplayMetrics;Lorg/json/JSONObject;)V",
        "Landroid/util/SparseArray;",
        "flagNames",
        "bitfield",
        "activeFlags",
        "(Landroid/util/SparseArray;I)Ljava/lang/String;",
        "Lorg/acra/ReportField;",
        "reportField",
        "Lorg/acra/config/CoreConfiguration;",
        "config",
        "Lts8;",
        "reportBuilder",
        "Lorg/acra/data/CrashReportData;",
        "target",
        "collect",
        "(Lorg/acra/ReportField;Landroid/content/Context;Lorg/acra/config/CoreConfiguration;Lts8;Lorg/acra/data/CrashReportData;)V",
        "acra-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lorg/acra/ReportField;->DISPLAY:Lorg/acra/ReportField;

    filled-new-array {v0}, [Lorg/acra/ReportField;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/acra/collector/BaseReportFieldCollector;-><init>([Lorg/acra/ReportField;)V

    return-void
.end method

.method private activeFlags(Landroid/util/SparseArray;I)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    and-int/2addr v2, p2

    if-lez v2, :cond_1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_0

    const/16 v3, 0x2b

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "result.toString()"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private collectCurrentSizeRange(Landroid/view/Display;Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance p0, Landroid/graphics/Point;

    invoke-direct {p0}, Landroid/graphics/Point;-><init>()V

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p1, p0, v0}, Landroid/view/Display;->getCurrentSizeRange(Landroid/graphics/Point;Landroid/graphics/Point;)V

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONArray;

    iget v2, p0, Landroid/graphics/Point;->x:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p0, p0, Landroid/graphics/Point;->y:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v2, p0}, [Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Ly71;->n([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    const-string p0, "smallest"

    invoke-virtual {p1, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance p0, Lorg/json/JSONArray;

    iget v1, v0, Landroid/graphics/Point;->x:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v1, v0}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ly71;->n([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {p0, v0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    const-string v0, "largest"

    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "currentSizeRange"

    invoke-virtual {p2, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method private collectDisplayData(Landroid/view/Display;)Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/acra/collector/DisplayManagerCollector;->collectCurrentSizeRange(Landroid/view/Display;Lorg/json/JSONObject;)V

    invoke-direct {p0, p1, v0}, Lorg/acra/collector/DisplayManagerCollector;->collectFlags(Landroid/view/Display;Lorg/json/JSONObject;)V

    invoke-direct {p0, p1, v0}, Lorg/acra/collector/DisplayManagerCollector;->collectMetrics(Landroid/view/Display;Lorg/json/JSONObject;)V

    invoke-direct {p0, p1, v0}, Lorg/acra/collector/DisplayManagerCollector;->collectRealMetrics(Landroid/view/Display;Lorg/json/JSONObject;)V

    invoke-direct {p0, p1, v0}, Lorg/acra/collector/DisplayManagerCollector;->collectName(Landroid/view/Display;Lorg/json/JSONObject;)V

    invoke-direct {p0, p1, v0}, Lorg/acra/collector/DisplayManagerCollector;->collectRealSize(Landroid/view/Display;Lorg/json/JSONObject;)V

    invoke-direct {p0, p1, v0}, Lorg/acra/collector/DisplayManagerCollector;->collectRectSize(Landroid/view/Display;Lorg/json/JSONObject;)V

    invoke-direct {p0, p1, v0}, Lorg/acra/collector/DisplayManagerCollector;->collectSize(Landroid/view/Display;Lorg/json/JSONObject;)V

    invoke-direct {p0, p1, v0}, Lorg/acra/collector/DisplayManagerCollector;->collectRotation(Landroid/view/Display;Lorg/json/JSONObject;)V

    invoke-direct {p0, p1, v0}, Lorg/acra/collector/DisplayManagerCollector;->collectIsValid(Landroid/view/Display;Lorg/json/JSONObject;)V

    const-string p0, "orientation"

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/Display;->getRefreshRate()F

    move-result v1

    float-to-double v1, v1

    const-string v3, "refreshRate"

    invoke-virtual {p0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    move-result-object p0

    const-string v1, "height"

    invoke-virtual {p1}, Landroid/view/Display;->getHeight()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p0

    const-string v1, "width"

    invoke-virtual {p1}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p0

    const-string v1, "pixelFormat"

    invoke-virtual {p1}, Landroid/view/Display;->getPixelFormat()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v0
.end method

.method private collectFlags(Landroid/view/Display;Lorg/json/JSONObject;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {p1}, Landroid/view/Display;->getFlags()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object p1

    const-string v2, "display.javaClass.fields"

    invoke-static {p1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, p1, v4

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "field.name"

    invoke-static {v6, v7}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "FLAG_"

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static {v6, v7, v3, v8, v9}, Lg1a;->R(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    :try_start_0
    invoke-virtual {v5, v9}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const-string p1, "flags"

    invoke-direct {p0, v0, v1}, Lorg/acra/collector/DisplayManagerCollector;->activeFlags(Landroid/util/SparseArray;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method private collectIsValid(Landroid/view/Display;Lorg/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string p0, "isValid"

    invoke-virtual {p1}, Landroid/view/Display;->isValid()Z

    move-result p1

    invoke-virtual {p2, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    return-void
.end method

.method private collectMetrics(Landroid/util/DisplayMetrics;Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 6
    iget p0, p1, Landroid/util/DisplayMetrics;->density:F

    float-to-double v0, p0

    const-string p0, "density"

    invoke-virtual {p2, p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    move-result-object p0

    .line 7
    const-string p2, "densityDpi"

    iget v0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {p0, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p0

    .line 8
    iget p2, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "scaledDensity"

    invoke-virtual {p0, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    .line 9
    const-string p2, "widthPixels"

    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p0

    .line 10
    const-string p2, "heightPixels"

    iget v0, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p0, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p0

    .line 11
    iget p2, p1, Landroid/util/DisplayMetrics;->xdpi:F

    float-to-double v0, p2

    const-string p2, "xdpi"

    invoke-virtual {p0, p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    move-result-object p0

    .line 12
    iget p1, p1, Landroid/util/DisplayMetrics;->ydpi:F

    float-to-double p1, p1

    const-string v0, "ydpi"

    invoke-virtual {p0, v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    return-void
.end method

.method private collectMetrics(Landroid/view/Display;Lorg/json/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 3
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 4
    invoke-direct {p0, v0, p1}, Lorg/acra/collector/DisplayManagerCollector;->collectMetrics(Landroid/util/DisplayMetrics;Lorg/json/JSONObject;)V

    .line 5
    const-string p0, "metrics"

    invoke-virtual {p2, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method private collectName(Landroid/view/Display;Lorg/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string p0, "name"

    invoke-virtual {p1}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method private collectRealMetrics(Landroid/view/Display;Lorg/json/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/acra/collector/DisplayManagerCollector;->collectMetrics(Landroid/util/DisplayMetrics;Lorg/json/JSONObject;)V

    const-string p0, "realMetrics"

    invoke-virtual {p2, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method private collectRealSize(Landroid/view/Display;Lorg/json/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance p0, Landroid/graphics/Point;

    invoke-direct {p0}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p1, p0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    new-instance p1, Lorg/json/JSONArray;

    iget v0, p0, Landroid/graphics/Point;->x:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget p0, p0, Landroid/graphics/Point;->y:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Ly71;->n([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-direct {p1, p0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    const-string p0, "realSize"

    invoke-virtual {p2, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method private collectRectSize(Landroid/view/Display;Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, p0}, Landroid/view/Display;->getRectSize(Landroid/graphics/Rect;)V

    new-instance p1, Lorg/json/JSONArray;

    iget v0, p0, Landroid/graphics/Rect;->top:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/graphics/Rect;->left:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Ly71;->n([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-direct {p1, p0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    const-string p0, "rectSize"

    invoke-virtual {p2, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method private collectRotation(Landroid/view/Display;Lorg/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    invoke-direct {p0, p1}, Lorg/acra/collector/DisplayManagerCollector;->rotationToString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "rotation"

    invoke-virtual {p2, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method private collectSize(Landroid/view/Display;Lorg/json/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance p0, Landroid/graphics/Point;

    invoke-direct {p0}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p1, p0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    new-instance p1, Lorg/json/JSONArray;

    iget v0, p0, Landroid/graphics/Point;->x:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget p0, p0, Landroid/graphics/Point;->y:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Ly71;->n([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-direct {p1, p0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    const-string p0, "size"

    invoke-virtual {p2, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method private getDisplays(Landroid/content/Context;)[Landroid/view/Display;
    .locals 0

    const-string p0, "display"

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type android.hardware.display.DisplayManager"

    invoke-static {p0, p1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object p0

    const-string p1, "{\n            (context.g\u2026nager).displays\n        }"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private rotationToString(I)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_3

    const/4 p0, 0x1

    if-eq p1, p0, :cond_2

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    const/4 p0, 0x3

    if-eq p1, p0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "ROTATION_270"

    goto :goto_0

    :cond_1
    const-string p0, "ROTATION_180"

    goto :goto_0

    :cond_2
    const-string p0, "ROTATION_90"

    goto :goto_0

    :cond_3
    const-string p0, "ROTATION_0"

    :goto_0
    return-object p0
.end method


# virtual methods
.method public collect(Lorg/acra/ReportField;Landroid/content/Context;Lorg/acra/config/CoreConfiguration;Lts8;Lorg/acra/data/CrashReportData;)V
    .locals 6

    const-string v0, "reportField"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "context"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "config"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "reportBuilder"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "target"

    invoke-static {p5, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {p0, p2}, Lorg/acra/collector/DisplayManagerCollector;->getDisplays(Landroid/content/Context;)[Landroid/view/Display;

    move-result-object p2

    array-length p3, p2

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p3, :cond_0

    aget-object v0, p2, p4

    :try_start_0
    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0}, Lorg/acra/collector/DisplayManagerCollector;->collectDisplayData(Landroid/view/Display;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    sget-object v2, Lc;->d:Le;

    sget-object v3, Lc;->c:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to collect data for display "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0, v1}, Le;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    sget-object p0, Lorg/acra/ReportField;->DISPLAY:Lorg/acra/ReportField;

    invoke-virtual {p5, p0, p1}, Lorg/acra/data/CrashReportData;->i(Lorg/acra/ReportField;Lorg/json/JSONObject;)V

    return-void
.end method

.method public bridge synthetic enabled(Lorg/acra/config/CoreConfiguration;)Z
    .locals 0

    invoke-super {p0, p1}, Lac8;->enabled(Lorg/acra/config/CoreConfiguration;)Z

    move-result p0

    return p0
.end method
