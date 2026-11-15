.class public final synthetic Lcom/transsion/home/fragment/dialog/k;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/transsion/home/fragment/dialog/HomePreferencesDialog;

.field public final synthetic c:Lcom/transsion/home/bean/HomePreferencesContentItem;

.field public final synthetic d:Landroid/content/Context;

.field public final synthetic e:Landroid/widget/LinearLayout;

.field public final synthetic f:Landroid/widget/ImageView;

.field public final synthetic g:Lcom/transsion/baseui/widget/GradientTextView;


# direct methods
.method public synthetic constructor <init>(ZLcom/transsion/home/fragment/dialog/HomePreferencesDialog;Lcom/transsion/home/bean/HomePreferencesContentItem;Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Lcom/transsion/baseui/widget/GradientTextView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/transsion/home/fragment/dialog/k;->a:Z

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/home/fragment/dialog/k;->b:Lcom/transsion/home/fragment/dialog/HomePreferencesDialog;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/transsion/home/fragment/dialog/k;->c:Lcom/transsion/home/bean/HomePreferencesContentItem;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/transsion/home/fragment/dialog/k;->d:Landroid/content/Context;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/transsion/home/fragment/dialog/k;->e:Landroid/widget/LinearLayout;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/transsion/home/fragment/dialog/k;->f:Landroid/widget/ImageView;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/transsion/home/fragment/dialog/k;->g:Lcom/transsion/baseui/widget/GradientTextView;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/transsion/home/fragment/dialog/k;->a:Z

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/home/fragment/dialog/k;->b:Lcom/transsion/home/fragment/dialog/HomePreferencesDialog;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/home/fragment/dialog/k;->c:Lcom/transsion/home/bean/HomePreferencesContentItem;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/home/fragment/dialog/k;->d:Landroid/content/Context;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/transsion/home/fragment/dialog/k;->e:Landroid/widget/LinearLayout;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/transsion/home/fragment/dialog/k;->f:Landroid/widget/ImageView;

    .line 12
    .line 13
    iget-object v6, p0, Lcom/transsion/home/fragment/dialog/k;->g:Lcom/transsion/baseui/widget/GradientTextView;

    .line 14
    .line 15
    move-object v7, p1

    .line 16
    invoke-static/range {v0 .. v7}, Lcom/transsion/home/fragment/dialog/HomePreferencesDialog;->o0(ZLcom/transsion/home/fragment/dialog/HomePreferencesDialog;Lcom/transsion/home/bean/HomePreferencesContentItem;Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Lcom/transsion/baseui/widget/GradientTextView;Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
