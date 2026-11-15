.class public final synthetic Lhk4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Landroid/view/ViewGroup;

.field public final synthetic c:Lcom/transsion/magicvideo/widgets/GuideViews/GuideView$a;


# direct methods
.method public synthetic constructor <init>(Landroid/view/ViewGroup;Lcom/transsion/magicvideo/widgets/GuideViews/GuideView$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhk4;->b:Landroid/view/ViewGroup;

    iput-object p2, p0, Lhk4;->c:Lcom/transsion/magicvideo/widgets/GuideViews/GuideView$a;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lhk4;->b:Landroid/view/ViewGroup;

    iget-object p0, p0, Lhk4;->c:Lcom/transsion/magicvideo/widgets/GuideViews/GuideView$a;

    invoke-static {v0, p0, p1}, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->d(Landroid/view/ViewGroup;Lcom/transsion/magicvideo/widgets/GuideViews/GuideView$a;Landroid/view/View;)V

    return-void
.end method
