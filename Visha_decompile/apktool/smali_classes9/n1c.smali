.class public final synthetic Ln1c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

.field public final synthetic c:Landroid/widget/Switch;

.field public final synthetic d:Z

.field public final synthetic e:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Landroid/widget/Switch;ZLandroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln1c;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    iput-object p2, p0, Ln1c;->c:Landroid/widget/Switch;

    iput-boolean p3, p0, Ln1c;->d:Z

    iput-object p4, p0, Ln1c;->e:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Ln1c;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    iget-object v1, p0, Ln1c;->c:Landroid/widget/Switch;

    iget-boolean v2, p0, Ln1c;->d:Z

    iget-object p0, p0, Ln1c;->e:Landroid/view/View;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->b(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Landroid/widget/Switch;ZLandroid/view/View;Landroid/view/View;)V

    return-void
.end method
