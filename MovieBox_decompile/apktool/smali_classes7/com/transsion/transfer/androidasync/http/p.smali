.class public final synthetic Lcom/transsion/transfer/androidasync/http/p;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/transfer/androidasync/future/d;


# instance fields
.field public final synthetic a:Lcom/transsion/transfer/androidasync/http/t;

.field public final synthetic b:Lcom/transsion/transfer/androidasync/http/g$a;

.field public final synthetic c:Landroid/net/Uri;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/transfer/androidasync/http/t;Lcom/transsion/transfer/androidasync/http/g$a;Landroid/net/Uri;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/p;->a:Lcom/transsion/transfer/androidasync/http/t;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/transfer/androidasync/http/p;->b:Lcom/transsion/transfer/androidasync/http/g$a;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/transsion/transfer/androidasync/http/p;->c:Landroid/net/Uri;

    .line 9
    .line 10
    iput p4, p0, Lcom/transsion/transfer/androidasync/http/p;->d:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/p;->a:Lcom/transsion/transfer/androidasync/http/t;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/http/p;->b:Lcom/transsion/transfer/androidasync/http/g$a;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/transfer/androidasync/http/p;->c:Landroid/net/Uri;

    .line 6
    .line 7
    iget v3, p0, Lcom/transsion/transfer/androidasync/http/p;->d:I

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3, p1}, Lcom/transsion/transfer/androidasync/http/t;->l(Lcom/transsion/transfer/androidasync/http/t;Lcom/transsion/transfer/androidasync/http/g$a;Landroid/net/Uri;ILjava/lang/Exception;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
