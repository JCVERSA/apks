.class public final synthetic Lp01;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/transsion/cloud/fragment/CloudFragment;

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/cloud/fragment/CloudFragment;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp01;->b:Lcom/transsion/cloud/fragment/CloudFragment;

    iput-wide p2, p0, Lp01;->c:J

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lp01;->b:Lcom/transsion/cloud/fragment/CloudFragment;

    iget-wide v1, p0, Lp01;->c:J

    invoke-static {v0, v1, v2, p1, p2}, Lcom/transsion/cloud/fragment/CloudFragment;->j1(Lcom/transsion/cloud/fragment/CloudFragment;JLandroid/content/DialogInterface;I)V

    return-void
.end method
