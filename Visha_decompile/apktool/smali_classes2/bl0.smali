.class public Lbl0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/app/Activity;

.field public b:Landroid/app/Fragment;

.field public c:Landroidx/fragment/app/Fragment;

.field public d:Ljava/lang/String;

.field public e:Z

.field public f:Landroid/view/View;

.field public g:I

.field public h:Lse7;

.field public i:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lbl0;->g:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbl0;->i:Ljava/util/List;

    iput-object p1, p0, Lbl0;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lbl0;->a:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public a(Lcom/app/hubert/guide/model/a;)Lbl0;
    .locals 1

    iget-object v0, p0, Lbl0;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public b(Z)Lbl0;
    .locals 0

    iput-boolean p1, p0, Lbl0;->e:Z

    return-object p0
.end method

.method public c()Lcom/app/hubert/guide/core/Controller;
    .locals 1

    invoke-virtual {p0}, Lbl0;->d()V

    new-instance v0, Lcom/app/hubert/guide/core/Controller;

    invoke-direct {v0, p0}, Lcom/app/hubert/guide/core/Controller;-><init>(Lbl0;)V

    return-object v0
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lbl0;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lbl0;->a:Landroid/app/Activity;

    if-nez v0, :cond_1

    iget-object v0, p0, Lbl0;->b:Landroid/app/Fragment;

    if-nez v0, :cond_0

    iget-object p0, p0, Lbl0;->c:Landroidx/fragment/app/Fragment;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "activity is null, please make sure that fragment is showing when call NewbieGuide"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "the param \'label\' is missing, please call setLabel()"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public e(Ljava/lang/String;)Lbl0;
    .locals 0

    iput-object p1, p0, Lbl0;->d:Ljava/lang/String;

    return-object p0
.end method

.method public f(Lse7;)Lbl0;
    .locals 0

    iput-object p1, p0, Lbl0;->h:Lse7;

    return-object p0
.end method
