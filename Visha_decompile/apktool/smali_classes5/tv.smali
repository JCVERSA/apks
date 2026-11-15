.class public final synthetic Ltv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/playercommon/adapter/CustomViewAdapter2$a;


# instance fields
.field public final synthetic a:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltv;->a:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    return-void
.end method


# virtual methods
.method public final a(I)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Ltv;->a:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    invoke-static {p0, p1}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->v0(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method
