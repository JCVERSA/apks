.class public final synthetic Lwcc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:[Z

.field public final synthetic c:I

.field public final synthetic d:Landroidx/viewpager2/widget/ViewPager2;

.field public final synthetic e:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>([ZILandroidx/viewpager2/widget/ViewPager2;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwcc;->b:[Z

    iput p2, p0, Lwcc;->c:I

    iput-object p3, p0, Lwcc;->d:Landroidx/viewpager2/widget/ViewPager2;

    iput-object p4, p0, Lwcc;->e:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lwcc;->b:[Z

    iget v1, p0, Lwcc;->c:I

    iget-object v2, p0, Lwcc;->d:Landroidx/viewpager2/widget/ViewPager2;

    iget-object p0, p0, Lwcc;->e:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, p0}, Ladc;->e([ZILandroidx/viewpager2/widget/ViewPager2;Ljava/lang/Runnable;)V

    return-void
.end method
