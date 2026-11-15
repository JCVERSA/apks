.class public final synthetic Lzcc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:[I

.field public final synthetic c:Landroidx/viewpager2/widget/ViewPager2;

.field public final synthetic d:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>([ILandroidx/viewpager2/widget/ViewPager2;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzcc;->b:[I

    iput-object p2, p0, Lzcc;->c:Landroidx/viewpager2/widget/ViewPager2;

    iput-object p3, p0, Lzcc;->d:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lzcc;->b:[I

    iget-object v1, p0, Lzcc;->c:Landroidx/viewpager2/widget/ViewPager2;

    iget-object p0, p0, Lzcc;->d:Ljava/lang/Runnable;

    invoke-static {v0, v1, p0}, Ladc;->b([ILandroidx/viewpager2/widget/ViewPager2;Ljava/lang/Runnable;)V

    return-void
.end method
