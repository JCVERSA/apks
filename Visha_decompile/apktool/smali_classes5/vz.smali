.class public final synthetic Lvz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# instance fields
.field public final synthetic b:Lcom/transsion/audio/widgets/AudioRingTypeListView;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/widgets/AudioRingTypeListView;Ljava/util/List;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvz;->b:Lcom/transsion/audio/widgets/AudioRingTypeListView;

    iput-object p2, p0, Lvz;->c:Ljava/util/List;

    iput-object p3, p0, Lvz;->d:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 6

    iget-object v0, p0, Lvz;->b:Lcom/transsion/audio/widgets/AudioRingTypeListView;

    iget-object v1, p0, Lvz;->c:Ljava/util/List;

    iget-object v2, p0, Lvz;->d:Landroid/content/Context;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/transsion/audio/widgets/AudioRingTypeListView;->a(Lcom/transsion/audio/widgets/AudioRingTypeListView;Ljava/util/List;Landroid/content/Context;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method
