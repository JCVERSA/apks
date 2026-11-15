.class public final Lkq/c$a;
.super Ldg/a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkq/c;->h(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lkq/c;


# direct methods
.method constructor <init>(Lkq/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkq/c$a;->d:Lkq/c;

    .line 2
    .line 3
    invoke-direct {p0}, Ldg/a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lkq/c$a;->d:Lkq/c;

    .line 2
    .line 3
    invoke-virtual {p1}, Lkq/c;->k()Landroidx/lifecycle/b0;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 p2, 0x0

    .line 8
    invoke-virtual {p1, p2}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/transsion/search_pugc/bean/UGCEveryoneSearchData;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lkq/c$a;->e(Lcom/transsion/search_pugc/bean/UGCEveryoneSearchData;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public e(Lcom/transsion/search_pugc/bean/UGCEveryoneSearchData;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lkq/c$a;->d:Lkq/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lkq/c;->k()Landroidx/lifecycle/b0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
