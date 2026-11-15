.class final Lcom/yandex/div/internal/viewpool/ViewCreator$CreateViewTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/internal/viewpool/ViewCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CreateViewTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;",
        "Ljava/lang/Comparable<",
        "Lcom/yandex/div/internal/viewpool/ViewCreator$CreateViewTask;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\n\u0008\u0002\u0018\u00002\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00000\u0002B\u001b\u0012\n\u0010\u0004\u001a\u0006\u0012\u0002\u0008\u00030\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\n\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0018\u0010\r\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u0000H\u0096\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u001a\u0010\u0011\u001a\u00020\u00102\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000fH\u0096\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\u0015R\u0017\u0010\u0017\u001a\u00020\u00168\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001aR!\u0010\u001f\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u00038BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001e\u00a8\u0006 "
    }
    d2 = {
        "Lcom/yandex/div/internal/viewpool/ViewCreator$CreateViewTask;",
        "Ljava/lang/Runnable;",
        "",
        "Lcom/yandex/div/internal/viewpool/a$a;",
        "channel",
        "",
        "priority",
        "<init>",
        "(Lcom/yandex/div/internal/viewpool/a$a;I)V",
        "Lzfb;",
        "run",
        "()V",
        "other",
        "compareTo",
        "(Lcom/yandex/div/internal/viewpool/ViewCreator$CreateViewTask;)I",
        "",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "hashCode",
        "()I",
        "I",
        "",
        "viewName",
        "Ljava/lang/String;",
        "getViewName",
        "()Ljava/lang/String;",
        "channelRef$delegate",
        "Lgo8;",
        "getChannelRef",
        "()Lcom/yandex/div/internal/viewpool/a$a;",
        "channelRef",
        "div_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Laf5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Laf5;"
        }
    .end annotation
.end field


# instance fields
.field private final channelRef$delegate:Lgo8;

.field private final priority:I

.field private final viewName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v1, "getChannelRef()Lcom/yandex/div/internal/viewpool/AdvanceViewPool$Channel;"

    const/4 v2, 0x0

    const-class v3, Lcom/yandex/div/internal/viewpool/ViewCreator$CreateViewTask;

    const-string v4, "channelRef"

    invoke-direct {v0, v3, v4, v1, v2}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v0}, Lxq8;->j(Lkotlin/jvm/internal/PropertyReference1;)Lcf5;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Laf5;

    aput-object v0, v1, v2

    sput-object v1, Lcom/yandex/div/internal/viewpool/ViewCreator$CreateViewTask;->$$delegatedProperties:[Laf5;

    return-void
.end method

.method public constructor <init>(Lcom/yandex/div/internal/viewpool/a$a;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/div/internal/viewpool/a$a;",
            "I)V"
        }
    .end annotation

    const-string v0, "channel"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/yandex/div/internal/viewpool/ViewCreator$CreateViewTask;->priority:I

    invoke-virtual {p1}, Lcom/yandex/div/internal/viewpool/a$a;->j()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/yandex/div/internal/viewpool/ViewCreator$CreateViewTask;->viewName:Ljava/lang/String;

    invoke-static {p1}, Lemb;->c(Ljava/lang/Object;)Lgo8;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/div/internal/viewpool/ViewCreator$CreateViewTask;->channelRef$delegate:Lgo8;

    return-void
.end method

.method private final getChannelRef()Lcom/yandex/div/internal/viewpool/a$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yandex/div/internal/viewpool/a$a;"
        }
    .end annotation

    iget-object v0, p0, Lcom/yandex/div/internal/viewpool/ViewCreator$CreateViewTask;->channelRef$delegate:Lgo8;

    sget-object v1, Lcom/yandex/div/internal/viewpool/ViewCreator$CreateViewTask;->$$delegatedProperties:[Laf5;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lgo8;->getValue(Ljava/lang/Object;Laf5;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div/internal/viewpool/a$a;

    return-object p0
.end method


# virtual methods
.method public compareTo(Lcom/yandex/div/internal/viewpool/ViewCreator$CreateViewTask;)I
    .locals 2

    const-string v0, "other"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget v0, p0, Lcom/yandex/div/internal/viewpool/ViewCreator$CreateViewTask;->priority:I

    iget v1, p1, Lcom/yandex/div/internal/viewpool/ViewCreator$CreateViewTask;->priority:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/yandex/div/internal/viewpool/ViewCreator$CreateViewTask;->viewName:Ljava/lang/String;

    iget-object p1, p1, Lcom/yandex/div/internal/viewpool/ViewCreator$CreateViewTask;->viewName:Ljava/lang/String;

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/yandex/div/internal/viewpool/ViewCreator$CreateViewTask;

    invoke-virtual {p0, p1}, Lcom/yandex/div/internal/viewpool/ViewCreator$CreateViewTask;->compareTo(Lcom/yandex/div/internal/viewpool/ViewCreator$CreateViewTask;)I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-class v2, Lcom/yandex/div/internal/viewpool/ViewCreator$CreateViewTask;

    invoke-static {v2, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    const-string v1, "null cannot be cast to non-null type com.yandex.div.internal.viewpool.ViewCreator.CreateViewTask"

    invoke-static {p1, v1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/yandex/div/internal/viewpool/ViewCreator$CreateViewTask;

    iget-object v1, p0, Lcom/yandex/div/internal/viewpool/ViewCreator$CreateViewTask;->viewName:Ljava/lang/String;

    iget-object v3, p1, Lcom/yandex/div/internal/viewpool/ViewCreator$CreateViewTask;->viewName:Ljava/lang/String;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget p0, p0, Lcom/yandex/div/internal/viewpool/ViewCreator$CreateViewTask;->priority:I

    iget p1, p1, Lcom/yandex/div/internal/viewpool/ViewCreator$CreateViewTask;->priority:I

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getViewName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/internal/viewpool/ViewCreator$CreateViewTask;->viewName:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    const/16 v0, 0x1b01

    iget v1, p0, Lcom/yandex/div/internal/viewpool/ViewCreator$CreateViewTask;->priority:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/yandex/div/internal/viewpool/ViewCreator$CreateViewTask;->viewName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public run()V
    .locals 0

    invoke-direct {p0}, Lcom/yandex/div/internal/viewpool/ViewCreator$CreateViewTask;->getChannelRef()Lcom/yandex/div/internal/viewpool/a$a;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/div/internal/viewpool/a$a;->f()V

    :cond_0
    return-void
.end method
