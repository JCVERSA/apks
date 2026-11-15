.class public Lcom/transsion/tools/activities/SkinsCustomizeActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/tools/activities/SkinsCustomizeActivity;->e2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$d;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$d;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->J1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$d;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->F1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)V

    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$d;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->o1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Lcom/transsion/tools/adapter/ThumbFrameAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/tools/adapter/ThumbFrameAdapter;->g()I

    move-result p1

    if-eq p3, p1, :cond_1

    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$d;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->D1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;Z)V

    invoke-static {p3}, Ld16;->m(I)V

    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$d;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->o1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Lcom/transsion/tools/adapter/ThumbFrameAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/transsion/tools/adapter/ThumbFrameAdapter;->r(I)V

    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$d;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->o1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Lcom/transsion/tools/adapter/ThumbFrameAdapter;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$d;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {p2}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->h1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    iget-object p0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$d;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {p0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->y1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$d;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {p0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->K1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)V

    :goto_0
    return-void
.end method
