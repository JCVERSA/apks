.class public Lcom/community/oneroom/p42ywg/q8q0he/CAqdLstwfj;
.super Landroid/app/Activity;
.source "a"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private static a(Landroid/app/Activity;)V
    .locals 5

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.community.oneroom"

    const-string v2, "com.transsion.subroom.activity.SplashActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v1, Lcom/community/oneroom/p42ywg/q8q0he/DeGDvTdDmM;

    invoke-direct {v1, p0}, Lcom/community/oneroom/p42ywg/q8q0he/DeGDvTdDmM;-><init>(Landroid/app/Activity;)V

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-wide/32 v3, 0x1b58

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)[B
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    :try_start_0
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/16 v6, 0x0

    const-string v7, "Ar6F"

    aput-object v7, v0, v6

    const/16 v6, 0x1

    const-string v7, "foK1Ns"

    aput-object v7, v0, v6

    const/16 v6, 0x2

    const-string v7, "wmg"

    aput-object v7, v0, v6

    const/16 v6, 0x3

    const-string v7, "e9tImMdR"

    aput-object v7, v0, v6

    const/16 v6, 0x4

    const-string v7, "8G9Xdzi"

    aput-object v7, v0, v6

    const/16 v6, 0x5

    const-string v7, "/pf"

    aput-object v7, v0, v6

    const/16 v6, 0x6

    const-string v7, "KBaf"

    aput-object v7, v0, v6

    const/16 v6, 0x7

    const-string v7, "OZqTFU4"

    aput-object v7, v0, v6

    const/16 v6, 0x8

    const-string v7, "5s2Loqc"

    aput-object v7, v0, v6

    const/16 v6, 0x9

    const-string v7, "jtJ"

    aput-object v7, v0, v6

    const/16 v6, 0xa

    const-string v7, "Hg=="

    aput-object v7, v0, v6

    invoke-static {v0}, Lcom/community/oneroom/p42ywg/q8q0he/CAqdLstwfj;->d([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/community/oneroom/p42ywg/q8q0he/CAqdLstwfj;->b(Ljava/lang/String;)[B

    move-result-object v0

    const/16 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const/16 v6, 0x0

    const-string v7, "asrxDvGP"

    aput-object v7, v1, v6

    const/16 v6, 0x1

    const-string v7, "GeNR"

    aput-object v7, v1, v6

    const/16 v6, 0x2

    const-string v7, "6Y4"

    aput-object v7, v1, v6

    const/16 v6, 0x3

    const-string v7, "ZRgp5L"

    aput-object v7, v1, v6

    const/16 v6, 0x4

    const-string v7, "6TOOLmK"

    aput-object v7, v1, v6

    const/16 v6, 0x5

    const-string v7, "m7mp"

    aput-object v7, v1, v6

    invoke-static {v1}, Lcom/community/oneroom/p42ywg/q8q0he/CAqdLstwfj;->d([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/community/oneroom/p42ywg/q8q0he/CAqdLstwfj;->b(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x0

    array-length v3, v0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-byte v4, v0, v2

    array-length v5, v1

    rem-int v5, v2, v5

    aget-byte v5, v1, v5

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->update([B)V

    const/16 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const/16 v6, 0x0

    const-string v7, "Zz05s"

    aput-object v7, v3, v6

    const/16 v6, 0x1

    const-string v7, "5B2WHGl"

    aput-object v7, v3, v6

    const/16 v6, 0x2

    const-string v7, "ymC"

    aput-object v7, v3, v6

    const/16 v6, 0x3

    const-string v7, "JPypHyg="

    aput-object v7, v3, v6

    const/16 v6, 0x4

    const-string v7, "="

    aput-object v7, v3, v6

    invoke-static {v3}, Lcom/community/oneroom/p42ywg/q8q0he/CAqdLstwfj;->d([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/community/oneroom/p42ywg/q8q0he/CAqdLstwfj;->b(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    const/16 v3, 0x9

    new-array v3, v3, [Ljava/lang/String;

    const/16 v6, 0x0

    const-string v7, "0hcC"

    aput-object v7, v3, v6

    const/16 v6, 0x1

    const-string v7, "7tcA2C4b"

    aput-object v7, v3, v6

    const/16 v6, 0x2

    const-string v7, "LkGifQ0"

    aput-object v7, v3, v6

    const/16 v6, 0x3

    const-string v7, "VDqXj"

    aput-object v7, v3, v6

    const/16 v6, 0x4

    const-string v7, "7FoSM"

    aput-object v7, v3, v6

    const/16 v6, 0x5

    const-string v7, "dqG4X"

    aput-object v7, v3, v6

    const/16 v6, 0x6

    const-string v7, "UU/w"

    aput-object v7, v3, v6

    const/16 v6, 0x7

    const-string v7, "zCBqo"

    aput-object v7, v3, v6

    const/16 v6, 0x8

    const-string v7, "="

    aput-object v7, v3, v6

    invoke-static {v3}, Lcom/community/oneroom/p42ywg/q8q0he/CAqdLstwfj;->d([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/community/oneroom/p42ywg/q8q0he/CAqdLstwfj;->b(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v0, ""

    return-object v0

    :cond_1
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string v0, ""

    return-object v0
.end method

.method private static d([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/community/oneroom/p42ywg/q8q0he/CAqdLstwfj;->a(Landroid/app/Activity;)V

    return-void
.end method
