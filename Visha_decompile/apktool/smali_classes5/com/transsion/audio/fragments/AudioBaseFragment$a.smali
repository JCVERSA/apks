.class public Lcom/transsion/audio/fragments/AudioBaseFragment$a;
.super Lchc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/audio/fragments/AudioBaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Lcom/transsion/audio/fragments/AudioBaseFragment;)V
    .locals 0

    invoke-direct {p0, p1}, Lchc;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Ljava/lang/Object;Z)V
    .locals 0

    check-cast p1, Lcom/transsion/audio/fragments/AudioBaseFragment;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audio/fragments/AudioBaseFragment$a;->d(Lcom/transsion/audio/fragments/AudioBaseFragment;Z)V

    return-void
.end method

.method public d(Lcom/transsion/audio/fragments/AudioBaseFragment;Z)V
    .locals 0

    iget-boolean p0, p1, Lcom/transsion/audio/fragments/AudioBaseFragment;->m:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    iput-boolean p0, p1, Lcom/transsion/audio/fragments/AudioBaseFragment;->F:Z

    invoke-static {p1}, Lcom/transsion/audio/fragments/AudioBaseFragment;->D0(Lcom/transsion/audio/fragments/AudioBaseFragment;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    iput-boolean p0, p1, Lcom/transsion/audio/fragments/AudioBaseFragment;->F:Z

    :goto_0
    return-void
.end method
