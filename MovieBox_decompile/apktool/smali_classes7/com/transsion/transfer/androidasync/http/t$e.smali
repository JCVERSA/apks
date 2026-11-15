.class Lcom/transsion/transfer/androidasync/http/t$e;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/transfer/androidasync/http/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation


# instance fields
.field a:Lcom/transsion/transfer/androidasync/j;

.field b:J

.field final synthetic c:Lcom/transsion/transfer/androidasync/http/t;


# direct methods
.method public constructor <init>(Lcom/transsion/transfer/androidasync/http/t;Lcom/transsion/transfer/androidasync/j;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/t$e;->c:Lcom/transsion/transfer/androidasync/http/t;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    iput-wide v0, p0, Lcom/transsion/transfer/androidasync/http/t$e;->b:J

    .line 11
    .line 12
    iput-object p2, p0, Lcom/transsion/transfer/androidasync/http/t$e;->a:Lcom/transsion/transfer/androidasync/j;

    .line 13
    .line 14
    return-void
.end method
