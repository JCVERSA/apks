.class public final synthetic Lsu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsu;->a:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lsu;->a:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    check-cast p1, Lwoc;

    invoke-static {p0, p1}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->W(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;Lwoc;)V

    return-void
.end method
