.class Lcom/transsion/transfer/androidasync/http/v$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lst/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/androidasync/http/v;->f(Lcom/transsion/transfer/androidasync/http/g$c;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lst/a;

.field final synthetic b:Lcom/transsion/transfer/androidasync/n;

.field final synthetic c:Lcom/transsion/transfer/androidasync/http/v;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/androidasync/http/v;Lst/a;Lcom/transsion/transfer/androidasync/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/v$a;->c:Lcom/transsion/transfer/androidasync/http/v;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/transfer/androidasync/http/v$a;->a:Lst/a;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/transfer/androidasync/http/v$a;->b:Lcom/transsion/transfer/androidasync/n;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public g(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/v$a;->a:Lst/a;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/transsion/transfer/androidasync/a0;->b(Lst/a;Ljava/lang/Exception;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/v$a;->b:Lcom/transsion/transfer/androidasync/n;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p1, v0}, Lcom/transsion/transfer/androidasync/n;->g(Z)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/v$a;->b:Lcom/transsion/transfer/androidasync/n;

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Lcom/transsion/transfer/androidasync/n;->o(I)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method
