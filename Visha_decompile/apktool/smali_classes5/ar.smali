.class public final synthetic Lar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/DragStartHelper$OnDragStartListener;


# instance fields
.field public final synthetic a:Lcom/transsion/audio/adapter/AudioItemAdapter;

.field public final synthetic b:Lcom/chad/library/adapter/base/BaseViewHolder;

.field public final synthetic c:Lcom/transsion/dbdata/beans/media/AudioItem;

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/adapter/AudioItemAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/media/AudioItem;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lar;->a:Lcom/transsion/audio/adapter/AudioItemAdapter;

    iput-object p2, p0, Lar;->b:Lcom/chad/library/adapter/base/BaseViewHolder;

    iput-object p3, p0, Lar;->c:Lcom/transsion/dbdata/beans/media/AudioItem;

    iput-boolean p4, p0, Lar;->d:Z

    return-void
.end method


# virtual methods
.method public final onDragStart(Landroid/view/View;Landroidx/core/view/DragStartHelper;)Z
    .locals 6

    iget-object v0, p0, Lar;->a:Lcom/transsion/audio/adapter/AudioItemAdapter;

    iget-object v1, p0, Lar;->b:Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-object v2, p0, Lar;->c:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-boolean v3, p0, Lar;->d:Z

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/transsion/audio/adapter/AudioItemAdapter;->z(Lcom/transsion/audio/adapter/AudioItemAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/media/AudioItem;ZLandroid/view/View;Landroidx/core/view/DragStartHelper;)Z

    move-result p0

    return p0
.end method
