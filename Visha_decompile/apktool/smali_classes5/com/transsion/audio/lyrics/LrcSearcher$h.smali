.class public Lcom/transsion/audio/lyrics/LrcSearcher$h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/audio/lyrics/LrcSearcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# instance fields
.field public a:Lmc7;

.field public b:I


# direct methods
.method public constructor <init>(Lmc7;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/audio/lyrics/LrcSearcher$h;->a:Lmc7;

    iput p2, p0, Lcom/transsion/audio/lyrics/LrcSearcher$h;->b:I

    return-void
.end method
