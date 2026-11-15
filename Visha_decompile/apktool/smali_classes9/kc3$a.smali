.class public Lkc3$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkc3;->p(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lkc3;


# direct methods
.method public constructor <init>(Lkc3;)V
    .locals 0

    iput-object p1, p0, Lkc3$a;->b:Lkc3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object p1, p0, Lkc3$a;->b:Lkc3;

    invoke-static {p1, p2}, Lkc3;->k(Lkc3;Z)V

    if-eqz p2, :cond_0

    iget-object p1, p0, Lkc3$a;->b:Lkc3;

    invoke-static {p1}, Lkc3;->e(Lkc3;)Lcom/transsion/magicvideo/adapter/VideoEqPresetAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lkc3$a;->b:Lkc3;

    invoke-static {p1}, Lkc3;->e(Lkc3;)Lcom/transsion/magicvideo/adapter/VideoEqPresetAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/magicvideo/adapter/VideoEqPresetAdapter;->g()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lkc3$a;->b:Lkc3;

    invoke-static {p1}, Lkc3;->e(Lkc3;)Lcom/transsion/magicvideo/adapter/VideoEqPresetAdapter;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/transsion/magicvideo/adapter/VideoEqPresetAdapter;->r(I)V

    iget-object p1, p0, Lkc3$a;->b:Lkc3;

    invoke-static {p1}, Lkc3;->d(Lkc3;)[S

    move-result-object p1

    aget-short p1, p1, v0

    invoke-static {p1}, Ljrb;->a(S)V

    iget-object p1, p0, Lkc3$a;->b:Lkc3;

    invoke-static {p1}, Lkc3;->l(Lkc3;)V

    invoke-static {}, Ljrb;->e()Lkrb;

    move-result-object p1

    invoke-static {p1}, Lkrb;->c(Lkrb;)V

    :cond_0
    iget-object p0, p0, Lkc3$a;->b:Lkc3;

    invoke-static {p0}, Lkc3;->i(Lkc3;)V

    if-eqz p2, :cond_1

    const-string p0, "on"

    goto :goto_0

    :cond_1
    const-string p0, "off"

    :goto_0
    const-string p1, "vd_cp_equalizer_pop_cl"

    const-string p2, "status"

    invoke-static {p1, p2, p0}, Lhb0;->markTrackSingle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
