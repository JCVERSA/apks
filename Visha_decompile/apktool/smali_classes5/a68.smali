.class public final synthetic La68;
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

    iput-object p1, p0, La68;->b:Landroid/content/DialogInterface;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, La68;->b:Landroid/content/DialogInterface;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/transsion/audio/fragments/PlayListFragment$i;->a(Landroid/content/DialogInterface;Ljava/lang/Boolean;)V

    return-void
.end method
