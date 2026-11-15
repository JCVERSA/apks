.class public abstract La62$h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La62;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La62$h$a;
    }
.end annotation


# instance fields
.field public final b:I

.field public final c:Lzua;

.field public final d:I

.field public final e:Lcom/google/android/exoplayer2/k;


# direct methods
.method public constructor <init>(ILzua;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, La62$h;->b:I

    iput-object p2, p0, La62$h;->c:Lzua;

    iput p3, p0, La62$h;->d:I

    invoke-virtual {p2, p3}, Lzua;->c(I)Lcom/google/android/exoplayer2/k;

    move-result-object p1

    iput-object p1, p0, La62$h;->e:Lcom/google/android/exoplayer2/k;

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract b(La62$h;)Z
.end method
