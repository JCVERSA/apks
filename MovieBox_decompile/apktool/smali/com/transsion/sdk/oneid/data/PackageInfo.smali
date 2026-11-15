.class public Lcom/transsion/sdk/oneid/data/PackageInfo;
.super Lcom/transsion/sdk/oneid/data/OneBaseInfo;
.source "source.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public pkg:Ljava/lang/String;

.field public signatures:Ljava/lang/String;

.field public ssaid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PackageManagerGetSignatures"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/transsion/sdk/oneid/data/OneBaseInfo;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/PackageInfo;->pkg:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/PackageInfo;->signatures:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/PackageInfo;->ssaid:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iput-object v1, p0, Lcom/transsion/sdk/oneid/data/PackageInfo;->pkg:Ljava/lang/String;

    .line 17
    .line 18
    const-string v1, "SHA-256"

    .line 19
    .line 20
    invoke-static {p1, v1}, Lcom/transsion/sdk/oneid/b;->l(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iput-object v1, p0, Lcom/transsion/sdk/oneid/data/PackageInfo;->signatures:Ljava/lang/String;

    .line 25
    .line 26
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const-string v1, "android_id"

    .line 31
    .line 32
    invoke-static {p1, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Lcom/transsion/sdk/oneid/data/PackageInfo;->ssaid:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    :catch_0
    iget-object p1, p0, Lcom/transsion/sdk/oneid/data/PackageInfo;->ssaid:Ljava/lang/String;

    .line 39
    .line 40
    if-nez p1, :cond_0

    .line 41
    .line 42
    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/PackageInfo;->ssaid:Ljava/lang/String;

    .line 43
    .line 44
    :cond_0
    return-void
.end method
