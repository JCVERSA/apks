.class public final synthetic Lm63;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/edit/EditMainActivity;

.field public final synthetic c:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/edit/EditMainActivity;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm63;->b:Lcom/transsion/magicvideo/edit/EditMainActivity;

    iput-object p2, p0, Lm63;->c:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lm63;->b:Lcom/transsion/magicvideo/edit/EditMainActivity;

    iget-object p0, p0, Lm63;->c:Landroid/net/Uri;

    invoke-static {v0, p0}, Lcom/transsion/magicvideo/edit/EditMainActivity;->m1(Lcom/transsion/magicvideo/edit/EditMainActivity;Landroid/net/Uri;)V

    return-void
.end method
