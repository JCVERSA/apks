.class public final synthetic Lav6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/audio/widgets/MusicPlayListView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/widgets/MusicPlayListView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lav6;->a:Lcom/transsion/audio/widgets/MusicPlayListView;

    return-void
.end method


# virtual methods
.method public final onItemChildClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    iget-object p0, p0, Lav6;->a:Lcom/transsion/audio/widgets/MusicPlayListView;

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/audio/widgets/MusicPlayListView;->h(Lcom/transsion/audio/widgets/MusicPlayListView;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method
