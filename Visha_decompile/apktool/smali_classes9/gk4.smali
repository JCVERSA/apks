.class public final synthetic Lgk4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Landroid/view/ViewGroup;

.field public final synthetic d:[Ljava/lang/Class;

.field public final synthetic e:I

.field public final synthetic f:Lcom/transsion/magicvideo/widgets/GuideViews/GuideView$a;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;[Ljava/lang/Class;ILcom/transsion/magicvideo/widgets/GuideViews/GuideView$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgk4;->b:Landroid/content/Context;

    iput-object p2, p0, Lgk4;->c:Landroid/view/ViewGroup;

    iput-object p3, p0, Lgk4;->d:[Ljava/lang/Class;

    iput p4, p0, Lgk4;->e:I

    iput-object p5, p0, Lgk4;->f:Lcom/transsion/magicvideo/widgets/GuideViews/GuideView$a;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lgk4;->b:Landroid/content/Context;

    iget-object v1, p0, Lgk4;->c:Landroid/view/ViewGroup;

    iget-object v2, p0, Lgk4;->d:[Ljava/lang/Class;

    iget v3, p0, Lgk4;->e:I

    iget-object v4, p0, Lgk4;->f:Lcom/transsion/magicvideo/widgets/GuideViews/GuideView$a;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->b(Landroid/content/Context;Landroid/view/ViewGroup;[Ljava/lang/Class;ILcom/transsion/magicvideo/widgets/GuideViews/GuideView$a;Landroid/view/View;)V

    return-void
.end method
