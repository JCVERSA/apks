.class public Lnr9;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnr9$a;
    }
.end annotation


# static fields
.field public static volatile g:Lnr9;


# instance fields
.field public a:Lnr9$a;

.field public b:Lcom/transsion/magicvideo/data/DownloadMediaItem;

.field public c:Landroid/content/DialogInterface$OnDismissListener;

.field public d:Lcom/transsion/playercommon/fragments/AlertDialogFragment$d;

.field public e:[I

.field public f:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnr9;->c:Landroid/content/DialogInterface$OnDismissListener;

    iput-object v0, p0, Lnr9;->d:Lcom/transsion/playercommon/fragments/AlertDialogFragment$d;

    return-void
.end method

.method public static b()Lnr9;
    .locals 2

    sget-object v0, Lnr9;->g:Lnr9;

    if-nez v0, :cond_1

    const-class v0, Lnr9;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lnr9;->g:Lnr9;

    if-nez v1, :cond_0

    new-instance v1, Lnr9;

    invoke-direct {v1}, Lnr9;-><init>()V

    sput-object v1, Lnr9;->g:Lnr9;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lnr9;->g:Lnr9;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/transsion/magicvideo/data/DownloadMediaItem;
    .locals 0

    iget-object p0, p0, Lnr9;->b:Lcom/transsion/magicvideo/data/DownloadMediaItem;

    return-object p0
.end method

.method public c()Lnr9$a;
    .locals 0

    iget-object p0, p0, Lnr9;->a:Lnr9$a;

    return-object p0
.end method

.method public d(Lcom/transsion/magicvideo/data/DownloadMediaItem;)V
    .locals 0

    iput-object p1, p0, Lnr9;->b:Lcom/transsion/magicvideo/data/DownloadMediaItem;

    return-void
.end method

.method public e(Lnr9$a;)V
    .locals 0

    iput-object p1, p0, Lnr9;->a:Lnr9$a;

    return-void
.end method

.method public f(Landroid/content/Context;[I[I)V
    .locals 0

    iput-object p2, p0, Lnr9;->e:[I

    iput-object p3, p0, Lnr9;->f:[I

    invoke-static {p1, p2}, Lcom/transsion/magicvideo/activities/MultiVideoResolutionSheetDialog;->p0(Landroid/content/Context;[I)V

    return-void
.end method

.method public setDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    iput-object p1, p0, Lnr9;->c:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method

.method public setOnResumeListener(Lcom/transsion/playercommon/fragments/AlertDialogFragment$d;)V
    .locals 0

    iput-object p1, p0, Lnr9;->d:Lcom/transsion/playercommon/fragments/AlertDialogFragment$d;

    return-void
.end method
