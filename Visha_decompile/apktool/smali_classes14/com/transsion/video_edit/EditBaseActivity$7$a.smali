.class public Lcom/transsion/video_edit/EditBaseActivity$7$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaScannerConnection$OnScanCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/video_edit/EditBaseActivity$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/video_edit/EditBaseActivity$7;


# direct methods
.method public constructor <init>(Lcom/transsion/video_edit/EditBaseActivity$7;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/video_edit/EditBaseActivity$7$a;->a:Lcom/transsion/video_edit/EditBaseActivity$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/video_edit/EditBaseActivity$7$a;->a:Lcom/transsion/video_edit/EditBaseActivity$7;

    iget-object p0, p0, Lcom/transsion/video_edit/EditBaseActivity$7;->this$0:Lcom/transsion/video_edit/EditBaseActivity;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/video_edit/EditBaseActivity;->U0(Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method
