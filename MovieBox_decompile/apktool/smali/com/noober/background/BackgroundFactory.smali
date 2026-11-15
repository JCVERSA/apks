.class public Lcom/noober/background/BackgroundFactory;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;


# static fields
.field private static final mConstructorArgs:[Ljava/lang/Object;

.field private static final methodMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sConstructorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sConstructorSignature:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private mViewCreateFactory:Landroid/view/LayoutInflater$Factory;

.field private mViewCreateFactory2:Landroid/view/LayoutInflater$Factory2;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [Ljava/lang/Class;

    .line 3
    .line 4
    const-class v2, Landroid/content/Context;

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    aput-object v2, v1, v3

    .line 8
    .line 9
    const-class v2, Landroid/util/AttributeSet;

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    aput-object v2, v1, v3

    .line 13
    .line 14
    sput-object v1, Lcom/noober/background/BackgroundFactory;->sConstructorSignature:[Ljava/lang/Class;

    .line 15
    .line 16
    new-array v0, v0, [Ljava/lang/Object;

    .line 17
    .line 18
    sput-object v0, Lcom/noober/background/BackgroundFactory;->mConstructorArgs:[Ljava/lang/Object;

    .line 19
    .line 20
    new-instance v0, Landroidx/collection/a;

    .line 21
    .line 22
    invoke-direct {v0}, Landroidx/collection/a;-><init>()V

    .line 23
    .line 24
    .line 25
    sput-object v0, Lcom/noober/background/BackgroundFactory;->sConstructorMap:Ljava/util/Map;

    .line 26
    .line 27
    new-instance v0, Ljava/util/HashMap;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 30
    .line 31
    .line 32
    sput-object v0, Lcom/noober/background/BackgroundFactory;->methodMap:Ljava/util/HashMap;

    .line 33
    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static createView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/InflateException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/noober/background/BackgroundFactory;->sConstructorMap:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Ljava/lang/reflect/Constructor;

    .line 8
    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move-object p2, p1

    .line 34
    :goto_0
    invoke-virtual {p0, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    const-class p2, Landroid/view/View;

    .line 39
    .line 40
    invoke-virtual {p0, p2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    sget-object p2, Lcom/noober/background/BackgroundFactory;->sConstructorSignature:[Ljava/lang/Class;

    .line 45
    .line 46
    invoke-virtual {p0, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    :cond_1
    const/4 p0, 0x1

    .line 54
    invoke-virtual {v1, p0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 55
    .line 56
    .line 57
    sget-object p0, Lcom/noober/background/BackgroundFactory;->mConstructorArgs:[Ljava/lang/Object;

    .line 58
    .line 59
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    check-cast p0, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .line 65
    return-object p0

    .line 66
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    const-string p2, "cannot create \u3010"

    .line 72
    .line 73
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string p1, "\u3011 : "

    .line 80
    .line 81
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    const-string p1, "BackgroundLibrary"

    .line 89
    .line 90
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    const/4 p0, 0x0

    .line 94
    return-object p0
.end method

.method private static createViewFromTag(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 5

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    const-string v0, "view"

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    const-string p1, "class"

    .line 18
    .line 19
    invoke-interface {p2, v1, p1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    :cond_1
    const/4 v0, 0x1

    .line 24
    const/4 v2, 0x0

    .line 25
    :try_start_0
    sget-object v3, Lcom/noober/background/BackgroundFactory;->mConstructorArgs:[Ljava/lang/Object;

    .line 26
    .line 27
    aput-object p0, v3, v2

    .line 28
    .line 29
    aput-object p2, v3, v0

    .line 30
    .line 31
    const/16 p2, 0x2e

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(I)I

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    const/4 v4, -0x1

    .line 38
    if-ne v4, p2, :cond_5

    .line 39
    .line 40
    const-string p2, "View"

    .line 41
    .line 42
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    if-eqz p2, :cond_2

    .line 47
    .line 48
    const-string p2, "android.view."

    .line 49
    .line 50
    invoke-static {p0, p1, p2}, Lcom/noober/background/BackgroundFactory;->createView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    goto :goto_1

    .line 57
    :cond_2
    move-object p2, v1

    .line 58
    :goto_0
    if-nez p2, :cond_3

    .line 59
    .line 60
    const-string p2, "android.widget."

    .line 61
    .line 62
    invoke-static {p0, p1, p2}, Lcom/noober/background/BackgroundFactory;->createView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    :cond_3
    if-nez p2, :cond_4

    .line 67
    .line 68
    const-string p2, "android.webkit."

    .line 69
    .line 70
    invoke-static {p0, p1, p2}, Lcom/noober/background/BackgroundFactory;->createView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :cond_4
    aput-object v1, v3, v2

    .line 75
    .line 76
    aput-object v1, v3, v0

    .line 77
    .line 78
    return-object p2

    .line 79
    :cond_5
    :try_start_1
    invoke-static {p0, p1, v1}, Lcom/noober/background/BackgroundFactory;->createView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    aput-object v1, v3, v2

    .line 84
    .line 85
    aput-object v1, v3, v0

    .line 86
    .line 87
    return-object p0

    .line 88
    :catch_0
    :try_start_2
    const-string p0, "BackgroundLibrary"

    .line 89
    .line 90
    new-instance p2, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    .line 95
    const-string v3, "cannot create \u3010"

    .line 96
    .line 97
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string p1, "\u3011 : "

    .line 104
    .line 105
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 113
    .line 114
    .line 115
    sget-object p0, Lcom/noober/background/BackgroundFactory;->mConstructorArgs:[Ljava/lang/Object;

    .line 116
    .line 117
    aput-object v1, p0, v2

    .line 118
    .line 119
    aput-object v1, p0, v0

    .line 120
    .line 121
    return-object v1

    .line 122
    :goto_1
    sget-object p1, Lcom/noober/background/BackgroundFactory;->mConstructorArgs:[Ljava/lang/Object;

    .line 123
    .line 124
    aput-object v1, p1, v2

    .line 125
    .line 126
    aput-object v1, p1, v0

    .line 127
    .line 128
    throw p0
.end method

.method private static findDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catch_0
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-static {p0, p1}, Lcom/noober/background/BackgroundFactory;->findDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    :cond_0
    :goto_0
    return-object v0
.end method

.method private static findMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 3
    .line 4
    .line 5
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    goto :goto_0

    .line 7
    :catch_0
    invoke-static {p0, p1}, Lcom/noober/background/BackgroundFactory;->findDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    :goto_0
    return-object p0
.end method

.method private static getMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 3

    .line 1
    sget-object v0, Lcom/noober/background/BackgroundFactory;->methodMap:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Ljava/util/HashMap;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/util/HashMap;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Ljava/lang/reflect/Method;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    .line 33
    .line 34
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    const/4 v0, 0x0

    .line 45
    :goto_0
    if-nez v0, :cond_1

    .line 46
    .line 47
    invoke-static {p0, p1}, Lcom/noober/background/BackgroundFactory;->findMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    :cond_1
    return-object v0
.end method

.method private static hasGradientState(Landroid/content/res/TypedArray;)Z
    .locals 1

    .line 1
    sget v0, Lcom/noober/background/R$styleable;->background_bl_checkable_gradient_startColor:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    sget v0, Lcom/noober/background/R$styleable;->background_bl_checked_gradient_startColor:I

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    sget v0, Lcom/noober/background/R$styleable;->background_bl_enabled_gradient_startColor:I

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    sget v0, Lcom/noober/background/R$styleable;->background_bl_selected_gradient_startColor:I

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    sget v0, Lcom/noober/background/R$styleable;->background_bl_pressed_gradient_startColor:I

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    sget v0, Lcom/noober/background/R$styleable;->background_bl_focused_gradient_startColor:I

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    if-eqz p0, :cond_0

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const/4 p0, 0x0

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 53
    :goto_1
    return p0
.end method

.method private static hasStatus(II)Z
    .locals 0

    .line 1
    and-int/2addr p0, p1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    const/4 p0, 0x1

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 p0, 0x0

    .line 7
    :goto_0
    return p0
.end method

.method private static setBackground(Landroid/graphics/drawable/Drawable;Landroid/view/View;Landroid/content/res/TypedArray;)V
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    sget v1, Lcom/noober/background/R$styleable;->background_bl_stroke_width:I

    .line 3
    .line 4
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v1, :cond_4

    .line 10
    .line 11
    sget v1, Lcom/noober/background/R$styleable;->background_bl_stroke_position:I

    .line 12
    .line 13
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_4

    .line 18
    .line 19
    sget v1, Lcom/noober/background/R$styleable;->background_bl_stroke_width:I

    .line 20
    .line 21
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    sget v3, Lcom/noober/background/R$styleable;->background_bl_stroke_position:I

    .line 26
    .line 27
    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    const/4 v4, 0x2

    .line 32
    invoke-static {v3, v4}, Lcom/noober/background/BackgroundFactory;->hasStatus(II)Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_0

    .line 37
    .line 38
    move v4, v2

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    neg-float v4, v1

    .line 41
    :goto_0
    const/4 v5, 0x4

    .line 42
    invoke-static {v3, v5}, Lcom/noober/background/BackgroundFactory;->hasStatus(II)Z

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    if-eqz v5, :cond_1

    .line 47
    .line 48
    move v5, v2

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    neg-float v5, v1

    .line 51
    :goto_1
    const/16 v6, 0x8

    .line 52
    .line 53
    invoke-static {v3, v6}, Lcom/noober/background/BackgroundFactory;->hasStatus(II)Z

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    if-eqz v6, :cond_2

    .line 58
    .line 59
    move v6, v2

    .line 60
    goto :goto_2

    .line 61
    :cond_2
    neg-float v6, v1

    .line 62
    :goto_2
    const/16 v7, 0x10

    .line 63
    .line 64
    invoke-static {v3, v7}, Lcom/noober/background/BackgroundFactory;->hasStatus(II)Z

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-eqz v3, :cond_3

    .line 69
    .line 70
    move v1, v2

    .line 71
    goto :goto_3

    .line 72
    :cond_3
    neg-float v1, v1

    .line 73
    :goto_3
    new-instance v3, Landroid/graphics/drawable/LayerDrawable;

    .line 74
    .line 75
    const/4 v7, 0x1

    .line 76
    new-array v7, v7, [Landroid/graphics/drawable/Drawable;

    .line 77
    .line 78
    aput-object p0, v7, v0

    .line 79
    .line 80
    invoke-direct {v3, v7}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 81
    .line 82
    .line 83
    float-to-int v9, v4

    .line 84
    float-to-int v10, v5

    .line 85
    float-to-int v11, v6

    .line 86
    float-to-int v12, v1

    .line 87
    const/4 v8, 0x0

    .line 88
    move-object v7, v3

    .line 89
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 90
    .line 91
    .line 92
    move-object p0, v3

    .line 93
    :cond_4
    sget v0, Lcom/noober/background/R$styleable;->background_bl_shape_alpha:I

    .line 94
    .line 95
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-eqz v0, :cond_7

    .line 100
    .line 101
    sget v0, Lcom/noober/background/R$styleable;->background_bl_shape_alpha:I

    .line 102
    .line 103
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 104
    .line 105
    .line 106
    move-result p2

    .line 107
    const/high16 v0, 0x3f800000    # 1.0f

    .line 108
    .line 109
    cmpl-float v0, p2, v0

    .line 110
    .line 111
    const/high16 v1, 0x437f0000    # 255.0f

    .line 112
    .line 113
    if-ltz v0, :cond_5

    .line 114
    .line 115
    move v2, v1

    .line 116
    goto :goto_4

    .line 117
    :cond_5
    cmpg-float v0, p2, v2

    .line 118
    .line 119
    if-gtz v0, :cond_6

    .line 120
    .line 121
    goto :goto_4

    .line 122
    :cond_6
    mul-float v2, p2, v1

    .line 123
    .line 124
    :goto_4
    float-to-int p2, v2

    .line 125
    invoke-virtual {p0, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 126
    .line 127
    .line 128
    :cond_7
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 129
    .line 130
    .line 131
    return-void
.end method

.method private static setDrawable(Landroid/graphics/drawable/Drawable;Landroid/view/View;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V
    .locals 3

    .line 1
    instance-of v0, p1, Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    sget v0, Lcom/noober/background/R$styleable;->bl_other_bl_position:I

    .line 6
    .line 7
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    sget p3, Lcom/noober/background/R$styleable;->bl_other_bl_position:I

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 17
    .line 18
    .line 19
    move-result p3

    .line 20
    const/4 v1, 0x1

    .line 21
    const/4 v2, 0x0

    .line 22
    if-ne p3, v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    .line 29
    .line 30
    .line 31
    move-result p3

    .line 32
    invoke-virtual {p0, v0, v0, p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 33
    .line 34
    .line 35
    check-cast p1, Landroid/widget/TextView;

    .line 36
    .line 37
    invoke-virtual {p1, p0, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    sget p3, Lcom/noober/background/R$styleable;->bl_other_bl_position:I

    .line 42
    .line 43
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 44
    .line 45
    .line 46
    move-result p3

    .line 47
    const/4 v1, 0x2

    .line 48
    if-ne p3, v1, :cond_1

    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    .line 55
    .line 56
    .line 57
    move-result p3

    .line 58
    invoke-virtual {p0, v0, v0, p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 59
    .line 60
    .line 61
    check-cast p1, Landroid/widget/TextView;

    .line 62
    .line 63
    invoke-virtual {p1, v2, p0, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    sget p3, Lcom/noober/background/R$styleable;->bl_other_bl_position:I

    .line 68
    .line 69
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 70
    .line 71
    .line 72
    move-result p3

    .line 73
    const/4 v1, 0x4

    .line 74
    if-ne p3, v1, :cond_2

    .line 75
    .line 76
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    .line 77
    .line 78
    .line 79
    move-result p2

    .line 80
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    .line 81
    .line 82
    .line 83
    move-result p3

    .line 84
    invoke-virtual {p0, v0, v0, p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 85
    .line 86
    .line 87
    check-cast p1, Landroid/widget/TextView;

    .line 88
    .line 89
    invoke-virtual {p1, v2, v2, p0, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_2
    sget p3, Lcom/noober/background/R$styleable;->bl_other_bl_position:I

    .line 94
    .line 95
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 96
    .line 97
    .line 98
    move-result p2

    .line 99
    const/16 p3, 0x8

    .line 100
    .line 101
    if-ne p2, p3, :cond_5

    .line 102
    .line 103
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    .line 104
    .line 105
    .line 106
    move-result p2

    .line 107
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    .line 108
    .line 109
    .line 110
    move-result p3

    .line 111
    invoke-virtual {p0, v0, v0, p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 112
    .line 113
    .line 114
    check-cast p1, Landroid/widget/TextView;

    .line 115
    .line 116
    invoke-virtual {p1, v2, v2, v2, p0}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_3
    invoke-static {p0, p1, p3}, Lcom/noober/background/BackgroundFactory;->setBackground(Landroid/graphics/drawable/Drawable;Landroid/view/View;Landroid/content/res/TypedArray;)V

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_4
    invoke-static {p0, p1, p3}, Lcom/noober/background/BackgroundFactory;->setBackground(Landroid/graphics/drawable/Drawable;Landroid/view/View;Landroid/content/res/TypedArray;)V

    .line 125
    .line 126
    .line 127
    :cond_5
    :goto_0
    return-void
.end method

.method public static setViewBackground(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/view/View;)Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, p0, p1, p2}, Lcom/noober/background/BackgroundFactory;->setViewBackground(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;Landroid/view/View;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private static setViewBackground(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;Landroid/view/View;)Landroid/view/View;
    .locals 17
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 2
    sget-object v2, Lcom/noober/background/R$styleable;->background:[I

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 3
    sget-object v3, Lcom/noober/background/R$styleable;->background_press:[I

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 4
    sget-object v4, Lcom/noober/background/R$styleable;->background_selector:[I

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 5
    sget-object v5, Lcom/noober/background/R$styleable;->text_selector:[I

    invoke-virtual {v0, v1, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 6
    sget-object v6, Lcom/noober/background/R$styleable;->background_button_drawable:[I

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 7
    sget-object v7, Lcom/noober/background/R$styleable;->bl_other:[I

    invoke-virtual {v0, v1, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 8
    sget-object v8, Lcom/noober/background/R$styleable;->bl_anim:[I

    invoke-virtual {v0, v1, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 9
    sget-object v9, Lcom/noober/background/R$styleable;->background_multi_selector:[I

    invoke-virtual {v0, v1, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 10
    sget-object v10, Lcom/noober/background/R$styleable;->background_multi_selector_text:[I

    invoke-virtual {v0, v1, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v10

    .line 11
    sget-object v11, Lcom/noober/background/R$styleable;->bl_text:[I

    invoke-virtual {v0, v1, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v11

    .line 12
    :try_start_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v12

    if-nez v12, :cond_0

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v12

    if-nez v12, :cond_0

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v12

    if-nez v12, :cond_0

    .line 13
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v12

    if-nez v12, :cond_0

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v12

    if-nez v12, :cond_0

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v12

    if-nez v12, :cond_0

    .line 14
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v12

    if-nez v12, :cond_0

    invoke-virtual {v10}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v12

    if-nez v12, :cond_0

    invoke-virtual {v11}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v12

    if-nez v12, :cond_0

    .line 15
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v12, :cond_0

    .line 16
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 17
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 18
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 19
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 20
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 21
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 22
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 23
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 24
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 25
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    return-object p3

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :catch_0
    move-exception v0

    move-object/from16 v12, p3

    goto/16 :goto_7

    :cond_0
    if-nez p3, :cond_1

    move-object/from16 v12, p0

    .line 26
    :try_start_1
    invoke-static {v0, v12, v1}, Lcom/noober/background/BackgroundFactory;->createViewFromTag(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v12
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    move-object/from16 v12, p3

    :goto_0
    const/4 v13, 0x0

    if-nez v12, :cond_2

    .line 27
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 28
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 29
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 30
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 31
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 32
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 33
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 34
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 35
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 36
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    return-object v13

    .line 37
    :cond_2
    :try_start_2
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v14

    if-lez v14, :cond_4

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v14

    if-gtz v14, :cond_3

    goto :goto_1

    .line 38
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Background_selector and background_multi_selector cannot be used simultaneously"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    goto/16 :goto_7

    .line 39
    :cond_4
    :goto_1
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v14

    if-lez v14, :cond_6

    invoke-virtual {v10}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v14

    if-gtz v14, :cond_5

    goto :goto_2

    .line 40
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "text_selector and background_multi_selector_text cannot be used simultaneously"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_6
    :goto_2
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v14

    const/4 v15, 0x0

    if-lez v14, :cond_7

    instance-of v14, v12, Landroid/widget/CompoundButton;

    if-eqz v14, :cond_7

    .line 42
    move-object v14, v12

    check-cast v14, Landroid/widget/CompoundButton;

    invoke-static {v2, v6}, Lcom/noober/background/drawable/DrawableFactory;->getButtonDrawable(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v13

    invoke-virtual {v14, v13}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    .line 43
    :cond_7
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v13

    if-lez v13, :cond_8

    .line 44
    invoke-static {v2, v4}, Lcom/noober/background/drawable/DrawableFactory;->getSelectorDrawable(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v13

    .line 45
    invoke-static {v13, v12, v7, v2}, Lcom/noober/background/BackgroundFactory;->setDrawable(Landroid/graphics/drawable/Drawable;Landroid/view/View;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V

    :goto_3
    const/4 v14, 0x0

    goto :goto_5

    .line 46
    :cond_8
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v13

    if-lez v13, :cond_9

    .line 47
    invoke-static {v2}, Lcom/noober/background/drawable/DrawableFactory;->getDrawable(Landroid/content/res/TypedArray;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v13

    .line 48
    invoke-static {v13, v2, v3}, Lcom/noober/background/drawable/DrawableFactory;->getPressDrawable(Landroid/graphics/drawable/GradientDrawable;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v14

    .line 49
    invoke-static {v14, v12, v7, v2}, Lcom/noober/background/BackgroundFactory;->setDrawable(Landroid/graphics/drawable/Drawable;Landroid/view/View;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V

    move-object/from16 v16, v14

    move-object v14, v13

    move-object/from16 v13, v16

    goto :goto_5

    .line 50
    :cond_9
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v13

    if-lez v13, :cond_a

    .line 51
    invoke-static {v0, v9, v2}, Lcom/noober/background/drawable/DrawableFactory;->getMultiSelectorDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v13

    .line 52
    invoke-static {v13, v12, v2}, Lcom/noober/background/BackgroundFactory;->setBackground(Landroid/graphics/drawable/Drawable;Landroid/view/View;Landroid/content/res/TypedArray;)V

    goto :goto_3

    .line 53
    :cond_a
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v13

    if-lez v13, :cond_c

    .line 54
    invoke-static {v2}, Lcom/noober/background/BackgroundFactory;->hasGradientState(Landroid/content/res/TypedArray;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 55
    invoke-static {v2}, Lcom/noober/background/drawable/DrawableFactory;->getStateGradientDrawable(Landroid/content/res/TypedArray;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v13

    .line 56
    invoke-static {v13, v12, v7, v2}, Lcom/noober/background/BackgroundFactory;->setDrawable(Landroid/graphics/drawable/Drawable;Landroid/view/View;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V

    goto :goto_3

    .line 57
    :cond_b
    invoke-static {v2}, Lcom/noober/background/drawable/DrawableFactory;->getDrawable(Landroid/content/res/TypedArray;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v13

    .line 58
    invoke-static {v13, v12, v7, v2}, Lcom/noober/background/BackgroundFactory;->setDrawable(Landroid/graphics/drawable/Drawable;Landroid/view/View;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V

    move-object v14, v13

    const/4 v13, 0x0

    goto :goto_5

    .line 59
    :cond_c
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v13

    if-lez v13, :cond_d

    .line 60
    invoke-static {v8}, Lcom/noober/background/drawable/DrawableFactory;->getAnimationDrawable(Landroid/content/res/TypedArray;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v13

    .line 61
    invoke-static {v13, v12, v2}, Lcom/noober/background/BackgroundFactory;->setBackground(Landroid/graphics/drawable/Drawable;Landroid/view/View;Landroid/content/res/TypedArray;)V

    .line 62
    sget v14, Lcom/noober/background/R$styleable;->bl_anim_bl_anim_auto_start:I

    invoke-virtual {v8, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 63
    invoke-virtual {v13}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_d
    :goto_4
    const/4 v13, 0x0

    goto :goto_3

    .line 64
    :goto_5
    instance-of v15, v12, Landroid/widget/TextView;

    if-eqz v15, :cond_e

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v15

    if-lez v15, :cond_e

    .line 65
    move-object v0, v12

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v5}, Lcom/noober/background/drawable/DrawableFactory;->getTextSelectorColor(Landroid/content/res/TypedArray;)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_6

    .line 66
    :cond_e
    instance-of v15, v12, Landroid/widget/TextView;

    if-eqz v15, :cond_f

    invoke-virtual {v10}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v15

    if-lez v15, :cond_f

    .line 67
    move-object v1, v12

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v0, v10}, Lcom/noober/background/drawable/DrawableFactory;->getMultiTextColorSelectorColorCreator(Landroid/content/Context;Landroid/content/res/TypedArray;)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_6

    .line 68
    :cond_f
    instance-of v15, v12, Landroid/widget/TextView;

    if-eqz v15, :cond_10

    invoke-virtual {v11}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v15

    if-lez v15, :cond_10

    .line 69
    move-object v15, v12

    check-cast v15, Landroid/widget/TextView;

    invoke-static {v0, v1, v15}, Lcom/noober/background/drawable/TextViewFactory;->setTextGradientColor(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/widget/TextView;)V

    .line 70
    :cond_10
    :goto_6
    sget v0, Lcom/noober/background/R$styleable;->background_bl_ripple_enable:I

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_12

    sget v0, Lcom/noober/background/R$styleable;->background_bl_ripple_color:I

    .line 71
    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 72
    sget v0, Lcom/noober/background/R$styleable;->background_bl_ripple_color:I

    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    if-nez v13, :cond_11

    move-object v13, v14

    .line 73
    :cond_11
    new-instance v1, Landroid/graphics/drawable/RippleDrawable;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-direct {v1, v0, v13, v13}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 74
    invoke-static {v1, v12, v2}, Lcom/noober/background/BackgroundFactory;->setBackground(Landroid/graphics/drawable/Drawable;Landroid/view/View;Landroid/content/res/TypedArray;)V

    .line 75
    :cond_12
    sget v0, Lcom/noober/background/R$styleable;->bl_other_bl_function:I

    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 76
    sget v0, Lcom/noober/background/R$styleable;->bl_other_bl_function:I

    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 78
    invoke-virtual {v12}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 79
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    .line 80
    invoke-static {v13, v0}, Lcom/noober/background/BackgroundFactory;->getMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 81
    new-instance v13, Lcom/noober/background/BackgroundFactory$a;

    invoke-direct {v13, v0, v1}, Lcom/noober/background/BackgroundFactory$a;-><init>(Ljava/lang/reflect/Method;Landroid/content/Context;)V

    invoke-virtual {v12, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 82
    :cond_13
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 83
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 84
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 85
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 86
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 87
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 88
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 89
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 90
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 91
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    return-object v12

    .line 92
    :goto_7
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 93
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 94
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 95
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 96
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 97
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 98
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 99
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 100
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 101
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 102
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    return-object v12

    .line 103
    :goto_8
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 104
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 105
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 106
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 107
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 108
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 109
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 110
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 111
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 112
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 113
    throw v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 0

    .line 8
    invoke-virtual {p0, p2, p3, p4}, Lcom/noober/background/BackgroundFactory;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 2

    .line 1
    const-string v0, "com.noober.background.view"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/noober/background/BackgroundFactory;->mViewCreateFactory2:Landroid/view/LayoutInflater$Factory2;

    if-eqz v0, :cond_2

    .line 3
    invoke-interface {v0, p1, p2, p3}, Landroid/view/LayoutInflater$Factory;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/noober/background/BackgroundFactory;->mViewCreateFactory2:Landroid/view/LayoutInflater$Factory2;

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/view/LayoutInflater$Factory2;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    goto :goto_0

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/noober/background/BackgroundFactory;->mViewCreateFactory:Landroid/view/LayoutInflater$Factory;

    if-eqz v0, :cond_3

    .line 6
    invoke-interface {v0, p1, p2, p3}, Landroid/view/LayoutInflater$Factory;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v1

    .line 7
    :cond_3
    :goto_0
    invoke-static {p1, p2, p3, v1}, Lcom/noober/background/BackgroundFactory;->setViewBackground(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public setInterceptFactory(Landroid/view/LayoutInflater$Factory;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noober/background/BackgroundFactory;->mViewCreateFactory:Landroid/view/LayoutInflater$Factory;

    .line 2
    .line 3
    return-void
.end method

.method public setInterceptFactory2(Landroid/view/LayoutInflater$Factory2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noober/background/BackgroundFactory;->mViewCreateFactory2:Landroid/view/LayoutInflater$Factory2;

    .line 2
    .line 3
    return-void
.end method
