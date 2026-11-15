.class public Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$a;
.super Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->select(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic o:I

.field public final synthetic p:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field public final synthetic q:Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIFFFFLandroidx/recyclerview/widget/RecyclerView$LayoutManager;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$a;->q:Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;

    move/from16 v1, p10

    iput v1, v0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$a;->o:I

    move-object/from16 v1, p11

    iput-object v1, v0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$a;->p:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$c;-><init>(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIFFFFLandroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$c;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-boolean p1, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$c;->j:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$a;->q:Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    throw p0
.end method
