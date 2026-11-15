.class public Landroidx/fragment/app/g;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final a:Landroidx/fragment/app/i;


# direct methods
.method private constructor <init>(Landroidx/fragment/app/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/fragment/app/g;->a:Landroidx/fragment/app/i;

    .line 5
    .line 6
    return-void
.end method

.method public static b(Landroidx/fragment/app/i;)Landroidx/fragment/app/g;
    .locals 2

    .line 1
    new-instance v0, Landroidx/fragment/app/g;

    .line 2
    .line 3
    const-string v1, "callbacks == null"

    .line 4
    .line 5
    invoke-static {p0, v1}, Landroidx/core/util/i;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroidx/fragment/app/i;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Landroidx/fragment/app/g;-><init>(Landroidx/fragment/app/i;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method


# virtual methods
.method public a(Landroidx/fragment/app/Fragment;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/g;->a:Landroidx/fragment/app/i;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/fragment/app/i;->e:Landroidx/fragment/app/FragmentManager;

    .line 4
    .line 5
    invoke-virtual {v1, v0, v0, p1}, Landroidx/fragment/app/FragmentManager;->n(Landroidx/fragment/app/i;Landroidx/fragment/app/f;Landroidx/fragment/app/Fragment;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/g;->a:Landroidx/fragment/app/i;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/fragment/app/i;->e:Landroidx/fragment/app/FragmentManager;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->z()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public d(Landroid/view/MenuItem;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/g;->a:Landroidx/fragment/app/i;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/fragment/app/i;->e:Landroidx/fragment/app/FragmentManager;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->C(Landroid/view/MenuItem;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/g;->a:Landroidx/fragment/app/i;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/fragment/app/i;->e:Landroidx/fragment/app/FragmentManager;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->D()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public f()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/g;->a:Landroidx/fragment/app/i;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/fragment/app/i;->e:Landroidx/fragment/app/FragmentManager;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->F()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public g()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/g;->a:Landroidx/fragment/app/i;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/fragment/app/i;->e:Landroidx/fragment/app/FragmentManager;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->O()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public h()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/g;->a:Landroidx/fragment/app/i;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/fragment/app/i;->e:Landroidx/fragment/app/FragmentManager;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->S()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public i()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/g;->a:Landroidx/fragment/app/i;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/fragment/app/i;->e:Landroidx/fragment/app/FragmentManager;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->T()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public j()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/g;->a:Landroidx/fragment/app/i;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/fragment/app/i;->e:Landroidx/fragment/app/FragmentManager;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->V()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public k()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/g;->a:Landroidx/fragment/app/i;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/fragment/app/i;->e:Landroidx/fragment/app/FragmentManager;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->c0(Z)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public l()Landroidx/fragment/app/FragmentManager;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/g;->a:Landroidx/fragment/app/i;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/fragment/app/i;->e:Landroidx/fragment/app/FragmentManager;

    .line 4
    .line 5
    return-object v0
.end method

.method public m()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/g;->a:Landroidx/fragment/app/i;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/fragment/app/i;->e:Landroidx/fragment/app/FragmentManager;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->d1()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public n(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/g;->a:Landroidx/fragment/app/i;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/fragment/app/i;->e:Landroidx/fragment/app/FragmentManager;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->A0()Landroid/view/LayoutInflater$Factory2;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/LayoutInflater$Factory2;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method
