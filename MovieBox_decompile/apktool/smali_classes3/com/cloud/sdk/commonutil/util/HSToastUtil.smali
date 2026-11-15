.class public Lcom/cloud/sdk/commonutil/util/HSToastUtil;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/sdk/commonutil/util/HSToastUtil$a;
    }
.end annotation


# static fields
.field private static a:Landroid/os/Handler;

.field private static b:Landroid/widget/Toast;

.field private static c:Ljava/lang/reflect/Field;

.field private static d:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 2

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
    sput-object v0, Lcom/cloud/sdk/commonutil/util/HSToastUtil;->a:Landroid/os/Handler;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    sput-object v0, Lcom/cloud/sdk/commonutil/util/HSToastUtil;->b:Landroid/widget/Toast;

    .line 14
    .line 15
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
    sget-object v0, Lcom/cloud/sdk/commonutil/util/HSToastUtil;->b:Landroid/widget/Toast;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic b(Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    .line 1
    sput-object p0, Lcom/cloud/sdk/commonutil/util/HSToastUtil;->b:Landroid/widget/Toast;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Landroid/widget/Toast;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/sdk/commonutil/util/HSToastUtil;->d(Landroid/widget/Toast;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static d(Landroid/widget/Toast;)V
    .locals 4

    .line 1
    const-string v0, "ssp"

    .line 2
    .line 3
    :try_start_0
    sget-object v1, Lcom/cloud/sdk/commonutil/util/HSToastUtil;->c:Ljava/lang/reflect/Field;

    .line 4
    .line 5
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    sget-object v1, Lcom/cloud/sdk/commonutil/util/HSToastUtil;->d:Ljava/lang/reflect/Field;

    .line 10
    .line 11
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Landroid/os/Handler;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    instance-of v2, v1, Lcom/cloud/sdk/commonutil/util/HSToastUtil$a;

    .line 20
    .line 21
    if-nez v2, :cond_0

    .line 22
    .line 23
    sget-object v2, Lcom/cloud/sdk/commonutil/util/HSToastUtil;->d:Ljava/lang/reflect/Field;

    .line 24
    .line 25
    new-instance v3, Lcom/cloud/sdk/commonutil/util/HSToastUtil$a;

    .line 26
    .line 27
    invoke-direct {v3, v1}, Lcom/cloud/sdk/commonutil/util/HSToastUtil$a;-><init>(Landroid/os/Handler;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-exception p0

    .line 35
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/c;->Log()Lcom/cloud/sdk/commonutil/util/c;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string v3, "toast hook error: "

    .line 45
    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-virtual {v1, v0, p0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :cond_0
    :goto_0
    :try_start_1
    const-class p0, Landroid/widget/Toast;

    .line 64
    .line 65
    const-string v1, "mTN"

    .line 66
    .line 67
    invoke-virtual {p0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    sput-object p0, Lcom/cloud/sdk/commonutil/util/HSToastUtil;->c:Ljava/lang/reflect/Field;

    .line 72
    .line 73
    const/4 v1, 0x1

    .line 74
    invoke-virtual {p0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 75
    .line 76
    .line 77
    sget-object p0, Lcom/cloud/sdk/commonutil/util/HSToastUtil;->c:Ljava/lang/reflect/Field;

    .line 78
    .line 79
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    const-string v2, "mHandler"

    .line 84
    .line 85
    invoke-virtual {p0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    sput-object p0, Lcom/cloud/sdk/commonutil/util/HSToastUtil;->d:Ljava/lang/reflect/Field;

    .line 90
    .line 91
    invoke-virtual {p0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :catch_1
    move-exception p0

    .line 96
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/c;->Log()Lcom/cloud/sdk/commonutil/util/c;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .line 104
    .line 105
    const-string v3, "toast static init error: "

    .line 106
    .line 107
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    invoke-virtual {v1, v0, p0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    :goto_1
    return-void
.end method

.method public static e(I)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-lez p0, :cond_0

    .line 6
    .line 7
    sget-object v1, Lcom/cloud/sdk/commonutil/util/HSToastUtil;->a:Landroid/os/Handler;

    .line 8
    .line 9
    new-instance v2, Lcom/cloud/sdk/commonutil/util/HSToastUtil$1;

    .line 10
    .line 11
    invoke-direct {v2, p0, v0}, Lcom/cloud/sdk/commonutil/util/HSToastUtil$1;-><init>(ILandroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public static f(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

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
    if-nez v1, :cond_0

    .line 10
    .line 11
    sget-object v1, Lcom/cloud/sdk/commonutil/util/HSToastUtil;->a:Landroid/os/Handler;

    .line 12
    .line 13
    new-instance v2, Lcom/cloud/sdk/commonutil/util/HSToastUtil$2;

    .line 14
    .line 15
    invoke-direct {v2, p0, v0}, Lcom/cloud/sdk/commonutil/util/HSToastUtil$2;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method
