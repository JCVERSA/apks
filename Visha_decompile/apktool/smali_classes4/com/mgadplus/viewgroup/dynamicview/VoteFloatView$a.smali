.class public Lcom/mgadplus/viewgroup/dynamicview/VoteFloatView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgadplus/viewgroup/dynamicview/VoteAdapter$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgadplus/viewgroup/dynamicview/VoteFloatView;->k(Lcom/mgmi/model/t;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/mgmi/model/t;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Lcom/mgadplus/viewgroup/dynamicview/VoteFloatView;


# direct methods
.method public constructor <init>(Lcom/mgadplus/viewgroup/dynamicview/VoteFloatView;Lcom/mgmi/model/t;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteFloatView$a;->c:Lcom/mgadplus/viewgroup/dynamicview/VoteFloatView;

    iput-object p2, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteFloatView$a;->a:Lcom/mgmi/model/t;

    iput-object p3, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteFloatView$a;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/mgmi/model/u;)V
    .locals 2

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteFloatView$a;->a:Lcom/mgmi/model/t;

    invoke-virtual {v0}, Lcom/mgmi/model/t;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteFloatView$a;->c:Lcom/mgadplus/viewgroup/dynamicview/VoteFloatView;

    iget-object v1, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteFloatView$a;->a:Lcom/mgmi/model/t;

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteFloatView$a;->b:Ljava/util/List;

    invoke-static {v0, v1, p1, p0}, Lcom/mgadplus/viewgroup/dynamicview/VoteFloatView;->j(Lcom/mgadplus/viewgroup/dynamicview/VoteFloatView;Lcom/mgmi/model/t;Lcom/mgmi/model/u;Ljava/util/List;)V

    :cond_0
    return-void
.end method
