.class public final Lcom/transsion/transfer/impl/ClientViewModel$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/impl/ClientViewModel;-><init>(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/transfer/impl/ClientViewModel;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/impl/ClientViewModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/impl/ClientViewModel$a;->a:Lcom/transsion/transfer/impl/ClientViewModel;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/impl/ClientViewModel$a;->a:Lcom/transsion/transfer/impl/ClientViewModel;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/transsion/transfer/impl/ClientViewModel;->j(Lcom/transsion/transfer/impl/ClientViewModel;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/transsion/transfer/impl/ClientViewModel$a;->a:Lcom/transsion/transfer/impl/ClientViewModel;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/transsion/transfer/impl/ClientViewModel;->h(Lcom/transsion/transfer/impl/ClientViewModel;)Landroidx/lifecycle/b0;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p1, v0}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    if-nez p2, :cond_0

    .line 20
    .line 21
    sget-object p1, Lcu/b;->a:Lcu/b;

    .line 22
    .line 23
    sget-object p2, Lcom/transsion/transfer/impl/client/TransferClient;->t:Lcom/transsion/transfer/impl/client/TransferClient$a;

    .line 24
    .line 25
    invoke-virtual {p2}, Lcom/transsion/transfer/impl/client/TransferClient$a;->k()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-virtual {p1, p3, p2}, Lcu/b;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    check-cast p2, Ljava/lang/Boolean;

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    check-cast p3, Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/transfer/impl/ClientViewModel$a;->a(Ljava/lang/String;ZLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 15
    .line 16
    return-object p1
.end method
