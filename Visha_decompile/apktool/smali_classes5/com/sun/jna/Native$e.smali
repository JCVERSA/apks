.class public final Lcom/sun/jna/Native$e;
.super Ljava/lang/ThreadLocal;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/Native;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/sun/jna/Memory;
    .locals 2

    new-instance p0, Lcom/sun/jna/Memory;

    const-wide/16 v0, 0x4

    invoke-direct {p0, v0, v1}, Lcom/sun/jna/Memory;-><init>(J)V

    invoke-virtual {p0}, Lcom/sun/jna/Memory;->h()V

    return-object p0
.end method

.method public bridge synthetic initialValue()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/sun/jna/Native$e;->a()Lcom/sun/jna/Memory;

    move-result-object p0

    return-object p0
.end method
