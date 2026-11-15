.class public final Lu97;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu97$a;
    }
.end annotation


# static fields
.field public static final c:Lu97$a;


# instance fields
.field public a:Ljv9;

.field public b:Ljv9;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lu97$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu97$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lu97;->c:Lu97$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(ZLu97;FLandroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lu97;->d(ZLu97;FLandroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(ZLu97;Landroid/view/ViewGroup;FLandroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static/range {p0 .. p5}, Lu97;->e(ZLu97;Landroid/view/ViewGroup;FLandroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static final d(ZLu97;FLandroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "this$0"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getAction()I

    move-result p4

    const-string v0, "viewGroup"

    if-eqz p4, :cond_1

    const/4 p2, 0x1

    if-eq p4, p2, :cond_0

    const/4 p2, 0x3

    if-eq p4, p2, :cond_0

    goto :goto_0

    :cond_0
    if-nez p0, :cond_2

    invoke-static {p3, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lu97;->i(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    if-nez p0, :cond_2

    invoke-static {p3, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p3, p2}, Lu97;->h(Landroid/view/View;F)V

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final e(ZLu97;Landroid/view/ViewGroup;FLandroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "this$0"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p5}, Landroid/view/MotionEvent;->getAction()I

    move-result p5

    const-string v0, "viewGroup ?: v"

    if-eqz p5, :cond_2

    const/4 p3, 0x1

    if-eq p5, p3, :cond_0

    const/4 p3, 0x3

    if-eq p5, p3, :cond_0

    goto :goto_2

    :cond_0
    if-nez p0, :cond_4

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    move-object p2, p4

    :goto_0
    invoke-static {p2, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lu97;->i(Landroid/view/View;)V

    goto :goto_2

    :cond_2
    if-nez p0, :cond_4

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    move-object p2, p4

    :goto_1
    invoke-static {p2, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Lu97;->h(Landroid/view/View;F)V

    :cond_4
    :goto_2
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final c(Landroid/view/View;FLandroid/view/ViewGroup;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    new-instance v1, Ls97;

    invoke-direct {v1, v0, p0, p2}, Ls97;-><init>(ZLu97;F)V

    invoke-virtual {p3, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    new-instance v1, Lt97;

    invoke-direct {v1, v0, p0, p3, p2}, Lt97;-><init>(ZLu97;Landroid/view/ViewGroup;F)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Lu97;->a:Ljv9;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljv9;->c()V

    :cond_0
    iget-object p0, p0, Lu97;->b:Ljv9;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljv9;->c()V

    :cond_1
    return-void
.end method

.method public final g()V
    .locals 0

    invoke-virtual {p0}, Lu97;->f()V

    return-void
.end method

.method public final h(Landroid/view/View;F)V
    .locals 3

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lu97;->f()V

    new-instance v0, Lkv9;

    invoke-direct {v0, p2}, Lkv9;-><init>(F)V

    const/high16 v1, 0x437a0000    # 250.0f

    invoke-virtual {v0, v1}, Lkv9;->i(F)Lkv9;

    const v1, 0x3f7d70a4    # 0.99f

    invoke-virtual {v0, v1}, Lkv9;->g(F)Lkv9;

    new-instance v1, Ljv9;

    sget-object v2, Lf43;->q:Lf43$s;

    invoke-direct {v1, p1, v2, p2}, Ljv9;-><init>(Ljava/lang/Object;Laz3;F)V

    invoke-virtual {v1, v0}, Ljv9;->z(Lkv9;)Ljv9;

    invoke-virtual {v1}, Ljv9;->p()V

    iput-object v1, p0, Lu97;->a:Ljv9;

    new-instance v1, Ljv9;

    sget-object v2, Lf43;->r:Lf43$s;

    invoke-direct {v1, p1, v2, p2}, Ljv9;-><init>(Ljava/lang/Object;Laz3;F)V

    invoke-virtual {v1, v0}, Ljv9;->z(Lkv9;)Ljv9;

    invoke-virtual {v1}, Ljv9;->p()V

    iput-object v1, p0, Lu97;->b:Ljv9;

    return-void
.end method

.method public final i(Landroid/view/View;)V
    .locals 4

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lu97;->f()V

    new-instance v0, Lkv9;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1}, Lkv9;-><init>(F)V

    const/high16 v2, 0x437a0000    # 250.0f

    invoke-virtual {v0, v2}, Lkv9;->i(F)Lkv9;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v0, v2}, Lkv9;->g(F)Lkv9;

    new-instance v2, Ljv9;

    sget-object v3, Lf43;->q:Lf43$s;

    invoke-direct {v2, p1, v3, v1}, Ljv9;-><init>(Ljava/lang/Object;Laz3;F)V

    invoke-virtual {v2, v0}, Ljv9;->z(Lkv9;)Ljv9;

    invoke-virtual {v2}, Ljv9;->p()V

    iput-object v2, p0, Lu97;->a:Ljv9;

    new-instance v2, Ljv9;

    sget-object v3, Lf43;->r:Lf43$s;

    invoke-direct {v2, p1, v3, v1}, Ljv9;-><init>(Ljava/lang/Object;Laz3;F)V

    invoke-virtual {v2, v0}, Ljv9;->z(Lkv9;)Ljv9;

    invoke-virtual {v2}, Ljv9;->p()V

    iput-object v2, p0, Lu97;->b:Ljv9;

    return-void
.end method
