.class public final synthetic Lbc0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/recyclerview/widget/RecyclerView;

.field public final synthetic c:Lcom/chad/library/adapter/base/BaseQuickAdapter;

.field public final synthetic d:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Lcom/chad/library/adapter/base/BaseQuickAdapter;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbc0;->b:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lbc0;->c:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    iput-object p3, p0, Lbc0;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lbc0;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lbc0;->c:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    iget-object p0, p0, Lbc0;->d:Ljava/util/List;

    invoke-static {v0, v1, p0}, Lcc0;->a(Landroidx/recyclerview/widget/RecyclerView;Lcom/chad/library/adapter/base/BaseQuickAdapter;Ljava/util/List;)V

    return-void
.end method
