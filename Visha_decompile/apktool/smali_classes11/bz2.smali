.class public final synthetic Lbz2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/widgets/ratingbar/OnRatingChangedListener;


# instance fields
.field public final synthetic a:Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;

.field public final synthetic b:Landroid/widget/ImageView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbz2;->a:Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;

    iput-object p2, p0, Lbz2;->b:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final onRatingChanged(F)V
    .locals 1

    iget-object v0, p0, Lbz2;->a:Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;

    iget-object p0, p0, Lbz2;->b:Landroid/widget/ImageView;

    invoke-static {v0, p0, p1}, Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;->w(Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;Landroid/widget/ImageView;F)V

    return-void
.end method
