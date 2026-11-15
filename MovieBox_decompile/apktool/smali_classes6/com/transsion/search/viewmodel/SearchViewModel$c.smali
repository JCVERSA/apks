.class final Lcom/transsion/search/viewmodel/SearchViewModel$c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lyx/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/search/viewmodel/SearchViewModel;->z(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/search/viewmodel/SearchViewModel;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/transsion/search/viewmodel/SearchViewModel;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/search/viewmodel/SearchViewModel$c;->a:Lcom/transsion/search/viewmodel/SearchViewModel;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/search/viewmodel/SearchViewModel$c;->b:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lcom/transsion/search/bean/SearchSuggestEntity;)V
    .locals 2

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/search/viewmodel/SearchViewModel$c;->a:Lcom/transsion/search/viewmodel/SearchViewModel;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/transsion/search/viewmodel/SearchViewModel$c;->b:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v0, v1, p1}, Lcom/transsion/search/viewmodel/SearchViewModel;->j(Lcom/transsion/search/viewmodel/SearchViewModel;Ljava/lang/String;Lcom/transsion/search/bean/SearchSuggestEntity;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/transsion/search/bean/SearchSuggestEntity;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/transsion/search/viewmodel/SearchViewModel$c;->a(Lcom/transsion/search/bean/SearchSuggestEntity;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
