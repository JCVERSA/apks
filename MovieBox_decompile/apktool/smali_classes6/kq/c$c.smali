.class final Lkq/c$c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lyx/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkq/c;->q(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lkq/c;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lkq/c;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkq/c$c;->a:Lkq/c;

    .line 2
    .line 3
    iput-object p2, p0, Lkq/c$c;->b:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lcom/transsion/search_pugc/bean/UGCSearchSuggestData;)V
    .locals 2

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lkq/c$c;->a:Lkq/c;

    .line 7
    .line 8
    iget-object v1, p0, Lkq/c$c;->b:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v0, v1, p1}, Lkq/c;->e(Lkq/c;Ljava/lang/String;Lcom/transsion/search_pugc/bean/UGCSearchSuggestData;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/transsion/search_pugc/bean/UGCSearchSuggestData;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lkq/c$c;->a(Lcom/transsion/search_pugc/bean/UGCSearchSuggestData;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
