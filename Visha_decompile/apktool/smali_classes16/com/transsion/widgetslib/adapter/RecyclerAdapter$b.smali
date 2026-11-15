.class public Lcom/transsion/widgetslib/adapter/RecyclerAdapter$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

    iput-object p1, p0, Lcom/transsion/widgetslib/adapter/RecyclerAdapter$b;->e:Lcom/transsion/widgetslib/adapter/RecyclerAdapter;

    iput-object p2, p0, Lcom/transsion/widgetslib/adapter/RecyclerAdapter$b;->b:Landroid/view/View;

    iput-object p3, p0, Lcom/transsion/widgetslib/adapter/RecyclerAdapter$b;->c:Ljava/lang/Object;

    iput p4, p0, Lcom/transsion/widgetslib/adapter/RecyclerAdapter$b;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    iget-object p1, p0, Lcom/transsion/widgetslib/adapter/RecyclerAdapter$b;->e:Lcom/transsion/widgetslib/adapter/RecyclerAdapter;

    iget-object v0, p0, Lcom/transsion/widgetslib/adapter/RecyclerAdapter$b;->b:Landroid/view/View;

    iget-object v1, p0, Lcom/transsion/widgetslib/adapter/RecyclerAdapter$b;->c:Ljava/lang/Object;

    iget p0, p0, Lcom/transsion/widgetslib/adapter/RecyclerAdapter$b;->d:I

    invoke-virtual {p1, v0, v1, p0}, Lcom/transsion/widgetslib/adapter/RecyclerAdapter;->g(Landroid/view/View;Ljava/lang/Object;I)Z

    move-result p0

    return p0
.end method
