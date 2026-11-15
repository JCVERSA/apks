.class public final synthetic Li0c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

.field public final synthetic c:Landroid/widget/Switch;

.field public final synthetic d:Landroid/view/View;

.field public final synthetic e:Landroid/view/View;

.field public final synthetic f:Landroid/view/View;

.field public final synthetic g:Landroid/widget/LinearLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Landroid/widget/Switch;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/widget/LinearLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li0c;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    iput-object p2, p0, Li0c;->c:Landroid/widget/Switch;

    iput-object p3, p0, Li0c;->d:Landroid/view/View;

    iput-object p4, p0, Li0c;->e:Landroid/view/View;

    iput-object p5, p0, Li0c;->f:Landroid/view/View;

    iput-object p6, p0, Li0c;->g:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 8

    iget-object v0, p0, Li0c;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    iget-object v1, p0, Li0c;->c:Landroid/widget/Switch;

    iget-object v2, p0, Li0c;->d:Landroid/view/View;

    iget-object v3, p0, Li0c;->e:Landroid/view/View;

    iget-object v4, p0, Li0c;->f:Landroid/view/View;

    iget-object v5, p0, Li0c;->g:Landroid/widget/LinearLayout;

    move-object v6, p1

    move v7, p2

    invoke-static/range {v0 .. v7}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->b0(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Landroid/widget/Switch;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/widget/LinearLayout;Landroid/widget/CompoundButton;Z)V

    return-void
.end method
