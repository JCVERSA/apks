.class public final Lcom/cloud/hisavana/sdk/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/a;
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
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/a$a;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/cloud/hisavana/sdk/a$a;Ljava/lang/String;ILjava/lang/Object;)Lcom/cloud/hisavana/sdk/a;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/a$a;->c()Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/a$a;->b(Ljava/lang/String;)Lcom/cloud/hisavana/sdk/a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final declared-synchronized b(Ljava/lang/String;)Lcom/cloud/hisavana/sdk/a;
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "id"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/a;->d()Lcom/cloud/hisavana/sdk/a;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/cloud/hisavana/sdk/a;

    invoke-direct {v0, p1}, Lcom/cloud/hisavana/sdk/a;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/a;->b(Lcom/cloud/hisavana/sdk/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final c()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/cloud/hisavana/sdk/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/cloud/hisavana/sdk/a$a;->d(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/a$a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/a$a;->e()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ew3s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/a;->c(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/cloud/hisavana/sdk/a;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final d(II)Ljava/lang/String;
    .locals 3

    mul-int p0, p1, p2

    const-string v0, "U3N0"

    const/4 v1, 0x1

    if-gt v1, p0, :cond_1

    :goto_0
    rem-int v2, v1, p1

    if-nez v2, :cond_0

    rem-int v2, v1, p2

    if-nez v2, :cond_0

    return-object v0

    :cond_0
    if-eq v1, p0, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lul4;->a()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/cloud/hisavana/sdk/R$string;->abk4:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "getString(...)"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final f()Ljava/lang/String;
    .locals 0

    const-string p0, "Gdef"

    return-object p0
.end method
