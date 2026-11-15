.class public Lcom/transsion/widgets/CustomFastScroller$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgets/CustomFastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

.field mHorizontalThumbHeight:I

.field mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

.field mHorizontalTrackHeight:I

.field mMargin:I

.field mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field mScrollbarMinimumRange:I

.field mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

.field mVerticalThumbHeight:I

.field mVerticalThumbWidth:I

.field mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

.field mVerticalTrackWidth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/transsion/widgets/CustomFastScroller;
    .locals 12

    new-instance v11, Lcom/transsion/widgets/CustomFastScroller;

    iget-object v1, p0, Lcom/transsion/widgets/CustomFastScroller$Builder;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/transsion/widgets/CustomFastScroller$Builder;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    iget-object v3, p0, Lcom/transsion/widgets/CustomFastScroller$Builder;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/transsion/widgets/CustomFastScroller$Builder;->mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    iget-object v5, p0, Lcom/transsion/widgets/CustomFastScroller$Builder;->mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Lcom/transsion/widgets/CustomFastScroller$Builder;->mVerticalThumbWidth:I

    iget v7, p0, Lcom/transsion/widgets/CustomFastScroller$Builder;->mVerticalTrackWidth:I

    iget v8, p0, Lcom/transsion/widgets/CustomFastScroller$Builder;->mScrollbarMinimumRange:I

    iget v9, p0, Lcom/transsion/widgets/CustomFastScroller$Builder;->mMargin:I

    iget v10, p0, Lcom/transsion/widgets/CustomFastScroller$Builder;->mVerticalThumbHeight:I

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/transsion/widgets/CustomFastScroller;-><init>(Landroidx/recyclerview/widget/RecyclerView;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;IIIII)V

    return-object v11
.end method

.method public setHorizontalThumbDrawable(Landroid/graphics/drawable/StateListDrawable;)Lcom/transsion/widgets/CustomFastScroller$Builder;
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgets/CustomFastScroller$Builder;->mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    return-object p0
.end method

.method public setHorizontalThumbHeight(I)Lcom/transsion/widgets/CustomFastScroller$Builder;
    .locals 0

    iput p1, p0, Lcom/transsion/widgets/CustomFastScroller$Builder;->mHorizontalThumbHeight:I

    return-object p0
.end method

.method public setHorizontalTrackDrawable(Landroid/graphics/drawable/Drawable;)Lcom/transsion/widgets/CustomFastScroller$Builder;
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgets/CustomFastScroller$Builder;->mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setHorizontalTrackHeight(I)Lcom/transsion/widgets/CustomFastScroller$Builder;
    .locals 0

    iput p1, p0, Lcom/transsion/widgets/CustomFastScroller$Builder;->mHorizontalTrackHeight:I

    return-object p0
.end method

.method public setMargin(I)Lcom/transsion/widgets/CustomFastScroller$Builder;
    .locals 0

    iput p1, p0, Lcom/transsion/widgets/CustomFastScroller$Builder;->mMargin:I

    return-object p0
.end method

.method public setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)Lcom/transsion/widgets/CustomFastScroller$Builder;
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgets/CustomFastScroller$Builder;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public setScrollbarMinimumRange(I)Lcom/transsion/widgets/CustomFastScroller$Builder;
    .locals 0

    iput p1, p0, Lcom/transsion/widgets/CustomFastScroller$Builder;->mScrollbarMinimumRange:I

    return-object p0
.end method

.method public setVerticalThumbDrawable(Landroid/graphics/drawable/StateListDrawable;)Lcom/transsion/widgets/CustomFastScroller$Builder;
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgets/CustomFastScroller$Builder;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    return-object p0
.end method

.method public setVerticalThumbHeight(I)Lcom/transsion/widgets/CustomFastScroller$Builder;
    .locals 0

    iput p1, p0, Lcom/transsion/widgets/CustomFastScroller$Builder;->mVerticalThumbHeight:I

    return-object p0
.end method

.method public setVerticalThumbWidth(I)Lcom/transsion/widgets/CustomFastScroller$Builder;
    .locals 0

    iput p1, p0, Lcom/transsion/widgets/CustomFastScroller$Builder;->mVerticalThumbWidth:I

    return-object p0
.end method

.method public setVerticalTrackDrawable(Landroid/graphics/drawable/Drawable;)Lcom/transsion/widgets/CustomFastScroller$Builder;
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgets/CustomFastScroller$Builder;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setVerticalTrackWidth(I)Lcom/transsion/widgets/CustomFastScroller$Builder;
    .locals 0

    iput p1, p0, Lcom/transsion/widgets/CustomFastScroller$Builder;->mVerticalTrackWidth:I

    return-object p0
.end method
