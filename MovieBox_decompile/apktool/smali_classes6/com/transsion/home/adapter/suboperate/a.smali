.class public final synthetic Lcom/transsion/home/adapter/suboperate/a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lcom/transsion/home/adapter/suboperate/SubTabAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/adapter/suboperate/SubTabAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/home/adapter/suboperate/a;->a:Lcom/transsion/home/adapter/suboperate/SubTabAdapter;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/a;->a:Lcom/transsion/home/adapter/suboperate/SubTabAdapter;

    .line 2
    .line 3
    check-cast p1, Ljava/lang/String;

    .line 4
    .line 5
    check-cast p2, Lcom/chad/library/adapter/base/provider/BaseItemProvider;

    .line 6
    .line 7
    invoke-static {v0, p1, p2}, Lcom/transsion/home/adapter/suboperate/SubTabAdapter;->Q1(Lcom/transsion/home/adapter/suboperate/SubTabAdapter;Ljava/lang/String;Lcom/chad/library/adapter/base/provider/BaseItemProvider;)Lkotlin/Unit;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
