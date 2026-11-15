.class public final synthetic Luv;
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

    iput-object p1, p0, Luv;->a:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Luv;->a:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->e0(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;Ljava/util/List;)V

    return-void
.end method
