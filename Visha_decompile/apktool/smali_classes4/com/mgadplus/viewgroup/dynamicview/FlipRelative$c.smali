.class public Lcom/mgadplus/viewgroup/dynamicview/FlipRelative$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgadplus/viewgroup/dynamicview/FlipRelative;->a(Lcom/mgmi/model/VASTFloatAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/mgadplus/viewgroup/dynamicview/FlipRelative;


# direct methods
.method public constructor <init>(Lcom/mgadplus/viewgroup/dynamicview/FlipRelative;)V
    .locals 0

    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/FlipRelative$c;->b:Lcom/mgadplus/viewgroup/dynamicview/FlipRelative;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/FlipRelative$c;->b:Lcom/mgadplus/viewgroup/dynamicview/FlipRelative;

    invoke-static {p1}, Lcom/mgadplus/viewgroup/dynamicview/FlipRelative;->h(Lcom/mgadplus/viewgroup/dynamicview/FlipRelative;)Lcom/mgadplus/viewgroup/dynamicview/a$a;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/FlipRelative$c;->b:Lcom/mgadplus/viewgroup/dynamicview/FlipRelative;

    invoke-static {p0}, Lcom/mgadplus/viewgroup/dynamicview/FlipRelative;->h(Lcom/mgadplus/viewgroup/dynamicview/FlipRelative;)Lcom/mgadplus/viewgroup/dynamicview/a$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/dynamicview/a$a;->a()V

    :cond_0
    return-void
.end method
