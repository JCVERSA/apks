.class public Lcom/transsion/tools/adapter/ThemePreviewAdapter$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/tools/adapter/ThemePreviewAdapter;->s(Lcom/transsion/playercommon/widgets/RoundFrameLayout;Landroid/widget/ImageView;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/playercommon/widgets/RoundFrameLayout;

.field public final synthetic c:Landroid/widget/ImageView;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:I

.field public final synthetic f:Lcom/transsion/tools/adapter/ThemePreviewAdapter;


# direct methods
.method public constructor <init>(Lcom/transsion/tools/adapter/ThemePreviewAdapter;Lcom/transsion/playercommon/widgets/RoundFrameLayout;Landroid/widget/ImageView;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tools/adapter/ThemePreviewAdapter$a;->f:Lcom/transsion/tools/adapter/ThemePreviewAdapter;

    iput-object p2, p0, Lcom/transsion/tools/adapter/ThemePreviewAdapter$a;->b:Lcom/transsion/playercommon/widgets/RoundFrameLayout;

    iput-object p3, p0, Lcom/transsion/tools/adapter/ThemePreviewAdapter$a;->c:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/transsion/tools/adapter/ThemePreviewAdapter$a;->d:Ljava/lang/String;

    iput p5, p0, Lcom/transsion/tools/adapter/ThemePreviewAdapter$a;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 4

    iget-object v0, p0, Lcom/transsion/tools/adapter/ThemePreviewAdapter$a;->b:Lcom/transsion/playercommon/widgets/RoundFrameLayout;

    invoke-static {v0}, Lcom/transsion/tools/adapter/ThemePreviewAdapter;->d(Landroid/view/View;)V

    iget-object v0, p0, Lcom/transsion/tools/adapter/ThemePreviewAdapter$a;->b:Lcom/transsion/playercommon/widgets/RoundFrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/tools/adapter/ThemePreviewAdapter;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/tools/adapter/ThemePreviewAdapter$a;->b:Lcom/transsion/playercommon/widgets/RoundFrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/tools/adapter/ThemePreviewAdapter$a;->b:Lcom/transsion/playercommon/widgets/RoundFrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/tools/adapter/ThemePreviewAdapter$a;->f:Lcom/transsion/tools/adapter/ThemePreviewAdapter;

    iget-object v1, p0, Lcom/transsion/tools/adapter/ThemePreviewAdapter$a;->b:Lcom/transsion/playercommon/widgets/RoundFrameLayout;

    iget-object v2, p0, Lcom/transsion/tools/adapter/ThemePreviewAdapter$a;->c:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/transsion/tools/adapter/ThemePreviewAdapter$a;->d:Ljava/lang/String;

    iget p0, p0, Lcom/transsion/tools/adapter/ThemePreviewAdapter$a;->e:I

    invoke-static {v0, v1, v2, v3, p0}, Lcom/transsion/tools/adapter/ThemePreviewAdapter;->b(Lcom/transsion/tools/adapter/ThemePreviewAdapter;Lcom/transsion/playercommon/widgets/RoundFrameLayout;Landroid/widget/ImageView;Ljava/lang/String;I)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
