.class public Lkc3$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkc3;->p(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lkc3;


# direct methods
.method public constructor <init>(Lkc3;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lkc3$b;->c:Lkc3;

    iput-object p2, p0, Lkc3$b;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    invoke-static {}, Ljrb;->e()Lkrb;

    move-result-object p1

    iget-boolean p1, p1, Lkrb;->a:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lkc3$b;->b:Landroid/content/Context;

    invoke-static {p1}, Lraa;->i(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onItemClick: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "visha_EqDialog"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p1, p0, Lkc3$b;->c:Lkc3;

    invoke-static {p1}, Lkc3;->e(Lkc3;)Lcom/transsion/magicvideo/adapter/VideoEqPresetAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/transsion/magicvideo/adapter/VideoEqPresetAdapter;->r(I)V

    iget-object p1, p0, Lkc3$b;->c:Lkc3;

    invoke-static {p1}, Lkc3;->d(Lkc3;)[S

    move-result-object p1

    aget-short p1, p1, p3

    invoke-static {p1}, Ljrb;->a(S)V

    const/4 p1, 0x0

    :goto_0
    invoke-static {}, Ljrb;->d()S

    move-result p2

    if-ge p1, p2, :cond_2

    iget-object p2, p0, Lkc3$b;->c:Lkc3;

    invoke-static {p2}, Lkc3;->h(Lkc3;)[Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    move-result-object p2

    aget-object p2, p2, p1

    if-eqz p3, :cond_1

    invoke-static {p1}, Ljrb;->b(S)S

    move-result v0

    goto :goto_1

    :cond_1
    invoke-static {}, Ljrb;->e()Lkrb;

    move-result-object v0

    iget-object v0, v0, Lkrb;->c:[S

    aget-short v0, v0, p1

    :goto_1
    invoke-static {v0}, Lkrb;->b(S)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->setProgress(F)V

    add-int/lit8 p1, p1, 0x1

    int-to-short p1, p1

    goto :goto_0

    :cond_2
    invoke-static {}, Ljrb;->e()Lkrb;

    move-result-object p0

    invoke-static {p0}, Lkrb;->c(Lkrb;)V

    invoke-static {p3}, Ll16;->b(I)V

    return-void
.end method
