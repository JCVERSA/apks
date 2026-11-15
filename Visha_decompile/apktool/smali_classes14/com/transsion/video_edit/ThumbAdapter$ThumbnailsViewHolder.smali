.class public Lcom/transsion/video_edit/ThumbAdapter$ThumbnailsViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/video_edit/ThumbAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThumbnailsViewHolder"
.end annotation


# instance fields
.field public p:Lcom/transsion/video_edit/ThumbnailsImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    check-cast p1, Lcom/transsion/video_edit/ThumbnailsImageView;

    iput-object p1, p0, Lcom/transsion/video_edit/ThumbAdapter$ThumbnailsViewHolder;->p:Lcom/transsion/video_edit/ThumbnailsImageView;

    return-void
.end method


# virtual methods
.method public a(Lwia;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/video_edit/ThumbAdapter$ThumbnailsViewHolder;->p:Lcom/transsion/video_edit/ThumbnailsImageView;

    invoke-virtual {p0, p1}, Lcom/transsion/video_edit/ThumbnailsImageView;->setImage(Lwia;)V

    return-void
.end method
