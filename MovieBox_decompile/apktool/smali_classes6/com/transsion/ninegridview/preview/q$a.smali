.class Lcom/transsion/ninegridview/preview/q$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/photoview/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ninegridview/preview/q;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/ninegridview/preview/q;


# direct methods
.method constructor <init>(Lcom/transsion/ninegridview/preview/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ninegridview/preview/q$a;->a:Lcom/transsion/ninegridview/preview/q;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ninegridview/preview/q$a;->a:Lcom/transsion/ninegridview/preview/q;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/ninegridview/preview/q;->d(Lcom/transsion/ninegridview/preview/q;)Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsion/ninegridview/preview/ImagePreviewActivity;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->finish()V

    .line 10
    .line 11
    .line 12
    return-void
.end method
