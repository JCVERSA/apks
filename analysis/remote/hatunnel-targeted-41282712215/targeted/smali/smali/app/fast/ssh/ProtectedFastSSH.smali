.class public Lapp/fast/ssh/ProtectedFastSSH;
.super Landroid/app/Application;


# static fields
.field private static a:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    sput-object p0, Lapp/fast/ssh/ProtectedFastSSH;->a:Ljava/lang/Object;

    return-void
.end method

.method public static native a(Ljava/lang/Object;Ljava/lang/String;)Ljava/io/InputStream;
.end method

.method public static a([B)[B
    .locals 6

    .prologue
    const/16 v0, 0x100

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const/16 v2, 0x20

    new-array v3, v2, [B

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-byte v5, p0, v4

    and-int/lit16 v5, v5, 0xff

    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    aget-byte v5, v1, v5

    aput-byte v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object v3

    nop

    :array_0
    .array-data 1
        -0x1t
        -0x41t
        -0x45t
        -0x6t
        -0x59t
        -0x11t
        -0x2t
        -0x22t
        0x39t
        -0x3at
        -0x44t
        -0x23t
        -0x3dt
        -0x1ct
        -0x2ft
        0x6t
        -0x48t
        -0x56t
        0x3et
        0x58t
        0xet
        -0x13t
        0x41t
        0x35t
        0x15t
        0xbt
        -0x3dt
        -0x69t
        0x10t
        0x47t
        -0x35t
        -0x3ct
        0x13t
        -0x2ct
        0x55t
        -0x5et
        -0x35t
        -0x4dt
        0x7ct
        0x79t
        -0x16t
        0x7ct
        -0x5et
        0x4et
        0x34t
        -0x19t
        0x12t
        -0x9t
        0x2ct
        0x40t
        -0x10t
        -0x16t
        -0x40t
        0x47t
        -0x54t
        0x72t
        -0x28t
        0x37t
        0x54t
        -0x5bt
        -0x4et
        0x15t
        -0x50t
        0x4ct
        -0x9t
        -0x4bt
        0x66t
        -0xet
        0x3ft
        -0x76t
        -0x31t
        0x2t
        0x3bt
        0x27t
        0x52t
        0x67t
        0x2t
        0x3at
        0x4bt
        0x53t
        0x5ft
        0x32t
        -0x6at
        0x4bt
        -0x59t
        0x28t
        0x7at
        0xbt
        -0x27t
        -0x54t
        -0x24t
        0x40t
        -0x40t
        0xft
        -0x10t
        -0x1t
        -0x36t
        -0xct
        -0x42t
        -0x30t
        0x42t
        0x20t
        0x59t
        0x26t
        0x36t
        -0x2t
        -0x60t
        0x5at
        -0x6t
        -0x55t
        0x16t
        -0x13t
        -0x33t
        -0x22t
        -0x21t
        -0x7t
        0x7bt
        -0x4ct
        -0x16t
        0x0t
        0x7t
        0x45t
        0x46t
        0x54t
        0x45t
        -0xct
        0x3at
        -0x22t
        0x39t
        0x7dt
        -0x1et
        -0x3ft
        0x25t
        -0x5dt
        -0x38t
        -0x70t
        -0x57t
        -0x6ct
        0x23t
        -0x49t
        -0x6dt
        0x7t
        -0x6at
        0x79t
        0x58t
        -0x1ft
        -0x70t
        0x77t
        0x46t
        0x40t
        -0x3bt
        0x3et
        -0x73t
        -0x12t
        -0x32t
        -0x7dt
        0x49t
        0x15t
        0x36t
        0x73t
        0x28t
        0x40t
        0x40t
        0x26t
        -0x11t
        0x1dt
        0x14t
        0x2bt
        -0x44t
        -0x34t
        0x6ct
        0x19t
        0x12t
        0x16t
        -0x52t
        0x35t
        0x15t
        -0x71t
        0x69t
        0x48t
        0x4t
        0x6ct
        -0x7ct
        -0x41t
        0x3t
        0x72t
        0x21t
        -0x7ct
        0x42t
        0xat
        0x70t
        -0x3et
        -0x43t
        0x5dt
        -0x3ft
        0x79t
        -0x19t
        -0x2dt
        0x7bt
        0x6dt
        0x6ft
        0x11t
        0x72t
        -0x75t
        0x79t
        0x5ft
        -0x78t
        0x69t
        0x3ft
        -0x55t
        0x72t
        -0x60t
        -0x68t
        -0x4et
        0x16t
        0xft
        -0x7et
        -0x25t
        -0x1dt
        0x17t
        0x75t
        0x2et
        0x4ft
        -0xat
        0x56t
        -0x10t
        0x75t
        0x50t
        -0x43t
        -0xet
        0x39t
        0x34t
        -0x25t
        -0x7at
        -0x6at
        -0x36t
        -0x7at
        0x3ft
        -0x31t
        0x25t
        0x3t
        0x65t
        0x44t
        -0x35t
        -0x34t
        0x28t
        0x1bt
        0x15t
        -0x4et
        0x34t
        -0x70t
        -0x54t
        0x64t
        0x64t
        0x6at
        0x29t
    .end array-data

    :array_1
    .array-data 1
        -0x2at
        -0x47t
        0x64t
        0x76t
        -0x5t
        0xat
        -0x7bt
        -0xet
        0x10t
        0x3at
        -0xet
        0x55t
        0x69t
        0x68t
        -0x3bt
        0x52t
        0x1ct
        0x57t
        0x15t
        -0x47t
        0x5dt
        -0x5et
        0x6ft
        -0x10t
        0x69t
        -0x5t
        0xft
        0x27t
        -0x6ft
        -0x15t
        -0x53t
        -0x48t
        0x7ft
        0x76t
        0x51t
        -0x5t
        0x52t
        -0x64t
        -0x7ft
        -0x46t
        0x43t
        -0x1ct
        -0x57t
        -0x2bt
        -0x3ct
        -0x34t
        0x39t
        0x10t
        -0x54t
        -0x75t
        0x45t
        -0x51t
        0x53t
        -0x18t
        -0xdt
        -0x22t
        -0x50t
        -0x66t
        0x43t
        0xbt
        -0x5bt
        0x1bt
        0x41t
        -0x1at
        0x4et
        0x75t
        0x72t
        0x4ft
        -0x1t
        -0x39t
        -0x7bt
        0x17t
        -0x5ft
        -0x1ft
        -0xdt
        -0x7et
        -0x29t
        0x74t
        -0x7et
        0x7bt
        0x64t
        -0x67t
        0x10t
        0x27t
        -0x7at
        0x2dt
        0x49t
        0x51t
        -0x12t
        -0x50t
        0x64t
        0x2t
        0x12t
        0x40t
        0x58t
        -0x2t
        -0x3ft
        -0x57t
        0x5ft
        0x3t
        0x0t
        -0x61t
        0x67t
        0x47t
        -0x41t
        0x3dt
        -0x5bt
        0x1ct
        0x35t
        0x12t
        0x7ft
        0x69t
        0x7ft
        -0x10t
        0x3et
        0x27t
        0x5bt
        0x4dt
        0x12t
        -0x75t
        -0x70t
        -0x68t
        -0x40t
        0x6ft
        -0x54t
        -0x4bt
        0x1at
        0x5at
        -0x7t
        -0x51t
        0x77t
        -0x39t
        0x39t
        0x7bt
        0x49t
        0x35t
        0x37t
        0x75t
        0xct
        0x11t
        -0xet
        0x22t
        0x5bt
        -0x1ct
        -0x2t
        0x6ct
        -0x67t
        -0x5at
        -0x5ft
        0x52t
        -0x7ft
        0x49t
        -0x71t
        -0x26t
        -0x64t
        0x6bt
        0x57t
        -0x74t
        -0x1at
        0x6at
        -0x47t
        0x7ft
        0x75t
        0x30t
        -0x33t
        -0x6ct
        -0x2dt
        0x34t
        0x41t
        -0x2bt
        -0x40t
        0x14t
        0x6bt
        0x17t
        0x2et
        -0x14t
        -0x7at
        -0x24t
        -0x48t
        -0xet
        0x15t
        -0x6et
        0x2t
        -0x16t
        0x57t
        0x5t
        0x31t
        0x6ct
        -0x6at
        -0x3dt
        0x2ct
        -0x2ft
        -0x43t
        0x67t
        -0x69t
        0x9t
        0x25t
        -0x67t
        0x4at
        -0x44t
        0x30t
        -0x35t
        -0x27t
        -0xbt
        -0x70t
        -0x43t
        -0x41t
        0x1dt
        0x63t
        0x3bt
        -0x27t
        -0x15t
        -0x4dt
        0x38t
        0x4et
        -0x5dt
        0x65t
        0x29t
        0x27t
        -0x7ft
        0x53t
        -0x70t
        0x41t
        -0x29t
        0x32t
        0x40t
        -0x5et
        -0x4ft
        -0x54t
        -0x18t
        0x1dt
        0x76t
        -0x3ct
        0x49t
        -0x54t
        0x6et
        -0x76t
        -0x7t
        0x60t
        -0x5bt
        0xbt
        0x7et
        0x12t
        -0x6at
        -0x54t
        -0x46t
        -0x42t
        -0x75t
        -0x3et
        0x67t
        -0x5ft
        -0x6t
        -0x5dt
        -0xdt
        0x75t
        -0x67t
    .end array-data
.end method

.method private b()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const-string v4, "SHA-256"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    invoke-virtual {p0}, Lapp/fast/ssh/ProtectedFastSSH;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p0}, Lapp/fast/ssh/ProtectedFastSSH;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x40

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v3, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v3, :cond_0

    array-length v4, v3

    if-nez v4, :cond_1

    :cond_0
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Signing certificates not found"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    array-length v4, v3

    if-eq v4, v7, :cond_2

    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package is signed by multiple signing certificates ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    new-instance v4, Ljava/math/BigInteger;

    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-virtual {v5}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v5

    invoke-direct {v4, v7, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v0, "b3ad016bcd4f267eac311aa37738811b4c959b9360f4edaf79eeb467cded9132"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Certificate mismatch. Expecting sha256["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "], current sha256["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    return-void
.end method

.method private static native c()V
.end method

.method public static native s(Ljava/lang/String;)Ljava/lang/String;
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 1

    .prologue
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    invoke-static {}, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->CFhs()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lapp/fast/ssh/ProtectedFastSSH;->b()V

    const-string v0, "dexprotector"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public onCreate()V
    .locals 0

    .prologue
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    invoke-static {}, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->CFhs()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lapp/fast/ssh/ProtectedFastSSH;->c()V

    return-void
.end method
