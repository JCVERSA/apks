.class Lcom/mgtv/a/d/a/a/a$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/a/d/a/a/a;->a(Lcom/mgmi/model/VASTAd;Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/mgtv/a/d/a/a/a;


# direct methods
.method public constructor <init>(Lcom/mgtv/a/d/a/a/a;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/a/d/a/a/a$12;->b:Lcom/mgtv/a/d/a/a/a;

    iput-object p2, p0, Lcom/mgtv/a/d/a/a/a$12;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/mgtv/a/d/a/a/a$12;->b:Lcom/mgtv/a/d/a/a/a;

    iget-object p0, p0, Lcom/mgtv/a/d/a/a/a$12;->a:Landroid/view/View;

    invoke-virtual {p1, p0}, Lcom/mgtv/a/d/a/a/a;->a(Landroid/view/View;)V

    return-void
.end method
