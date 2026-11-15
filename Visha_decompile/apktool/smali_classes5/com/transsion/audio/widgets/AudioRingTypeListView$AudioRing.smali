.class public Lcom/transsion/audio/widgets/AudioRingTypeListView$AudioRing;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/audio/widgets/AudioRingTypeListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AudioRing"
.end annotation


# instance fields
.field public name:Ljava/lang/String;

.field public resId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/audio/widgets/AudioRingTypeListView$AudioRing;->name:Ljava/lang/String;

    iput p2, p0, Lcom/transsion/audio/widgets/AudioRingTypeListView$AudioRing;->resId:I

    return-void
.end method
