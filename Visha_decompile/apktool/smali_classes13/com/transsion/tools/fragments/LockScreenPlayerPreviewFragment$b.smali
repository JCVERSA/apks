.class public Lcom/transsion/tools/fragments/LockScreenPlayerPreviewFragment$b;
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

    iput-object p1, p0, Lcom/transsion/tools/fragments/LockScreenPlayerPreviewFragment$b;->b:Lcom/transsion/tools/fragments/LockScreenPlayerPreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {}, Lv34;->i()V

    iget-object p0, p0, Lcom/transsion/tools/fragments/LockScreenPlayerPreviewFragment$b;->b:Lcom/transsion/tools/fragments/LockScreenPlayerPreviewFragment;

    invoke-static {p0}, Lcom/transsion/tools/fragments/LockScreenPlayerPreviewFragment;->R(Lcom/transsion/tools/fragments/LockScreenPlayerPreviewFragment;)Lcom/transsion/playercommon/activities/BaseActivity;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/activities/BaseActivity;->callAlertWindowPermission(Z)V

    const-string p0, "btn"

    const-string p1, "go"

    const-string p2, "setup_setuppage_locmusic_pop_cl"

    invoke-static {p2, p0, p1}, Lhb0;->markTrackSingle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
