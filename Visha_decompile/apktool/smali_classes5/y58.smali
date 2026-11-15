.class public final synthetic Ly58;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzf1;


# instance fields
.field public final synthetic b:Landroid/content/DialogInterface;


# direct methods
.method public synthetic constructor <init>(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly58;->b:Landroid/content/DialogInterface;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Ly58;->b:Landroid/content/DialogInterface;

    invoke-static {p0, p1}, Lcom/transsion/audio/fragments/PlayListFragment$h;->b(Landroid/content/DialogInterface;Ljava/lang/Object;)V

    return-void
.end method
