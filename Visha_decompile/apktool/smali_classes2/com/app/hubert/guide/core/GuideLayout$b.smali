.class public Lcom/app/hubert/guide/core/GuideLayout$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/hubert/guide/core/GuideLayout;->b(Lcom/app/hubert/guide/model/a;)V
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

    iput-object p1, p0, Lcom/app/hubert/guide/core/GuideLayout$b;->b:Lcom/app/hubert/guide/core/GuideLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/app/hubert/guide/core/GuideLayout$b;->b:Lcom/app/hubert/guide/core/GuideLayout;

    invoke-virtual {p0}, Lcom/app/hubert/guide/core/GuideLayout;->remove()V

    return-void
.end method
