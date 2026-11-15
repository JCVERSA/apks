.class public Lcom/transsion/magicvideo/fragments/VideosFragment$a;
.super Lgf7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicvideo/fragments/VideosFragment;->initTitleBar(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/transsion/magicvideo/fragments/VideosFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/fragments/VideosFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosFragment$a;->e:Lcom/transsion/magicvideo/fragments/VideosFragment;

    invoke-direct {p0}, Lgf7;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment$a;->e:Lcom/transsion/magicvideo/fragments/VideosFragment;

    sget p1, Lcom/transsion/magicvideo/R$string;->talkback_clear_history:I

    sget v0, Lcom/transsion/magicvideo/R$string;->clear_empty:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/transsion/magicvideo/fragments/VideosFragment;->A1(III)V

    const-string p0, "vd_clear_his_cl"

    const-wide v0, 0xd91af27323L

    const/4 p1, 0x0

    invoke-static {p1, p0, v0, v1}, Lp06;->f0(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
