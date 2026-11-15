.class public Lcom/mgtv/irouting/utils/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;

.field public static g:Ljava/lang/String;

.field public static h:Ljava/lang/String;

.field public static i:Ljava/lang/String;

.field private static j:Lokhttp3/OkHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    sput-object v0, Lcom/mgtv/irouting/utils/f;->j:Lokhttp3/OkHttpClient;

    const-string v0, "https://hd-ext-v1.log.mgtv.com/dispatcher.do"

    sput-object v0, Lcom/mgtv/irouting/utils/f;->a:Ljava/lang/String;

    const-string v0, "hdns"

    sput-object v0, Lcom/mgtv/irouting/utils/f;->b:Ljava/lang/String;

    const-string v0, "2.12.12"

    sput-object v0, Lcom/mgtv/irouting/utils/f;->c:Ljava/lang/String;

    const-string v0, "hdnss"

    sput-object v0, Lcom/mgtv/irouting/utils/f;->d:Ljava/lang/String;

    const-string v0, "aphone-v1.0.7"

    sput-object v0, Lcom/mgtv/irouting/utils/f;->e:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
