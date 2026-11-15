.class public final synthetic Lxa4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/transsion/playercommon/gprating/GPRatingDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/playercommon/gprating/GPRatingDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxa4;->b:Lcom/transsion/playercommon/gprating/GPRatingDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lxa4;->b:Lcom/transsion/playercommon/gprating/GPRatingDialog;

    invoke-static {p0, p1}, Lcom/transsion/playercommon/gprating/GPRatingDialog;->w(Lcom/transsion/playercommon/gprating/GPRatingDialog;Landroid/view/View;)V

    return-void
.end method
