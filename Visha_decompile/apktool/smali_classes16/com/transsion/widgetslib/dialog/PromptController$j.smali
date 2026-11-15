.class public Lcom/transsion/widgetslib/dialog/PromptController$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/effectengine/bounceeffect/IOverScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/dialog/PromptController;->A(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/widget/AdapterView$OnItemClickListener;)Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

.field public final synthetic b:Lcom/transsion/widgetslib/dialog/PromptController;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/dialog/PromptController;Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController$j;->b:Lcom/transsion/widgetslib/dialog/PromptController;

    iput-object p2, p0, Lcom/transsion/widgetslib/dialog/PromptController$j;->a:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOverScrollUpdated(F)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController$j;->a:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->onOverScrollUpdated(F)V

    return-void
.end method
