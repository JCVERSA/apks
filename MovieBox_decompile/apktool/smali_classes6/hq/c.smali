.class public final synthetic Lhq/c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lhq/c;->a:Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lhq/c;->a:Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;

    .line 2
    .line 3
    check-cast p1, Lcom/transsion/search_pugc/bean/UGCRankSearchData;

    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->m0(Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;Lcom/transsion/search_pugc/bean/UGCRankSearchData;)Lkotlin/Unit;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method
