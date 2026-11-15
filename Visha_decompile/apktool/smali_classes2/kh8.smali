.class public final synthetic Lkh8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field public final synthetic b:Landroidx/profileinstaller/ProfileInstallerInitializer;

.field public final synthetic c:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroidx/profileinstaller/ProfileInstallerInitializer;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkh8;->b:Landroidx/profileinstaller/ProfileInstallerInitializer;

    iput-object p2, p0, Lkh8;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 1

    iget-object v0, p0, Lkh8;->b:Landroidx/profileinstaller/ProfileInstallerInitializer;

    iget-object p0, p0, Lkh8;->c:Landroid/content/Context;

    invoke-static {v0, p0, p1, p2}, Landroidx/profileinstaller/ProfileInstallerInitializer;->c(Landroidx/profileinstaller/ProfileInstallerInitializer;Landroid/content/Context;J)V

    return-void
.end method
