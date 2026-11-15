.class public Lcom/mgtv/ssp/play/DlnaCore;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field mDlnaControl:Lcom/mgtv/thirdsdk/a/a;

.field private mOnDlnaListener:Lcom/mgtv/ssp/play/dlnasdk/OnDlnaListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/mgtv/ssp/play/DlnaCore;)Lcom/mgtv/ssp/play/dlnasdk/OnDlnaListener;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/play/DlnaCore;->mOnDlnaListener:Lcom/mgtv/ssp/play/dlnasdk/OnDlnaListener;

    return-object p0
.end method


# virtual methods
.method public dlnaPrepare(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/mgtv/ssp/play/DlnaCore;->mDlnaControl:Lcom/mgtv/thirdsdk/a/a;

    invoke-virtual {v0, p1, p2}, Lcom/mgtv/thirdsdk/a/a;->a(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/mgtv/ssp/play/DlnaCore;->mDlnaControl:Lcom/mgtv/thirdsdk/a/a;

    new-instance p2, Lcom/mgtv/ssp/play/DlnaCore$1;

    invoke-direct {p2, p0}, Lcom/mgtv/ssp/play/DlnaCore$1;-><init>(Lcom/mgtv/ssp/play/DlnaCore;)V

    invoke-virtual {p1, p2}, Lcom/mgtv/thirdsdk/a/a;->a(Lcom/mgtv/thirdsdk/a/a/a;)V

    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/mgtv/thirdsdk/a/a;

    invoke-direct {v0}, Lcom/mgtv/thirdsdk/a/a;-><init>()V

    iput-object v0, p0, Lcom/mgtv/ssp/play/DlnaCore;->mDlnaControl:Lcom/mgtv/thirdsdk/a/a;

    invoke-virtual {v0, p1}, Lcom/mgtv/thirdsdk/a/a;->a(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public setOnDlnaListener(Lcom/mgtv/ssp/play/dlnasdk/OnDlnaListener;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/play/DlnaCore;->mOnDlnaListener:Lcom/mgtv/ssp/play/dlnasdk/OnDlnaListener;

    return-void
.end method
