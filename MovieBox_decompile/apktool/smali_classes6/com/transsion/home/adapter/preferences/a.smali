.class public final synthetic Lcom/transsion/home/adapter/preferences/a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/home/adapter/preferences/b;

.field public final synthetic b:Lcom/transsion/home/bean/HomePreferencesContentItem;

.field public final synthetic c:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/adapter/preferences/b;Lcom/transsion/home/bean/HomePreferencesContentItem;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/home/adapter/preferences/a;->a:Lcom/transsion/home/adapter/preferences/b;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/home/adapter/preferences/a;->b:Lcom/transsion/home/bean/HomePreferencesContentItem;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/transsion/home/adapter/preferences/a;->c:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/home/adapter/preferences/a;->a:Lcom/transsion/home/adapter/preferences/b;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/home/adapter/preferences/a;->b:Lcom/transsion/home/bean/HomePreferencesContentItem;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/home/adapter/preferences/a;->c:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 6
    .line 7
    invoke-static {v0, v1, v2, p1}, Lcom/transsion/home/adapter/preferences/b;->B1(Lcom/transsion/home/adapter/preferences/b;Lcom/transsion/home/bean/HomePreferencesContentItem;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
