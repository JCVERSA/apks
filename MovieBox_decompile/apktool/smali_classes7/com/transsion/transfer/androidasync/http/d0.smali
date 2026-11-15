.class public final synthetic Lcom/transsion/transfer/androidasync/http/d0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/transfer/androidasync/http/f0;

.field public final synthetic b:[B


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/transfer/androidasync/http/f0;[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/d0;->a:Lcom/transsion/transfer/androidasync/http/f0;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/transfer/androidasync/http/d0;->b:[B

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/d0;->a:Lcom/transsion/transfer/androidasync/http/f0;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/http/d0;->b:[B

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/transsion/transfer/androidasync/http/f0;->l(Lcom/transsion/transfer/androidasync/http/f0;[B)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
