.class public final Landroidx/compose/ui/platform/AndroidComposeView$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/platform/AndroidComposeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeView$a;-><init>()V

    return-void
.end method

.method public static final synthetic a(Landroidx/compose/ui/platform/AndroidComposeView$a;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeView$a;->b()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private final b()Z
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x0

    .line 4
    :try_start_0
    invoke-static {}, Landroidx/compose/ui/platform/AndroidComposeView;->access$getSystemPropertiesClass$cp()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object v3

    .line 8
    const/4 v4, 0x0

    .line 9
    if-nez v3, :cond_1

    .line 10
    .line 11
    const-string v3, "android.os.SystemProperties"

    .line 12
    .line 13
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-static {v3}, Landroidx/compose/ui/platform/AndroidComposeView;->access$setSystemPropertiesClass$cp(Ljava/lang/Class;)V

    .line 18
    .line 19
    .line 20
    invoke-static {}, Landroidx/compose/ui/platform/AndroidComposeView;->access$getSystemPropertiesClass$cp()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    const-string v5, "getBoolean"

    .line 27
    .line 28
    new-array v6, v1, [Ljava/lang/Class;

    .line 29
    .line 30
    const-class v7, Ljava/lang/String;

    .line 31
    .line 32
    aput-object v7, v6, v2

    .line 33
    .line 34
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 35
    .line 36
    aput-object v7, v6, v0

    .line 37
    .line 38
    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    move-object v3, v4

    .line 44
    :goto_0
    invoke-static {v3}, Landroidx/compose/ui/platform/AndroidComposeView;->access$setGetBooleanMethod$cp(Ljava/lang/reflect/Method;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    invoke-static {}, Landroidx/compose/ui/platform/AndroidComposeView;->access$getGetBooleanMethod$cp()Ljava/lang/reflect/Method;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    if-eqz v3, :cond_2

    .line 52
    .line 53
    new-array v1, v1, [Ljava/lang/Object;

    .line 54
    .line 55
    const-string v5, "debug.layout"

    .line 56
    .line 57
    aput-object v5, v1, v2

    .line 58
    .line 59
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 60
    .line 61
    aput-object v5, v1, v0

    .line 62
    .line 63
    invoke-virtual {v3, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    goto :goto_1

    .line 68
    :cond_2
    move-object v0, v4

    .line 69
    :goto_1
    instance-of v1, v0, Ljava/lang/Boolean;

    .line 70
    .line 71
    if-eqz v1, :cond_3

    .line 72
    .line 73
    move-object v4, v0

    .line 74
    check-cast v4, Ljava/lang/Boolean;

    .line 75
    .line 76
    :cond_3
    if-eqz v4, :cond_4

    .line 77
    .line 78
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 79
    .line 80
    .line 81
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :catch_0
    :cond_4
    return v2
.end method
