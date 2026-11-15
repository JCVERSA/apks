.class public Lcom/pgl/ssdk/y;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static volatile a:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private static volatile b:Z

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Landroid/hardware/display/DisplayManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method private static a(I)Ljava/lang/String;
    .locals 1

    .line 9
    sget-object v0, Lcom/pgl/ssdk/y;->f:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 10
    invoke-static {p0}, Lcom/pgl/ssdk/y;->a(Landroid/view/Display;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "pd"

    :goto_0
    return-object p0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 11
    sget-object v0, Lcom/pgl/ssdk/y;->f:Landroid/hardware/display/DisplayManager;

    if-nez v0, :cond_0

    const-string v0, "display"

    .line 12
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    sput-object p0, Lcom/pgl/ssdk/y;->f:Landroid/hardware/display/DisplayManager;

    .line 13
    :cond_0
    sget-object p0, Lcom/pgl/ssdk/y;->f:Landroid/hardware/display/DisplayManager;

    if-eqz p0, :cond_3

    .line 14
    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 15
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 16
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 17
    aget-object v2, p0, v1

    if-eqz v2, :cond_1

    .line 18
    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    if-eqz v2, :cond_1

    .line 19
    aget-object v2, p0, v1

    invoke-static {v2}, Lcom/pgl/ssdk/y;->a(Landroid/view/Display;)Ljava/lang/String;

    move-result-object v2

    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 21
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_1

    const-string v2, ","

    .line 22
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 23
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-string p0, ""

    return-object p0
.end method

.method private static a(Landroid/view/Display;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Class;

    new-array v5, v1, [Ljava/lang/Object;

    const-string v6, "getType"

    invoke-static {p0, v3, v6, v4, v5}, Lcom/pgl/ssdk/s0;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Class;

    new-array v6, v1, [Ljava/lang/Object;

    const-string v7, "getOwnerPackageName"

    invoke-static {p0, v4, v7, v5, v6}, Lcom/pgl/ssdk/s0;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string v5, "TYPE_VIRTUAL"

    const/4 v6, 0x0

    invoke-static {v6, p0, v5, v6}, Lcom/pgl/ssdk/s0;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz v3, :cond_0

    if-eqz p0, :cond_0

    .line 6
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 7
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne v3, p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    move p0, v1

    .line 8
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v4, v3, v1

    aput-object v2, v3, v0

    const/4 v0, 0x2

    aput-object p0, v3, v0

    const-string p0, "%s#%s#%b"

    invoke-static {p0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(II)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/pgl/ssdk/y;->b(II)V

    return-void
.end method

.method private static b(II)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/pgl/ssdk/y;->a(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 2
    sget-object p1, Lcom/pgl/ssdk/y;->e:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 3
    sput-object p0, Lcom/pgl/ssdk/y;->e:Ljava/lang/String;

    return-void

    .line 4
    :cond_1
    sget-object p1, Lcom/pgl/ssdk/y;->d:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 5
    sput-object p0, Lcom/pgl/ssdk/y;->d:Ljava/lang/String;

    return-void

    .line 6
    :cond_2
    sget-object p1, Lcom/pgl/ssdk/y;->c:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 7
    sput-object p0, Lcom/pgl/ssdk/y;->c:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_3
    return-void
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 2

    .line 8
    sget-object v0, Lcom/pgl/ssdk/y;->c:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    sget-object v0, Lcom/pgl/ssdk/y;->d:Ljava/lang/String;

    if-nez v0, :cond_1

    sget-object v0, Lcom/pgl/ssdk/y;->e:Ljava/lang/String;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 9
    invoke-static {p0}, Lcom/pgl/ssdk/y;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    return v1
.end method

.method public static c(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/pgl/ssdk/y;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    sput-boolean v0, Lcom/pgl/ssdk/y;->b:Z

    .line 8
    .line 9
    sget-object v0, Lcom/pgl/ssdk/y;->a:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    new-instance v0, Lcom/pgl/ssdk/y$a;

    .line 14
    .line 15
    invoke-direct {v0}, Lcom/pgl/ssdk/y$a;-><init>()V

    .line 16
    .line 17
    .line 18
    sput-object v0, Lcom/pgl/ssdk/y;->a:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 19
    .line 20
    :cond_1
    sget-object v0, Lcom/pgl/ssdk/y;->f:Landroid/hardware/display/DisplayManager;

    .line 21
    .line 22
    if-nez v0, :cond_2

    .line 23
    .line 24
    const-string v0, "display"

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Landroid/hardware/display/DisplayManager;

    .line 31
    .line 32
    sput-object p0, Lcom/pgl/ssdk/y;->f:Landroid/hardware/display/DisplayManager;

    .line 33
    .line 34
    :cond_2
    sget-object p0, Lcom/pgl/ssdk/y;->f:Landroid/hardware/display/DisplayManager;

    .line 35
    .line 36
    if-eqz p0, :cond_3

    .line 37
    .line 38
    invoke-static {}, Lcom/pgl/ssdk/o0;->b()Landroid/os/Handler;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    if-eqz p0, :cond_3

    .line 43
    .line 44
    :try_start_0
    sget-object v0, Lcom/pgl/ssdk/y;->f:Landroid/hardware/display/DisplayManager;

    .line 45
    .line 46
    sget-object v1, Lcom/pgl/ssdk/y;->a:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 47
    .line 48
    invoke-virtual {v0, v1, p0}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    :catch_0
    :cond_3
    return-void
.end method
