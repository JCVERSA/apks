.class public Lcom/transsion/playercommon/widgets/AppFootActionBar$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/playercommon/utils/storage/FileOperateUtils$k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/widgets/AppFootActionBar;->delete(Ljava/util/ArrayList;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/playercommon/widgets/AppFootActionBar;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/widgets/AppFootActionBar;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar$b;->a:Lcom/transsion/playercommon/widgets/AppFootActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(D)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar$b;->a:Lcom/transsion/playercommon/widgets/AppFootActionBar;

    invoke-static {v0}, Lcom/transsion/playercommon/widgets/AppFootActionBar;->X(Lcom/transsion/playercommon/widgets/AppFootActionBar;)Lcom/transsion/widgetslib/dialog/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar$b;->a:Lcom/transsion/playercommon/widgets/AppFootActionBar;

    invoke-static {p0}, Lcom/transsion/playercommon/widgets/AppFootActionBar;->X(Lcom/transsion/playercommon/widgets/AppFootActionBar;)Lcom/transsion/widgetslib/dialog/c;

    move-result-object p0

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double/2addr p1, v0

    double-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/dialog/c;->h(I)Lcom/transsion/widgetslib/dialog/c;

    :cond_0
    return-void
.end method

.method public d()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar$b;->a:Lcom/transsion/playercommon/widgets/AppFootActionBar;

    iget-object v1, v0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/transsion/playercommon/widgets/AppFootActionBar;->W(Lcom/transsion/playercommon/widgets/AppFootActionBar;)Lcom/transsion/widgetslib/dialog/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar$b;->a:Lcom/transsion/playercommon/widgets/AppFootActionBar;

    invoke-static {v0}, Lcom/transsion/playercommon/widgets/AppFootActionBar;->W(Lcom/transsion/playercommon/widgets/AppFootActionBar;)Lcom/transsion/widgetslib/dialog/d;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar$b;->a:Lcom/transsion/playercommon/widgets/AppFootActionBar;

    iget-object v0, v0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mContext:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar$b;->a:Lcom/transsion/playercommon/widgets/AppFootActionBar;

    invoke-static {v0}, Lcom/transsion/playercommon/widgets/AppFootActionBar;->W(Lcom/transsion/playercommon/widgets/AppFootActionBar;)Lcom/transsion/widgetslib/dialog/d;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar$b;->a:Lcom/transsion/playercommon/widgets/AppFootActionBar;

    iget-object v0, v0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mListener:Lcom/transsion/playercommon/widgets/AppFootActionBar$c;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/transsion/playercommon/widgets/AppFootActionBar$c;->finish()V

    :cond_1
    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v2, 0x430

    invoke-virtual {v0, v2, v1}, Lh27;->e(I[Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteSuccess "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar$b;->a:Lcom/transsion/playercommon/widgets/AppFootActionBar;

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AppFootActionBar"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public f()V
    .locals 3

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v2, 0x48b

    invoke-virtual {v0, v2, v1}, Lh27;->e(I[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar$b;->a:Lcom/transsion/playercommon/widgets/AppFootActionBar;

    new-instance v1, Lcom/transsion/widgetslib/dialog/c;

    iget-object v2, v0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/transsion/widgetslib/dialog/c;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/transsion/playercommon/widgets/AppFootActionBar;->Z(Lcom/transsion/playercommon/widgets/AppFootActionBar;Lcom/transsion/widgetslib/dialog/c;)V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar$b;->a:Lcom/transsion/playercommon/widgets/AppFootActionBar;

    invoke-static {v0}, Lcom/transsion/playercommon/widgets/AppFootActionBar;->X(Lcom/transsion/playercommon/widgets/AppFootActionBar;)Lcom/transsion/widgetslib/dialog/c;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar$b;->a:Lcom/transsion/playercommon/widgets/AppFootActionBar;

    iget-object v1, v1, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/playercommon/R$string;->delete_progress:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/c;->j(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/c;

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar$b;->a:Lcom/transsion/playercommon/widgets/AppFootActionBar;

    invoke-static {p0}, Lcom/transsion/playercommon/widgets/AppFootActionBar;->X(Lcom/transsion/playercommon/widgets/AppFootActionBar;)Lcom/transsion/widgetslib/dialog/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/c;->l()Lcom/transsion/widgetslib/dialog/d;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/playercommon/widgets/AppFootActionBar;->Y(Lcom/transsion/playercommon/widgets/AppFootActionBar;Lcom/transsion/widgetslib/dialog/d;)V

    return-void
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public h()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar$b;->a:Lcom/transsion/playercommon/widgets/AppFootActionBar;

    iget-object v1, v0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/transsion/playercommon/widgets/AppFootActionBar;->W(Lcom/transsion/playercommon/widgets/AppFootActionBar;)Lcom/transsion/widgetslib/dialog/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar$b;->a:Lcom/transsion/playercommon/widgets/AppFootActionBar;

    invoke-static {v0}, Lcom/transsion/playercommon/widgets/AppFootActionBar;->W(Lcom/transsion/playercommon/widgets/AppFootActionBar;)Lcom/transsion/widgetslib/dialog/d;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar$b;->a:Lcom/transsion/playercommon/widgets/AppFootActionBar;

    iget-object v0, v0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mContext:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar$b;->a:Lcom/transsion/playercommon/widgets/AppFootActionBar;

    invoke-static {p0}, Lcom/transsion/playercommon/widgets/AppFootActionBar;->W(Lcom/transsion/playercommon/widgets/AppFootActionBar;)Lcom/transsion/widgetslib/dialog/d;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
