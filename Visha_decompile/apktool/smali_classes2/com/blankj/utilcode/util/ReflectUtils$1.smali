.class Lcom/blankj/utilcode/util/ReflectUtils$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/reflect/Constructor<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/blankj/utilcode/util/ReflectUtils;


# direct methods
.method public constructor <init>(Lcom/blankj/utilcode/util/ReflectUtils;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/reflect/Constructor;

    check-cast p2, Ljava/lang/reflect/Constructor;

    invoke-virtual {p0, p1, p2}, Lcom/blankj/utilcode/util/ReflectUtils$1;->compare(Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;)I

    move-result p0

    return p0
.end method

.method public compare(Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;",
            "Ljava/lang/reflect/Constructor<",
            "*>;)I"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p0

    .line 3
    invoke-virtual {p2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    .line 4
    array-length p2, p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_2

    .line 5
    aget-object v2, p0, v1

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 6
    aget-object p0, p0, v1

    const/4 p2, 0x0

    invoke-static {p2, p0}, Lcom/blankj/utilcode/util/ReflectUtils;->a(Lcom/blankj/utilcode/util/ReflectUtils;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    aget-object p1, p1, v1

    invoke-static {p2, p1}, Lcom/blankj/utilcode/util/ReflectUtils;->a(Lcom/blankj/utilcode/util/ReflectUtils;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method
