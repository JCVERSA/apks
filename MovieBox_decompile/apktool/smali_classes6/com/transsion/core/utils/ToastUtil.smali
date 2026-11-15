.class public Lcom/transsion/core/utils/ToastUtil;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/core/utils/ToastUtil$a;
    }
.end annotation


# static fields
.field private static a:Landroid/os/Handler;

.field private static b:Landroid/widget/Toast;

.field private static c:Ljava/lang/reflect/Field;

.field private static d:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/transsion/core/utils/ToastUtil;->a:Landroid/os/Handler;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    sput-object v0, Lcom/transsion/core/utils/ToastUtil;->b:Landroid/widget/Toast;

    .line 14
    .line 15
    :try_start_0
    const-class v0, Landroid/widget/Toast;

    .line 16
    .line 17
    const-string v1, "mTN"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lcom/transsion/core/utils/ToastUtil;->c:Ljava/lang/reflect/Field;

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 27
    .line 28
    .line 29
    sget-object v0, Lcom/transsion/core/utils/ToastUtil;->c:Ljava/lang/reflect/Field;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v2, "mHandler"

    .line 36
    .line 37
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Lcom/transsion/core/utils/ToastUtil;->d:Ljava/lang/reflect/Field;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 49
    .line 50
    .line 51
    :goto_0
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

.method static synthetic a()Landroid/widget/Toast;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/core/utils/ToastUtil;->b:Landroid/widget/Toast;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic b(Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    .line 1
    sput-object p0, Lcom/transsion/core/utils/ToastUtil;->b:Landroid/widget/Toast;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Landroid/widget/Toast;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/core/utils/ToastUtil;->d(Landroid/widget/Toast;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static d(Landroid/widget/Toast;)V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/transsion/core/utils/ToastUtil;->c:Ljava/lang/reflect/Field;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    sget-object v0, Lcom/transsion/core/utils/ToastUtil;->d:Ljava/lang/reflect/Field;

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/os/Handler;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    instance-of v1, v0, Lcom/transsion/core/utils/ToastUtil$a;

    .line 18
    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    sget-object v1, Lcom/transsion/core/utils/ToastUtil;->d:Ljava/lang/reflect/Field;

    .line 22
    .line 23
    new-instance v2, Lcom/transsion/core/utils/ToastUtil$a;

    .line 24
    .line 25
    invoke-direct {v2, v0}, Lcom/transsion/core/utils/ToastUtil$a;-><init>(Landroid/os/Handler;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception p0

    .line 33
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 34
    .line 35
    .line 36
    :cond_0
    :goto_0
    return-void
.end method

.method public static e(I)V
    .locals 3

    .line 1
    invoke-static {}, Lyj/a;->a()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-gtz p0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget-object v1, Lcom/transsion/core/utils/ToastUtil;->a:Landroid/os/Handler;

    .line 9
    .line 10
    new-instance v2, Lcom/transsion/core/utils/ToastUtil$1;

    .line 11
    .line 12
    invoke-direct {v2, p0, v0}, Lcom/transsion/core/utils/ToastUtil$1;-><init>(ILandroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public static f(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Lyj/a;->a()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    sget-object v1, Lcom/transsion/core/utils/ToastUtil;->a:Landroid/os/Handler;

    .line 13
    .line 14
    new-instance v2, Lcom/transsion/core/utils/ToastUtil$2;

    .line 15
    .line 16
    invoke-direct {v2, p0, v0}, Lcom/transsion/core/utils/ToastUtil$2;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 20
    .line 21
    .line 22
    return-void
.end method
