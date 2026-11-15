.class public final Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
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
    .locals 3

    invoke-static {}, Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider;->e()Landroid/content/UriMatcher;

    move-result-object p0

    if-nez p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lul4;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".HisavanaContentProvider"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider;->c(Ljava/lang/String;)V

    new-instance p0, Landroid/content/UriMatcher;

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Landroid/content/UriMatcher;-><init>(I)V

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider;->b(Landroid/content/UriMatcher;)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider;->e()Landroid/content/UriMatcher;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "config"

    const/16 v2, 0x64

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    invoke-static {}, Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider;->e()Landroid/content/UriMatcher;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ad_data"

    const/16 v2, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider;->e()Landroid/content/UriMatcher;

    move-result-object p0

    invoke-static {}, Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/cloud/hisavana/abtestkit/db/ABContentProvider;->initUriMatcher(Landroid/content/UriMatcher;Ljava/lang/String;)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider;->e()Landroid/content/UriMatcher;

    move-result-object p0

    invoke-static {}, Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lgx8;->b(Landroid/content/UriMatcher;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
