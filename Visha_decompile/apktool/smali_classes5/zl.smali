.class public final synthetic Lzl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/audio/fragments/AudioBaseFragment;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/fragments/AudioBaseFragment;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzl;->b:Lcom/transsion/audio/fragments/AudioBaseFragment;

    iput-boolean p2, p0, Lzl;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lzl;->b:Lcom/transsion/audio/fragments/AudioBaseFragment;

    iget-boolean p0, p0, Lzl;->c:Z

    invoke-static {v0, p0}, Lcom/transsion/audio/fragments/AudioBaseFragment;->t0(Lcom/transsion/audio/fragments/AudioBaseFragment;Z)V

    return-void
.end method
