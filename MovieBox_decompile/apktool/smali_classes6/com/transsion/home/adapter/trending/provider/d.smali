.class public final synthetic Lcom/transsion/home/adapter/trending/provider/d;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/transsion/home/adapter/trending/provider/e;

.field public final synthetic c:Lcom/transsion/home/bean/HomePreferencesContentItem;

.field public final synthetic d:Landroid/widget/LinearLayout;

.field public final synthetic e:I

.field public final synthetic f:Landroid/content/Context;

.field public final synthetic g:Landroid/widget/LinearLayout;

.field public final synthetic h:Landroid/widget/ImageView;

.field public final synthetic i:Lcom/transsion/baseui/widget/GradientTextView;


# direct methods
.method public synthetic constructor <init>(ZLcom/transsion/home/adapter/trending/provider/e;Lcom/transsion/home/bean/HomePreferencesContentItem;Landroid/widget/LinearLayout;ILandroid/content/Context;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Lcom/transsion/baseui/widget/GradientTextView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/transsion/home/adapter/trending/provider/d;->a:Z

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/home/adapter/trending/provider/d;->b:Lcom/transsion/home/adapter/trending/provider/e;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/transsion/home/adapter/trending/provider/d;->c:Lcom/transsion/home/bean/HomePreferencesContentItem;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/transsion/home/adapter/trending/provider/d;->d:Landroid/widget/LinearLayout;

    .line 11
    .line 12
    iput p5, p0, Lcom/transsion/home/adapter/trending/provider/d;->e:I

    .line 13
    .line 14
    iput-object p6, p0, Lcom/transsion/home/adapter/trending/provider/d;->f:Landroid/content/Context;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/transsion/home/adapter/trending/provider/d;->g:Landroid/widget/LinearLayout;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/transsion/home/adapter/trending/provider/d;->h:Landroid/widget/ImageView;

    .line 19
    .line 20
    iput-object p9, p0, Lcom/transsion/home/adapter/trending/provider/d;->i:Lcom/transsion/baseui/widget/GradientTextView;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/transsion/home/adapter/trending/provider/d;->a:Z

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/home/adapter/trending/provider/d;->b:Lcom/transsion/home/adapter/trending/provider/e;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/home/adapter/trending/provider/d;->c:Lcom/transsion/home/bean/HomePreferencesContentItem;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/home/adapter/trending/provider/d;->d:Landroid/widget/LinearLayout;

    .line 8
    .line 9
    iget v4, p0, Lcom/transsion/home/adapter/trending/provider/d;->e:I

    .line 10
    .line 11
    iget-object v5, p0, Lcom/transsion/home/adapter/trending/provider/d;->f:Landroid/content/Context;

    .line 12
    .line 13
    iget-object v6, p0, Lcom/transsion/home/adapter/trending/provider/d;->g:Landroid/widget/LinearLayout;

    .line 14
    .line 15
    iget-object v7, p0, Lcom/transsion/home/adapter/trending/provider/d;->h:Landroid/widget/ImageView;

    .line 16
    .line 17
    iget-object v8, p0, Lcom/transsion/home/adapter/trending/provider/d;->i:Lcom/transsion/baseui/widget/GradientTextView;

    .line 18
    .line 19
    move-object v9, p1

    .line 20
    invoke-static/range {v0 .. v9}, Lcom/transsion/home/adapter/trending/provider/e;->y(ZLcom/transsion/home/adapter/trending/provider/e;Lcom/transsion/home/bean/HomePreferencesContentItem;Landroid/widget/LinearLayout;ILandroid/content/Context;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Lcom/transsion/baseui/widget/GradientTextView;Landroid/view/View;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
