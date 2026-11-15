.class Lcom/hunantv/imgo/net/ImgoHttpCallBack$2;
.super Lcom/mgtv/task/http/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hunantv/imgo/net/ImgoHttpCallBack;->a(Lcom/hunantv/imgo/net/ImgoErrorStatisticsData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mgtv/task/http/c<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/hunantv/imgo/net/ImgoHttpCallBack;


# direct methods
.method public constructor <init>(Lcom/hunantv/imgo/net/ImgoHttpCallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/net/ImgoHttpCallBack$2;->a:Lcom/hunantv/imgo/net/ImgoHttpCallBack;

    invoke-direct {p0}, Lcom/mgtv/task/http/c;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/hunantv/imgo/net/ImgoHttpCallBack$2;->b(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/hunantv/imgo/net/ImgoHttpCallBack$2;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method
