.class public Lcom/mgtv/task/http/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Dns;


# static fields
.field private static a:Lcom/mgtv/task/http/h;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mgtv/task/http/h;->b:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/mgtv/task/http/h;
    .locals 1

    sget-object v0, Lcom/mgtv/task/http/h;->a:Lcom/mgtv/task/http/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mgtv/task/http/h;

    invoke-direct {v0, p0}, Lcom/mgtv/task/http/h;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mgtv/task/http/h;->a:Lcom/mgtv/task/http/h;

    :cond_0
    sget-object p0, Lcom/mgtv/task/http/h;->a:Lcom/mgtv/task/http/h;

    return-object p0
.end method


# virtual methods
.method public lookup(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    sget-object p0, Lokhttp3/Dns;->SYSTEM:Lokhttp3/Dns;

    invoke-interface {p0, p1}, Lokhttp3/Dns;->lookup(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
