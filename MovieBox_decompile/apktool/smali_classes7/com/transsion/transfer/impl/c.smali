.class public final synthetic Lcom/transsion/transfer/impl/c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lcom/transsion/transfer/impl/ClientViewModel;

.field public final synthetic b:Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/transfer/impl/ClientViewModel;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/transfer/impl/c;->a:Lcom/transsion/transfer/impl/ClientViewModel;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/transfer/impl/c;->b:Lkotlin/jvm/functions/Function2;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/impl/c;->a:Lcom/transsion/transfer/impl/ClientViewModel;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/transfer/impl/c;->b:Lkotlin/jvm/functions/Function2;

    .line 4
    .line 5
    check-cast p1, Ljava/lang/Boolean;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    check-cast p2, Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v0, v1, p1, p2}, Lcom/transsion/transfer/impl/ClientViewModel;->d(Lcom/transsion/transfer/impl/ClientViewModel;Lkotlin/jvm/functions/Function2;ZLjava/lang/String;)Lkotlin/Unit;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method
