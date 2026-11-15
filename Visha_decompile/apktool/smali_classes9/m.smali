.class public final synthetic Lm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:Landroid/view/View;

.field public final synthetic e:Landroid/widget/Switch;

.field public final synthetic f:Landroid/content/Context;

.field public final synthetic g:Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;

.field public final synthetic h:Landroid/widget/ImageView;

.field public final synthetic i:Ljava/lang/Boolean;

.field public final synthetic j:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

.field public final synthetic k:Landroid/widget/LinearLayout;

.field public final synthetic l:Landroid/widget/LinearLayout;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/widget/Switch;Landroid/content/Context;Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;Landroid/widget/ImageView;Ljava/lang/Boolean;Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm;->b:Landroid/view/View;

    iput-object p2, p0, Lm;->c:Landroid/view/View;

    iput-object p3, p0, Lm;->d:Landroid/view/View;

    iput-object p4, p0, Lm;->e:Landroid/widget/Switch;

    iput-object p5, p0, Lm;->f:Landroid/content/Context;

    iput-object p6, p0, Lm;->g:Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;

    iput-object p7, p0, Lm;->h:Landroid/widget/ImageView;

    iput-object p8, p0, Lm;->i:Ljava/lang/Boolean;

    iput-object p9, p0, Lm;->j:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    iput-object p10, p0, Lm;->k:Landroid/widget/LinearLayout;

    iput-object p11, p0, Lm;->l:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 13

    iget-object v0, p0, Lm;->b:Landroid/view/View;

    iget-object v1, p0, Lm;->c:Landroid/view/View;

    iget-object v2, p0, Lm;->d:Landroid/view/View;

    iget-object v3, p0, Lm;->e:Landroid/widget/Switch;

    iget-object v4, p0, Lm;->f:Landroid/content/Context;

    iget-object v5, p0, Lm;->g:Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;

    iget-object v6, p0, Lm;->h:Landroid/widget/ImageView;

    iget-object v7, p0, Lm;->i:Ljava/lang/Boolean;

    iget-object v8, p0, Lm;->j:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    iget-object v9, p0, Lm;->k:Landroid/widget/LinearLayout;

    iget-object v10, p0, Lm;->l:Landroid/widget/LinearLayout;

    move-object v11, p1

    move v12, p2

    invoke-static/range {v0 .. v12}, Ln;->b(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/widget/Switch;Landroid/content/Context;Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;Landroid/widget/ImageView;Ljava/lang/Boolean;Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/CompoundButton;Z)V

    return-void
.end method
