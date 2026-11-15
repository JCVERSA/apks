.class public Lcom/transsion/video_edit/ThumbnailBar$b;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/video_edit/ThumbnailBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/transsion/video_edit/ThumbnailBar;


# direct methods
.method public constructor <init>(Lcom/transsion/video_edit/ThumbnailBar;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/video_edit/ThumbnailBar$b;->c:Lcom/transsion/video_edit/ThumbnailBar;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    iget-object v0, p0, Lcom/transsion/video_edit/ThumbnailBar$b;->c:Lcom/transsion/video_edit/ThumbnailBar;

    invoke-static {v0}, Lcom/transsion/video_edit/ThumbnailBar;->a(Lcom/transsion/video_edit/ThumbnailBar;)Lcom/transsion/video_edit/ThumbnailBar$c;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/transsion/video_edit/ThumbnailBar$b;->c:Lcom/transsion/video_edit/ThumbnailBar;

    invoke-static {p2}, Lcom/transsion/video_edit/ThumbnailBar;->a(Lcom/transsion/video_edit/ThumbnailBar;)Lcom/transsion/video_edit/ThumbnailBar$c;

    move-result-object p2

    iget-object p0, p0, Lcom/transsion/video_edit/ThumbnailBar$b;->c:Lcom/transsion/video_edit/ThumbnailBar;

    invoke-static {p0}, Lcom/transsion/video_edit/ThumbnailBar;->b(Lcom/transsion/video_edit/ThumbnailBar;)I

    move-result p0

    invoke-interface {p2, p1, p0}, Lcom/transsion/video_edit/ThumbnailBar$c;->d(Landroidx/recyclerview/widget/RecyclerView;I)V

    :cond_0
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    iget-object p2, p0, Lcom/transsion/video_edit/ThumbnailBar$b;->c:Lcom/transsion/video_edit/ThumbnailBar;

    invoke-static {p2}, Lcom/transsion/video_edit/ThumbnailBar;->a(Lcom/transsion/video_edit/ThumbnailBar;)Lcom/transsion/video_edit/ThumbnailBar$c;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/transsion/video_edit/ThumbnailBar$b;->c:Lcom/transsion/video_edit/ThumbnailBar;

    invoke-static {p2}, Lcom/transsion/video_edit/ThumbnailBar;->a(Lcom/transsion/video_edit/ThumbnailBar;)Lcom/transsion/video_edit/ThumbnailBar$c;

    move-result-object p2

    iget-object p0, p0, Lcom/transsion/video_edit/ThumbnailBar$b;->c:Lcom/transsion/video_edit/ThumbnailBar;

    invoke-static {p0}, Lcom/transsion/video_edit/ThumbnailBar;->b(Lcom/transsion/video_edit/ThumbnailBar;)I

    move-result p0

    invoke-interface {p2, p1, p0}, Lcom/transsion/video_edit/ThumbnailBar$c;->h(Landroidx/recyclerview/widget/RecyclerView;I)V

    :cond_0
    return-void
.end method
