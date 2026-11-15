.class public final synthetic Ls2a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemLongClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls2a;->a:Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;

    return-void
.end method


# virtual methods
.method public final onItemLongClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)Z
    .locals 0

    iget-object p0, p0, Ls2a;->a:Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->Y(Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)Z

    move-result p0

    return p0
.end method
