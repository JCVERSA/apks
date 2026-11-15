.class public final Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;
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
    invoke-direct {p0}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->l()Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;

    move-result-object v0

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->l()Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "getApplicationContext(...)"

    invoke-static {p1, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->y(Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0

    throw p1

    :cond_1
    :goto_2
    return-object v0
.end method
