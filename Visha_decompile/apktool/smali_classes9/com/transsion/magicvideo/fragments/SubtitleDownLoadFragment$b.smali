.class public Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment$b;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->e1(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment$b;->b:Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    iget-object p2, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment$b;->b:Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;

    invoke-static {p2}, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->n0(Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;)Lcom/transsion/magicvideo/activities/SubtitleManagerActivity;

    move-result-object p2

    const/high16 p3, 0x41700000    # 15.0f

    invoke-static {p2, p3}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment$b;->b:Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;

    invoke-static {p0}, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->n0(Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;)Lcom/transsion/magicvideo/activities/SubtitleManagerActivity;

    move-result-object p0

    invoke-static {p0, p3}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method
