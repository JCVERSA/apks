.class Lcom/transsion/transfer/androidasync/http/n$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/androidasync/http/n;->C(Lcom/transsion/transfer/androidasync/http/g$a;Lst/b;)Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lst/b;

.field final synthetic b:Lcom/transsion/transfer/androidasync/http/n;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/androidasync/http/n;Lst/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/n$a;->b:Lcom/transsion/transfer/androidasync/http/n;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/transfer/androidasync/http/n$a;->a:Lst/b;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;Lcom/transsion/transfer/androidasync/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/n$a;->a:Lst/b;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lst/b;->a(Ljava/lang/Exception;Lcom/transsion/transfer/androidasync/j;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
