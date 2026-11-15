.class public final synthetic Lsm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/transsion/audio/fragments/AudioBaseFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/fragments/AudioBaseFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsm;->a:Lcom/transsion/audio/fragments/AudioBaseFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lsm;->a:Lcom/transsion/audio/fragments/AudioBaseFragment;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/transsion/audio/fragments/AudioBaseFragment;->i0(Lcom/transsion/audio/fragments/AudioBaseFragment;Ljava/lang/Boolean;)V

    return-void
.end method
