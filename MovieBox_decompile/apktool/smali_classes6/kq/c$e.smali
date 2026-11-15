.class public final Lkq/c$e;
.super Ldg/a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkq/c;->r(Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lkq/c;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lkq/c;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkq/c$e;->d:Lkq/c;

    .line 2
    .line 3
    iput-object p2, p0, Lkq/c$e;->e:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ldg/a;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lkq/c$e;->d:Lkq/c;

    .line 2
    .line 3
    invoke-virtual {p1}, Lkq/c;->m()Landroidx/lifecycle/b0;

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
    check-cast p1, Lcom/transsion/search_pugc/bean/UGCSearchSuggestData;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lkq/c$e;->e(Lcom/transsion/search_pugc/bean/UGCSearchSuggestData;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public e(Lcom/transsion/search_pugc/bean/UGCSearchSuggestData;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lkq/c$e;->d:Lkq/c;

    .line 2
    .line 3
    iget-object v1, p0, Lkq/c$e;->e:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Lkq/c;->e(Lkq/c;Ljava/lang/String;Lcom/transsion/search_pugc/bean/UGCSearchSuggestData;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
