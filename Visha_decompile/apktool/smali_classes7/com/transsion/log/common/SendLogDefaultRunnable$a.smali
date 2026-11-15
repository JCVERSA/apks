.class public Lcom/transsion/log/common/SendLogDefaultRunnable$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/log/common/SendLogDefaultRunnable;->doPostRequest(Ljava/lang/String;Ljava/io/InputStream;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/log/common/SendLogDefaultRunnable;


# direct methods
.method public constructor <init>(Lcom/transsion/log/common/SendLogDefaultRunnable;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/log/common/SendLogDefaultRunnable$a;->a:Lcom/transsion/log/common/SendLogDefaultRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
