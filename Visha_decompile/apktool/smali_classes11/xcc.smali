.class public final synthetic Lxcc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:[Z

.field public final synthetic c:Landroidx/viewpager2/widget/ViewPager2;

.field public final synthetic d:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>([ZLandroidx/viewpager2/widget/ViewPager2;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxcc;->b:[Z

    iput-object p2, p0, Lxcc;->c:Landroidx/viewpager2/widget/ViewPager2;

    iput-object p3, p0, Lxcc;->d:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lxcc;->b:[Z

    iget-object v1, p0, Lxcc;->c:Landroidx/viewpager2/widget/ViewPager2;

    iget-object p0, p0, Lxcc;->d:Ljava/lang/Runnable;

    invoke-static {v0, v1, p0}, Ladc;->f([ZLandroidx/viewpager2/widget/ViewPager2;Ljava/lang/Runnable;)V

    return-void
.end method
