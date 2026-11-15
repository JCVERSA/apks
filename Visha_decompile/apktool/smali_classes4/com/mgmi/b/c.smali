.class public Lcom/mgmi/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lcom/mgmi/b/c;


# instance fields
.field private a:Lcom/mgmi/b/a;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/mgmi/b/c;
    .locals 2

    .line 1
    sget-object v0, Lcom/mgmi/b/c;->b:Lcom/mgmi/b/c;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/mgmi/b/c;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/mgmi/b/c;->b:Lcom/mgmi/b/c;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/mgmi/b/c;

    invoke-direct {v1}, Lcom/mgmi/b/c;-><init>()V

    sput-object v1, Lcom/mgmi/b/c;->b:Lcom/mgmi/b/c;

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
    sget-object v0, Lcom/mgmi/b/c;->b:Lcom/mgmi/b/c;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/mgmi/b/c;->a:Lcom/mgmi/b/a;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 11
    invoke-virtual {p0, p1}, Lcom/mgmi/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 12
    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 7
    :try_start_0
    invoke-static {p1, p2}, Lcom/mgmi/b/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/mgmi/b/a;

    move-result-object p1

    iput-object p1, p0, Lcom/mgmi/b/c;->a:Lcom/mgmi/b/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 8
    iget-object p0, p0, Lcom/mgmi/b/c;->a:Lcom/mgmi/b/a;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/mgmi/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
