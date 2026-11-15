.class Lcom/cloud/hisavana/net/utils/CommonWorkThread$WorkThreadHolder;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/net/utils/CommonWorkThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WorkThreadHolder"
.end annotation


# static fields
.field private static final a:Lcom/cloud/hisavana/net/utils/CommonWorkThread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/cloud/hisavana/net/utils/CommonWorkThread;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/cloud/hisavana/net/utils/CommonWorkThread;-><init>(Lcom/cloud/hisavana/net/utils/CommonWorkThread$1;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/cloud/hisavana/net/utils/CommonWorkThread$WorkThreadHolder;->a:Lcom/cloud/hisavana/net/utils/CommonWorkThread;

    .line 8
    .line 9
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
