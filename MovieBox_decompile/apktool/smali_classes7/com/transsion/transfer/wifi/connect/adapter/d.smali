.class public final synthetic Lcom/transsion/transfer/wifi/connect/adapter/d;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/transfer/wifi/connect/adapter/d;->a:Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/wifi/connect/adapter/d;->a:Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;

    .line 2
    .line 3
    check-cast p1, Landroid/content/Context;

    .line 4
    .line 5
    check-cast p2, Landroid/content/Intent;

    .line 6
    .line 7
    invoke-static {v0, p1, p2}, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;->m(Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;Landroid/content/Context;Landroid/content/Intent;)Lkotlin/Unit;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
