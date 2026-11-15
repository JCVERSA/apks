.class public Lcom/mgadplus/viewgroup/dynamicview/VoteAdapter$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgadplus/viewgroup/dynamicview/VoteAdapter;->F(Lcom/mgadplus/viewgroup/dynamicview/c;ILcom/mgmi/model/u;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/mgmi/model/u;

.field public final synthetic c:Lcom/mgadplus/viewgroup/dynamicview/VoteAdapter;


# direct methods
.method public constructor <init>(Lcom/mgadplus/viewgroup/dynamicview/VoteAdapter;Lcom/mgmi/model/u;)V
    .locals 0

    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteAdapter$a;->c:Lcom/mgadplus/viewgroup/dynamicview/VoteAdapter;

    iput-object p2, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteAdapter$a;->b:Lcom/mgmi/model/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteAdapter$a;->c:Lcom/mgadplus/viewgroup/dynamicview/VoteAdapter;

    invoke-static {p1}, Lcom/mgadplus/viewgroup/dynamicview/VoteAdapter;->E(Lcom/mgadplus/viewgroup/dynamicview/VoteAdapter;)Lcom/mgadplus/viewgroup/dynamicview/VoteAdapter$b;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteAdapter$a;->c:Lcom/mgadplus/viewgroup/dynamicview/VoteAdapter;

    invoke-static {p1}, Lcom/mgadplus/viewgroup/dynamicview/VoteAdapter;->E(Lcom/mgadplus/viewgroup/dynamicview/VoteAdapter;)Lcom/mgadplus/viewgroup/dynamicview/VoteAdapter$b;

    move-result-object p1

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteAdapter$a;->b:Lcom/mgmi/model/u;

    invoke-interface {p1, p0}, Lcom/mgadplus/viewgroup/dynamicview/VoteAdapter$b;->a(Lcom/mgmi/model/u;)V

    :cond_0
    return-void
.end method
