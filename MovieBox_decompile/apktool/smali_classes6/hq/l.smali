.class public final synthetic Lhq/l;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/search_pugc/widget/LinesFlexBoxLayoutManager;

.field public final synthetic b:I

.field public final synthetic c:Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/search_pugc/widget/LinesFlexBoxLayoutManager;ILcom/transsion/search_pugc/fragment/hot/SearchHotFragment;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lhq/l;->a:Lcom/transsion/search_pugc/widget/LinesFlexBoxLayoutManager;

    .line 5
    .line 6
    iput p2, p0, Lhq/l;->b:I

    .line 7
    .line 8
    iput-object p3, p0, Lhq/l;->c:Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;

    .line 9
    .line 10
    iput-boolean p4, p0, Lhq/l;->d:Z

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lhq/l;->a:Lcom/transsion/search_pugc/widget/LinesFlexBoxLayoutManager;

    .line 2
    .line 3
    iget v1, p0, Lhq/l;->b:I

    .line 4
    .line 5
    iget-object v2, p0, Lhq/l;->c:Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;

    .line 6
    .line 7
    iget-boolean v3, p0, Lhq/l;->d:Z

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3}, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->c0(Lcom/transsion/search_pugc/widget/LinesFlexBoxLayoutManager;ILcom/transsion/search_pugc/fragment/hot/SearchHotFragment;Z)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
