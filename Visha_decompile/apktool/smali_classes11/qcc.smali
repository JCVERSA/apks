.class public final synthetic Lqcc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/viewpager2/widget/ViewPager2;

.field public final synthetic c:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Landroidx/viewpager2/widget/ViewPager2;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqcc;->b:Landroidx/viewpager2/widget/ViewPager2;

    iput-object p2, p0, Lqcc;->c:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lqcc;->b:Landroidx/viewpager2/widget/ViewPager2;

    iget-object p0, p0, Lqcc;->c:Ljava/lang/Runnable;

    invoke-static {v0, p0}, Lrcc;->a(Landroidx/viewpager2/widget/ViewPager2;Ljava/lang/Runnable;)V

    return-void
.end method
