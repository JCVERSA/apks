.class Lcom/mgadplus/viewgroup/dynamicview/VoteSchemeView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgadplus/viewgroup/dynamicview/VoteSchemeView;->disappear(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgadplus/viewgroup/dynamicview/VoteSchemeView;


# direct methods
.method public constructor <init>(Lcom/mgadplus/viewgroup/dynamicview/VoteSchemeView;)V
    .locals 0

    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteSchemeView$3;->a:Lcom/mgadplus/viewgroup/dynamicview/VoteSchemeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteSchemeView$3;->a:Lcom/mgadplus/viewgroup/dynamicview/VoteSchemeView;

    invoke-static {v0}, Lcom/mgadplus/viewgroup/dynamicview/VoteSchemeView;->h(Lcom/mgadplus/viewgroup/dynamicview/VoteSchemeView;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteSchemeView$3;->a:Lcom/mgadplus/viewgroup/dynamicview/VoteSchemeView;

    invoke-static {v0, p0}, Ll4d;->g(Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method
