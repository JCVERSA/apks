.class public final Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider;
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
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider;->e()Landroid/content/UriMatcher;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ".HisavanaContentProvider"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider;->c(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    new-instance v0, Landroid/content/UriMatcher;

    .line 36
    .line 37
    const/4 v1, -0x1

    .line 38
    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    .line 39
    .line 40
    .line 41
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider;->b(Landroid/content/UriMatcher;)V

    .line 42
    .line 43
    .line 44
    invoke-static {}, Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider;->e()Landroid/content/UriMatcher;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    if-eqz v0, :cond_0

    .line 49
    .line 50
    invoke-static {}, Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider;->a()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    const-string v2, "config"

    .line 55
    .line 56
    const/16 v3, 0x64

    .line 57
    .line 58
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 59
    .line 60
    .line 61
    :cond_0
    invoke-static {}, Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider;->e()Landroid/content/UriMatcher;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    if-eqz v0, :cond_1

    .line 66
    .line 67
    invoke-static {}, Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider;->a()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    const-string v2, "ad_data"

    .line 72
    .line 73
    const/16 v3, 0xc8

    .line 74
    .line 75
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 76
    .line 77
    .line 78
    :cond_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider;->e()Landroid/content/UriMatcher;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-static {}, Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider;->a()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-static {v0, v1}, Lcom/cloud/hisavana/abtestkit/db/ABContentProvider;->initUriMatcher(Landroid/content/UriMatcher;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    :cond_2
    return-void
.end method
