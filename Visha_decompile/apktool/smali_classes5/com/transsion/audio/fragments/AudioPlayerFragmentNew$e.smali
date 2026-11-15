.class public Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$e;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$e;->a:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$e;->a:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    invoke-static {p0, p1, p2}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->N0(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;ZLandroid/net/Uri;)V

    return-void
.end method
