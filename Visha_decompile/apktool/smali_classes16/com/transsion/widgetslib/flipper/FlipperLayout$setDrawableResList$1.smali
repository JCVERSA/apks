.class final Lcom/transsion/widgetslib/flipper/FlipperLayout$setDrawableResList$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lc74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/flipper/FlipperLayout;->setDrawableResList(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lc74;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $drawableResList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/transsion/widgetslib/flipper/FlipperLayout;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/transsion/widgetslib/flipper/FlipperLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/transsion/widgetslib/flipper/FlipperLayout;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$setDrawableResList$1;->$drawableResList:Ljava/util/List;

    iput-object p2, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$setDrawableResList$1;->this$0:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/transsion/widgetslib/flipper/DefaultAdapter;

    iget-object v1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$setDrawableResList$1;->$drawableResList:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/flipper/DefaultAdapter;-><init>(Ljava/util/List;)V

    iget-object p0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$setDrawableResList$1;->this$0:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    invoke-static {p0, v0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$setDefaultAdapter$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;Lcom/transsion/widgetslib/flipper/DefaultAdapter;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout$setDrawableResList$1;->invoke()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    return-object p0
.end method
