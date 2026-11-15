.class public Lcom/transsion/hubsdk/aosp/util/TranAospIconDrawableFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/util/ITranIconDrawableFactoryAdapter;


# static fields
.field private static sClassName:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "android.util.IconDrawableFactory"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/util/TranAospIconDrawableFactory;->sClassName:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/transsion/hubsdk/common/init/TranHubSdkManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/util/TranAospIconDrawableFactory;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getBadgedIcon(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 25
    sget-object p0, Lcom/transsion/hubsdk/aosp/util/TranAospIconDrawableFactory;->sClassName:Ljava/lang/Class;

    const-class v0, Landroid/content/pm/ApplicationInfo;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getBadgedIcon"

    invoke-static {p0, v1, v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 26
    sget-object v0, Lcom/transsion/hubsdk/aosp/util/TranAospIconDrawableFactory;->sClassName:Ljava/lang/Class;

    const-class v1, Landroid/content/Context;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "newInstance"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 27
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 28
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 29
    instance-of p1, p0, Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 30
    move-object v1, p0

    check-cast v1, Landroid/graphics/drawable/Drawable;

    :cond_0
    return-object v1
.end method

.method public getBadgedIcon(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Z)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 37
    sget-object p0, Lcom/transsion/hubsdk/aosp/util/TranAospIconDrawableFactory;->sClassName:Ljava/lang/Class;

    const-class v0, Landroid/content/Context;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v0, v1}, [Ljava/lang/Class;

    move-result-object v0

    const-string v1, "newInstance"

    invoke-static {p0, v1, v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 38
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    filled-new-array {p1, p3}, [Ljava/lang/Object;

    move-result-object p1

    const/4 p3, 0x0

    invoke-static {p0, p3, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 39
    sget-object p1, Lcom/transsion/hubsdk/aosp/util/TranAospIconDrawableFactory;->sClassName:Ljava/lang/Class;

    const-class v0, Landroid/content/pm/ApplicationInfo;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getBadgedIcon"

    invoke-static {p1, v1, v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 40
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p0, p2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 41
    instance-of p1, p0, Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 42
    move-object p3, p0

    check-cast p3, Landroid/graphics/drawable/Drawable;

    :cond_0
    return-object p3
.end method

.method public getBadgedIcon(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 31
    sget-object p0, Lcom/transsion/hubsdk/aosp/util/TranAospIconDrawableFactory;->sClassName:Ljava/lang/Class;

    const-class v0, Landroid/content/Context;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    const-string v1, "newInstance"

    invoke-static {p0, v1, v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 32
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 33
    sget-object p1, Lcom/transsion/hubsdk/aosp/util/TranAospIconDrawableFactory;->sClassName:Ljava/lang/Class;

    const-class v1, Landroid/content/pm/ApplicationInfo;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v3, Landroid/content/pm/PackageItemInfo;

    filled-new-array {v3, v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getBadgedIcon"

    invoke-static {p1, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 34
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    filled-new-array {p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p0, p2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 35
    instance-of p1, p0, Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 36
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    :cond_0
    return-object v0
.end method

.method public getBadgedIcon(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;IZ)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 43
    sget-object p0, Lcom/transsion/hubsdk/aosp/util/TranAospIconDrawableFactory;->sClassName:Ljava/lang/Class;

    const-class v0, Landroid/content/Context;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v0, v1}, [Ljava/lang/Class;

    move-result-object v0

    const-string v1, "newInstance"

    invoke-static {p0, v1, v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 44
    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p5

    filled-new-array {p1, p5}, [Ljava/lang/Object;

    move-result-object p1

    const/4 p5, 0x0

    invoke-static {p0, p5, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 45
    sget-object p1, Lcom/transsion/hubsdk/aosp/util/TranAospIconDrawableFactory;->sClassName:Ljava/lang/Class;

    const-class v0, Landroid/content/pm/ApplicationInfo;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v2, Landroid/content/pm/PackageItemInfo;

    filled-new-array {v2, v0, v1}, [Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getBadgedIcon"

    invoke-static {p1, v1, v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 46
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    filled-new-array {p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p0, p2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 47
    instance-of p1, p0, Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 48
    move-object p5, p0

    check-cast p5, Landroid/graphics/drawable/Drawable;

    :cond_0
    return-object p5
.end method

.method public getBadgedIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 1
    sget-object v0, Lcom/transsion/hubsdk/aosp/util/TranAospIconDrawableFactory;->sClassName:Ljava/lang/Class;

    const-class v1, Landroid/content/pm/ApplicationInfo;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getBadgedIcon"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/transsion/hubsdk/aosp/util/TranAospIconDrawableFactory;->sClassName:Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    const-string v3, "newInstance"

    invoke-static {v1, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 3
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/util/TranAospIconDrawableFactory;->mContext:Landroid/content/Context;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 v2, 0x0

    invoke-static {v1, v2, p0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 4
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 5
    instance-of p1, p0, Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 6
    move-object v2, p0

    check-cast v2, Landroid/graphics/drawable/Drawable;

    :cond_0
    return-object v2
.end method

.method public getBadgedIcon(Landroid/content/pm/ApplicationInfo;Z)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 13
    sget-object v0, Lcom/transsion/hubsdk/aosp/util/TranAospIconDrawableFactory;->sClassName:Ljava/lang/Class;

    const-class v1, Landroid/content/Context;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "newInstance"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 14
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/util/TranAospIconDrawableFactory;->mContext:Landroid/content/Context;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    filled-new-array {p0, p2}, [Ljava/lang/Object;

    move-result-object p0

    const/4 p2, 0x0

    invoke-static {v0, p2, p0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 15
    sget-object v0, Lcom/transsion/hubsdk/aosp/util/TranAospIconDrawableFactory;->sClassName:Ljava/lang/Class;

    const-class v1, Landroid/content/pm/ApplicationInfo;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getBadgedIcon"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 16
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 17
    instance-of p1, p0, Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 18
    move-object p2, p0

    check-cast p2, Landroid/graphics/drawable/Drawable;

    :cond_0
    return-object p2
.end method

.method public getBadgedIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 7
    sget-object v0, Lcom/transsion/hubsdk/aosp/util/TranAospIconDrawableFactory;->sClassName:Ljava/lang/Class;

    const-class v1, Landroid/content/Context;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "newInstance"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 8
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/util/TranAospIconDrawableFactory;->mContext:Landroid/content/Context;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 9
    sget-object v0, Lcom/transsion/hubsdk/aosp/util/TranAospIconDrawableFactory;->sClassName:Ljava/lang/Class;

    const-class v2, Landroid/content/pm/ApplicationInfo;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v4, Landroid/content/pm/PackageItemInfo;

    filled-new-array {v4, v2, v3}, [Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getBadgedIcon"

    invoke-static {v0, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 10
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 11
    instance-of p1, p0, Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 12
    move-object v1, p0

    check-cast v1, Landroid/graphics/drawable/Drawable;

    :cond_0
    return-object v1
.end method

.method public getBadgedIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;IZ)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 19
    sget-object v0, Lcom/transsion/hubsdk/aosp/util/TranAospIconDrawableFactory;->sClassName:Ljava/lang/Class;

    const-class v1, Landroid/content/Context;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "newInstance"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 20
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/util/TranAospIconDrawableFactory;->mContext:Landroid/content/Context;

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    filled-new-array {p0, p4}, [Ljava/lang/Object;

    move-result-object p0

    const/4 p4, 0x0

    invoke-static {v0, p4, p0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 21
    sget-object v0, Lcom/transsion/hubsdk/aosp/util/TranAospIconDrawableFactory;->sClassName:Ljava/lang/Class;

    const-class v1, Landroid/content/pm/ApplicationInfo;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v3, Landroid/content/pm/PackageItemInfo;

    filled-new-array {v3, v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getBadgedIcon"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 22
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 23
    instance-of p1, p0, Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 24
    move-object p4, p0

    check-cast p4, Landroid/graphics/drawable/Drawable;

    :cond_0
    return-object p4
.end method

.method public getGlobalThemedIcon(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 17
    sget-object p0, Lcom/transsion/hubsdk/aosp/util/TranAospIconDrawableFactory;->sClassName:Ljava/lang/Class;

    const-class v0, Landroid/content/Context;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    const-string v1, "newInstance"

    invoke-static {p0, v1, v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 18
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 19
    sget-object p1, Lcom/transsion/hubsdk/aosp/util/TranAospIconDrawableFactory;->sClassName:Ljava/lang/Class;

    const-class v1, Landroid/graphics/Bitmap;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getGlobalThemedIcon"

    invoke-static {p1, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v0

    .line 20
    :cond_0
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p0, p2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 21
    instance-of p1, p0, Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    .line 22
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    :cond_1
    return-object v0
.end method

.method public getGlobalThemedIcon(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 23
    sget-object p0, Lcom/transsion/hubsdk/aosp/util/TranAospIconDrawableFactory;->sClassName:Ljava/lang/Class;

    const-class v0, Landroid/content/Context;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    const-string v1, "newInstance"

    invoke-static {p0, v1, v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 24
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 25
    sget-object p1, Lcom/transsion/hubsdk/aosp/util/TranAospIconDrawableFactory;->sClassName:Ljava/lang/Class;

    const-class v1, Landroid/graphics/Bitmap;

    const-class v2, Ljava/lang/String;

    filled-new-array {v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getGlobalThemedIcon"

    invoke-static {p1, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v0

    .line 26
    :cond_0
    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p0, p2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 27
    instance-of p1, p0, Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    .line 28
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    :cond_1
    return-object v0
.end method

.method public getGlobalThemedIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getGlobalThemedIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getGlobalThemedIcon(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 5
    sget-object v0, Lcom/transsion/hubsdk/aosp/util/TranAospIconDrawableFactory;->sClassName:Ljava/lang/Class;

    const-class v1, Landroid/content/Context;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "newInstance"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 6
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/util/TranAospIconDrawableFactory;->mContext:Landroid/content/Context;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 7
    sget-object v0, Lcom/transsion/hubsdk/aosp/util/TranAospIconDrawableFactory;->sClassName:Ljava/lang/Class;

    const-class v2, Landroid/graphics/Bitmap;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getGlobalThemedIcon"

    invoke-static {v0, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    .line 8
    :cond_0
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 9
    instance-of p1, p0, Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    .line 10
    move-object v1, p0

    check-cast v1, Landroid/graphics/drawable/Drawable;

    :cond_1
    return-object v1
.end method

.method public getGlobalThemedIcon(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 11
    sget-object v0, Lcom/transsion/hubsdk/aosp/util/TranAospIconDrawableFactory;->sClassName:Ljava/lang/Class;

    const-class v1, Landroid/content/Context;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "newInstance"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 12
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/util/TranAospIconDrawableFactory;->mContext:Landroid/content/Context;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 13
    sget-object v0, Lcom/transsion/hubsdk/aosp/util/TranAospIconDrawableFactory;->sClassName:Ljava/lang/Class;

    const-class v2, Landroid/graphics/Bitmap;

    const-class v3, Ljava/lang/String;

    filled-new-array {v2, v3}, [Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getGlobalThemedIcon"

    invoke-static {v0, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    .line 14
    :cond_0
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 15
    instance-of p1, p0, Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    .line 16
    move-object v1, p0

    check-cast v1, Landroid/graphics/drawable/Drawable;

    :cond_1
    return-object v1
.end method

.method public getGlobalThemedIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 3
    const/4 p0, 0x0

    return-object p0
.end method

.method public getGlobalThemedIcon(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 4
    const/4 p0, 0x0

    return-object p0
.end method

.method public getUnbadgedIcon(Landroid/content/Context;ZLandroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 7
    sget-object p0, Lcom/transsion/hubsdk/aosp/util/TranAospIconDrawableFactory;->sClassName:Ljava/lang/Class;

    const-class v0, Landroid/content/Context;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v0, v1}, [Ljava/lang/Class;

    move-result-object v0

    const-string v1, "newInstance"

    invoke-static {p0, v1, v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 8
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p0, p2, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 9
    sget-object p1, Lcom/transsion/hubsdk/aosp/util/TranAospIconDrawableFactory;->sClassName:Ljava/lang/Class;

    const-class v0, Landroid/content/pm/PackageItemInfo;

    const-class v1, Landroid/content/pm/ApplicationInfo;

    filled-new-array {v0, v1}, [Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getUnbadgedIcon"

    invoke-static {p1, v1, v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p2

    .line 10
    :cond_0
    filled-new-array {p3, p4}, [Ljava/lang/Object;

    move-result-object p3

    invoke-static {p1, p0, p3}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 11
    instance-of p1, p0, Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    .line 12
    move-object p2, p0

    check-cast p2, Landroid/graphics/drawable/Drawable;

    :cond_1
    return-object p2
.end method

.method public getUnbadgedIcon(ZLandroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 1
    sget-object v0, Lcom/transsion/hubsdk/aosp/util/TranAospIconDrawableFactory;->sClassName:Ljava/lang/Class;

    const-class v1, Landroid/content/Context;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "newInstance"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 2
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/util/TranAospIconDrawableFactory;->mContext:Landroid/content/Context;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {v0, p1, p0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 3
    sget-object v0, Lcom/transsion/hubsdk/aosp/util/TranAospIconDrawableFactory;->sClassName:Ljava/lang/Class;

    const-class v1, Landroid/content/pm/PackageItemInfo;

    const-class v2, Landroid/content/pm/ApplicationInfo;

    filled-new-array {v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getUnbadgedIcon"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p1

    .line 4
    :cond_0
    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {v0, p0, p2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 5
    instance-of p2, p0, Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_1

    .line 6
    move-object p1, p0

    check-cast p1, Landroid/graphics/drawable/Drawable;

    :cond_1
    return-object p1
.end method
