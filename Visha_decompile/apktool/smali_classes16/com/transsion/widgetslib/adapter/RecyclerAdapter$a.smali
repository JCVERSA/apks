.class public Lcom/transsion/widgetslib/adapter/RecyclerAdapter$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/adapter/RecyclerAdapter;->b(Lcom/transsion/widgetslib/adapter/RecyclerAdapter$Holder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:I

.field public final synthetic e:Lcom/transsion/widgetslib/adapter/RecyclerAdapter;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/adapter/RecyclerAdapter;Landroid/view/View;Ljava/lang/Object;I)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/adapter/RecyclerAdapter$a;->e:Lcom/transsion/widgetslib/adapter/RecyclerAdapter;

    iput-object p2, p0, Lcom/transsion/widgetslib/adapter/RecyclerAdapter$a;->b:Landroid/view/View;

    iput-object p3, p0, Lcom/transsion/widgetslib/adapter/RecyclerAdapter$a;->c:Ljava/lang/Object;

    iput p4, p0, Lcom/transsion/widgetslib/adapter/RecyclerAdapter$a;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object p1, p0, Lcom/transsion/widgetslib/adapter/RecyclerAdapter$a;->e:Lcom/transsion/widgetslib/adapter/RecyclerAdapter;

    iget-object v0, p0, Lcom/transsion/widgetslib/adapter/RecyclerAdapter$a;->b:Landroid/view/View;

    iget-object v1, p0, Lcom/transsion/widgetslib/adapter/RecyclerAdapter$a;->c:Ljava/lang/Object;

    iget v2, p0, Lcom/transsion/widgetslib/adapter/RecyclerAdapter$a;->d:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/transsion/widgetslib/adapter/RecyclerAdapter;->d(Landroid/view/View;Ljava/lang/Object;I)V

    iget-object p1, p0, Lcom/transsion/widgetslib/adapter/RecyclerAdapter$a;->e:Lcom/transsion/widgetslib/adapter/RecyclerAdapter;

    iget-object v0, p1, Lcom/transsion/widgetslib/adapter/RecyclerAdapter;->p:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/transsion/widgetslib/adapter/RecyclerAdapter$a;->b:Landroid/view/View;

    iget v3, p0, Lcom/transsion/widgetslib/adapter/RecyclerAdapter$a;->d:I

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v4

    const/4 v1, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_0
    return-void
.end method
