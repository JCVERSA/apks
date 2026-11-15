.class public final synthetic Lus;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# instance fields
.field public final synthetic b:Lcom/transsion/audio/fragments/AudioMainFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/fragments/AudioMainFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lus;->b:Lcom/transsion/audio/fragments/AudioMainFragment;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lus;->b:Lcom/transsion/audio/fragments/AudioMainFragment;

    check-cast p1, Lcom/transsion/audio/fragments/AudioMainFragment;

    invoke-static {p0, p1}, Lcom/transsion/audio/fragments/AudioMainFragment;->r0(Lcom/transsion/audio/fragments/AudioMainFragment;Lcom/transsion/audio/fragments/AudioMainFragment;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method
