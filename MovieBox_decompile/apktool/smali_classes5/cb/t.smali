.class Lcb/t;
.super Lcb/r;
.source "source.java"


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcb/r;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Lcb/t;->l(Landroid/view/View;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private l(Landroid/view/View;)V
    .locals 1

    .line 1
    new-instance v0, Lcb/t$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcb/t$a;-><init>(Lcb/t;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method b(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcb/t;->j()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    xor-int/lit8 v0, v0, 0x1

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->setClipToOutline(Z)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcb/t;->j()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->invalidateOutline()V

    .line 21
    .line 22
    .line 23
    :goto_0
    return-void
.end method

.method j()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcb/r;->a:Z

    .line 2
    .line 3
    return v0
.end method
