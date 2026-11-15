.class public final synthetic Lx3a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx3a;->a:Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;

    iput-object p2, p0, Lx3a;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onItemChildClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Lx3a;->a:Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;

    iget-object p0, p0, Lx3a;->b:Ljava/util/List;

    invoke-static {v0, p0, p1, p2, p3}, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->g0(Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;Ljava/util/List;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method
