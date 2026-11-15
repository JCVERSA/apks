.class public final synthetic Lcom/transsion/transfer/impl/i0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lcom/transsion/transfer/impl/TransferStatusActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/transfer/impl/TransferStatusActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/transfer/impl/i0;->a:Lcom/transsion/transfer/impl/TransferStatusActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/impl/i0;->a:Lcom/transsion/transfer/impl/TransferStatusActivity;

    .line 2
    .line 3
    check-cast p1, Ljava/lang/Boolean;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    check-cast p2, Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0, p1, p2}, Lcom/transsion/transfer/impl/TransferStatusActivity;->s0(Lcom/transsion/transfer/impl/TransferStatusActivity;ZLjava/lang/String;)Lkotlin/Unit;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method
