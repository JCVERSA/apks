.class public final synthetic Lxl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/audio/fragments/AudioBaseFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/fragments/AudioBaseFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxl;->b:Lcom/transsion/audio/fragments/AudioBaseFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lxl;->b:Lcom/transsion/audio/fragments/AudioBaseFragment;

    invoke-static {p0}, Lcom/transsion/audio/fragments/AudioBaseFragment;->p0(Lcom/transsion/audio/fragments/AudioBaseFragment;)V

    return-void
.end method
