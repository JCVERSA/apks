.class public final Lcom/transsion/transfer/impl/k$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/transfer/impl/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/impl/k;-><init>(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/transfer/impl/k;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/impl/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/impl/k$b;->a:Lcom/transsion/transfer/impl/k;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "clientIp"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "clientDeviceName"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/transsion/transfer/impl/k$b;->a:Lcom/transsion/transfer/impl/k;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/transsion/transfer/impl/k;->c(Lcom/transsion/transfer/impl/k;)Landroidx/lifecycle/b0;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0, p2}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/transsion/transfer/impl/k$b;->a:Lcom/transsion/transfer/impl/k;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/transsion/transfer/impl/k;->g(Lcom/transsion/transfer/impl/k;)Lcom/transsion/transfer/impl/g;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    invoke-interface {v0, p1, p2}, Lcom/transsion/transfer/impl/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/impl/k$b;->a:Lcom/transsion/transfer/impl/k;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/transfer/impl/k;->f(Lcom/transsion/transfer/impl/k;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
