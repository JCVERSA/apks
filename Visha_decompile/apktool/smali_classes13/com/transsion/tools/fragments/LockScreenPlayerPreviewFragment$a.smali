.class public Lcom/transsion/tools/fragments/LockScreenPlayerPreviewFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/tools/fragments/LockScreenPlayerPreviewFragment;->W()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/tools/fragments/LockScreenPlayerPreviewFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/tools/fragments/LockScreenPlayerPreviewFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tools/fragments/LockScreenPlayerPreviewFragment$a;->b:Lcom/transsion/tools/fragments/LockScreenPlayerPreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/fragments/LockScreenPlayerPreviewFragment$a;->b:Lcom/transsion/tools/fragments/LockScreenPlayerPreviewFragment;

    invoke-static {p0}, Lcom/transsion/tools/fragments/LockScreenPlayerPreviewFragment;->Q(Lcom/transsion/tools/fragments/LockScreenPlayerPreviewFragment;)Landroid/widget/Switch;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    const-string p0, "btn"

    const-string p1, "cancel"

    const-string p2, "setup_setuppage_locmusic_pop_cl"

    invoke-static {p2, p0, p1}, Lhb0;->markTrackSingle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
