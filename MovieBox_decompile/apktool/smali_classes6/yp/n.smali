.class public final synthetic Lyp/n;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lcom/transsion/search/fragment/hot/SearchHotFragment;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lcom/transsion/search/fragment/hot/SearchHotFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lyp/n;->a:Ljava/util/List;

    .line 5
    .line 6
    iput-object p2, p0, Lyp/n;->b:Lcom/transsion/search/fragment/hot/SearchHotFragment;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lyp/n;->a:Ljava/util/List;

    .line 2
    .line 3
    iget-object v1, p0, Lyp/n;->b:Lcom/transsion/search/fragment/hot/SearchHotFragment;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/transsion/search/fragment/hot/SearchHotFragment$g;->b(Ljava/util/List;Lcom/transsion/search/fragment/hot/SearchHotFragment;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
