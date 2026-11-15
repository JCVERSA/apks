.class public final synthetic Lrma;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;

.field public final synthetic c:Landroidx/viewpager2/widget/ViewPager2;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;Landroidx/viewpager2/widget/ViewPager2;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrma;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;

    iput-object p2, p0, Lrma;->c:Landroidx/viewpager2/widget/ViewPager2;

    iput p3, p0, Lrma;->d:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lrma;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;

    iget-object v1, p0, Lrma;->c:Landroidx/viewpager2/widget/ViewPager2;

    iget p0, p0, Lrma;->d:I

    invoke-static {v0, v1, p0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->k(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;Landroidx/viewpager2/widget/ViewPager2;I)V

    return-void
.end method
