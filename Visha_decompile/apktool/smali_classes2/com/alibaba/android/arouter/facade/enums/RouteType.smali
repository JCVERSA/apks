.class public final enum Lcom/alibaba/android/arouter/facade/enums/RouteType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/android/arouter/facade/enums/RouteType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/arouter/facade/enums/RouteType;

.field public static final enum ACTIVITY:Lcom/alibaba/android/arouter/facade/enums/RouteType;

.field public static final enum BOARDCAST:Lcom/alibaba/android/arouter/facade/enums/RouteType;

.field public static final enum CONTENT_PROVIDER:Lcom/alibaba/android/arouter/facade/enums/RouteType;

.field public static final enum FRAGMENT:Lcom/alibaba/android/arouter/facade/enums/RouteType;

.field public static final enum METHOD:Lcom/alibaba/android/arouter/facade/enums/RouteType;

.field public static final enum PROVIDER:Lcom/alibaba/android/arouter/facade/enums/RouteType;

.field public static final enum SERVICE:Lcom/alibaba/android/arouter/facade/enums/RouteType;

.field public static final enum UNKNOWN:Lcom/alibaba/android/arouter/facade/enums/RouteType;


# instance fields
.field className:Ljava/lang/String;

.field id:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/alibaba/android/arouter/facade/enums/RouteType;

    const/4 v1, 0x0

    const-string v2, "android.app.Activity"

    const-string v3, "ACTIVITY"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/alibaba/android/arouter/facade/enums/RouteType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/arouter/facade/enums/RouteType;->ACTIVITY:Lcom/alibaba/android/arouter/facade/enums/RouteType;

    new-instance v1, Lcom/alibaba/android/arouter/facade/enums/RouteType;

    const/4 v2, 0x1

    const-string v3, "android.app.Service"

    const-string v4, "SERVICE"

    invoke-direct {v1, v4, v2, v2, v3}, Lcom/alibaba/android/arouter/facade/enums/RouteType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/alibaba/android/arouter/facade/enums/RouteType;->SERVICE:Lcom/alibaba/android/arouter/facade/enums/RouteType;

    new-instance v2, Lcom/alibaba/android/arouter/facade/enums/RouteType;

    const/4 v3, 0x2

    const-string v4, "com.alibaba.android.arouter.facade.template.IProvider"

    const-string v5, "PROVIDER"

    invoke-direct {v2, v5, v3, v3, v4}, Lcom/alibaba/android/arouter/facade/enums/RouteType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lcom/alibaba/android/arouter/facade/enums/RouteType;->PROVIDER:Lcom/alibaba/android/arouter/facade/enums/RouteType;

    new-instance v3, Lcom/alibaba/android/arouter/facade/enums/RouteType;

    const-string v4, "android.app.ContentProvider"

    const-string v5, "CONTENT_PROVIDER"

    const/4 v6, 0x3

    const/4 v7, -0x1

    invoke-direct {v3, v5, v6, v7, v4}, Lcom/alibaba/android/arouter/facade/enums/RouteType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lcom/alibaba/android/arouter/facade/enums/RouteType;->CONTENT_PROVIDER:Lcom/alibaba/android/arouter/facade/enums/RouteType;

    new-instance v4, Lcom/alibaba/android/arouter/facade/enums/RouteType;

    const-string v5, "BOARDCAST"

    const/4 v6, 0x4

    const-string v8, ""

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/alibaba/android/arouter/facade/enums/RouteType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/alibaba/android/arouter/facade/enums/RouteType;->BOARDCAST:Lcom/alibaba/android/arouter/facade/enums/RouteType;

    new-instance v5, Lcom/alibaba/android/arouter/facade/enums/RouteType;

    const-string v6, "METHOD"

    const/4 v9, 0x5

    invoke-direct {v5, v6, v9, v7, v8}, Lcom/alibaba/android/arouter/facade/enums/RouteType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lcom/alibaba/android/arouter/facade/enums/RouteType;->METHOD:Lcom/alibaba/android/arouter/facade/enums/RouteType;

    new-instance v6, Lcom/alibaba/android/arouter/facade/enums/RouteType;

    const/4 v8, 0x6

    const-string v9, "android.app.Fragment"

    const-string v10, "FRAGMENT"

    invoke-direct {v6, v10, v8, v7, v9}, Lcom/alibaba/android/arouter/facade/enums/RouteType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Lcom/alibaba/android/arouter/facade/enums/RouteType;->FRAGMENT:Lcom/alibaba/android/arouter/facade/enums/RouteType;

    new-instance v8, Lcom/alibaba/android/arouter/facade/enums/RouteType;

    const/4 v9, 0x7

    const-string v10, "Unknown route type"

    const-string v11, "UNKNOWN"

    invoke-direct {v8, v11, v9, v7, v10}, Lcom/alibaba/android/arouter/facade/enums/RouteType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v8, Lcom/alibaba/android/arouter/facade/enums/RouteType;->UNKNOWN:Lcom/alibaba/android/arouter/facade/enums/RouteType;

    move-object v7, v8

    filled-new-array/range {v0 .. v7}, [Lcom/alibaba/android/arouter/facade/enums/RouteType;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/arouter/facade/enums/RouteType;->$VALUES:[Lcom/alibaba/android/arouter/facade/enums/RouteType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/alibaba/android/arouter/facade/enums/RouteType;->id:I

    iput-object p4, p0, Lcom/alibaba/android/arouter/facade/enums/RouteType;->className:Ljava/lang/String;

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/enums/RouteType;
    .locals 5

    invoke-static {}, Lcom/alibaba/android/arouter/facade/enums/RouteType;->values()[Lcom/alibaba/android/arouter/facade/enums/RouteType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/alibaba/android/arouter/facade/enums/RouteType;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/alibaba/android/arouter/facade/enums/RouteType;->UNKNOWN:Lcom/alibaba/android/arouter/facade/enums/RouteType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/enums/RouteType;
    .locals 1

    const-class v0, Lcom/alibaba/android/arouter/facade/enums/RouteType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alibaba/android/arouter/facade/enums/RouteType;

    return-object p0
.end method

.method public static values()[Lcom/alibaba/android/arouter/facade/enums/RouteType;
    .locals 1

    sget-object v0, Lcom/alibaba/android/arouter/facade/enums/RouteType;->$VALUES:[Lcom/alibaba/android/arouter/facade/enums/RouteType;

    invoke-virtual {v0}, [Lcom/alibaba/android/arouter/facade/enums/RouteType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/arouter/facade/enums/RouteType;

    return-object v0
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/android/arouter/facade/enums/RouteType;->className:Ljava/lang/String;

    return-object p0
.end method

.method public getId()I
    .locals 0

    iget p0, p0, Lcom/alibaba/android/arouter/facade/enums/RouteType;->id:I

    return p0
.end method

.method public setClassName(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/enums/RouteType;
    .locals 0

    iput-object p1, p0, Lcom/alibaba/android/arouter/facade/enums/RouteType;->className:Ljava/lang/String;

    return-object p0
.end method

.method public setId(I)Lcom/alibaba/android/arouter/facade/enums/RouteType;
    .locals 0

    iput p1, p0, Lcom/alibaba/android/arouter/facade/enums/RouteType;->id:I

    return-object p0
.end method
