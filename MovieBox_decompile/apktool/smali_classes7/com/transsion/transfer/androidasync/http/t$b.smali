.class Lcom/transsion/transfer/androidasync/http/t$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lst/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/androidasync/http/t;->q(Lcom/transsion/transfer/androidasync/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/transfer/androidasync/j;

.field final synthetic b:Lcom/transsion/transfer/androidasync/http/t;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/androidasync/http/t;Lcom/transsion/transfer/androidasync/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/t$b;->b:Lcom/transsion/transfer/androidasync/http/t;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/transfer/androidasync/http/t$b;->a:Lcom/transsion/transfer/androidasync/j;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public g(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/t$b;->a:Lcom/transsion/transfer/androidasync/j;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-interface {p1, v0}, Lcom/transsion/transfer/androidasync/s;->i(Lst/a;)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/t$b;->a:Lcom/transsion/transfer/androidasync/j;

    .line 8
    .line 9
    invoke-interface {p1}, Lcom/transsion/transfer/androidasync/p;->close()V

    .line 10
    .line 11
    .line 12
    return-void
.end method
