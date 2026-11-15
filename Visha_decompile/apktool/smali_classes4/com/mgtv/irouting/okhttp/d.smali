.class public Lcom/mgtv/irouting/okhttp/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/mgtv/irouting/okhttp/d;->a:[Ljava/lang/String;

    return-void
.end method

.method public static a()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    new-instance v0, Lcom/mgtv/irouting/okhttp/d$1;

    invoke-direct {v0}, Lcom/mgtv/irouting/okhttp/d$1;-><init>()V

    return-object v0
.end method

.method public static synthetic b()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/mgtv/irouting/okhttp/d;->a:[Ljava/lang/String;

    return-object v0
.end method
