.class public Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$e;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->N0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$e;->c:Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    const/4 p0, 0x1

    if-ne p2, p0, :cond_0

    const-string p0, "vd_cp_playlist_video_slide"

    invoke-static {p0}, Lhb0;->markDirect(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
