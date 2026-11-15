.class public final synthetic Lcom/transsion/photoview/m;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/photoview/n;

.field public final synthetic b:Landroid/widget/ImageView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/photoview/n;Landroid/widget/ImageView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/photoview/m;->a:Lcom/transsion/photoview/n;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/photoview/m;->b:Landroid/widget/ImageView;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/photoview/m;->a:Lcom/transsion/photoview/n;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/photoview/m;->b:Landroid/widget/ImageView;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/transsion/photoview/n;->b(Lcom/transsion/photoview/n;Landroid/widget/ImageView;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
