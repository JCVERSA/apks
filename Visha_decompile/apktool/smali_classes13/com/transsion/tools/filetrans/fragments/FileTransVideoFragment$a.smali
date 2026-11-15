.class public final Lcom/transsion/tools/filetrans/fragments/FileTransVideoFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/tools/filetrans/fragments/FileTransVideoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/tools/filetrans/fragments/FileTransVideoFragment$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/transsion/tools/filetrans/fragments/FileTransVideoFragment;
    .locals 2

    new-instance p0, Lcom/transsion/tools/filetrans/fragments/FileTransVideoFragment;

    invoke-direct {p0}, Lcom/transsion/tools/filetrans/fragments/FileTransVideoFragment;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "list_flag"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method
