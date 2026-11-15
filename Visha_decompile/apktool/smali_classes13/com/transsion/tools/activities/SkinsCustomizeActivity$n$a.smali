.class public Lcom/transsion/tools/activities/SkinsCustomizeActivity$n$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/tools/activities/SkinsCustomizeActivity$n;->e(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/tools/activities/SkinsCustomizeActivity$n;


# direct methods
.method public constructor <init>(Lcom/transsion/tools/activities/SkinsCustomizeActivity$n;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$n$a;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity$n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$n$a;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity$n;

    iget-object v0, v0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$n;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {v0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->X0(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$n$a;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity$n;

    iget-object v0, v0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$n;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {v0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->X0(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$n$a;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity$n;

    iget-object v0, v0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$n;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {v0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->A1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)V

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$n$a;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity$n;

    iget-object v0, v0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$n;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {v0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->X0(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
