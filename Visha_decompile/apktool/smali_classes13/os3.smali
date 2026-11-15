.class public final synthetic Los3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Los3;->a:Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Los3;->a:Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;->h0(Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;Z)V

    return-void
.end method
