.class public final synthetic Ll0c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

.field public final synthetic b:Landroid/widget/Switch;

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:Landroid/view/View;

.field public final synthetic e:Landroid/view/View;

.field public final synthetic f:Landroid/widget/LinearLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Landroid/widget/Switch;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/widget/LinearLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll0c;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    iput-object p2, p0, Ll0c;->b:Landroid/widget/Switch;

    iput-object p3, p0, Ll0c;->c:Landroid/view/View;

    iput-object p4, p0, Ll0c;->d:Landroid/view/View;

    iput-object p5, p0, Ll0c;->e:Landroid/view/View;

    iput-object p6, p0, Ll0c;->f:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Ll0c;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    iget-object v1, p0, Ll0c;->b:Landroid/widget/Switch;

    iget-object v2, p0, Ll0c;->c:Landroid/view/View;

    iget-object v3, p0, Ll0c;->d:Landroid/view/View;

    iget-object v4, p0, Ll0c;->e:Landroid/view/View;

    iget-object v5, p0, Ll0c;->f:Landroid/widget/LinearLayout;

    move-object v6, p1

    check-cast v6, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;

    invoke-static/range {v0 .. v6}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->z0(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Landroid/widget/Switch;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/widget/LinearLayout;Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;)V

    return-void
.end method
