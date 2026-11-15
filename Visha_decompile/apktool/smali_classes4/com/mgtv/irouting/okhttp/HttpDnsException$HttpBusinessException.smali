.class public Lcom/mgtv/irouting/okhttp/HttpDnsException$HttpBusinessException;
.super Ljava/lang/Exception;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgtv/irouting/okhttp/HttpDnsException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HttpBusinessException"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mgtv/irouting/okhttp/HttpDnsException;


# direct methods
.method public constructor <init>(Lcom/mgtv/irouting/okhttp/HttpDnsException;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mgtv/irouting/okhttp/HttpDnsException$HttpBusinessException;->this$0:Lcom/mgtv/irouting/okhttp/HttpDnsException;

    .line 2
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/mgtv/irouting/okhttp/HttpDnsException;Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/mgtv/irouting/okhttp/HttpDnsException$HttpBusinessException;->this$0:Lcom/mgtv/irouting/okhttp/HttpDnsException;

    .line 4
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/mgtv/irouting/okhttp/HttpDnsException;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/mgtv/irouting/okhttp/HttpDnsException$HttpBusinessException;->this$0:Lcom/mgtv/irouting/okhttp/HttpDnsException;

    .line 6
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Lcom/mgtv/irouting/okhttp/HttpDnsException;Ljava/lang/Throwable;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/mgtv/irouting/okhttp/HttpDnsException$HttpBusinessException;->this$0:Lcom/mgtv/irouting/okhttp/HttpDnsException;

    .line 8
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method
