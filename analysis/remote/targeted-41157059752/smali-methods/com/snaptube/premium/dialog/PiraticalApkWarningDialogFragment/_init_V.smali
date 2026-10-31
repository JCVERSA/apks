.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/snaptube/premium/fragment/BaseDialogFragment;-><init>()V

    new-instance v0, Lcom/snaptube/premium/dialog/PiraticalApkWarningDialogFragment$mPos$2;

    invoke-direct {v0, p0}, Lcom/snaptube/premium/dialog/PiraticalApkWarningDialogFragment$mPos$2;-><init>(Lcom/snaptube/premium/dialog/PiraticalApkWarningDialogFragment;)V

    invoke-static {v0}, Lkotlin/b;->b(Lo/bx2;)Lo/t14;

    move-result-object v0

    iput-object v0, p0, Lcom/snaptube/premium/dialog/PiraticalApkWarningDialogFragment;->d:Lo/t14;

    new-instance v0, Lcom/snaptube/premium/dialog/PiraticalApkWarningDialogFragment$mFrom$2;

    invoke-direct {v0, p0}, Lcom/snaptube/premium/dialog/PiraticalApkWarningDialogFragment$mFrom$2;-><init>(Lcom/snaptube/premium/dialog/PiraticalApkWarningDialogFragment;)V

    invoke-static {v0}, Lkotlin/b;->b(Lo/bx2;)Lo/t14;

    move-result-object v0

    iput-object v0, p0, Lcom/snaptube/premium/dialog/PiraticalApkWarningDialogFragment;->e:Lo/t14;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/snaptube/premium/dialog/PiraticalApkWarningDialogFragment;->f:J

    return-void
.end method
