.class public final synthetic Lcom/transsion/transfer/androidasync/future/r;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/transfer/androidasync/future/z;


# instance fields
.field public final synthetic a:Lcom/transsion/transfer/androidasync/future/y;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/transfer/androidasync/future/y;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/future/r;->a:Lcom/transsion/transfer/androidasync/future/y;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final then(Ljava/lang/Object;)Lcom/transsion/transfer/androidasync/future/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/future/r;->a:Lcom/transsion/transfer/androidasync/future/y;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/transsion/transfer/androidasync/future/w;->k(Lcom/transsion/transfer/androidasync/future/y;Ljava/lang/Object;)Lcom/transsion/transfer/androidasync/future/f;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
