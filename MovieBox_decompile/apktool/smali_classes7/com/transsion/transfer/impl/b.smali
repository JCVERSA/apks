.class public final synthetic Lcom/transsion/transfer/impl/b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lcom/transsion/transfer/impl/ClientViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/transfer/impl/ClientViewModel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/transfer/impl/b;->a:Lcom/transsion/transfer/impl/ClientViewModel;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/impl/b;->a:Lcom/transsion/transfer/impl/ClientViewModel;

    .line 2
    .line 3
    check-cast p1, Ljava/util/List;

    .line 4
    .line 5
    check-cast p2, Ljava/lang/Exception;

    .line 6
    .line 7
    invoke-static {v0, p1, p2}, Lcom/transsion/transfer/impl/ClientViewModel;->c(Lcom/transsion/transfer/impl/ClientViewModel;Ljava/util/List;Ljava/lang/Exception;)Lkotlin/Unit;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
