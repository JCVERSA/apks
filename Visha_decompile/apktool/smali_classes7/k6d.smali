.class public Lk6d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljavax/net/ssl/HostnameVerifier;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    sget-object v0, Lk6d;->a:Ljavax/net/ssl/HostnameVerifier;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lk6d;->a:Ljavax/net/ssl/HostnameVerifier;

    if-nez v0, :cond_0

    new-instance v0, Lk6d$a;

    invoke-direct {v0, p0}, Lk6d$a;-><init>(Lk6d;)V

    sput-object v0, Lk6d;->a:Ljavax/net/ssl/HostnameVerifier;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    sget-object p0, Lk6d;->a:Ljavax/net/ssl/HostnameVerifier;

    return-object p0
.end method
