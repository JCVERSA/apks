.class public Lcom/mgadplus/viewgroup/dynamicview/MultiAdapter$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgadplus/viewgroup/dynamicview/MultiAdapter;->F(Lcom/mgadplus/viewgroup/dynamicview/c;ILcom/mgmi/model/k;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/mgmi/model/k;

.field public final synthetic c:Lcom/mgadplus/viewgroup/dynamicview/MultiAdapter;


# direct methods
.method public constructor <init>(Lcom/mgadplus/viewgroup/dynamicview/MultiAdapter;Lcom/mgmi/model/k;)V
    .locals 0

    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/MultiAdapter$a;->c:Lcom/mgadplus/viewgroup/dynamicview/MultiAdapter;

    iput-object p2, p0, Lcom/mgadplus/viewgroup/dynamicview/MultiAdapter$a;->b:Lcom/mgmi/model/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/MultiAdapter$a;->c:Lcom/mgadplus/viewgroup/dynamicview/MultiAdapter;

    invoke-static {p0}, Lcom/mgadplus/viewgroup/dynamicview/MultiAdapter;->E(Lcom/mgadplus/viewgroup/dynamicview/MultiAdapter;)Lcom/mgadplus/viewgroup/dynamicview/MultiAdapter$b;

    return-void
.end method
