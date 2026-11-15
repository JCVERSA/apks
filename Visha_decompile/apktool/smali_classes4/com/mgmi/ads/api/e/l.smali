.class public Lcom/mgmi/ads/api/e/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgmi/ads/api/e/l$a;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String; = "FULLSCREEN"

.field public static b:Ljava/lang/String; = "HARLFSCREEN"

.field private static d:Lcom/mgmi/ads/api/e/l;


# instance fields
.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mgmi/ads/api/e/l$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mgmi/ads/api/e/l;->c:Ljava/util/ArrayList;

    return-void
.end method

.method public static a()Lcom/mgmi/ads/api/e/l;
    .locals 2

    .line 1
    sget-object v0, Lcom/mgmi/ads/api/e/l;->d:Lcom/mgmi/ads/api/e/l;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/mgmi/ads/api/e/l;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/mgmi/ads/api/e/l;->d:Lcom/mgmi/ads/api/e/l;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/mgmi/ads/api/e/l;

    invoke-direct {v1}, Lcom/mgmi/ads/api/e/l;-><init>()V

    sput-object v1, Lcom/mgmi/ads/api/e/l;->d:Lcom/mgmi/ads/api/e/l;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 5
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_2
    sget-object v0, Lcom/mgmi/ads/api/e/l;->d:Lcom/mgmi/ads/api/e/l;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/mgmi/ads/api/e/l$a;)V
    .locals 3

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/mgmi/ads/api/e/l;->c:Ljava/util/ArrayList;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    and-int/2addr v0, v2

    if-eqz v0, :cond_1

    .line 8
    iget-object p0, p0, Lcom/mgmi/ads/api/e/l;->c:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .line 10
    iget-object v0, p0, Lcom/mgmi/ads/api/e/l;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/mgmi/ads/api/e/l;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 12
    iget-object v2, p0, Lcom/mgmi/ads/api/e/l;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mgmi/ads/api/e/l$a;

    .line 13
    invoke-interface {v2, p1}, Lcom/mgmi/ads/api/e/l$a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 14
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public b(Lcom/mgmi/ads/api/e/l$a;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mgmi/ads/api/e/l;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/mgmi/ads/api/e/l;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgmi/ads/api/e/l;->c:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
