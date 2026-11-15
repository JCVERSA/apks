.class public Lmj7;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static b:Lmj7;


# instance fields
.field public final a:Lhyperion/hap/IStoreManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/transsion/security/api/hap/TranStoreManagerLite;->b:Lcom/transsion/security/api/hap/TranStoreManagerLite$Companion;

    invoke-virtual {v0, p1}, Ltn9;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lhyperion/hap/IStoreManager;

    iput-object p1, p0, Lmj7;->a:Lhyperion/hap/IStoreManager;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lmj7;
    .locals 2

    sget-object v0, Lmj7;->b:Lmj7;

    if-nez v0, :cond_1

    const-class v0, Lmj7;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lmj7;->b:Lmj7;

    if-nez v1, :cond_0

    new-instance v1, Lmj7;

    invoke-direct {v1, p0}, Lmj7;-><init>(Landroid/content/Context;)V

    sput-object v1, Lmj7;->b:Lmj7;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    sget-object p0, Lmj7;->b:Lmj7;

    return-object p0
.end method
