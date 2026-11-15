.class public final synthetic Lev5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# instance fields
.field public final synthetic b:Lcom/transsion/audio/widgets/LyricLocalSelectView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/widgets/LyricLocalSelectView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lev5;->b:Lcom/transsion/audio/widgets/LyricLocalSelectView;

    return-void
.end method


# virtual methods
.method public final onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    iget-object p0, p0, Lev5;->b:Lcom/transsion/audio/widgets/LyricLocalSelectView;

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/audio/widgets/LyricLocalSelectView;->d(Lcom/transsion/audio/widgets/LyricLocalSelectView;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method
