.class public abstract La/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[[I

.field public static final b:[I

.field public static final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final d:Landroid/os/Handler;

.field public static final e:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v0, 0x10

    .line 99
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    .line 100
    new-array v2, v0, [I

    fill-array-data v2, :array_1

    .line 101
    new-array v3, v0, [I

    fill-array-data v3, :array_2

    .line 102
    new-array v0, v0, [I

    fill-array-data v0, :array_3

    const/4 v4, 0x4

    .line 103
    new-array v4, v4, [[I

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    const/4 v1, 0x2

    aput-object v3, v4, v1

    const/4 v1, 0x3

    aput-object v0, v4, v1

    sput-object v4, La/d;->a:[[I

    const/16 v0, 0x80

    const/16 v1, 0xcd

    const/16 v2, 0x7b

    const/16 v3, 0xc7

    .line 104
    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, La/d;->b:[I

    .line 106
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, La/d;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 107
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, La/d;->d:Landroid/os/Handler;

    .line 108
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, La/d;->e:Ljava/security/SecureRandom;

    return-void

    nop

    :array_0
    .array-data 4
        0x42
        0x3a
        0x4a
        0x3e
        0x4d
        0x49
        0x3f
        0x4a
        0x4e
        0x48
        0x4a
        0x49
        0x4e
        0x4b
        0x3d
        0x4e
    .end array-data

    :array_1
    .array-data 4
        0xf4
        0xf7
        0xf2
        0xf4
        0x86
        0x85
        0xf2
        0xf6
        0x86
        0x81
        0xf2
        0xf2
        0xfe
        0x84
        0xf7
        0x86
    .end array-data

    :array_2
    .array-data 4
        0xb4
        0xb5
        0xc1
        0xb1
        0xb7
        0xb3
        0xc2
        0xb8
        0xb6
        0xb6
        0xb8
        0xb3
        0xb9
        0xc5
        0xc5
        0xb4
    .end array-data

    :array_3
    .array-data 4
        0x89
        0xfa
        0x8f
        0xf8
        0xf9
        0x8c
        0xfe
        0xfd
        0xfe
        0xf9
        0xfc
        0x8c
        0xfe
        0xfd
        0x8b
        0x8b
    .end array-data
.end method

.method public static a(Landroid/app/Application;)[Landroid/content/pm/Signature;
    .locals 3

    .line 142
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 143
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 144
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_1

    const/high16 v1, 0x8000000

    .line 145
    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 146
    const-class v0, Landroid/content/pm/PackageInfo;

    const-string v1, "signingInfo"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 148
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getApkContentsSigners"

    .line 149
    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 150
    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/content/pm/Signature;

    return-object p0

    :cond_1
    const/16 v1, 0x40

    .line 152
    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    return-object p0
.end method
