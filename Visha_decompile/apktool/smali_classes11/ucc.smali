.class public final synthetic Lucc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:[Z

.field public final synthetic c:[Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field public final synthetic d:Landroidx/viewpager2/widget/ViewPager2;

.field public final synthetic e:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>([Z[Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroidx/viewpager2/widget/ViewPager2;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lucc;->b:[Z

    iput-object p2, p0, Lucc;->c:[Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    iput-object p3, p0, Lucc;->d:Landroidx/viewpager2/widget/ViewPager2;

    iput-object p4, p0, Lucc;->e:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lucc;->b:[Z

    iget-object v1, p0, Lucc;->c:[Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    iget-object v2, p0, Lucc;->d:Landroidx/viewpager2/widget/ViewPager2;

    iget-object p0, p0, Lucc;->e:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, p0}, Ladc;->a([Z[Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroidx/viewpager2/widget/ViewPager2;Ljava/lang/Runnable;)V

    return-void
.end method
