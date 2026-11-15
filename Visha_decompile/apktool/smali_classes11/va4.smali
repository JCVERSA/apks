.class public final synthetic Lva4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/widgets/ratingbar/OnRatingChangedListener;


# instance fields
.field public final synthetic a:Lcom/transsion/playercommon/gprating/GPRatingDialog;

.field public final synthetic b:Landroid/widget/ImageView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/playercommon/gprating/GPRatingDialog;Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lva4;->a:Lcom/transsion/playercommon/gprating/GPRatingDialog;

    iput-object p2, p0, Lva4;->b:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final onRatingChanged(F)V
    .locals 1

    iget-object v0, p0, Lva4;->a:Lcom/transsion/playercommon/gprating/GPRatingDialog;

    iget-object p0, p0, Lva4;->b:Landroid/widget/ImageView;

    invoke-static {v0, p0, p1}, Lcom/transsion/playercommon/gprating/GPRatingDialog;->D(Lcom/transsion/playercommon/gprating/GPRatingDialog;Landroid/widget/ImageView;F)V

    return-void
.end method
