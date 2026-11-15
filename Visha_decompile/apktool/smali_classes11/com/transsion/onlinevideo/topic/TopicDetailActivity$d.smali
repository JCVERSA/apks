.class public Lcom/transsion/onlinevideo/topic/TopicDetailActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->M0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/onlinevideo/topic/TopicDetailActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/onlinevideo/topic/TopicDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity$d;->b:Lcom/transsion/onlinevideo/topic/TopicDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity$d;->b:Lcom/transsion/onlinevideo/topic/TopicDetailActivity;

    invoke-static {p0}, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->D0(Lcom/transsion/onlinevideo/topic/TopicDetailActivity;)Lcom/google/android/material/appbar/AppBarLayout;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p1}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(ZZ)V

    return-void
.end method
