.class public Lmfb$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmfb;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lmfb;


# direct methods
.method public constructor <init>(Lmfb;)V
    .locals 0

    iput-object p1, p0, Lmfb$b;->b:Lmfb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    if-nez p2, :cond_0

    iget-object p1, p0, Lmfb$b;->b:Lmfb;

    invoke-static {p1}, Lmfb;->e(Lmfb;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Lmfb$b;->b:Lmfb;

    invoke-static {p1}, Lmfb;->f(Lmfb;)V

    :cond_1
    :goto_0
    iget-object p0, p0, Lmfb$b;->b:Lmfb;

    invoke-static {p0}, Lmfb;->c(Lmfb;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "skin_diy_edit_ps_upload_pop_cl"

    goto :goto_1

    :cond_2
    const-string p0, "skin_diy_edit_bg_upload_pop_cl"

    :goto_1
    invoke-static {p0, p2}, Ld16;->k(Ljava/lang/String;I)V

    return-void
.end method
