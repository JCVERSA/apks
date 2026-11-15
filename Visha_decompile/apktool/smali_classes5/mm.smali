.class public final synthetic Lmm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/audio/fragments/AudioBaseFragment;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/fragments/AudioBaseFragment;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmm;->b:Lcom/transsion/audio/fragments/AudioBaseFragment;

    iput p2, p0, Lmm;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lmm;->b:Lcom/transsion/audio/fragments/AudioBaseFragment;

    iget p0, p0, Lmm;->c:I

    invoke-static {v0, p0}, Lcom/transsion/audio/fragments/AudioBaseFragment;->k0(Lcom/transsion/audio/fragments/AudioBaseFragment;I)V

    return-void
.end method
