.class public Lcom/app/hubert/guide/core/GuideLayout$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/hubert/guide/core/GuideLayout;->setGuidePage(Lcom/app/hubert/guide/model/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/app/hubert/guide/core/GuideLayout;


# direct methods
.method public constructor <init>(Lcom/app/hubert/guide/core/GuideLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/app/hubert/guide/core/GuideLayout$a;->b:Lcom/app/hubert/guide/core/GuideLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/app/hubert/guide/core/GuideLayout$a;->b:Lcom/app/hubert/guide/core/GuideLayout;

    iget-object p1, p1, Lcom/app/hubert/guide/core/GuideLayout;->guidePage:Lcom/app/hubert/guide/model/a;

    invoke-virtual {p1}, Lcom/app/hubert/guide/model/a;->k()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/app/hubert/guide/core/GuideLayout$a;->b:Lcom/app/hubert/guide/core/GuideLayout;

    invoke-virtual {p0}, Lcom/app/hubert/guide/core/GuideLayout;->remove()V

    :cond_0
    return-void
.end method
