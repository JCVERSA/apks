.class public final synthetic Ll1c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

.field public final synthetic c:Landroid/widget/Switch;

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Landroid/widget/Switch;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll1c;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    iput-object p2, p0, Ll1c;->c:Landroid/widget/Switch;

    iput-boolean p3, p0, Ll1c;->d:Z

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Ll1c;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    iget-object v1, p0, Ll1c;->c:Landroid/widget/Switch;

    iget-boolean p0, p0, Ll1c;->d:Z

    invoke-static {v0, v1, p0, p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->A0(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Landroid/widget/Switch;ZLandroid/view/View;)V

    return-void
.end method
