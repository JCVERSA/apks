.class public final synthetic Lbtb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/fragments/VideoMainFragment;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/fragments/VideoMainFragment;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbtb;->b:Lcom/transsion/magicvideo/fragments/VideoMainFragment;

    iput-boolean p2, p0, Lbtb;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lbtb;->b:Lcom/transsion/magicvideo/fragments/VideoMainFragment;

    iget-boolean p0, p0, Lbtb;->c:Z

    invoke-static {v0, p0}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->p0(Lcom/transsion/magicvideo/fragments/VideoMainFragment;Z)V

    return-void
.end method
