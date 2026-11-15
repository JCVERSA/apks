.class public final synthetic Lcom/transsion/transfer/androidasync/http/q;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/transfer/androidasync/future/g;


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
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/q;->a:Lcom/transsion/transfer/androidasync/http/t;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/transfer/androidasync/http/q;->b:Lcom/transsion/transfer/androidasync/http/g$a;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/transsion/transfer/androidasync/http/q;->c:Landroid/net/Uri;

    .line 9
    .line 10
    iput p4, p0, Lcom/transsion/transfer/androidasync/http/q;->d:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/q;->a:Lcom/transsion/transfer/androidasync/http/t;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/http/q;->b:Lcom/transsion/transfer/androidasync/http/g$a;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/transfer/androidasync/http/q;->c:Landroid/net/Uri;

    .line 6
    .line 7
    iget v3, p0, Lcom/transsion/transfer/androidasync/http/q;->d:I

    .line 8
    .line 9
    move-object v5, p2

    .line 10
    check-cast v5, Lcom/transsion/transfer/androidasync/j;

    .line 11
    .line 12
    move-object v4, p1

    .line 13
    invoke-static/range {v0 .. v5}, Lcom/transsion/transfer/androidasync/http/t;->i(Lcom/transsion/transfer/androidasync/http/t;Lcom/transsion/transfer/androidasync/http/g$a;Landroid/net/Uri;ILjava/lang/Exception;Lcom/transsion/transfer/androidasync/j;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
