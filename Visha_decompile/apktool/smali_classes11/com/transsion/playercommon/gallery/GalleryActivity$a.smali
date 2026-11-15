.class public Lcom/transsion/playercommon/gallery/GalleryActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/gallery/GalleryActivity;->showRequestPermissionDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/playercommon/gallery/GalleryActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/gallery/GalleryActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/gallery/GalleryActivity$a;->b:Lcom/transsion/playercommon/gallery/GalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object p0, p0, Lcom/transsion/playercommon/gallery/GalleryActivity$a;->b:Lcom/transsion/playercommon/gallery/GalleryActivity;

    const-string p1, "file_permission_show"

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lw6c;->r(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method
